# Offer Master Skill Bundle for Hermes Agent

This repository provides an 8-skill commercial offer creation and refinement bundle for **Hermes Agent** following the open `agentskills.io` standard.

In Hermes Agent, skills are progressive-disclosure knowledge documents (`SKILL.md`) rather than Python platform plugins. This bundle groups all eight offer skills into a coherent workflow pack.

## Bundle Structure

The 8 skills live under `skills/`:
- `skills/offer-master/SKILL.md`: Master orchestrator running the full 7-stage overhaul
- `skills/offer-diagnosis/SKILL.md`: Funnel drop-off detection, traffic threshold check, and objection decoding
- `skills/offer-levers/SKILL.md`: 4 value levers (Result, Belief, Speed, Ease) scored 1-10
- `skills/offer-included/SKILL.md`: Core promise, week-one win, obstacle deliverables, and doubt killers
- `skills/offer-guarantee/SKILL.md`: One fair, capped guarantee with mathematical claim cost stress testing
- `skills/offer-urgency-name-price/SKILL.md`: Honest deadlines, cost of waiting, text-friendly naming, and price math
- `skills/offer-honesty-check/SKILL.md`: Adversarial proof check, fake scarcity removal, and claim verification
- `skills/offer-card/SKILL.md`: Final paste-ready offer card

## Installation in Hermes Agent

### Option 1: Direct Copy to Hermes Skills Directory
Copy the skills directly into your local Hermes skills folder:
```bash
./install.sh --hermes
```
Or manually:
```bash
cp -R skills/* ~/.hermes/skills/
```

### Option 2: Hermes Skills Tap
If using Hermes Skills Hub / Tap:
```bash
hermes skills tap add salemaziel/offer-master-skill
```

## Hermes Usage

In an active Hermes session, load the master skill or any individual stage:
```text
skill_view(name="offer-master")
```
Or inspect a specific stage:
```text
skill_view(name="offer-diagnosis")
skill_view(name="offer-guarantee")
```

## Helper Scripts Execution in Hermes

Hermes can execute the bundled calculation scripts using `terminal(command=...)`:
```bash
python3 skills/offer-diagnosis/scripts/funnel_leak.py "Views=500" "Calls=12" "Sales=1"
python3 skills/offer-guarantee/scripts/guarantee_cost.py --price 2000 --remedy 2000 --claim-rate 0.10 --stress 0.20
python3 skills/offer-urgency-name-price/scripts/price_math.py wait --monthly 500 --months 6
python3 skills/offer-honesty-check/scripts/flag_claims.py copy.txt --facts facts.txt
```
