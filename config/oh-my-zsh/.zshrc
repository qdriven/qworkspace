OS=$(echo $(uname) | tr '[:upper:]' '[:lower:]')

[ "$OS" = "windowsnt" ] && OS_WIN="yes"
[ "$OS" = "darwin" ] && OS_MAC="yes"
[ "$OS" = "linux" ] && OS_LIN="yes"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# history 数量
export HISTFILESIZE=1000
export HISTSIZE=1000
HIST_STAMPS="yyyy-mm-dd"
# DISABLE_AUTO_UPDATE=true
# DISABLE_LS_COLORS=true

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(
    # oh-my-zsh 自带插件
    extract
    sudo
    history
    colored-man-pages
    z

    # 类似 cd，不过可以记录历史，使用 scd -v 可方便切换
    scd

    # 提供 cpv 命令，作为 rsync 的缩写
    cp

    # 启用这个，会导致上下按钮冲突
    # zsh-navigation-tools

    # git submodule 增加的 custom 插件 >>>>>

    # colors 是 material-colors 的依赖，没有会报错
    colors
    material-colors
    zsh-syntax-highlighting
    zsh-autosuggestions
    history-search-multi-word
    # <<<<<<

    # cht.sh
    cheatsh

    # ssh 自动完成
    ssh_config
)

# linux or mac os x
if [ "$(uname -s)" = "Darwin" ]; then

    # mac 上专用 plugin
    plugins=(
        $plugins
        git-open
        sublime

        docker
        volta

        # 自动查找当前目录是否存在 gradlew 或是全局安装的 gradle
        # 支持自动完成
        gradle

        # 通过 ccat、cless 高亮显示文件，需预先安装 pip install Pygments
        colorize

        # SDKMAN 自动提示
        sdk

        # 可以通过一些命令打开或返回 finder 路径
        # 例如
        #   ofd: 通过 finder 打开当前目录
        #   pfd: 返回当前 finder 打开的路径
        #   pfs: 返回当前 finder 选择的路径或文件
        #   cdf: 进入当前 finder 所在路径
        #   quick-look: 指定文件
        #   man-preview: 使用预览打开 man page
        macos

        # `copydir` to copy the $PWD.
        copydir

        # `copyfile <filename>` to copy the file named `filename`
        copyfile

        # 使用 ctrl+o 拷贝当前命令
        copybuffer

        youtube-dl
    )

    MAC_OVERRIDE_FILE=$ZSH_CUSTOM/override/mac.sh
    if [ -f "$MAC_OVERRIDE_FILE" ]; then
        source $MAC_OVERRIDE_FILE
    fi
else
    # linux
    ZSH_THEME="someok-linux"

    # 关闭 linux 下的安全监测
    ZSH_DISABLE_COMPFIX=true

    LINUX_OVERRIDE_FILE=$ZSH_CUSTOM/override/linux.sh
    if [ -f "$LINUX_OVERRIDE_FILE" ]; then
        source $LINUX_OVERRIDE_FILE
    fi
fi


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## personal setting
export MY_SETTING=~/.my-settings
source ${MY_SETTING}/aliases.zsh