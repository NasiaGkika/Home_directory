# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nasia/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/nasia/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/nasia/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/nasia/.fzf/shell/key-bindings.bash"
