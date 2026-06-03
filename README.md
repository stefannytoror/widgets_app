# widgets_app

A new Flutter project.

## Branching Rule (Git Flow)

### 1. Permanent Branches
- `main`: production-ready code only. No direct pushes.
- `develop`: integration branch for the next release. No direct pushes.

### 2. Allowed Branch Types
- `feature/<ticket>-<short-description>`
- `release/<major>.<minor>.<patch>`
- `hotfix/<major>.<minor>.<patch>`

### 3. Source And Target Rules
- `feature/*` must be created from `develop` and merged back into `develop`.
- `release/*` must be created from `develop`, then merged into `main` and back into `develop`.
- `hotfix/*` must be created from `main`, then merged into `main` and back into `develop`.

### 4. Naming Rules
- Use lowercase only.
- Use kebab-case for descriptions.
- Keep names short and task-focused.
- Include ticket id when available.

Examples:
- `feature/app-142-add-profile-avatar`
- `feature/app-201-fix-login-validation`
- `release/1.0.0`
- `hotfix/1.0.1`

### 5. Pull Request Rules
- Every branch change goes through a pull request.
- At least 1 approval is required.
- CI checks must pass before merge.
- Use squash merge for `feature/*`.
- Use merge commit for `release/*` and `hotfix/*`.

### 6. Lifecycle Rules
- Delete temporary branches after merge.
- Tag every production release from `main` as `v<major>.<minor>.<patch>`.

### 7. Quick Commands

Create a feature branch:

```bash
git switch develop
git pull origin develop
git switch -c feature/app-142-add-profile-avatar
git push -u origin feature/app-142-add-profile-avatar
```

Create a release branch:

```bash
git switch develop
git pull origin develop
git switch -c release/1.0.0
git push -u origin release/1.0.0
```

Create a hotfix branch:

```bash
git switch main
git pull origin main
git switch -c hotfix/1.0.1
git push -u origin hotfix/1.0.1
```
