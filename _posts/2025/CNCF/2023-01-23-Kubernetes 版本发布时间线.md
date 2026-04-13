---
layout: post
title: "Kubernetes 版本发布时间线"
categories: ["CNCF"]
excerpt: IaaS         
tags: aPAAS  iPAAS  IaaS  SaaS CNCF
---
# Kubernetes 版本发布时间线

## 从 v1.0 到 v1.35 | 每版本核心功能、作用与使用场景


---

## 版本总览

```
2015 ─── v1.0 ─── v1.1 ─── v1.2
2016 ─── v1.3 ─── v1.4 ─── v1.5
2017 ─── v1.6 ─── v1.7 ─── v1.8 ─── v1.9
2018 ─── v1.10 ── v1.11 ── v1.12 ── v1.13
2019 ─── v1.14 ── v1.15 ── v1.16 ── v1.17
2020 ─── v1.18 ── v1.19 ── v1.20
2021 ─── v1.21 ── v1.22 ── v1.23
2022 ─── v1.24 ── v1.25 ── v1.26
2023 ─── v1.27 ── v1.28 ── v1.29
2024 ─── v1.30 ── v1.31 ── v1.32
2025 ─── v1.33 ── v1.34 ── v1.35
2026 ─── v1.36（计划4月22日发布）
```

---

## 一、奠基期（2015-2016）：从 Google 内部项目到开源标准

### v1.0 — 2015年7月21日

| 项目 | 内容 |
|------|------|
| 代号 | — |
| 核心功能 | Pod、Service、ReplicationController、Label/Selector |
| 意义 | K8s 正式开源发布，Google 联合 Linux 基金会成立 CNCF |
| 场景 | 基础容器编排——把容器部署到集群、服务发现、负载均衡 |

K8s 的起点，从 Google 内部 Borg 系统演变而来。确立了 Pod（最小调度单位）、Service（服务发现）、Label（标签选择器）三大核心概念。

### v1.1 — 2015年11月9日

| 项目 | 内容 |
|------|------|
| 核心功能 | HPA（水平自动伸缩）、Job（批处理）、HTTP 负载均衡（Ingress 雏形） |
| 意义 | 从"能跑容器"到"能弹性伸缩" |
| 场景 | 电商大促自动扩容——流量来了自动加 Pod，流量走了自动缩 |

### v1.2 — 2016年3月16日

| 项目 | 内容 |
|------|------|
| 核心功能 | Deployment（声明式部署）、ConfigMap、多可用区调度 |
| 意义 | 引入 Deployment 替代 ReplicationController，支持滚动更新和回滚 |
| 场景 | 零停机发版——v1 逐步替换为 v2，出问题一键回滚 |

**Deployment 是 K8s 最重要的资源之一**，从此"kubectl apply"成为标准操作。

### v1.3 — 2016年7月1日

| 项目 | 内容 |
|------|------|
| 核心功能 | PetSet（后改名 StatefulSet）、集群联邦、Init Container |
| 意义 | 开始支持有状态应用（数据库、消息队列） |
| 场景 | 在 K8s 上跑 MySQL 集群——每个 Pod 有固定名字和存储 |

### v1.4 — 2016年9月26日

| 项目 | 内容 |
|------|------|
| 核心功能 | **kubeadm**（一键部署工具）、ScheduledJob（定时任务）、Pod 亲和/反亲和 |
| 意义 | kubeadm 让"10分钟搭建 K8s 集群"成为可能 |
| 场景 | 你用 kubeadm 搭建的 aPaaS 和 IaaS 集群就是这个工具 |

### v1.5 — 2016年12月12日

| 项目 | 内容 |
|------|------|
| 核心功能 | **StatefulSet**（正式命名）、PodDisruptionBudget（PDB）、kubefed v1 |
| 意义 | 有状态应用正式支持，PDB 保证升级时不中断服务 |
| 场景 | etcd 集群部署——3 节点 StatefulSet，PDB 保证至少 2 节点存活 |

---

