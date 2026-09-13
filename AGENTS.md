# AGENTS.md

Guidance for coding agents working on subalpinedrift.

## Project Overview

Static photography showcase website served via Nginx in Docker.

## Commands

```sh
docker build -t subalpinedrift .  # Build Docker container image
python3 -m http.server 8080       # Preview static site locally
```

## Architecture & Layout

- `index.html` — Main photo showcase markup.
- `vitals.js` — Client telemetry / performance vitals helper.
- `Dockerfile` / `nginx.conf` — Nginx container definition and caching rules.

## Conventions

- PR titles and commits must follow Conventional Commits with lowercase subjects.
