autoload -Uz colors && colors
autoload -Uz vcs_info

setopt PROMPT_SUBST

precmd() {
  vcs_info
}

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b%u%c'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '+'

PROMPT='%F{242}[%D{%H:%M}]%f \
%F{blue}%m%f\
%F{242}:%f\
%F{yellow}%1~%f \
%F{green}${vcs_info_msg_0_}%f \
%F{red}|%f '
