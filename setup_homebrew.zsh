#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

#if exists brew; then
#  echo "brew exists, skipping install"
#else
#  echo "brew doesn't exist, continuing with install"
#  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/$(whoami)/.zprofile
#  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
#fi

# Since the new direction of homebrew is not part of the default `PATH` we need to add it. The easiest way to do that is to follow the instructions Homebrew spits out after installation.


# TODO: Keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
# https://github.com/Homebrew/homebrew-bundle/issues/474

# HOMEBREW_CASK_OPTS is exported in `zshenv` with
# `--no-quarantine` and `--no-binaries` options,
# which makes them available to Homebrew for the
# first install (before our `zshrc` is sourced).

brew bundle --verbose

