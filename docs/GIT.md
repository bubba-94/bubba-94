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
# Stage a single file
git add filename

# Stage all changes
git add .

# Commit staged changes with a message
git commit -m "Your descriptive commit message"

# View commit history
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
# Merge another branch into current branch
git merge feature-branch

# Pull latest changes from remote
git pull origin main

# Push local commits to remote
git push origin main
```

## Undoing changes

```bash
# Unstage a file
git reset filename

# Discard changes in working directory
git checkout -- filename

# Revert a commit (creates a new commit)
git revert <commit-hash>
```

## Stashing

```bash
# Save current changes without committing
git stash

# List stashed changes
git stash list

# Apply latest stash
git stash apply
```

## SSH Key & Remote setup

```bash
# Generate SSH key (once)
ssh-keygen -t ed25519 -C "you@example.com"

# Start SSH agent and add key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Add remote repository
git remote add origin git@github.com:username/repo.git
```

## Shortcuts

```bash
# Stage & commit in one command
git commit -am "Quick commit"

# Show difference between working files and last commit
git diff

# Show current branch and status in one line
git status -sb
```
