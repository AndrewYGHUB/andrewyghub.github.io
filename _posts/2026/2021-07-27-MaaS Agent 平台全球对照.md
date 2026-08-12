---
layout: post
title: MaaS Agent 平台全球对照
excerpt: leetcode
categories: [leetcode]
tags: 云原生  数字孪生  微服务
---

# MaaS / Agent 平台全球对照

> 以阿里云百炼为坐标原点 · 国内 11 家 + 国外云厂商 7 家 + 独立平台 10 家
> 数据基准：2026 年 8 月

---

## 先回答三个问题

### 「研发几年了？」——约 3 年，而且是全球同步起跑的

百炼 2023-10-31 在云栖大会发布。同一年：百度千帆 2023 年 3 月、火山方舟 2023-06-28、AWS Bedrock 2023-09-28 GA、腾讯混元 2023-09-07。

也就是说 2023 年这一波「大模型服务平台」是中美几乎同时发令的，百炼不早不晚，处在中位。

### 「有类似的品牌吗？」——非常多，而且已分化成三个不同物种

| 物种 | 代表 | 商业逻辑 |
|---|---|---|
| ① 云厂商自带平台 | 百炼、千帆、方舟、Bedrock、Microsoft Foundry、GEAP | 卖存量客户的顺手转化，核心资产是合同/合规/数据引力 |
| ② 模型厂商自家开放平台 | 智谱 BigModel、OpenAI、Anthropic | 卖模型本身，平台是分发渠道 |
| ③ 独立中立平台 | 硅基流动、Dify、Together、Fireworks、OpenRouter、Modal | 卖单点极致（性能/价格/中立性） |

三类的商业逻辑完全不同，**不该放在一张表里直接比价**。

### 「成熟」这个感受是对的，但成熟的方向变了

2025–2026 这一年，全行业集体从「模型 API 商店」转向 **「Agent 运行时 + 治理平面」**。

AWS 的 AgentCore、Google GEAP 的四支柱、Microsoft 的 Foundry Control Plane、百炼的 Agent 2.0 + ADK —— 命名各异，但新增的原语高度趋同：

> 托管 Runtime · Memory · Identity · Gateway/Registry · Observability · Evaluation

你现在看到的「成熟」，主要是这一层堆起来的。

---

## 一、阿里云百炼：时间线与当前形态

### 1.1 关键节点

| 日期 | 事件 |
|---|---|
| 2023-10-31 | 2023 云栖大会发布，定位「一站式大模型应用开发平台」。首批案例：央视网、朗新科技、亚信科技 |
| 2024-02 | 国际版 Model Studio 在新加坡首发 |
| 2024-03-31 | 官方插件上线 + Assistant API |
| 2024-08 | 长期记忆与用户画像、「流程编排」应用类型 |
| 2025-02-18 | DeepSeek 系列接入工作流与智能体 |
| **2025-04-09** | **MCP 广场与 MCP 管理上线** |
| 2025-08-13 | MCP 对外调用（应用可被 MCP 客户端调用） |
| **2025-08-19** | **百炼专属版**发布，面向混合云/私有云，目标金融、医疗、公共服务 |
| 2025-09-23 | 支持 **Dify 工作流一键导入** |
| **2025-09-24** | 云栖大会：**高代码应用**（直接部署 Python 项目）+ **ModelStudio-ADK** 高代码框架。官方口径 20 万+ 开发者、80 万+ Agent |
| **2025-12-26** | **Agent 2.0**：知识库与 MCP 统一抽象为「工具」 |
| 2026-02-06 | 新版评测集，支持 agent / workflow / 自定义评测类型 |
| 2026-03-03 | MWC 2026：专属版进军国际，宣称可 100% 物理隔离部署 |
| **2026-05-20** | **宣布全面开放平台**，首批上架智谱 GLM-5.1、MiniMax M2.7、Kimi K2.6、Kling-v3、Tripo-H3.1 等。财报口径：截至 2026-03 客户数同比增长 8 倍 |
| 2026-06 | 托管 Agent 运行时 API、记忆库、PTU 长输入与缓存、新增美/德/日地域 |

### 1.2 当前能力盘点