## 二、成长期（2017-2018）：RBAC、CRD 奠定生态基础

### v1.6 — 2017年3月28日

| 项目 | 内容 |
|------|------|
| 核心功能 | **RBAC**（基于角色的访问控制）、etcd v3、动态存储卷、Pod 节点亲和 |
| 意义 | RBAC 让 K8s 进入企业级——谁能访问什么资源有了精细控制 |
| 场景 | 多团队共享集群——开发只能看自己 namespace，运维能看全部 |

### v1.7 — 2017年6月29日

| 项目 | 内容 |
|------|------|
| 核心功能 | **CRD**（自定义资源定义）替代 TPR、NetworkPolicy、本地存储 |
| 意义 | CRD 是 K8s 生态爆发的基础——任何人都可以扩展 K8s API |
| 场景 | KubeVirt 通过 CRD 添加 VirtualMachine 资源、Karmada 添加 Cluster 资源 |

**CRD 是 K8s 最重要的里程碑之一**。没有 CRD 就没有 Operator 模式，没有 Operator 就没有今天的 CNCF 生态。

### v1.8 — 2017年9月28日

| 项目 | 内容 |
|------|------|
| 核心功能 | RBAC GA（正式稳定）、CronJob Beta、存储卷快照 Alpha |
| 意义 | 安全模型成熟，企业开始大规模采用 |
| 场景 | 金融企业上 K8s——RBAC 满足审计合规要求 |

### v1.9 — 2017年12月15日

| 项目 | 内容 |
|------|------|
| 核心功能 | Workloads API GA（Deployment/StatefulSet/DaemonSet/ReplicaSet 全部稳定）、Windows 容器 Alpha |
| 意义 | 核心工作负载 API 全部 GA，标志着 K8s 生产就绪 |
| 场景 | 大规模生产部署——所有核心资源类型都经过充分验证 |

### v1.10 — 2018年3月26日

| 项目 | 内容 |
|------|------|
| 核心功能 | 存储：本地持久卷 Beta、CSI（容器存储接口）Alpha |
| 意义 | CSI 标准化了存储插件接口，Longhorn/Rook 等存储方案的基础 |
| 场景 | 你装的 Longhorn 就是通过 CSI 接口对接 K8s 的 |

### v1.11 — 2018年6月27日

| 项目 | 内容 |
|------|------|
| 核心功能 | CoreDNS 成为默认 DNS、IPVS 负载均衡 GA、Pod 优先级调度 |
| 意义 | CoreDNS 替代 kube-dns，更轻量更可扩展 |
| 场景 | 集群内服务发现——Pod 通过域名互相访问（mysql.apaas.svc） |

### v1.12 — 2018年9月27日

| 项目 | 内容 |
|------|------|
| 核心功能 | Kubelet TLS Bootstrap、RuntimeClass Alpha、快照 Alpha |
| 意义 | RuntimeClass 让同一集群跑不同容器运行时（runc/kata/gVisor） |
| 场景 | 安全敏感业务用 Kata 容器（VM 级隔离），普通业务用 runc |

### v1.13 — 2018年12月3日

| 项目 | 内容 |
|------|------|
| 核心功能 | **kubeadm GA**、CSI GA、CoreDNS GA |
| 意义 | kubeadm 正式稳定——生产级集群部署工具 |
| 场景 | 你用的 kubeadm init/join 就是这个版本 GA 的 |

---

## 三、成熟期（2019-2020）：企业级功能完善

### v1.14 — 2019年3月25日

| 项目 | 内容 |
|------|------|
| 核心功能 | **Windows 节点 GA**、kubectl 插件机制、PersistentLocalVolumes GA |
| 意义 | Windows 容器正式支持，混合集群（Linux+Windows）成为可能 |
| 场景 | .NET 应用容器化——Windows 节点跑 IIS 容器 |

### v1.15 — 2019年6月19日

| 项目 | 内容 |
|------|------|
| 核心功能 | CRD GA（自定义资源完全稳定）、集群生命周期稳定性改进 |
| 意义 | CRD 正式 GA，Operator 模式成为标准实践 |
| 场景 | 所有的 Operator（MySQL Operator、KubeVirt Operator）都依赖 CRD GA |

