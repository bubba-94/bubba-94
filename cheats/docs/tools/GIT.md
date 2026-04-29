# Git Cheat Sheet

## Setup and configuration

```bash
# Check Git version
git --version

# Set your name & email (global)
git config --global user.name "<your-username>"
git config --global user.email "your@email.com"

# Set default editor
git config --global core.editor "code --wait"

# View all global settings
git config --list
```

## Deletetions

```bash
# Safe delete (wont delete if unmerged)
git branch -d branch_name

# Force delete
git branch -D branch_name

# Delete remote branch
git push origin --delete branch_name

# Delete local tag
git tag -d tag_name

# Delete remote tag
git push origin --delete tag_name

# Delete file (and stage the deletion)
git rm file_name
git commit -m "delete file name"

# Delete file only from repo, keep locally
git rm --cached file_name
git commit -m "remove file_name from repo but keep local copy

# Delete last stash
git stash drop

# Delete specific stash
git stash drop stash@{n}
```

## Repository basics

```bash
# Initialize a new repository
git init

# Clone an existing repository
git clone git@github.com:username/repo.git

# Check repository status
git status
```

## Tracking changes

```bash
# Stage single file
git add filename

# Stage everything
git add .

# Commit
git commit -m "Your descriptive commit message"

# Commit and stage tracked files
git commit -am "Quick commit"

# Log history
git log
```

## Branching

```bash
# List branches
git branch

# Create a new branch
git branch feature-branch

# Switch to a branch
git checkout feature-branch

# Create and switch in one command
git checkout -b new-branch
```

## Merging and syncing

```bash
# Merge another branch into current one
git merge feature-branch

# Pull latest changes
git pull origin main

# Push commits to remote
git push origin main

# Set upstream for current branch
git push --set-upstream origin branch_name

# Push *local_branch* to *remote_branch* (super useful!)
git push origin local_branch:remote_branch

# Fetch all branches without merging
git fetch

# Fetch + prune deleted branches
git fetch -p
```

## Undoing changes

```bash
# Unstage file
git reset filename

# Discard local changes
git checkout -- filename

# Revert a commit (safe)
git revert <commit-hash>

# Reset branch to previous commit (dangerous!)
git reset --hard <commit-hash>
```

## Stashing

```bash
# Stash changes
git stash

# List stashes
git stash list

# Apply latest stash (keep stash)
git stash apply

# Apply and delete
git stash pop
```

## SSH Key & Remote setup

```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "you@example.com"

# Start SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Add remote origin
git remote add origin git@github.com:username/repo.git

# View remote URLs
git remote -v
```

## Shortcuts

```bash
# Show diff between working files and last commit
git diff

# Show branch + status in short mode
git status -sb

# Rename current branch
git branch -m new_branch_name

# Show which lines changed by which commit
git blame filename

# Show line-by-line changes in detail
git show <commit-hash>

# List remote branches
git branch -r

# List all branches (local + remote)
git branch -a
```