| 层 | 能力 |
|---|---|
| **模型服务** | 模型广场 · 微调（SFT / CPT / DPO）· 模型部署 · 模型评测（人工/自动/基线，2026-02 起支持 agent 与 workflow 评测） |
| **推理 API** | 兼容 OpenAI 接口规范；另有 Anthropic 兼容格式与 DashScope 原生格式 |
| **应用构建** | 可视化智能体 / 工作流应用 · **高代码应用（部署 Python 项目）** · 知识库 RAG · 插件与 MCP · 多渠道发布（网页/钉钉/微信） |
| **多模态** | 文本、视觉理解、图像生成、视频生成（万相）、ASR/TTS、向量嵌入 |
| **模型阵容** | **自研** Qwen 3.8-Max / 3.7-Plus / 3.7-Flash、Qwen3.5-Omni-Plus、Qwen-Image-3.0-Pro、万相视频、Qwen-Audio-3.0<br>**第三方** DeepSeek v4、Kimi k3、GLM-5.2、MiniMax-M3、小米 mimo-v2.5-pro、Tripo 3D |
| **地域** | 北京、新加坡、东京、法兰克福、弗吉尼亚 |
| **计费** | 按 Token（阶梯计价 / Batch 五折 / 上下文缓存单独定价）· **Token Plan 订阅**（Credits 制，个人 39–499 元/月，团队 150–1398 元/席/月，均标注限时价）· 模型部署单元按时长 · PTU · 知识库资源包 · 新用户 90 天免费额度 |

---

## 二、国内同类平台

| 平台 | 首次推出 | 定位 | 模型开放度 | 私有化 | 核心差异化 |
|---|---|---|---|---|---|
| **阿里云百炼** | 2023-10-31 | 云厂商 MaaS + Agent | 自研+第三方<br>Qwen + GLM/Kimi/MiniMax/DeepSeek | ✅ 专属版 | 低代码 ADP + 高代码 ADK 双轨；MCP 生态最早落地之一；支持 Dify 工作流导入 |
| **百度千帆** | 2023-03 | 云厂商 MaaS + Agent | 自研+第三方<br>文心 + DeepSeek/Kimi/GLM | ✅ 一体机 / ABC Stack | 百度独家工具组件（AI 搜索、百科）；2025-10 品牌升级为「大模型服务及 Agent 开发平台」 |
| **火山方舟 Ark** | 2023-06-28 | 云厂商 MaaS | 自研+第三方<br>豆包 Seed + DeepSeek/GLM/Kimi | ⚠️ 本体未查证到<br>企业侧走 HiAgent | 价格战发起方；与 TRAE（AI IDE）+ 扣子 + AgentKit 组成完整工具链；**按输入长度分档计价** |
| **腾讯 ADP** | 2025-05-21<br>（知识引擎升级） | 企业原生智能体平台 | 自研+第三方<br>混元 + 企业自建模型 | ⚠️ 未查证到 | AgentOps 为核心；云端 Agent Harness 7×24 托管；动态 Agentic RAG；2026-07 发 4.0 海外版 |
| **腾讯 TI-ONE** | ⚠️ 未查证到 | 大模型训推平台 | 自研+第三方 | ⚠️ 企业方案有，细节未查证到 | TACO 推理加速；GPU 虚拟化可切到 **0.01 卡**；潮汐调度训推混布 |
| **腾讯元器** | 2024-05-17 | Agent 创作与分发 | 仅混元 | — | 一键分发到 **QQ、微信客服** —— 唯一且不可替代 |
| **华为云 ModelArts Studio** | 2024 年 HDC | 云厂商 MaaS（昇腾） | 自研+大量开源<br>openPangu + DeepSeek/Qwen/GLM/Kimi | ⚠️ 官网未明确 | 与昇腾算力深度绑定，算子与显存已针对性优化；官方强调「不碰数据、不做应用」的中立边界 |
| **智谱 BigModel** | MaaS 2.0<br>2024-06-05 | 模型厂商开放平台 | 基本仅 GLM 系 | ✅ | GLM 全栈；联网搜索与知识库检索内置；常驻免费模型多 |
| **硅基流动** | 公司 2023-08<br>平台 2024-01 | 中立 MaaS / AI Infra | 纯第三方开源<br>150+ 模型 | ✅ 含一体机 | 自研 SiliconLLM 推理引擎；**不做基础模型**，靠推理性能与单价竞争；国产算力适配 |
| **字节扣子 Coze** | 海外 2023-12<br>国内 2024-02 | Agent 开发平台（低代码为主） | 豆包 + 第三方 | ✅ 开源版 Coze Studio<br>Apache 2.0，2025-07-26 | 2026-06 扣子 3.0 五端覆盖；开源版后端 Golang + CloudWeGo；统一积分制计费 |
| **Dify** | 2023-03 启动<br>2023-05 开源 | 开源 LLMOps / Agentic 工作流 | 完全中立 | ✅ 社区版自托管 | 事实上的「AI 应用中间层」标准之一，反被大厂接纳（百炼支持其工作流导入） |

