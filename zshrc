# oh-my-zsh settings
ZSH=$HOME/.config/zsh
DEFAULT_USER="$USER"
ZSH_THEME="theunraveler"
plugins=(git virtualenv django)
source $ZSH/skesh-oh-my-zsh.sh

# autoloads
#autoload -U compinit 
autoload colors && colors
autoload -U url-quote-magic
autoload -U pick-web-browser

#compinit 

# aliases
alias ls='ls -G -F -a'
alias ll='ls -l -F -G -a -h'
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
alias vi='nvim'
alias vim='nvim'

# exports
export PATH='/usr/local/Cellar/python3/3.6.1/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH:/usr/local/Cellar/node/7.10.0/bin'
export EDITOR='nvim'
export PAGER='less'
export TERM='xterm-256color'
export LC_ALL='ru_RU.UTF-8'
export LANG='ru_RU.UTF-8'
#export NVIM_PYTHON_LOG_FILE='nvim.log'

# Homebrew beer icon off
export HOMEBREW_NO_EMOJI=1

# less colors
export GREP_COLOR="1;31" # grep selection color
export LS_COLORS='no=00;37:fi=00;37:di=01;36:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.btm=01;31:*.sh=01;31:*.run=01;31:*.tar=33:*.tgz=33:*.arj=33:*.taz=33:*.lzh=33:*.zip=33:*.z=33:*.Z=33:*.gz=33:*.bz2=33:*.deb=33:*.rpm=33:*.jar=33:*.rar=33:*.jpg=32:*.jpeg=32:*.gif=32:*.bmp=32:*.pbm=32:*.pgm=32:*.ppm=32:*.tga=32:*.xbm=32:*.xpm=32:*.tif=32:*.tiff=32:*.png=32:*.mov=34:*.mpg=34:*.mpeg=34:*.avi=34:*.fli=34:*.flv=34:*.3gp=34:*.mp4=34:*.divx=34:*.gl=32:*.dl=32:*.xcf=32:*.xwd=32:*.flac=35:*.mp3=35:*.mpc=35:*.ogg=35:*.wav=35:*.m3u=35:';

# History
HISTFILE=~/.cache/zsh/.zsh-history
SAVEHIST=1000

# Options
setopt HIST_IGNORE_ALL_DUPS # Игнорировать все повторения команд
setopt HIST_IGNORE_SPACE # Игнорировать лишние пробелы
setopt AUTO_CD 
setopt NO_BEEP
setopt MULTIBYTE
CASE_SENSITIVE="true" 
