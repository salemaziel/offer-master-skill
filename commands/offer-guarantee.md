---
name: offer-guarantee
description: Designs one fair, capped guarantee aimed at the main fear, writes the exact terms, and stress-tests claim costs.
---

Design a fair, high-confidence guarantee that reverses risk without exposing the seller to open-ended liability.

Use `skills/offer-guarantee/SKILL.md` and helper script `skills/offer-guarantee/scripts/guarantee_cost.py`.

Input: $ARGUMENTS

Procedure:
1. **Target the Core Fear**: Align the guarantee with what the buyer is actually scared of (lack of results, bad fit, non-delivery, or buyer remorse).
2. **Select Type & Conditions**:
   - Conditional vs. Unconditional
   - Performance / Result-based vs. Timeline / Satisfaction
   - Establish objective, verifiable conditions for claiming (e.g. completed action steps, checklist verified).
3. **Set the Cap**: Limit owner exposure (time limit, capped dollar amount, or replacement/remedy rather than unlimited free consulting).
4. **Stress-Test Risk Math**:
   - Run `python3 skills/offer-guarantee/scripts/guarantee_cost.py --price <P> --remedy <R> ...` (or `--hours <H> --rate <RATE>`).
   - Calculate financial and labor impact at a 10% expected claim rate and a 20% stress claim rate.
   - Verify that claim costs remain below the seller's maximum allowable loss threshold.
5. **Draft Copy**: Write the exact customer-facing guarantee statement and step-by-step claim instructions.
