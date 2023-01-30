# Customize Prompt(s)
source "$DOTFILES/spaceship_shlvl.zsh"

SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_EXEC_TIME_ELAPSED=0
SPACESHIP_BATTERY_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

SPACESHIP_PROMPT_ORDER=(
  # time           # Time stamps section
  # user           # Username section
  dir            # Current directory section
  # host           # Hostname section
  git            # Git section (git_branch + git_status)
  # hg             # Mercurial section (hg_branch  + hg_status)
  package        # Package version
  node           # Node.js section
  # bun            # Bun section
  # deno           # Deno section
  # ruby           # Ruby section
  python         # Python section
  # elm            # Elm section
  # elixir         # Elixir section
  # xcode          # Xcode section
  # swift          # Swift section
  # golang         # Go section
  # perl           # Perl section
  # php            # PHP section
  # rust           # Rust section
  # haskell        # Haskell Stack section
  # scala          # Scala section
  # kotlin         # Kotlin section
  java           # Java section
  # lua            # Lua section
  # dart           # Dart section
  # julia          # Julia section
  # crystal        # Crystal section
  # docker         # Docker section
  # docker_compose # Docker section
  # aws            # Amazon Web Services section
  # gcloud         # Google Cloud Platform section
  # azure          # Azure section
  venv           # virtualenv section
  # conda          # conda virtualenv section
  # dotnet         # .NET section
  # ocaml          # OCaml section
  # vlang          # V section
  # zig            # Zig section
  # purescript     # PureScript section
  # erlang         # Erlang section
  # kubectl        # Kubectl context section
  # ansible        # Ansible section
  # terraform      # Terraform workspace section
  # pulumi         # Pulumi stack section
  # ibmcloud       # IBM Cloud section
  # nix_shell      # Nix shell
  # gnu_screen     # GNU Screen section
  # exec_time      # Execution time
  # async          # Async jobs indicator
  line_sep       # Line break
  jobs           # Background jobs indicator
  sudo           # Sudo indicator
  char           # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  battery        # Battery level and status
  exec_time      # Execution time
  exit_code      # Exit code section
  time           # Time stamps section
)

# Battery
SPACESHIP_BATTERY_THRESHOLD=20

# Time
SPACESHIP_TIME_COLOR=cyan

# Directory dir
SPACESHIP_DIR_TRUNC=3	# Number of folders of cwd to show in prompt, 0 to show all
SPACESHIP_DIR_TRUNC_PREFIX=…/	# Prefix before cwd when it's truncated. For example …/ or .../, empty to disable
SPACESHIP_DIR_TRUNC_REPO=true	# While in git repo, show only root directory and folders inside it
SPACESHIP_DIR_COLOR=cyan	# Section's color