### v1.16 — 2019年9月18日

| 项目 | 内容 |
|------|------|
| 核心功能 | CRD 支持 OpenAPI 校验、CSI 支持卷扩容、Endpoint Slices Alpha |
| 意义 | 大量旧 API 版本被移除（apps/v1beta1/v1beta2） |
| 场景 | YAML 里的 apiVersion 必须从 beta 改成稳定版 |

### v1.17 — 2019年12月9日

| 项目 | 内容 |
|------|------|
| 核心功能 | 云控制器管理器 GA、存储卷快照 Beta |
| 意义 | 云厂商代码从核心代码库拆出，K8s 更加中立 |
| 场景 | 阿里云/AWS 的 K8s 集群各自维护自己的云控制器 |

### v1.18 — 2020年3月25日

| 项目 | 内容 |
|------|------|
| 核心功能 | **Topology Manager GA**、Sidecar 容器 Alpha、kubectl debug Alpha |
| 意义 | 拓扑管理器让 GPU/NUMA 感知调度成为可能 |
| 场景 | AI 训练任务——Pod 绑定到同一 NUMA 节点的 GPU 上，减少延迟 |

### v1.19 — 2020年8月26日

| 项目 | 内容 |
|------|------|
| 核心功能 | **Ingress GA**、EndpointSlices GA、存储容量跟踪 |
| 意义 | Ingress 经过 4 年 beta 终于 GA，支持周期延长到 1 年 |
| 场景 | 你配的 Emissary Mapping 本质上是 Ingress 的高级替代 |

### v1.20 — 2020年12月8日

| 项目 | 内容 |
|------|------|
| 代号 | "The Raddest Release" |
| 核心功能 | **Dockershim 弃用公告**、kubectl debug GA、API 优先级和公平性 Beta |
| 意义 | 宣布将移除 Docker 运行时，推动 containerd 成为标准 |
| 场景 | 你的集群用 containerd 而不是 Docker，就是从这个版本开始推动的 |

---

## 四、云原生深水区（2021-2022）：去 Docker 化、安全加固

### v1.21 — 2021年4月8日

| 项目 | 内容 |
|------|------|
| 核心功能 | CronJob GA、PodDisruptionBudget GA、Immutable Secrets/ConfigMaps GA |
| 意义 | 运维基础能力全面 GA |
| 场景 | 定时任务（每天凌晨清理日志）、不可变配置（安全加固） |

### v1.22 — 2021年8月4日

| 项目 | 内容 |
|------|------|
| 核心功能 | 移除大量 beta API、Server-Side Apply GA、外部凭证提供者 Alpha |
| 意义 | 强制用户迁移到稳定 API，提升安全性 |
| 场景 | 所有 Ingress YAML 必须改 apiVersion 到 networking.k8s.io/v1 |

### v1.23 — 2021年12月7日

| 项目 | 内容 |
|------|------|
| 核心功能 | **IPv4/IPv6 双栈 GA**、HPA v2 GA、FlexVolume 弃用 |
| 意义 | 双栈网络正式支持，运营商/电信场景可用 |
| 场景 | 5G 核心网——Pod 同时有 IPv4 和 IPv6 地址 |

### v1.24 — 2022年5月3日

| 项目 | 内容 |
|------|------|
| 代号 | "Stargazer" |
| 核心功能 | **Dockershim 正式移除**、存储卷快照 GA、gRPC 探针 Alpha |
| 意义 | Docker 不再是 K8s 的默认运行时，containerd/CRI-O 接替 |
| 场景 | 从 v1.24 开始，节点必须用 containerd 或 CRI-O |

**这是最大的破坏性变更之一**——所有用 Docker 的集群必须迁移到 containerd。

### v1.25 — 2022年8月23日