> ⚠️ **Dify 许可证有坑。** 虽标称 Apache 2.0，但附加条款限制多租户：第三方拆解引用其原文为「未经 Dify 书面授权，不得使用 Dify 源码运营多租户环境」。内部自托管没问题，**基于 Dify 对外做多租户 SaaS 需商业授权**。（此为第三方文章引用，未从 LICENSE 原文核实。）

### 国内值得记住的四个观察

1. **MCP 在 2025 年 Q2 集中落地**：百炼 MCP 广场 04-09、腾讯 ADP 05-21、火山 MCP Servers 06-12。这是一次行业级的同步动作。

2. **模型开放度分三层**：完全中立（硅基流动、Dify）→ 自研为主+大量第三方（百炼、方舟、千帆、华为云）→ 基本只有自家（智谱、元器）。注意百炼虽然 2025-02 就接了 DeepSeek，但到 **2026-05-20** 才把「全面开放给头部 AI 厂商」当成正式姿态宣布。

3. **计费从 Token 后付费转向订阅制**：2026 年密集出现 —— 百炼 Token Plan、火山 Coding Plan（9.9–49.9 元/月）、百度 Token 福利包、扣子积分制。行业正在从「卖 Token 用量」转向「卖 Agent 产出」。

4. **私有化是国内 B 端硬需求**，每家都有对应产品线，唯独华为云 MaaS 的私有化选项在官网未明确。

---

## 三、国外云厂商平台

> ⚠️ **先说改名 —— 三个平台的名字在 2025–2026 都变了，而且不是换皮：**
>
> - Azure AI Studio → Azure AI Foundry → **Microsoft Foundry**（Ignite 2025）。资源模型从 Hub+AOAI 合并为单一 Foundry resource，Assistants API 换成 Responses API
> - **Vertex AI → Gemini Enterprise Agent Platform（GEAP）**，2026-04-22。官方明确「今后所有 Vertex AI 服务与路线图将**独占式地**通过 Agent Platform 交付」—— Vertex AI 这个品牌已经没了
> - Google Agentspace → 折叠进 **Gemini Enterprise**（2025-10）

| 平台 | 首次 GA | Agent 服务 | 第三方闭源模型 | 本地/边缘 | 计价单位 | 最大差异点 |
|---|---|---|---|---|---|---|
| **AWS Bedrock**<br>+ AgentCore | 2023-09-28 | AgentCore GA<br>2025-10-13 | ✅ Claude / **GPT-5.x** / Grok<br>（无 Gemini 闭源） | ✗ | token + AgentCore 资源用量 | AgentCore **框架无关、模型无关**，可跑 LangGraph/CrewAI，甚至可用非 Bedrock 模型；模块拆得最细 |
| **Microsoft Foundry** | AOAI 2023-01<br>Foundry 2024-11 | Agent Service GA<br>2025-05-20 | ✅ **GPT + Claude**<br>（唯一双供云） | ✅ Foundry Local /<br>Azure Local | token + PTU | 唯一同时提供 OpenAI 与 Anthropic；边缘与主权 AI 最强；Foundry Control Plane 做 agent 舰队治理 |
| **Google GEAP**<br>（原 Vertex AI） | Vertex AI 2021-05-18<br>GEAP 2026-04-22 | 四支柱架构 | ✅ Claude / Grok / DeepSeek | ⚠️ 未查证到 | token + 三档倍率 | **治理与安全最完整**：Agent Identity（每 agent 唯一加密 ID + 审计链）、Agent Gateway、Agent Threat Detection、Security Command Center 集成 |
| **OpenAI Platform** | — | ⚠️ **大规模退役** | ✗ 仅自家 | ✗ | token | **唯一在做减法的** —— 主动退出平台层，回退到「API + 开源 SDK + 自托管」 |
| **Anthropic Claude**<br>Developer Platform | 2023-07 | Managed Agents Beta<br>2026-04-08 | ✗ 仅自家 | ✅ self-hosted environment | token + **$0.08/session-hour** | 产品四分清晰（Client SDK / Agent SDK / Managed Agents / Claude Code）；**唯一在四大平台全覆盖的第三方模型** |
| **Databricks**<br>Mosaic AI / Agent Bricks | Mosaic AI 2024-06<br>Agent Bricks 2025-06-11 | 组件分批 GA | ✅ OpenAI / Claude / Gemini / Grok | ✗（data plane 在客户 VPC） | **DBU** | **Unity Catalog 数据治理同源** —— agents / tools / models 统一注册。规模：10 万+ agents，年处理 1 quadrillion+ tokens |
| **NVIDIA NIM**<br>/ AI Enterprise | 2024-03-18 | 无托管服务 | ✗ 仅开放权重 | ✅✅ 完全可移植 | **$4,500/GPU/年**<br>或 $1/GPU/小时 | 不是云平台，是**可移植的推理运行时 + 软件许可**。「Run NIM Anywhere」，是其他六家的补集而非竞品 |

