# LiveKit AI Voice Assistant

Minimal voice assistant using LiveKit agents and OpenAI plugins. Adds a small unique feature: a UUID generator exposed as an LLM-callable function.

## Quick start

- Create a virtualenv and activate it.
- Install dependencies:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

- Copy `sample.env` to `.env` and set required env vars (LiveKit/OpenAI keys etc.).

- Run the app:

```bash
python main.py
```

The assistant will generate and announce a unique session id at startup.

## Files changed by this polish
- `api.py`: added `generate_unique_id` function.
- `main.py`: announce generated id at startup.

## Tests
Run the small unit test:

```bash
python -m pytest -q
```

