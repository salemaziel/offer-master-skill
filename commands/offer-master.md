---
name: offer-master
description: Fixes an offer that isn't selling, end to end. Finds the leak, decodes objections, scores 4 levers, rebuilds on real proof, and returns a paste-ready offer card.
---

Run the complete 7-stage Offer Master overhaul on an offer, package, program, course, or service.

Use the `offer-master` skill suite (`skills/offer-master/SKILL.md`). Paths to helper scripts are relative to the skill directories.

Input: $ARGUMENTS

Follow the 7-stage sequence:
1. **Stage 1 (Diagnosis)**: Read `skills/offer-diagnosis/SKILL.md`. Check where buyers drop off, run `skills/offer-diagnosis/scripts/funnel_leak.py` on stage counts if provided, determine if it really is the offer, and decode what buyer objections mean.
2. **Stage 2 (4 Levers)**: Read `skills/offer-levers/SKILL.md`. Score Result, Belief, Speed, and Ease from 1 to 10 against defined rubrics, and select the 1 or 2 priority levers to fix.
3. **Stage 3 (What's Included)**: Read `skills/offer-included/SKILL.md`. Anchor on real client proof, craft the one-line promise and week-one win, map obstacles to deliverables, cut non-essential extras, and design doubt-killing bonuses.
4. **Stage 4 (Guarantee)**: Read `skills/offer-guarantee/SKILL.md`. Design one fair, capped guarantee tied to the main buyer fear. Calculate claim costs at 10% and 20% stress rates using `skills/offer-guarantee/scripts/guarantee_cost.py`.
5. **Stage 5 (Urgency, Name & Price)**: Read `skills/offer-urgency-name-price/SKILL.md`. Formulate real deadlines, calculate monthly cost of waiting via `skills/offer-urgency-name-price/scripts/price_math.py wait`, select a text-friendly name, and set honest value-based pricing.
6. **Stage 6 (Honesty Check)**: Read `skills/offer-honesty-check/SKILL.md`. Audit copy with `skills/offer-honesty-check/scripts/flag_claims.py`, stripping invented figures, fake scarcity, and unbacked claims.
7. **Stage 7 (Offer Card)**: Read `skills/offer-card/SKILL.md`. Format the final offer into a concise paste-ready offer card with verified numbers, a verification checklist, and one test for next month.

If the user has not provided details, ask for the essentials (at most three questions) before beginning:
1. What do you sell, to whom, and at what price?
2. What happens currently when you pitch it (counts at each step or common objections)?
3. What proof (verified numbers, case studies, results) do you already have?