| 项目 | 内容 |
|------|------|
| 代号 | "Combiner" |
| 核心功能 | PodSecurityPolicy（PSP）移除、**Pod Security Admission GA**、CSI 临时卷 GA |
| 意义 | PSP 被 Pod Security Standards 替代，安全模型大改 |
| 场景 | 你用的 OPA Gatekeeper 就是 PSP 移除后的替代方案之一 |

### v1.26 — 2022年12月9日

| 项目 | 内容 |
|------|------|
| 代号 | "Electrifying" |
| 核心功能 | **动态资源分配（DRA）Alpha**、Auth API 改进、Signal 优雅关闭 GA |
| 意义 | DRA 让 GPU/FPGA 等特殊资源像 CPU/内存一样被调度 |
| 场景 | AI 集群——Pod 申请 2 块 A100 GPU，调度器自动分配 |

---

## 五、AI 与性能优化期（2023-2024）：Sidecar、Gateway API

### v1.27 — 2023年4月11日

| 项目 | 内容 |
|------|------|
| 代号 | "Chill Vibes" |
| 核心功能 | **原生 Sidecar 容器 Alpha**、SeccompDefault GA、存储容量估算 |
| 意义 | Sidecar 容器有了正式的生命周期管理（之前是 hack） |
| 场景 | Dapr/Istio Sidecar 注入——现在 Sidecar 可以在主容器之前启动、之后停止 |

### v1.28 — 2023年8月15日 ⭐ 你用的版本

| 项目 | 内容 |
|------|------|
| 代号 | "Planternetes" |
| 核心功能 | Sidecar 容器 Beta、**混合版本代理 Alpha**、Job 失败处理改进 |
| 意义 | 混合版本代理让集群升级更平滑，不用所有节点同时升级 |
| 场景 | 你的 aPaaS 和 IaaS 集群用的就是这个版本 |

### v1.29 — 2023年12月13日

| 项目 | 内容 |
|------|------|
| 代号 | "Mandala" |
| 核心功能 | **ReadWriteOncePod GA**、Node 生命周期改进、KMS v2 GA |
| 意义 | ReadWriteOncePod 保证 PVC 只被一个 Pod 挂载（数据安全） |
| 场景 | 数据库存储——确保只有一个 MySQL Pod 写同一块磁盘 |

### v1.30 — 2024年4月17日

| 项目 | 内容 |
|------|------|
| 代号 | "Uwubernetes" |
| 核心功能 | 动态资源分配 Beta、**VolumeAttributesClass Alpha**、Pod 调度就绪 GA |
| 意义 | 存储属性可以动态调整（IOPS、吞吐量） |
| 场景 | 在线扩容磁盘性能——高峰期临时提升 IOPS，低谷期降回来 |

### v1.31 — 2024年8月13日

| 项目 | 内容 |
|------|------|
| 代号 | "Elli" |
| 核心功能 | **原生 Sidecar 容器 GA**、AppArmor GA、多 Service CIDR Alpha |
| 意义 | Sidecar 正式稳定——Dapr、Istio、Envoy 注入更可靠 |
| 场景 | 你的 Dapr Sidecar 注入到 NocoBase，在 v1.31+ 有官方生命周期支持 |

### v1.32 — 2024年12月11日

| 项目 | 内容 |
|------|------|
| 代号 | "Penelope" |
| 核心功能 | DRA GA、**Pod 生命周期睡眠动作 GA**、自定义资源字段选择器 |
| 意义 | 动态资源分配正式稳定，GPU 调度标准化 |
| 场景 | AI 推理集群——Pod 声明需要多少 GPU，调度器自动分配 |

---

## 六、前沿期（2025-2026）：In-Place Resize、Gateway API 成熟

### v1.33 — 2025年4月23日

| 项目 | 内容 |
|------|------|
| 核心功能 | **In-Place Pod Resize Beta**、Sidecar 容器改进、服务流量分发增强 |
| 意义 | 不重启 Pod 就能改 CPU/内存——在线垂直扩容 |
| 场景 | 数据库 Pod 内存不够了，直接改 limits 不用重启 MySQL |

### v1.34 — 2025年8月13日

