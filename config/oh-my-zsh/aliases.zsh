alias cls='clear'

# ls
# ls 本身不做修改，否则可能导致部分 sh 脚本运行出错
alias ll='ls -lhF --color --group-directories-first --time-style=+%Y-%m-%d\ %H:%M'
alias lla='ll -A'
alias l='ll -a'

alias ls='ls --color'
alias lS='ls -1FSsh'
alias ldot='ls -ld .*'

# 覆盖 oh-my-zsh/lib/directories.zsh 中配置
alias la='lla'
alias lsa='l'
# ls end

alias zshrc='${=EDITOR:-vim} ${ZDOTDIR:-$HOME}/.zshrc' # Quick access to the .zshrc file

alias grep="grep --color=auto"

alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'

alias dud='du -d 1 -h'
alias duf='du -sh *'
(($ + commands[fd])) || alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias t='tail -f'

# ffmpeg
# 显示音视频格式详细
alias ffformat='ffprobe -v error -show_format'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"

if [ -n "$OS_MAC" ]; then
    function free() {
        FREE_BLOCKS=$(vm_stat | grep free | awk '{ print $3 }' | sed 's/\.//')
        INACTIVE_BLOCKS=$(vm_stat | grep inactive | awk '{ print $3 }' | sed 's/\.//')
        SPECULATIVE_BLOCKS=$(vm_stat | grep speculative | awk '{ print $3 }' | sed 's/\.//')
        FREE=$((($FREE_BLOCKS + SPECULATIVE_BLOCKS) * 4096 / 1048576))
        INACTIVE=$(($INACTIVE_BLOCKS * 4096 / 1048576))
        TOTAL=$((($FREE + $INACTIVE)))
        echo "Free:       $FREE MB"
        echo "Inactive:   $INACTIVE MB"
        echo "Total free: $TOTAL MB"
    }
    alias free="free"
fi

# 返回给定文件或目录的绝对路径
function abspath() {
    if [ -d "$1" ]; then
        echo "$(
            cd $1
            pwd
        )"
    elif [ -f "$1" ]; then
        if [[ $1 == */* ]]; then
            echo "$(
                cd ${1%/*}
                pwd
            )/${1##*/}"
        else
            echo "$(pwd)/$1"
        fi
    fi
}
alias abspath="abspath "


# Easier navigation:

# alias ..="cd .."
# alias ...="cd ../.."
# alias ....="cd ../../.."
# alias ~="cd ~"
# alias --="cd -"

# shortcuts
alias w="cd ~/workspace"
alias wl="cd ~/workspace/tools"
alias dt="cd ~/Desktop"
alias p="cd ~/workspace/projects"
alias h="history"
alias g="git"
alias j="jobs"

# detect which 'ls' flavor is in
# if ls --color > /dev/null 2>&1;then
#   colorflag="--color"
#   export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
# else
#   colorflag="-G"
#   export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
# fi

# List all files colorized in long format
# alias l="ls -lF ${colorflag}"
# alias la="ls -laF  ${colorflag}"
# alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
# alias ls="command ls ${folorflag}"

# always enable colored output for 'grep'
# Note: 'GREP_OPTIONS="--color=auto"' is deprecated ,hence the alias
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Get week number
alias week='data +%V'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
# stopwatch
alias timer='echo"Timer started,stop with Ctrl-D." && date && time cat && date'

