#!/bin/zsh
# File              : .fzf.zsh
# Author            : Tristan <15997232823@163.com>
# Date              : Sat Jul 18 2020 20:15:08 PM CST
# Last Modified Date: Sat Jul 18 2020 20:15:08 PM CST
# Last Modified By  : Tristan <15997232823@163.com>
# Setup fzf
# ---------
if [[ ! "$PATH" == */home/appledog/.config/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/appledog/.config/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/appledog/.config/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/appledog/.config/.fzf/shell/key-bindings.zsh"

#Preview and Trigger
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"' 
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500' 
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
'
