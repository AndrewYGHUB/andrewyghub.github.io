---
layout: post
title: 记一个折磨了我一天半的 Bug
categories: Java
excerpt: 一杯茶，一根烟，一个 Bug 一天根本改不完。
tags: Java, Bug
---

最近开始学习后台开发，虽然与我以前从事的 Android 开发一样都是使用 Java 语言，但是技术栈完全不同，有太多的必备的「新」概念要去学习，而在对它们，以及别人写的代码有充分的了解之前，就可能会遇上这种一杯茶，一根烟，一个 Bug 一天根本改不完的情况。

最近遇见的这个 Bug 是在修改项目遗留的问题时偶然发现的，简而言之就是这样：

**服务 A** 在从外界接收到推送的一条数据后，将数据插入到库里，然后通过 MQ 推送一条消息给 **服务 B**，**服务 B** 会根据收到的消息进行一些处理，其中包括远程调用 **服务 A** 的方法去查询这条数据，但是在测试环境总是报查询不到这条数据。

遇到问题之后，先进行了一些排查：

* 怀疑传参或者数据插库没有成功，于是将查询参数打印出来，手动复制参数到库里去查——有数据；

* 怀疑实际执行的 SQL 有问题，于是请同事帮忙配置 MyBatis 在日志里输出 SQL，原样复制出来去库里查——有数据；

* 在本地连接测试环境数据库，代码里下断点调试——能正常取到数据；

![](/images/posts/java/you-kidding-me.jpg)

纳闷了一阵以后，继续排查：

* 怀疑测试环境程序数据库连接有问题，于是测试了一些其它查库的功能——数据正常；

* 怀疑测试环境的包有问题，于是请运维同事将 jar 包从容器里拷贝下来，核对配置——没问题；

* 怀疑测试环境远程调用失败了，于是在远程调用处加日志——没有异常；

![](/images/posts/java/what-is-wrong.jpeg)

* 怀疑测试环境注册了多余的 **服务 A** 的节点，于是去 Dubbo Admin 里核对节点——数量正常，网段正常；

* 怀疑测试环境的部署的 **服务 A** 的某个节点部署有问题，于是请运维同事一个一个 telnet 上去手动执行远程调用——能正常取到数据；

* 在一条失败 case 之后，马上向 **服务 B** 手动再次推送相同的消息——能取到数据；

![](/images/posts/java/this-unscientific.jpeg)

直到我终于留意到一个现象：从日志来看，**服务 A** 插库与 **服务 B** 远程调用 **服务 A** 的方法的时间只相差 1 毫秒。会不会是一切发生得太快了，库里还查不到刚刚写入的数据？抑或者查询的时候插库还根本没有生效？

带着这个疑惑我终于认真去看插库并发消息那块的代码了，于是就看到这样一段代码：

```java
@Override
@Transactional(...)
public boolean doSomething() {
    ...

    // 插入数据

    // 发送消息

    ...
}
```

是的没错，插入数据和发送消息写在了一个事务里面。虽然我对数据库了解不多，但对事务的特性还是有所了解——发送消息的时候，数据库里确实还没有刚刚插入的数据，事务提交后才会生效，也就是说，**服务 B** 收到消息后远程调用回 **服务 A** 想查找刚刚插入的数据，能否查到全凭运气，取决于此时事务已经执行完。

问题时序示意：

![](/images/posts/java/a-stupid-bug-wrong-sequence.png)

要确保消息发出时数据库里已经存在数据了也很简单，将事务粒度控制一下，只包含插入数据这块逻辑即可，插入成功了再发送消息。

*PS：如果对消息投递可靠性要求高，可能需要对投递消息失败的情况做一些补偿机制。*

```java
@Override
public boolean doSomething() {
    ...

    // 事务开始

    // 插入数据

    // 事务结束

    if (插入数据成功) {
        // 发送消息
    }

    ...
}
```

正常时序示意：

![](/images/posts/java/a-stupid-bug-normal-sequence.png)

总结：

1. 在理解别人写的逻辑的时候不要做预设，你认为别人不可能犯如此低级的错误而直接排除在外的情况，可能恰好是问题所在；

2. 在排查可能是时序导致的问题时，少用断点调试，用日志更合适；

3. 本地调试时尽量将场景模拟完整一点，从中途某一环开始则有可能越过问题触发条件而无法复现。
