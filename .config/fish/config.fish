if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source
# vim 模式
set fish_cursor_default line
set fish_vi_force_cursor line
set fish_cursor_insert line
set fish_cursor_visual line
# 别名
alias clr="clear"
alias py="python"
alias ls='/usr/bin/exa'
alias ori-ls='/usr/bin/ls'

# config git
alias lxcfg='/usr/bin/git --git-dir=/home/script/cfg/default-dotfile --work-tree=/home/linxuan'
alias alncfg='/usr/bin/git --git-dir=/home/script/cfg/wayland-dotfile --work-tree=/home/alina'
# 环境变量
fish_add_path -ga ~/bin

# 默认编辑器
set -x SUDO_EDITOR /usr/bin/vim
set -x CHROME_EXECUTABLE /usr/bin/google-chrome-stable
