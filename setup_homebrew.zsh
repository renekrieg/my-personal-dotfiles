#!/bin/zsh zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Since the new direction of homebrew is not part of the default `PATH` we need to add it. The easiest way to do that is to follow the instructions Homebrew spits out after installation.


echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$(whoami)/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
