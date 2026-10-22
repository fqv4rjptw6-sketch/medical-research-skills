# Codex Cloud 科研 Skill 仓库

本仓库按 OpenAI 官方 Codex 仓库级 Skill 目录结构整理，用于手机上的 Codex Cloud 任务。

## 已收录

共有 13 个用户选定的 Skill：

1. `scientific-brainstorming` — 科研选题
2. `nature-academic-search` — 文献检索与引文核验
3. `literature-review` — 文献综述
4. `academic-research-suite` — 综合科研工作流
5. `nature-statistics` — 统计报告审查
6. `scientific-visualization` — 科学可视化
7. `nature-figure` — 科研图件
8. `nature-writing` — 论文写作
9. `nature-polishing` — 论文润色
10. `nature-reviewer` — 模拟审稿
11. `nature-response` — 回复审稿意见
12. `nature-data` — 数据可用性声明
13. `nature-paper2ppt` — 论文转中文 PPT

额外包含 `nature-shared`，它是其他 Nature Skill 使用的共享支持目录，不是单独的用户工作流。

所有 Skill 安装后位于 `.agents/skills/<skill-name>/SKILL.md`。

**云端安装：** `setup-cloud.sh` 从三个公开 GitHub 项目的固定提交版本下载所需文件，
将 13 个 Skill 和 `nature-shared` 放入 `.agents/skills/`，并保留原始许可证。
这样无需在 GitHub 网页中上传超过 40 MB 的归档。云端初始化阶段需要允许访问
`codeload.github.com`；安装完成后，全部 Skill 文件均位于云端工作目录。

## 云端部署方法

1. 在本仓库根目录执行 `bash setup-cloud.sh`。需要允许初始化阶段访问公开的 GitHub 源码归档。运行后应出现 13 个 Skill 和 `nature-shared` 的完整目录。
2. 在 ChatGPT 网页版或桌面版的 Codex 中，选择 **Work in → Cloud → Create environment**，选择本仓库，将环境初始化脚本设为 `bash setup-cloud.sh`，测试通过后发布。
3. 在 iPhone ChatGPT 的 Codex 页面选择已发布环境，发起云端任务。
4. 通过任务示例验证 Skill 是否可用：`Use $nature-academic-search to design a PubMed search strategy for atrial fibrillation catheter ablation recurrence.`

可用性说明：Skill 的 `SKILL.md` 可以被 Codex 识别，但部分脚本还需要额外的 Python 依赖、MCP 服务、API 授权和允许的联网域名。此仓库只提供原始文件，未自动执行任何第三方代码。

## 上游来源（2026-10-22）

| 原始 GitHub 仓库 | Commit |
| --- | --- |
| [Yuan1z0825/nature-skills](https://github.com/Yuan1z0825/nature-skills) | `c6ae86c742705fd968b13c79db1a8518a84089d4` |
| [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) | `593377bb048752abb0152deab9fbb1083a6087df` |
| [Imbad0202/academic-research-skills-codex](https://github.com/Imbad0202/academic-research-skills-codex) | `71528d9349bcdacfbe94111f06d9e2d82215a44d` |

保留了三个源项目的许可证副本，位于 `licenses/`。其中 Academic Research Suite 使用 CC BY-NC 4.0 非商业授权。请在运行所含脚本之前评估第三方代码安全性。
