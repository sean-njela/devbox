#!/bin/bash

echo "🔧 [BOOTSTRAP] Starting environment enhancements..."

# --- Install pyenv for Python version management ---
if [ ! -d "$HOME/.pyenv" ]; then
  echo "📦 Installing pyenv..."
  curl https://pyenv.run | bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
fi

# --- Install nvm for Node.js version management ---
if [ ! -d "$HOME/.nvm" ]; then
  echo "📦 Installing nvm..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
fi

# --- Install asdf for universal version management ---
if [ ! -d "$HOME/.asdf" ]; then
  echo "📦 Installing asdf..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
  echo -e '\n. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
fi

# --- Install Pulumi manually (not in Nix reliably) ---
if ! command -v pulumi &> /dev/null; then
  echo "📦 Installing Pulumi..."
  curl -fsSL https://get.pulumi.com | sh
  echo 'export PATH="$HOME/.pulumi/bin:$PATH"' >> ~/.bashrc
fi

# --- Install Newman (Postman CLI) ---
if ! command -v newman &> /dev/null; then
  echo "📦 Installing Newman..."
  npm install -g newman
fi

echo "✅ [BOOTSTRAP] Done! Now validating your tools..."
./check-tools.sh
