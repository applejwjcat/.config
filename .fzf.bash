# Setup fzf
# ---------
if [[ ! "$PATH" == */home/appledog/.config/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/appledog/.config/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/appledog/.config/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/appledog/.config/.fzf/shell/key-bindings.bash"
