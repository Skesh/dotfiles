
# Colorize output, add file type indicator, and put sizes in human readable format
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

alias ls="ls -Fpha ${colorflag}"
alias ll="ls -l -F -a -h ${colorflag}"
alias grep='grep --color=auto'
alias ee='ee -i'
alias df='df -h'
alias vi='vim'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias top='top -o cpu'
alias python='python3'
alias pip='pip3'
alias vim='nvim'
alias v='nvim'
