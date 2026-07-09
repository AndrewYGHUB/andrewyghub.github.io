---
layout: post
title: "技术中台CozyStack"
categories: ["技术中台"]
excerpt: 中台         
tags: 技术中台 数据中台 业务中台 智算中台
---





# 大模型全景对比 · 阿里云百炼(DashScope)模型清单

> **数据快照：** 2026-07 ｜ **模型条目：** 220 条（含快照/别名/渠道重复）｜ **独立模型族：** 144 个｜ **覆盖厂商：** 通义千问(阿里)、DeepSeek、智谱GLM、Kimi、MiniMax（另含 2 条内部/测试项）

> **方法与口径：** 清单来自 OpenAI 兼容 `/models` 接口；厂商 / 模态 / 代际 / 参数规模 / 版本类型等结构维度均由模型 id 正则解析得到，**可 100% 复现**。能力 / 参数 / 上下文 / 价格来自 2026 年公开网络资料（厂商文档、技术报告、行业媒体），为公开披露或报道值；**闭源模型参数未披露，细分 / 历史模型能力按命名与家族谱系推断**，具体以各厂商官方文档为准。

---

## 目录

1. [总览统计](#一总览统计)
2. [旗舰 / 主力模型对比](#二旗舰--主力模型对比)
3. [全部模型明细（按能力分类）](#三全部模型明细按能力分类)
4. [按用途选型建议](#四按用途选型建议)
5. [数据来源与免责声明](#五数据来源与免责声明)

---

## 一、总览统计

- **模型条目总数：** 220　**独立模型族（去重）：** 144
- **快照(生产锁定) / 滚动别名：** 76 / 137　**能力 / 模态类别：** 20 类

### 按厂商

| 厂商 | 数量 | 占比 |
|---|--:|--:|
| 通义千问 阿里 | 175 | 79.5% |
| DeepSeek 深度求索 | 21 | 9.5% |
| MiniMax | 9 | 4.1% |
| Kimi 月之暗面 | 7 | 3.2% |
| 智谱 GLM | 6 | 2.7% |
| (内部/测试) | 2 | 0.9% |
| **合计** | **220** | **100%** |

### 按能力 / 模态

| 类型 / 模态 | 数量 |
|---|--:|
| 文本对话 LLM | 95 |
| 语音合成 TTS | 21 |
| 推理 Thinking | 15 |
| 全模态 Omni | 15 |
| 图像生成 | 12 |
| 代码 | 12 |
| 视觉理解 VL | 8 |
| 实时语音翻译 | 6 |
| 语音识别 ASR | 5 |
| OCR 文字识别 | 5 |
| 图像编辑 | 5 |
| 数学 | 5 |
| 机器翻译 MT | 4 |
| 内部/测试 | 2 |
| 深度研究 / Agent | 2 |
| 角色扮演 | 2 |
| 分析（文本） | 2 |
| 视觉推理 (VL+Thinking) | 2 |
| GUI 智能体 | 1 |
| 语音对语音 S2S | 1 |
| **合计** | **220** |

### 按代际 / 版本（含各厂商，剔除无版本号项）

| 代际 / 版本 | 数量 |
|---|--:|
| Qwen (一代/通用) | 61 |
| Qwen 3 | 58 |
| Qwen 3.5 | 20 |
| DeepSeek R1 | 9 |
| Qwen 1.5 | 8 |
| Qwen 3.7 | 7 |
| Qwen 3.6 | 7 |
| Qwen 2 | 4 |
| DeepSeek V3.1 | 3 |
| DeepSeek V3 | 3 |
| DeepSeek V3.2 | 3 |
| Qwen 2.5 | 3 |
| Kimi K2.7 | 2 |
| GLM 5 | 2 |
| GLM 5.1 | 2 |
| Kimi K2.6 | 2 |
| DeepSeek V4 | 2 |
| speech 2.8 | 2 |
| speech 02 | 2 |
| MiniMax M2.5 | 2 |
| MiniMax M2.1 | 2 |
| Kimi K2.5 | 2 |
| GLM 5.2 | 1 |
| DeepSeek OCR | 1 |
| MiniMax M2.7 | 1 |
| GLM 4.7 | 1 |
| Kimi K2 | 1 |

### 版本类型

| 版本类型 | 数量 | 说明 |
|---|--:|---|
| 快照 | 76 | 固定日期版本，生产环境锁定，行为稳定 |
| 滚动别名 (stable) | 137 | 随迭代自动更新的稳定别名 |
| latest | 3 | 显式最新别名 |
| preview | 3 | 预览版 |
| next | 1 | 下一代预览 |
| **合计** | **220** |  |

---

## 二、旗舰 / 主力模型对比

> 数字为 2026 年公开披露/报道值；闭源模型参数未公开。

### 2.1 规格对比

| 模型 | 厂商 | 定位 | 权重 | 参数 | 上下文 | 价格（输入/输出，每百万 tok） |
|---|---|---|---|---|---|---|
| `qwen3.7-max` | 通义千问 阿里 | 文本/推理/Agent 旗舰（闭源） | 闭源 / 专有 | 未公开（MoE，闭源） | 1M tokens | 约 $1.25 / $3.75 每百万 tokens（含 50% 促销） |
| `qwen3.7-plus` | 通义千问 阿里 | 原生多模态主力（闭源） | 闭源 / 专有 | 未公开（闭源） | 1M tokens | 约 $0.32–0.96 / $1.28–3.84 每百万 tokens |
| `qwen3-max` | 通义千问 阿里 | 上一代文本旗舰（2025-09） | 闭源 / 专有 | 万亿级（官方称 trillion-scale，未细化） | 256K（可扩展） | 见 qwen-max 商用档 |
| `qwen3-235b-a22b` | 通义千问 阿里 | 开源 MoE 主力 | 开源权重 | 235B 总 / 22B 激活（MoE） | 256K | 开源自托管 / 平台按量 |
| `deepseek-v4-pro` | DeepSeek 深度求索 | 开源前沿旗舰 | 开源权重（MIT） | 1.6T 总 / 49B 激活（MoE） | 1M tokens | $1.74 / $3.48 每百万 tokens |
| `deepseek-v4-flash` | DeepSeek 深度求索 | 开源高性价比 | 开源权重（MIT） | 284B 总 / 13B 激活（MoE） | 1M tokens | $0.14 / $0.28 每百万 tokens |
| `deepseek-v3.2` | DeepSeek 深度求索 | 上一代主力 | 开源权重（MIT） | 685B（MoE，稀疏注意力） | 128K | 平台按量 |
| `deepseek-r1` | DeepSeek 深度求索 | 推理专用（经典） | 开源权重（MIT） | 671B 总 / 37B 激活（MoE） | 128K | 平台按量 |
| `glm-5` | 智谱 GLM | 开源旗舰（Agentic Engineering） | 开源权重（预期 MIT） | 约 745B 总 / 约 44B 激活（256 专家取 8） | 200K | 约 $0.11 每百万 tokens（延续 GLM-4.x 低价） |
| `glm-4.7` | 智谱 GLM | 编码旗舰（上一代） | 开源权重（HF 可商用） | 355B 总（MoE） | 200K | 极低 |
| `kimi-k2.6` | Kimi 月之暗面 | 开源 Agentic/编码旗舰 | 开源权重（modified-MIT） | 1T 总 / 32B 激活（384 专家取 8 + 1 共享，61 层） | 256K | 平台按量 / 开源自托管 |
| `kimi-k2.7-code` | Kimi 月之暗面 | 编码专用（最新） | 开源权重（modified-MIT） | 未细化（K2 家族 1T MoE） | 256K | 平台按量 / 自托管 |
| `minimax-m2.5` | MiniMax | 开源编码/Agent 旗舰 | 开源权重（modified-MIT） | 229B 总（MoE） | 未明确（M2 系长上下文） | 低成本（官方主打降本） |
| `minimax-m2.7` | MiniMax | 最新 Agent 旗舰 | 开源权重 | 未公开（MoE） | 长上下文 | 低成本 |

### 2.2 关键指标与适用场景

| 模型 | 关键指标 / 基准 | 适用场景 | 与前代 / 同类对比 |
|---|---|---|---|
| `qwen3.7-max` | Artificial Analysis 智能指数 56.6（2026-05 全球第 5）；内测 1000+ 工具调用、连续自主执行约 35 小时 | 最高难度推理、长链路 Agent、整仓代码/大文档处理 | 较前代 Qwen3.6-Max-preview（256K 上下文，指数 51.8）上下文翻倍、+4.8 分 |
| `qwen3.7-plus` | 支持文本 + 图像 + 视频输入；Vision Arena 全球 #16 | 图文/视频混合、性价比多模态、Agent 编码 | 比 3.7-Max 便宜一档，主打多模态与成本 |
| `qwen3-max` | 3.x 系列刷新前的旗舰基线 | 通用高质量对话与复杂任务 | 已被 Qwen3.7-Max 取代为旗舰 |
| `qwen3-235b-a22b` | Instruct 与 Thinking(2507) 双版本 | 自托管、可控部署、成本敏感的高质量任务 | 对标 DeepSeek-V3.x、GLM-5 的开源选项 |
| `deepseek-v4-pro` | 当前最大开源权重模型（>Kimi K2.6 1.1T、GLM-5.1 754B）；1M 上下文时仅为 V3.2 的 27% 单 token FLOPs、10% KV cache | 前沿级推理/编码且要求开源可自托管 | 官方称落后最前沿约 3–6 个月，但价格最低 |
| `deepseek-v4-flash` | 1M 上下文时仅 10% 单 token FLOPs、7% KV cache | 大规模、低成本、长上下文批处理 | 价格低于 GPT-5.4 Nano（$0.20/$1.25） |
| `deepseek-v3.2` | V3 家族收官版；-think 为推理变体 | 成本敏感的通用/推理 | 被 V4 取代 |
| `deepseek-r1` | 开源推理里程碑；含 1.5B–70B 蒸馏系列 | 数学/逻辑/代码推理、蒸馏小模型自托管 | 被 V3.2-think / V4 系列的思考模式补充 |
| `glm-5` | DeepSeek 稀疏注意力（DSA）；华为昇腾 + MindSpore 训练；对标 Claude Opus 系列 | Agent 工程、编码、极致性价比 | GLM-5.1（754B）、GLM-5.2（称超越 Google 顶级模型）为后续迭代 |
| `glm-4.7` | 以编码/工具调用见长 | 编码、Agent、低成本部署 | GLM-5 前代 |
| `kimi-k2.6` | SWE-Bench Pro 58.6（>Claude Opus 4.6 的 53.4）；LiveCodeBench v6 89.6；SWE-Bench Verified 80.2；AIME 2026 96.4；Agent Swarm 可达 300 子agent/4000 步 | 长链路编码、多 Agent 编排、深度检索 | 编码追平 GPT-5.5；纯数学略逊 GPT-5.4 |
| `kimi-k2.7-code` | 面向生产级 Agentic 编码 | IDE/CLI 编码代理、仓库级重构 | K2.6 的编码强化分支 |
| `minimax-m2.5` | SWE-Bench Verified 80.2%；Multi-SWE-Bench 51.3%；MMLU-Pro 80.1%；GPQA-D 85.2%；BrowseComp 76.3%；比 M2.1 快 37% | 编码、工具调用、办公自动化、Agent | M2.7（自进化、NVIDIA 优化）为最新；M2/M2.1 为前代 |
| `minimax-m2.7` | 主打自进化（self-evolution）与可扩展 Agentic 工作流，NVIDIA 平台优化 | 复杂 Agent 应用、规模化工作流 | M2.5 的后续迭代 |

---

## 三、全部模型明细（按能力分类）

> 每类按厂商、代际排序。`版本类型` 见上文说明；`参数规模` 中 “235B (MoE, 激活 22B)” 表示总参数 / 每 token 激活参数。

### 3.1　文本对话 LLM（95）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-1.8b-chat` | 通义千问 | Qwen (一代/通用) | — | 1.8B | 滚动别名 (stable) | 2024-04-29 |
| `qwen-1.8b-longcontext-chat` | 通义千问 | Qwen (一代/通用) | — | 1.8B | 滚动别名 (stable) | 2024-04-29 |
| `qwen-14b-chat` | 通义千问 | Qwen (一代/通用) | — | 14B | 滚动别名 (stable) | 2024-04-29 |
| `qwen-72b-chat` | 通义千问 | Qwen (一代/通用) | — | 72B | 滚动别名 (stable) | 2024-04-29 |
| `qwen-7b-chat` | 通义千问 | Qwen (一代/通用) | — | 7B | 滚动别名 (stable) | 2024-04-29 |
| `qwen-flash` | 通义千问 | Qwen (一代/通用) | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-03 |
| `qwen-long` | 通义千问 | Qwen (一代/通用) | Long | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen-max` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-11 |
| `qwen-max-0107` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 快照 0107 | 2024-04-29 |
| `qwen-max-1201` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 快照 1201 | 2024-04-29 |
| `qwen-max-longcontext` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2024-04-29 |
| `qwen-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen-plus-2025-01-25` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-01-25 | 2025-10-14 |
| `qwen-plus-2025-04-28` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-04-28 | 2025-10-14 |
| `qwen-plus-2025-07-14` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-07-14 | 2026-05-25 |
| `qwen-plus-2025-09-11` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-09-11 | 2025-09-12 |
| `qwen-plus-2025-11-05` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-11-05 | 2025-11-25 |
| `qwen-plus-2025-12-01` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-12-01 | 2026-07-06 |
| `qwen-plus-latest` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | latest 别名 | 2026-06-11 |
| `qwen-turbo` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen-turbo-0919` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 快照 0919 | 2026-02-03 |
| `qwen-turbo-2024-11-01` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 快照 2024-11-01 | 2025-10-14 |
| `qwen1.5-0.5b-chat` | 通义千问 | Qwen 1.5 | — | 0.5B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-1.8b-chat` | 通义千问 | Qwen 1.5 | — | 1.8B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-110b-chat` | 通义千问 | Qwen 1.5 | — | 110B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-14b-chat` | 通义千问 | Qwen 1.5 | — | 14B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-32b-chat` | 通义千问 | Qwen 1.5 | — | 32B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-72b-chat` | 通义千问 | Qwen 1.5 | — | 72B | 滚动别名 (stable) | 2026-03-31 |
| `qwen1.5-7b-chat` | 通义千问 | Qwen 1.5 | — | 7B | 滚动别名 (stable) | 2026-03-31 |
| `qwen2-0.5b-instruct` | 通义千问 | Qwen 2 | — | 0.5B | 滚动别名 (stable) | 2026-03-31 |
| `qwen2-1.5b-instruct` | 通义千问 | Qwen 2 | — | 1.5B | 滚动别名 (stable) | 2026-03-31 |
| `qwen2-57b-a14b-instruct` | 通义千问 | Qwen 2 | — | 57B (MoE, 激活 14B) | 滚动别名 (stable) | 2026-03-31 |
| `qwen2-7b-instruct` | 通义千问 | Qwen 2 | — | 7B | 滚动别名 (stable) | 2026-03-31 |
| `qwen2.5-0.5b-instruct` | 通义千问 | Qwen 2.5 | — | 0.5B | 滚动别名 (stable) | 2025-09-09 |
| `qwen2.5-1.5b-instruct` | 通义千问 | Qwen 2.5 | — | 1.5B | 滚动别名 (stable) | 2025-09-09 |
| `qwen3-14b` | 通义千问 | Qwen 3 | — | 14B | 滚动别名 (stable) | 2025-10-17 |
| `qwen3-235b-a22b` | 通义千问 | Qwen 3 | — | 235B (MoE, 激活 22B) | 滚动别名 (stable) | 2025-07-31 |
| `qwen3-235b-a22b-instruct-2507` | 通义千问 | Qwen 3 | — | 235B (MoE, 激活 22B) | 快照 2507 | 2026-07-03 |
| `qwen3-30b-a3b` | 通义千问 | Qwen 3 | — | 30B (MoE, 激活 3B) | 滚动别名 (stable) | 2025-12-30 |
| `qwen3-30b-a3b-instruct-2507` | 通义千问 | Qwen 3 | — | 30B (MoE, 激活 3B) | 快照 2507 | 2026-07-03 |
| `qwen3-32b` | 通义千问 | Qwen 3 | — | 32B | 滚动别名 (stable) | 2025-12-26 |
| `qwen3-8b` | 通义千问 | Qwen 3 | — | 8B | 滚动别名 (stable) | 2025-09-23 |
| `qwen3-max` | 通义千问 | Qwen 3 | Max | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3-max-2025-09-23` | 通义千问 | Qwen 3 | Max | —(未公开/闭源) | 快照 2025-09-23 | 2026-02-26 |
| `qwen3-max-2026-01-23` | 通义千问 | Qwen 3 | Max | —(未公开/闭源) | 快照 2026-01-23 | 2026-02-11 |
| `qwen3-max-preview` | 通义千问 | Qwen 3 | Max | —(未公开/闭源) | preview 预览 | 2026-07-06 |
| `qwen3-next-80b-a3b-instruct` | 通义千问 | Qwen 3 | — | 80B (MoE, 激活 3B) | 滚动别名 (stable) | 2026-07-02 |
| `qwen3.5-122b-a10b` | 通义千问 | Qwen 3.5 | — | 122B (MoE, 激活 10B) | 滚动别名 (stable) | 2026-07-03 |
| `qwen3.5-27b` | 通义千问 | Qwen 3.5 | — | 27B | 滚动别名 (stable) | 2026-07-03 |
| `qwen3.5-35b-a3b` | 通义千问 | Qwen 3.5 | — | 35B (MoE, 激活 3B) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.5-397b-a17b` | 通义千问 | Qwen 3.5 | — | 397B (MoE, 激活 17B) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.5-flash` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `qwen3.5-flash-2026-02-23` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 快照 2026-02-23 | 2026-07-06 |
| `qwen3.5-plus` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.5-plus-2026-02-15` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 快照 2026-02-15 | 2026-06-14 |
| `qwen3.5-plus-2026-04-20` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 快照 2026-04-20 | 2026-07-05 |
| `qwen3.6-27b` | 通义千问 | Qwen 3.6 | — | 27B | 滚动别名 (stable) | 2026-07-03 |
| `qwen3.6-35b-a3b` | 通义千问 | Qwen 3.6 | — | 35B (MoE, 激活 3B) | 滚动别名 (stable) | 2026-07-06 |
| `qwen3.6-flash` | 通义千问 | Qwen 3.6 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.6-flash-2026-04-16` | 通义千问 | Qwen 3.6 | Flash | —(未公开/闭源) | 快照 2026-04-16 | 2026-07-06 |
| `qwen3.6-max-preview` | 通义千问 | Qwen 3.6 | Max | —(未公开/闭源) | preview 预览 | 2026-07-03 |
| `qwen3.6-plus` | 通义千问 | Qwen 3.6 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.6-plus-2026-04-02` | 通义千问 | Qwen 3.6 | Plus | —(未公开/闭源) | 快照 2026-04-02 | 2026-06-14 |
| `qwen3.7-max` | 通义千问 | Qwen 3.7 | Max | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.7-max-2026-05-17` | 通义千问 | Qwen 3.7 | Max | —(未公开/闭源) | 快照 2026-05-17 | 2026-07-06 |
| `qwen3.7-max-2026-05-20` | 通义千问 | Qwen 3.7 | Max | —(未公开/闭源) | 快照 2026-05-20 | 2026-07-05 |
| `qwen3.7-max-2026-06-08` | 通义千问 | Qwen 3.7 | Max | —(未公开/闭源) | 快照 2026-06-08 | 2026-07-06 |
| `qwen3.7-max-preview` | 通义千问 | Qwen 3.7 | Max | —(未公开/闭源) | preview 预览 | 2026-07-06 |
| `qwen3.7-plus` | 通义千问 | Qwen 3.7 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `qwen3.7-plus-2026-05-26` | 通义千问 | Qwen 3.7 | Plus | —(未公开/闭源) | 快照 2026-05-26 | 2026-06-14 |
| `deepseek-v3` | DeepSeek | DeepSeek V3 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-01 |
| `siliconflow/deepseek-v3-0324` | DeepSeek | DeepSeek V3 | — | —(未公开/闭源) | 快照 0324 | 2026-01-28 |
| `vanchin/deepseek-v3` | DeepSeek | DeepSeek V3 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-14 |
| `deepseek-v3.1` | DeepSeek | DeepSeek V3.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |
| `siliconflow/deepseek-v3.1-terminus` | DeepSeek | DeepSeek V3.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-28 |
| `vanchin/deepseek-v3.1-terminus` | DeepSeek | DeepSeek V3.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-14 |
| `deepseek-v3.2` | DeepSeek | DeepSeek V3.2 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `siliconflow/deepseek-v3.2` | DeepSeek | DeepSeek V3.2 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-28 |
| `deepseek-v4-flash` | DeepSeek | DeepSeek V4 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `deepseek-v4-pro` | DeepSeek | DeepSeek V4 | Pro | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `glm-4.7` | 智谱 GLM | GLM 4.7 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-06 |
| `ZHIPU/GLM-5` | 智谱 GLM | GLM 5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-05-25 |
| `glm-5` | 智谱 GLM | GLM 5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `ZHIPU/GLM-5.1` | 智谱 GLM | GLM 5.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-05-19 |
| `glm-5.1` | 智谱 GLM | GLM 5.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `glm-5.2` | 智谱 GLM | GLM 5.2 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-03 |
| `kimi-k2.5` | Kimi | Kimi K2.5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `kimi/kimi-k2.5` | Kimi | Kimi K2.5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-13 |
| `kimi-k2.6` | Kimi | Kimi K2.6 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `kimi/kimi-k2.6` | Kimi | Kimi K2.6 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-29 |
| `MiniMax-M2.1` | MiniMax | MiniMax M2.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-16 |
| `MiniMax/MiniMax-M2.1` | MiniMax | MiniMax M2.1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-13 |
| `MiniMax-M2.5` | MiniMax | MiniMax M2.5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `MiniMax/MiniMax-M2.5` | MiniMax | MiniMax M2.5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-13 |
| `MiniMax/MiniMax-M2.7` | MiniMax | MiniMax M2.7 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-20 |

### 3.2　推理 Thinking（15）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwq-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-06 |
| `qwen3-235b-a22b-thinking-2507` | 通义千问 | Qwen 3 | — | 235B (MoE, 激活 22B) | 快照 2507 | 2025-10-27 |
| `qwen3-30b-a3b-thinking-2507` | 通义千问 | Qwen 3 | — | 30B (MoE, 激活 3B) | 快照 2507 | 2025-10-14 |
| `qwen3-next-80b-a3b-thinking` | 通义千问 | Qwen 3 | — | 80B (MoE, 激活 3B) | 滚动别名 (stable) | 2026-07-06 |
| `deepseek-r1` | DeepSeek | DeepSeek R1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-26 |
| `deepseek-r1-distill-llama-70b` | DeepSeek | DeepSeek R1 | — | 70B | 滚动别名 (stable) | 2025-09-09 |
| `deepseek-r1-distill-llama-8b` | DeepSeek | DeepSeek R1 | — | 8B | 滚动别名 (stable) | 2025-07-31 |
| `deepseek-r1-distill-qwen-1.5b` | DeepSeek | DeepSeek R1 | — | 1.5B | 滚动别名 (stable) | 2025-07-31 |
| `deepseek-r1-distill-qwen-14b` | DeepSeek | DeepSeek R1 | — | 14B | 滚动别名 (stable) | 2025-07-31 |
| `deepseek-r1-distill-qwen-32b` | DeepSeek | DeepSeek R1 | — | 32B | 滚动别名 (stable) | 2025-07-31 |
| `deepseek-r1-distill-qwen-7b` | DeepSeek | DeepSeek R1 | — | 7B | 滚动别名 (stable) | 2025-07-31 |
| `siliconflow/deepseek-r1-0528` | DeepSeek | DeepSeek R1 | — | —(未公开/闭源) | 快照 0528 | 2026-01-28 |
| `vanchin/deepseek-r1` | DeepSeek | DeepSeek R1 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-14 |
| `vanchin/deepseek-v3.2-think` | DeepSeek | DeepSeek V3.2 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-14 |
| `kimi-k2-thinking` | Kimi | Kimi K2 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-16 |

### 3.3　视觉推理 (VL+Thinking)（2）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qvq-max` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2025-10-14 |
| `qvq-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-07-31 |

### 3.4　代码（12）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-coder-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-07-31 |
| `qwen-coder-plus-1106` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 1106 | 2025-07-31 |
| `qwen-coder-turbo` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2025-08-01 |
| `codeqwen1.5-7b-chat` | 通义千问 | Qwen 1.5 | — | 7B | 滚动别名 (stable) | 2024-04-29 |
| `qwen3-coder-480b-a35b-instruct` | 通义千问 | Qwen 3 | — | 480B (MoE, 激活 35B) | 滚动别名 (stable) | 2025-10-17 |
| `qwen3-coder-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-03 |
| `qwen3-coder-next` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | next 预览 | 2026-03-02 |
| `qwen3-coder-plus` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen3-coder-plus-2025-07-22` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 快照 2025-07-22 | 2025-08-20 |
| `qwen3-coder-plus-2025-09-23` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 快照 2025-09-23 | 2025-12-03 |
| `kimi-k2.7-code` | Kimi | Kimi K2.7 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-21 |
| `kimi/kimi-k2.7-code` | Kimi | Kimi K2.7 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-15 |

### 3.5　数学（5）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-math-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-08-01 |
| `qwen-math-plus-0919` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 0919 | 2025-08-01 |
| `qwen-math-plus-latest` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | latest 别名 | 2025-08-01 |
| `qwen-math-turbo` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2025-08-01 |
| `qwen2.5-math-1.5b-instruct` | 通义千问 | Qwen 2.5 | — | 1.5B | 滚动别名 (stable) | 2026-03-31 |

### 3.6　视觉理解 VL（8）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-vl-max` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen-vl-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen3-vl-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen3-vl-flash-2025-10-15` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-10-15 | 2026-07-03 |
| `qwen3-vl-flash-2026-01-22` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2026-01-22 | 2026-07-03 |
| `qwen3-vl-plus` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-04 |
| `qwen3-vl-plus-2025-09-23` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 快照 2025-09-23 | 2026-07-03 |
| `qwen3-vl-plus-2025-12-19` | 通义千问 | Qwen 3 | Plus | —(未公开/闭源) | 快照 2025-12-19 | 2026-07-03 |

### 3.7　全模态 Omni（15）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-omni-turbo` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-16 |
| `qwen3-omni-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-02 |
| `qwen3-omni-flash-2025-09-15` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-15 | 2025-10-27 |
| `qwen3-omni-flash-2025-12-01` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-12-01 | 2026-01-16 |
| `qwen3-omni-flash-realtime` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-16 |
| `qwen3-omni-flash-realtime-2025-09-15` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-15 | 2025-10-27 |
| `qwen3-omni-flash-realtime-2025-12-01` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-12-01 | 2026-01-16 |
| `qwen3.5-omni-flash` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-06 |
| `qwen3.5-omni-flash-2026-03-15` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 快照 2026-03-15 | 2026-07-06 |
| `qwen3.5-omni-flash-realtime` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-16 |
| `qwen3.5-omni-flash-realtime-2026-03-15` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 快照 2026-03-15 | 2026-04-16 |
| `qwen3.5-omni-plus` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-07-06 |
| `qwen3.5-omni-plus-2026-03-15` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 快照 2026-03-15 | 2026-07-03 |
| `qwen3.5-omni-plus-realtime` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-16 |
| `qwen3.5-omni-plus-realtime-2026-03-15` | 通义千问 | Qwen 3.5 | Plus | —(未公开/闭源) | 快照 2026-03-15 | 2026-04-17 |

### 3.8　分析（文本）（2）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `tongyi-xiaomi-analysis-flash` | 通义千问 | — | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-10 |
| `tongyi-xiaomi-analysis-pro` | 通义千问 | — | Pro | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-10 |

### 3.9　角色扮演（2）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-flash-character` | 通义千问 | Qwen (一代/通用) | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-10 |
| `qwen-flash-character-2026-02-26` | 通义千问 | Qwen (一代/通用) | Flash | —(未公开/闭源) | 快照 2026-02-26 | 2026-02-28 |

### 3.10　深度研究 / Agent（2）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-deep-research-2025-12-15` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 快照 2025-12-15 | 2026-03-19 |
| `qwen-deep-search-planning` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 滚动别名 (stable) | 2025-10-30 |

### 3.11　GUI 智能体（1）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `gui-plus` | 通义千问 | — | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-05 |

### 3.12　图像生成（12）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-image-2.0` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-03 |
| `qwen-image-2.0-2026-03-03` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 快照 2026-03-03 | 2026-03-03 |
| `qwen-image-2.0-pro` | 通义千问 | Qwen (一代/通用) | Pro | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-03 |
| `qwen-image-2.0-pro-2026-03-03` | 通义千问 | Qwen (一代/通用) | Pro | —(未公开/闭源) | 快照 2026-03-03 | 2026-03-03 |
| `qwen-image-2.0-pro-2026-04-22` | 通义千问 | Qwen (一代/通用) | Pro | —(未公开/闭源) | 快照 2026-04-22 | 2026-04-23 |
| `qwen-image-2.0-pro-2026-06-22` | 通义千问 | Qwen (一代/通用) | Pro | —(未公开/闭源) | 快照 2026-06-22 | 2026-07-02 |
| `qwen-image-max` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2025-12-30 |
| `qwen-image-max-2025-12-30` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 快照 2025-12-30 | 2025-12-30 |
| `qwen-image-plus-2026-01-09` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2026-01-09 | 2026-01-09 |
| `wan2.7-image` | 通义千问 | — | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-08 |
| `wan2.7-image-pro` | 通义千问 | — | Pro | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-05 |
| `z-image-turbo` | 通义千问 | — | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2025-12-19 |

### 3.13　图像编辑（5）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-image-edit-max` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-16 |
| `qwen-image-edit-max-2026-01-16` | 通义千问 | Qwen (一代/通用) | Max | —(未公开/闭源) | 快照 2026-01-16 | 2026-01-16 |
| `qwen-image-edit-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-24 |
| `qwen-image-edit-plus-2025-10-30` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-10-30 | 2025-10-30 |
| `qwen-image-edit-plus-2025-12-15` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 快照 2025-12-15 | 2025-12-15 |

### 3.14　语音合成 TTS（21）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-tts-2025-05-22` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 快照 2025-05-22 | 2025-11-13 |
| `qwen3-tts-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-05 |
| `qwen3-tts-flash-2025-09-18` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-18 | 2025-11-13 |
| `qwen3-tts-flash-2025-11-27` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-11-27 | 2025-11-26 |
| `qwen3-tts-flash-realtime` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-01-05 |
| `qwen3-tts-flash-realtime-2025-09-18` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-18 | 2025-11-13 |
| `qwen3-tts-flash-realtime-2025-11-27` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-11-27 | 2025-11-26 |
| `qwen3-tts-instruct-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-10 |
| `qwen3-tts-instruct-flash-2026-01-26` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2026-01-26 | 2026-02-10 |
| `qwen3-tts-instruct-flash-realtime` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-02-04 |
| `qwen3-tts-instruct-flash-realtime-2026-01-22` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2026-01-22 | 2026-02-04 |
| `qwen3-tts-vc-2026-01-22` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2026-01-22 | 2026-02-10 |
| `qwen3-tts-vc-realtime-2025-11-27` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2025-11-27 | 2025-11-26 |
| `qwen3-tts-vc-realtime-2026-01-15` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2026-01-15 | 2026-01-17 |
| `qwen3-tts-vd-2026-01-26` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2026-01-26 | 2026-02-10 |
| `qwen3-tts-vd-realtime-2025-12-16` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2025-12-16 | 2026-04-27 |
| `qwen3-tts-vd-realtime-2026-01-15` | 通义千问 | Qwen 3 | — | —(未公开/闭源) | 快照 2026-01-15 | 2026-02-02 |
| `MiniMax/speech-02-hd` | MiniMax | speech 02 | HD | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-20 |
| `MiniMax/speech-02-turbo` | MiniMax | speech 02 | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-20 |
| `MiniMax/speech-2.8-hd` | MiniMax | speech 2.8 | HD | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-20 |
| `MiniMax/speech-2.8-turbo` | MiniMax | speech 2.8 | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2026-03-20 |

### 3.15　语音识别 ASR（5）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen3-asr-flash-2026-02-10` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2026-02-10 | 2026-03-03 |
| `qwen3-asr-flash-realtime` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-13 |
| `qwen3-asr-flash-realtime-2025-10-27` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-10-27 | 2025-11-13 |
| `qwen3-asr-flash-realtime-2026-02-10` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2026-02-10 | 2026-02-28 |
| `fun-asr-flash-2026-06-15` | 通义千问 | — | Flash | —(未公开/闭源) | 快照 2026-06-15 | 2026-06-17 |

### 3.16　语音对语音 S2S（1）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen3-s2s-flash-realtime-2025-09-22` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-22 | 2025-11-13 |

### 3.17　实时语音翻译（6）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen3-livetranslate-flash` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2025-12-04 |
| `qwen3-livetranslate-flash-2025-12-01` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-12-01 | 2025-12-03 |
| `qwen3-livetranslate-flash-realtime` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-13 |
| `qwen3-livetranslate-flash-realtime-2025-09-22` | 通义千问 | Qwen 3 | Flash | —(未公开/闭源) | 快照 2025-09-22 | 2025-11-13 |
| `qwen3.5-livetranslate-flash-realtime` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2026-05-19 |
| `qwen3.5-livetranslate-flash-realtime-2026-05-19` | 通义千问 | Qwen 3.5 | Flash | —(未公开/闭源) | 快照 2026-05-19 | 2026-05-19 |

### 3.18　机器翻译 MT（4）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-mt-flash` | 通义千问 | Qwen (一代/通用) | Flash | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-06 |
| `qwen-mt-lite` | 通义千问 | Qwen (一代/通用) | Lite | —(未公开/闭源) | 滚动别名 (stable) | 2025-11-20 |
| `qwen-mt-plus` | 通义千问 | Qwen (一代/通用) | Plus | —(未公开/闭源) | 滚动别名 (stable) | 2025-10-29 |
| `qwen-mt-turbo` | 通义千问 | Qwen (一代/通用) | Turbo | —(未公开/闭源) | 滚动别名 (stable) | 2025-10-29 |

### 3.19　OCR 文字识别（5）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `qwen-vl-ocr` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 滚动别名 (stable) | 2025-07-31 |
| `qwen-vl-ocr-2025-11-20` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | 快照 2025-11-20 | 2025-11-20 |
| `qwen-vl-ocr-latest` | 通义千问 | Qwen (一代/通用) | — | —(未公开/闭源) | latest 别名 | 2025-11-21 |
| `qwen3.5-ocr` | 通义千问 | Qwen 3.5 | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-15 |
| `vanchin/deepseek-ocr` | DeepSeek | DeepSeek OCR | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-04-14 |

### 3.20　内部/测试（2）

| 模型 id | 厂商 | 代际 | 层级 | 参数规模 | 版本类型 | 登记日期 |
|---|---|---|---|---|---|---|
| `sre-gpu-auto-handle` | (内部/测试) | — | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-10 |
| `test-sre-gpu-auto-handle` | (内部/测试) | — | — | —(未公开/闭源) | 滚动别名 (stable) | 2026-06-22 |

---

## 四、按用途选型建议

> 结合上表能力给出首选与备选。**开源 = 可自托管，闭源 = 仅 API。**

**🧠 最高智能 / 复杂推理**
- 闭源首选 `qwen3.7-max`（1M 上下文，Artificial Analysis 智能指数全球第 5）
- 开源首选 `deepseek-v4-pro`（1.6T MoE，MIT，当前最大开源权重）
- 备选 `kimi-k2.6`、`glm-5.2`

**💻 Agentic 编码**
- `kimi-k2.7-code` / `kimi-k2.6`（SWE-Bench Pro 领先 Claude Opus 4.6）
- `minimax-m2.5`（SWE-Bench Verified 80.2%，比 M2.1 快 37%）
- `qwen3-coder-plus` / `qwen3-coder-480b-a35b`、`glm-4.7`

**💰 极致性价比 / 大规模**
- `deepseek-v4-flash`（$0.14/$0.28，低于 GPT-5.4 Nano）
- `qwen-turbo`（$0.05/$0.20，5M TPM）、`qwen-flash`
- `glm-5`（约 $0.11/M）

**📜 超长上下文**
- **1M：** `qwen3.7-max` / `qwen3.7-plus` / `deepseek-v4-pro` / `deepseek-v4-flash`
- **256K：** `kimi-k2.6` / `qwen3-max`
- **长文档专用：** `qwen-long`

**🖼️ 多模态（图 / 文 / 视频）**
- `qwen3.7-plus`（文本+图像+视频输入）
- `qwen3-vl-plus` / `qwen3-vl-flash`（视觉理解）
- `qwen3.5-omni-plus` / `qwen-omni-turbo`（全模态实时）

**🎨 图像生成 / 编辑**
- **生成：** `qwen-image-max` / `wan2.7-image-pro` / `z-image-turbo`
- **编辑：** `qwen-image-edit-max` / `qwen-image-edit-plus`

**🔊 语音（TTS / ASR / 翻译）**
- **合成：** `qwen3-tts-flash` / `MiniMax/speech-2.8-hd`
- **识别：** `qwen3-asr-flash` / `fun-asr-flash`
- **翻译：** `qwen-mt-plus`、实时 `qwen3-livetranslate-flash`

**🖥️ 自托管 / 开源权重**
- `deepseek-v4-*`（MIT）、`kimi-k2.6` / `minimax-m2.5`（modified-MIT）
- `glm-5`、`qwen3-235b-a22b` / `qwen3-30b-a3b` 等 Qwen 开源 MoE

**👁️ 视觉推理 / OCR**
- **视觉推理：** `qvq-max` / `qvq-plus`
- **OCR：** `qwen-vl-ocr` / `qwen3.5-ocr` / `deepseek-ocr`

**🤖 GUI / 深度研究 Agent**
- **GUI 操作：** `gui-plus`
- **深度研究：** `qwen-deep-research` / `qwen-deep-search-planning`

---

## 五、数据来源与免责声明

**结构维度**（厂商/模态/代际/规模/版本类型/日期）：由模型 id 正则解析，100% 可复现。

**能力 / 参数 / 价格**主要来源（2026 年公开资料）：
- Qwen3.7-Max — MarkTechPost / Artificial Analysis
- DeepSeek V4 — Simon Willison、DeepSeek API Docs、HuggingFace(DeepSeek-V4-Pro)
- GLM-5 — glm5.net、arXiv(GLM-5 技术报告)
- Kimi K2.6 — DeepInfra、HuggingFace、Kimi 官方
- MiniMax M2.5 — MiniMax 官方、HuggingFace
- Qwen 定价 2026 — eesel AI

> **免责声明：** 本表为按 id 结构化整理 + 公开资料汇编，非厂商官方对比。闭源模型参数未披露；部分 2026 年新版本信息来自二手媒体报道，可能与最终官方规格存在出入。用于选型时请以各厂商官方文档与实测为准。





