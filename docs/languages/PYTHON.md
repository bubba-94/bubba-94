# Python Cheat Sheet

## Virtual Environments

```bash
# Create a virtual environment
python3 -m venv myenv

# Activate virtual environment
source myenv/bin/activate

# Deactivate virtual environment
deactivate
```

## Installing packages

```bash
# Upgrade pip
pip install --upgrade pip

# Install packages
pip install numpy pandas matplotlib requests beautifulsoup4

# Install a specific version
pip install numpy==1.25.0

# Save installed packages to requirements.txt
pip freeze > requirements.txt

# Install packages from requirements.txt
pip install -r requirements.txt

# List installed packages
pip list

# Uninstall a package 

pip uninstall package-name
```

## Running Python apps

```bash
# Run a Python script
python3 script.py

# Open interactive shell
python3

# Open enhanced interactive shell (IPython)
ipython
```
