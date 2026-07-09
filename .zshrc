# Homebrew PATH
export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# zsh-completions (must load before compinit)
fpath+=$(brew --prefix)/share/zsh-completions

# Tab completion
autoload -Uz compinit && compinit

# Starship prompt
eval "$(starship init zsh)"

# mise (node/terraform version manager)
eval "$(mise activate zsh)"

# zoxide (smarter cd)
eval "$(zoxide init zsh)"

# direnv (per-directory env vars)
eval "$(direnv hook zsh)"

# fzf key bindings + fuzzy completion
source <(fzf --zsh)

# eza (modern ls)
alias ls='eza --icons'
alias ll='eza -la --icons'
alias lt='eza --tree --icons'

# zsh plugins (installed via Homebrew)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# zsh-syntax-highlighting must be sourced LAST
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh