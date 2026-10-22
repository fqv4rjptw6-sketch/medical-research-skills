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

所有 Skill **已经直接提交到 GitHub 仓库**，位于 `.agents/skills/<skill-name>/SKILL.md`。

**云端使用：** Codex Cloud 克隆本仓库后即可发现 `.agents/skills/` 目录，不必再次下载。
`setup-cloud.sh` 仅保留为可选的重新安装脚本，固定使用下述三个上游提交版本。
如果以后手动运行此脚本，需要允许访问 `codeload.github.com`。

## 云端部署方法

1. 在 ChatGPT 网页版或桌面版的 Codex 中，选择 **Work in → Cloud → Create environment**，选择本仓库并完成环境设置。**无需配置安装脚本**，因为 Skill 文件已在仓库中。
2. 测试仓库中的 13 个 `SKILL.md` 是否可识别，然后发布环境。
3. 在 iPhone ChatGPT 的 Codex 页面选择已发布环境，发起云端任务。
4. 通过任务示例验证 Skill 是否可用：`Use $nature-academic-search to design a PubMed search strategy for atrial fibrillation catheter ablation recurrence.`

可用性说明：Skill 的 `SKILL.md` 可以被 Codex 识别，但部分脚本还需要额外的 Python 依赖、MCP 服务、API 授权和允许的联网域名。仅克隆本仓库不会自动执行第三方脚本；正式运行前需评估代码安全性。

## 上游来源（2026-10-22）

| 原始 GitHub 仓库 | Commit |
| --- | --- |
| [Yuan1z0825/nature-skills](https://github.com/Yuan1z0825/nature-skills) | `c6ae86c742705fd968b13c79db1a8518a84089d4` |
| [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) | `593377bb048752abb0152deab9fbb1083a6087df` |
| [Imbad0202/academic-research-skills-codex](https://github.com/Imbad0202/academic-research-skills-codex) | `71528d9349bcdacfbe94111f06d9e2d82215a44d` |

保留了三个源项目的许可证副本，位于 `licenses/`。其中 Academic Research Suite 使用 CC BY-NC 4.0 非商业授权。请在运行所含脚本之前评估第三方代码安全性。
