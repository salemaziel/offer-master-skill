# Offer Master

Via Del Web extension for Gemini CLI and Google Antigravity CLI (`agy`). It provides an end-to-end framework to diagnose buyer drop-offs, score four value equation levers, rebuild packaging on real client proof, cost out capped guarantees, calculate value-based pricing, and audit copy honesty into paste-ready offer cards.

When a task involves fixing an offer that isn't selling, evaluating pricing, designing a guarantee, or auditing sales copy, read `skills/offer-master/SKILL.md` before acting. It routes through the 7-stage overhaul.

## Slash Commands

- `/offer-master`: The full 7-stage overhaul end to end
- `/offer-diagnosis`: Where buyers drop off, traffic threshold checks, and objection decoding
- `/offer-levers`: Scores Result, Belief, Speed, and Ease (1-10) and identifies priority moves
- `/offer-included`: Core promise, week-one win, obstacle deliverables, and doubt-killing bonuses
- `/offer-guarantee`: One fair, capped guarantee with mathematical claim cost stress testing
- `/offer-urgency-name-price`: Real deadlines, monthly cost of waiting, text-friendly name, and pricing
- `/offer-honesty-check`: Adversarial copy audit for fake scarcity, invented numbers, and unbacked claims
- `/offer-card`: Concise, paste-ready offer card with every number labeled `(yours)` or `(estimate)`

## Helper Scripts

All helper scripts use standard library Python 3 without external dependencies:
- Funnel leak analysis: `python3 skills/offer-diagnosis/scripts/funnel_leak.py`
- Guarantee stress testing: `python3 skills/offer-guarantee/scripts/guarantee_cost.py`
- Copy claim detection: `python3 skills/offer-honesty-check/scripts/flag_claims.py`
- Price & waiting math: `python3 skills/offer-urgency-name-price/scripts/price_math.py`

## Antigravity Tools

- Inspect files and copy: `read_file(Path=...)`
- Run calculation scripts: `run_command(CommandLine=...)`
- Generate offer cards and copy: `write_file(Path=..., Content=...)`
