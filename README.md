# Instagram Skills for Claude Code and Codex

[![Claude Code](https://img.shields.io/badge/Claude_Code-compatible-7C3AED.svg)](.claude-plugin/plugin.json)
[![Codex](https://img.shields.io/badge/Codex-compatible-2563EB.svg)](.codex-plugin/plugin.json)
[![Agent Skills](https://img.shields.io/badge/12-platform--specific_skills-334155.svg)](SKILL.md)
[![SocialBu](https://img.shields.io/badge/SocialBu-MCP_optional-2563EB.svg)](https://socialbu.com/mcp-server)
[![License](https://img.shields.io/badge/license-MIT-22C55E.svg)](LICENSE)

**Instagram Skills** is a draft-first operating kit for captions, carousel plans, Reels concepts, Story sequences, profile copy, and community replies. It turns supplied facts and creative direction into reviewable Instagram work—without claiming live platform access or publishing by default.

![Instagram Skills workflow](assets/instagram-skills-workflow.svg)

## Start here

1. Install the bundle in your agent.
2. Share the campaign goal, audience, source material, product facts, and available assets.
3. Ask for one deliverable: a caption, carousel, Reels script, Story sequence, reply queue, or plan.
4. Review every claim, visual brief, disclosure, and CTA. Schedule only after final approval.

## Install

### Codex CLI
```bash
codex plugin marketplace add samalyxx/instagram-skills
codex plugin add instagram-skills@instagram-skills
```

### Claude Code
```text
/plugin marketplace add samalyxx/instagram-skills
/plugin install instagram-skills@instagram-skills
```

### Local or any compatible agent
```bash
git clone https://github.com/samalyxx/instagram-skills.git
cd instagram-skills
npx skills add .
```

No API key is needed for drafting or review.

## Ask for work in plain language

- “Turn these product facts into a six-slide carousel for first-time buyers.”
- “Write a 30-second Reels script with an honest first-second hook and a simple shot list.”
- “Create an Instagram Story sequence to announce this webinar; include sticker ideas and link placement.”
- “Draft replies to these comments and separate support issues from public community replies.”

## The 12 skills

| Skill | Use it for |
| --- | --- |
| Post writer | A caption with audience, angle, CTA, and factual claim boundary. |
| Carousel planner | Slide-by-slide narrative, copy, visual direction, and accessibility notes. |
| Reels scriptwriter | Spoken script, hook, beats, shots, on-screen text, and caption brief. |
| Content planner | Themes, formats, cadence, asset needs, and experiments. |
| Reply handler | Helpful replies and escalation-ready support routing. |
| Humanizer | Natural voice without invented stories or outcomes. |
| Repurposer | Faithful adaptation of source material into Instagram formats. |
| Profile optimizer | Bio, name-field, link, highlight, and positioning recommendations. |
| Community manager | Comment triage, response queues, risk flags, and owner handoffs. |
| Social listener | Insight synthesis from material you provide, not live monitoring claims. |
| Analytics | Findings, hypotheses, and next tests from supplied exports. |
| Safety review | Claims, disclosures, audience fit, and approval readiness. |

## Optional: schedule or publish with SocialBu

Instagram Skills creates the content and review checklist; [SocialBu](https://socialbu.com/publish) is optional for drafts, scheduling, and publishing.

1. Connect the intended Instagram account in SocialBu **Accounts**.
2. Add `https://socialbu.com/mcp` to an MCP-compatible client and finish OAuth in your browser.
3. Create the caption and media brief first; attach the final media only after review.
4. The agent must show the exact caption, account, media, action, and schedule time/timezone before acting.
5. A new confirmation is required whenever content, media, account, action, or time changes.

Manual scheduling in SocialBu works too. Read [the publishing boundary](references/socialbu-publishing.md).

## Verify a checkout

```bash
./scripts/validate.sh
python3 -m unittest discover -s tests
python3 scripts/selftest.py
```

## Contribute and license

Read [CONTRIBUTING.md](CONTRIBUTING.md), [CLAUDE.md](CLAUDE.md), and [SECURITY.md](SECURITY.md). MIT licensed; see [LICENSE](LICENSE). This independent project is not affiliated with Instagram, Claude, Codex, or SocialBu.

## Related open-source skill bundles

- [LinkedIn Skills](https://github.com/samalyxx/linkedin-skills)
- [X Skills](https://github.com/samalyxx/x-skills)
- [YouTube Skills](https://github.com/samalyxx/youtube-skills)
- [Threads Skills](https://github.com/samalyxx/threads-skills)
- [TikTok Skills](https://github.com/samalyxx/tiktok-skills)
- [Facebook Skills](https://github.com/samalyxx/facebook-skills)