### ⚠️ 如果你在用 OpenAI 的 Assistants API，这是最紧急的一条

| 组件 | 关停时间 | 迁移方向 |
|---|---|---|
| `Assistants API` | **2026-08-26**（距今约 2 周） | Responses API + Conversations API |
| `Agent Builder` | 2026-11-30 | 自托管：ChatKit 前端 + Agents SDK 自建后端 |
| `v1/prompts`（Reusable Prompts） | 2026-11-30 | — |
| `Evals` 仪表盘与 API | 2026-11-30（10-31 转只读） | 官方建议直接用**第三方工具**（如 Promptfoo） |

### 国外三个反常识事实

1. **模型的排他性分发正在瓦解。** Bedrock 现在提供 OpenAI 的闭源 GPT-5.x（但仍无 Gemini）；Microsoft Foundry 同时提供 GPT 和 Claude。Claude 是唯一在 Bedrock / Foundry / GEAP / Databricks 四大平台全覆盖的第三方模型。

2. **治理与身份是新的差异化轴。** Agent 数量爆炸后的可审计性成了企业真痛点，Google 的 Agent Identity + Threat Detection、微软的 Control Plane、Databricks 的 Unity Catalog 都在打这一点。

3. **OpenAI 在战略性让位。** 四项托管能力同时退役，把编排与评测的战场让给云厂商，自己守住模型层和 ChatGPT 产品层。

---

## 四、国外独立平台

> ⚠️ **这个赛道刚发生两次剧变，很多中文资料还没更新：**
>
> ① **Replicate 已不独立** —— 2025-11-17 被 Cloudflare 收购，5 万+ 模型正在并入 Workers AI。
> ② **Groq 已不是「自研芯片公司」** —— 2025-12 与 NVIDIA 签非独占技术授权（媒体报道对价约 200 亿美元），核心 IP 与关键人员流向 NVIDIA；GTC 2026 上 NVIDIA 发布了整合 Groq 技术的 LPX 平台。Groq 自身转型为纯推理 neocloud。