| 项目 | 内容 |
|------|------|
| 核心功能 | VolumeAttributesClass GA、Gateway API 增强、CGroup v2 强制 |
| 意义 | 存储属性动态调整正式稳定 |
| 场景 | 阿里云 EBS 动态调整 IOPS——从 3000 IOPS 在线提升到 10000 |

### v1.35 — 2025年12月10日（当前最新稳定版）

| 项目 | 内容 |
|------|------|
| 核心功能 | **In-Place Pod Resize GA**、StatefulSet MaxUnavailable Beta、containerd 1.x 最后版本 |
| 意义 | Pod 原地扩缩容正式稳定——K8s 历史上最受期待的功能之一 |
| 场景 | 不重启容器调整资源——Java 应用内存从 4G 在线扩到 8G，零停机 |

关键警告：containerd 1.x 将在 v1.36 不再支持，必须升级到 containerd 2.0。

### v1.36 — 2026年4月22日（即将发布）

| 项目 | 内容 |
|------|------|
| 核心功能 | kube-proxy IPVS 模式移除、Ingress-NGINX 退役、containerd 2.0 强制 |
| 意义 | Ingress-NGINX 正式退役，推动迁移到 Gateway API |
| 场景 | 你用的 Emissary 已经是 Gateway API 方向的选型 |

---

## 里程碑功能时间线

```
2015  v1.0   Pod/Service/RC 基础模型
       │
2016  v1.2   Deployment（声明式部署）
       │
       v1.4   kubeadm（一键部署）
       │
2017  v1.6   RBAC（权限控制）
       │
       v1.7   CRD（自定义资源）← 生态爆发点
       │
2018  v1.10  CSI（存储接口标准）
       │
       v1.13  kubeadm GA + CSI GA
       │
2019  v1.14  Windows GA
       │
       v1.19  Ingress GA
       │
2020  v1.20  Dockershim 弃用公告
       │
2022  v1.24  Dockershim 移除 ← containerd 成标准
       │
       v1.25  PSP 移除 → Pod Security Admission
       │
2023  v1.27  Sidecar 容器 Alpha
       │
       v1.28  你的集群版本
       │
2024  v1.31  Sidecar GA
       │
       v1.32  DRA GA（GPU 调度标准化）
       │
2025  v1.35  In-Place Pod Resize GA ← 当前最新
       │
2026  v1.36  Ingress-NGINX 退役 → Gateway API
```

---

## 版本选型建议

| 场景 | 推荐版本 | 原因 |
|------|---------|------|
| 新建生产集群 | **v1.34** | 稳定 + 支持到 2026.10 |
| 追新但稳定 | **v1.35** | 最新 GA，支持到 2027.02 |
| 存量集群升级 | 逐版本升级 | 不要跨超过 2 个版本 |
| 实验/学习 | v1.28-v1.30 | 教程和文档最多 |
| AI/GPU 集群 | **v1.32+** | DRA GA，GPU 调度标准化 |

---

## 面试高频版本知识点

### "说说 K8s 发展历程中最重要的几个版本"

1. **v1.0（2015）**：开源发布，CNCF 成立
2. **v1.7（2017）**：CRD 引入，Operator 生态爆发的起点
3. **v1.13（2018）**：kubeadm + CSI 双 GA，生产部署标准化
4. **v1.24（2022）**：Dockershim 移除，containerd 成为标准
5. **v1.31（2024）**：Sidecar GA，服务网格原生支持
6. **v1.35（2025）**：In-Place Resize GA，不重启容器调整资源

### "你为什么选 v1.28？"

"v1.28 是 2023 年 8 月发布的版本，选它是因为：一是国内镜像源（阿里云）对该版本支持完善；二是 kubeadm 和各 CNCF 组件（KubeVirt、Karmada、Kube-OVN）对 v1.28 兼容性经过充分验证；三是作为实验环境，稳定性优先于新功能。生产环境我会选择 v1.34，因为它在支持期内且包含 DRA GA 等重要功能。"

---







