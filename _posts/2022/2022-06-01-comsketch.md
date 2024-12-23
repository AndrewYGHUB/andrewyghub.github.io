---
layout: post
title: COM 原理与应用学习笔记
categories: COM
excerpt: 略读了一遍《COM 原理与应用》后的摘要笔记。
tags: COM
---

略读完了潘爱民老师的《COM 原理与应用》一书，将书中个人认为一些比较重要的概念摘引如下，附少量自己的标注。

### COM 对象的接口原则

书中总共列举了五条原则，其它几条我觉得理所当然，符合我「想当然」中的理解，故略去不记，这一条认为比较实用。

> 对于同一个对象的不同的接口指针，查询得到的 IUnknown 接口必须完全相同。也就是说，每个对象的 IUnknown 接口指针是唯一的，因此，对两个接口指针，我们可以通过判断其查询到的 IUnknown 接口是否相等来判断它们是否指向同一个对象。

> 反之，如果查询的不是 IUnknown 接口，而是其它接口，则通过不同的途径得到的接口指针允许不一样。这就允许有的对象可以在必要的时候才动态生成接口指针，当不用的时候可以把接口指针释放掉。

### 客户程序创建组件对象

![客户程序调用 COM 库创建组件对象的顺序图](/images/posts/com/clientcallcom.png)

### 包容和聚合

**包容**

对象 B 包容对象 A，对象 B 使用包容方式提供接口 InterfaceA，则对象 B 需要实现 InterfaceA，只不过在实现里只是将调用全部转发给了对象 A 的对应函数。

对象包容示意图：

![对象包容示意图](/images/posts/com/contain.png)

**聚合**

对象 B 聚合对象 A，对象 B 使用聚合方式提供接口 InterfaceA，则对象 B 不需要实现 InterfaceA，直接暴露对象 A 的 InterfaceA。

对象聚合示意图：

![对象聚合示意图](/images/posts/com/polymerize.png)

对象 A 也需要为支持聚合做一些事情——实现一个委托 IUnknown 接口和一个非委托 IUnknown 接口。

> 按照通常使用方式实现的 IUnknown 为非委托 IUnknown，而委托 IUnknown 在不同的情况下有不同的行为：当对象被正常使用时，委托 IUnknown 把调用传递给对象的非委托 IUnknown；当对象被聚合使用时，委托 IUnknown 把调用传递到外部对象的 IUnknown 接口，即对象被创建时传递进来的 pUnknownOuter 参数，并且，这时外部对象通过非委托 IUnknown 对内部对象进行控制。

支持聚合的对象在非聚合方式下的接口示意图：

![支持聚合的对象在非聚合方式下的接口示意图](/images/posts/com/polynormal.png)

支持聚合的对象在聚合方式下的接口示意图：

![支持聚合的对象在聚合方式下的接口示意图](/images/posts/com/polypoly.png)

### 进程外组件与客户程序的协作方式

![进程外组件与客户程序协作的结构图](/images/posts/com/outprocess.png)

> 代理对象用列集手段处理成员函数的参数，通过列集处理后得到一个数据包（数据流），然后通过一种跨进程的数据传输方法，比如共享内存方法，甚至是网络协议等，当数据包传输到对象进程后，存根代码用散集（列集的反过程）的方法把数据包参数解译出来，再用这些参数去调用组件对象；当组件对象成员函数返回后，存根代码又把返回值和输出参数列集成新的数据包，并把数据包传到客户进程中，代理对象接收到数据包后，把数据包解译出来再返回给客户函数，从而完成一次调用。