| 平台 | 定位 | 核心差异化 | 模型范围 | 参考价格 | 估值/规模 |
|---|---|---|---|---|---|
| **Hugging Face** | 「ML 界的 GitHub」+ 分发托管层 | 生态位而非性能位：模型发现 + 权重分发 + 一键部署三合一；Inference Providers 把请求路由给第三方 | 最广，200 万+ 模型，偏开源 | PRO $9/月；H100 $4.50/h | 45 亿（2023 D 轮） |
| **Together AI** | 开放权重模型的生产平台全栈 | 企业级部署原语：canary / blue-green / 滚动更新 + 自动回滚、影子流量；**同时卖 token 和卖 GPU 小时**，客户随规模迁移不换供应商 | 纯开放权重，40+ 生产优化模型 | H100 专属 $5.49/h、集群 $3.99/h；PTU $0.05/分钟 | **83 亿**（2026-07）<br>年化 bookings 11.5 亿+ |
| **Fireworks AI** | 企业级模型定制 + 推理 | 微调/后训练是一等公民；自研 FireAttention；卖的不是算力单价而是「调优后单位效果的成本」 | 开放权重为主 | H100 $7.00/h；**区域限定 ×1.5** | **175 亿**（2026-07）<br>ARR 超 10 亿，同比 5× |
| **Replicate**<br>（已属 Cloudflare） | 社区型模型市场 | **Cog**（开源模型容器打包标准）是最持久的技术资产；生成式媒体见长 | 5 万+ 模型，长尾极长 | 纯按秒，**无免费额度**；H100 $5.49/h | 收购前估值 3.5 亿 |
| **Groq** | 低延迟推理 neocloud | 极致 tokens/s 仍是唯一且强悍的卖点，但**护城河已从「自有芯片」变成「运营规模 + NVIDIA 绑定」** | 精选而非广谱 | Llama 3.1 8B $0.05/$0.08；折扣叠加后可低至挂牌价 25% | 2026-06 再融 6.5 亿 |
| **Modal** | 通用 serverless GPU 计算 | 不卖 token，卖「Python 装饰器把代码扔到 GPU 上」。Rust 自研容器运行时，**冷启动常在 1 秒内**，按秒计费闲置不计 | 不预置模型目录，任意模型任意框架 | H100 ~$3.95/h<br>⚠️ **non-preemptible ×3 → 实际约 $11.85/h** | **46.5 亿**（2026-05） |
| **LangSmith /<br>LangGraph Platform** | 唯一不碰算力的纯应用层 | agent 编排框架 + 可观测性/评测 + 托管运行时。LangGraph 提供**低层图编排**（状态机 + 断点 + human-in-the-loop + 持久化）而非黑盒 agent | 全部 —— 坐在所有推理平台之上 | LangSmith Plus $39/席位/月；LangGraph **$0.001/节点执行** | 12.5 亿（2025-10）<br>约 35% 财富 500 强在用 |
| **OpenRouter** | AI 网关 / 路由层 | **推理零加价**，靠充值手续费盈利；`:nitro`/`:floor`/`:exacto` 路由策略；供应商故障自动 fallback | 最广，400+ 模型，闭源+开源通吃 | 充值 5.5%（最低 $0.80） | 13 亿（2026-05）<br>月处理 100 万亿 token |
| **Baseten** | 企业级专属推理部署 | 开源工具 Truss；「路由到能力够用但便宜得多的开源替代品」 | 你的模型、你的 SLA | — | **130 亿**（2026-06 新一轮） |
| **fal** | 生成式媒体推理垂直冠军 | 自研 FAL 引擎针对扩散模型优化。**证明了垂直专精能打赢通用平台** —— 抢的正是 Replicate 原本的地盘 | 600+ 图像/视频/音频/3D 模型 | — | 45 亿（2025-12）<br>年化收入 2024 底 2500 万 → 2026-02 **4 亿** |

### 网关赛道横向

> 2026 年重要事实：**主流网关均已不对 token 加价**

| 网关 | 平台费 | BYOK |
|---|---|---|
| OpenRouter | 充值 5.5%（最低 $0.80） | 100 万请求/月内免费 |
| Vercel AI Gateway | 按量 + 支付手续费 | 免费（付费层） |
| Cloudflare AI Gateway | 直连免费；统一计费 5% | 支持 |
| Portkey | 免费层；生产版 $49/月 | 支持 |
| LiteLLM | 免费（自付基础设施） | 支持 |

---

## 五、独立平台 vs 云厂商平台

**本质差异**：云厂商卖的是「你已经在我这里了，顺手把 AI 也在我这里做了」，核心资产是合同、合规和数据引力；独立平台卖的是「我在某一个维度做到极致，值得你多接一个供应商」，核心资产是性能、价格和迭代速度。

### 独立平台的优势

| 维度 | 说明 |
|---|---|
| **新模型上线速度** | 常在开源模型发布当天或数天内上线；云厂商受内部合规评审与区域排期约束，滞后数周至数月 |
| **单位成本** | Fireworks 称比同类闭源便宜 5–10 倍；Groq 折扣叠加后可到挂牌价 25%；Together PTU 称持续流量下降本 83% |
| **性能极限** | Groq 的延迟、fal 的扩散模型吞吐、Modal 的亚秒冷启动，都是单点深度优化的产物 |
| **计费粒度** | Modal 按秒计费闲置不计，对尖峰型负载是不同量级的效率 |
| **避免锁定** | 选 Bedrock 意味着 IAM、VPC、CloudWatch、Guardrails 全套绑定 |
| **长尾覆盖** | HF 200 万+、Replicate 5 万+、OpenRouter 400+；云厂商是精选制 |

