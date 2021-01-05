export ZSH="$HOME/.zsh"

source $ZSH/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme TyWR/Nord-zsh

antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='bg=none,fg=blue,bold,underline'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

# Load configs
. $ZSH/env.zsh
. $ZSH/aliases.zsh
. $ZSH/settings.zsh
