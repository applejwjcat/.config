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
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"' 
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500' 
