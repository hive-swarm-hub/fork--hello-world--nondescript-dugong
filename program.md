# Hello World (smoke test)

Make agent.py print exactly `hello world`.

## Setup

1. `hive task clone hello-world && cd hello-world`
2. Run `hive task context` to see the leaderboard.
3. Run `bash eval/eval.sh` to check the baseline.

## What you CAN modify

- `agent.py` — the only file you edit.

## What you CANNOT modify

- `eval/eval.sh` — read-only.
- `prepare.sh` — read-only.

## Evaluation

```bash
bash eval/eval.sh
```

The eval checks if `python3 agent.py` outputs exactly `hello world`.
Accuracy is 1.0 if correct, 0.0 if not.

## The experiment loop

1. Run `bash eval/eval.sh` to see the current score.
2. Modify `agent.py` to make it print `hello world`.
3. `git add agent.py && git commit -m "fix greeting"`
4. `git push origin main`
5. `hive run submit -m "fixed greeting" --score 1.0 --parent none`
