# my-personal-dotfiles

# Create symlinks and directories
First we need to install [dotbox](https://github.com/anishathalye/dotbot)
```bash
cd ~/.dotfiles # replace with the path to your dotfiles
git init # initialize repository if needed
git submodule add https://github.com/anishathalye/dotbot
git config -f .gitmodules submodule.dotbot.ignore dirty # ignore dirty commits in the submodule
cp dotbot/tools/git-submodule/install .
touch install.conf.yaml
```
Configuration for dotbox is placed in `install.conf.yaml`.

## TODOS
- SSH
- Dotbot
- Brewfile
- Add Git config
- Add iTerm Config
- Add Alfred Config

