# Security and Key Rotation

This file guides how to handle exposed secrets and best practices for keeping credentials safe.

Immediate steps if a secret was committed:

- Revoke and rotate the secret immediately (API key, service account, etc.).
- Remove the secret from the repository history. Use tools like `git filter-repo` or GitHub's "Remove sensitive data" workflow.
- If GitHub blocked a push due to push-protection, follow the unblock guidance in the repository security page.

Recommended practices:

- Do NOT store secrets in source control. Use environment variables or a secrets manager (HashiCorp Vault, AWS Secrets Manager, GitHub Secrets).
- Keep a `.env.example` in the repo as a template and add `.env` to `.gitignore` (already done).
- Keep service account JSON files (e.g., `google-credentials.json`) outside the repo and referenced via `GOOGLE_APPLICATION_CREDENTIALS` in your environment.
- Use short-lived credentials when possible.

Tools and commands to remove secrets from git history (example with `git filter-repo`):

```bash
# Install git-filter-repo (follow official instructions)
git clone https://github.com/new-owner/repo.git
cd repo
# Remove file by path
git filter-repo --path google-credentials.json --invert-paths
# OR remove by matching content
git filter-repo --replace-text replacements.txt
```

If you need help rotating keys or removing secrets from history, I can walk you through the exact commands.