### 云厂商平台的优势

| 维度 | 说明 |
|---|---|
| **合规与数据主权** | 等保/SOC2/HIPAA/GDPR、区域驻留、私有网络。金融医疗政企的硬门槛，也是独立平台最难补的短板 |
| **采购一体化** | 已有云消费承诺可直接抵扣。对大企业，「多签一个供应商」的隐性成本常超过技术差价 |
| **与数据栈原生集成** | 数据在 OSS/S3，向量库、数仓、权限体系同账号内。RAG 场景引力极强 |
| **SLA 与责任主体** | 有法律意义的赔付条款和成建制企业支持 |
| **存续风险低** | 2025–2026 反复验证 —— **三年内已有三家独立平台发生控制权或路线重大变更**（Replicate 被收购、Groq IP 转让、OpenRouter 传出收购意向） |
| **容量保障** | GPU 紧缺周期中超大云的容量池更稳 |

### 实务建议：不是二选一，而是分层

1. **网关层放中立** —— 用 OpenRouter / LiteLLM 抽象掉供应商，保留随时切换的能力。成本最低、收益最高的一步。

2. **推理层按场景选**
    - 延迟敏感（语音/实时对话）→ Groq
    - 开源模型规模化生产 → Together / Fireworks / Baseten
    - 生成式媒体 → fal
    - 自定义流水线与 sandbox → Modal
    - 长尾探索 → Hugging Face / Replicate

3. **合规敏感负载留在云厂商** —— 涉及个人信息、金融数据、需要审计的部分放百炼 / Bedrock，哪怕单价更贵。

4. **应用编排层独立于两者** —— LangGraph / Dify 这类天然模型中立，可同时接云厂商和独立平台，是保持可迁移性的关键位置。

5. **TCO 要算全** —— 牌价极具误导性。以下乘数与隐性项经常比基础单价的差异更大：
    - Modal 的 non-preemptible **×3**
    - Fireworks 的区域限定 **×1.5**
    - Replicate 私有部署的**空闲计费**
    - LangGraph 的**按节点执行**计费（一个复杂 agent 单次运行可能触发几十个节点）
    - 网关的充值手续费

---

## 六、数据缺口声明

以下项目本次核实未获得可靠来源，**一律未做推测填补**。做正式采购决策时需自行向厂商确认。

### 国内
- 千帆 2023-03 的具体发布日
- 腾讯 TI-ONE 首发日期与私有化形态
- 腾讯元器当前收费模式
- 华为云 MaaS 具体发布日与**是否支持私有化**
- 智谱开放平台最早上线日与完整价目
- 火山方舟本体（区别于 HiAgent）是否提供私有化
- Dify LICENSE 附加条款原文

### 国外云厂商
- Bedrock 旧版 Agents 的官方 EOL 公告
- Foundry Agent Service 逐项单价
- Foundry 模型总数口径（官方文档 1,900+ vs Ignite 博客 11,000+，均为微软官方来源）
- GEAP Agent Runtime 单价与 Gemini Enterprise 席位价
- GEAP 本地部署形态
- Anthropic 更名确切日期与官方微调服务是否存在
- Databricks Agent Evaluation 的 DBU 费率
- NIM 正式 GA 日期

### 独立平台
- HF Spaces / Inference Endpoints 确切发布日与 2024 后融资
- GroqCloud 开放日期与两轮估值
- LangSmith GA 日期
- OpenRouter 创始人与收购传闻进展
- Baseten 经审计 ARR
- Nebius Token Factory 定价
- Cerebras / SambaNova 2026 最新状态

---

## 附：主要来源

阿里云百炼官方文档（what-is / release-notes / models / billing / token-plan）、AWS Bedrock 与 AgentCore 官方公告与定价页、Microsoft Learn Foundry 文档、Google Cloud GEAP 官方博客与定价页、OpenAI Deprecations 官方页、platform.claude.com、Databricks 新闻室与定价页、docs.nvidia.com 许可指南，以及各厂商官网、新闻稿与第三方定价追踪文章。

**免责说明**：数据基准 2026 年 8 月。价格多为限时价/活动价，各平台调价频繁，仅供结构参考，落地采购前请以官网为准。