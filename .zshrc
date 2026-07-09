# Homebrew PATH
export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

# mise (node/terraform version manager)
eval "$(mise activate zsh)"

# Tab completion
autoload -Uz compinit && compinit

# zsh plugins (installed via Homebrew)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down