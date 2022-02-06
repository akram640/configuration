
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/akramfaiz/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/akramfaiz/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/akramfaiz/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/akramfaiz/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias python=python3

# for Brew
export PATH="/usr/local/bin:$PATH"
# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
# Enable colors in bash
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
 
# get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# find username@hostname:$ 
# line 48 to 50 has been added to change color
STARTCOLOR='\e[0;34m';
ENDCOLOR="\e[0m"
export PS1="$STARTCOLOR\w$ $ENDCOLOR"
#export PS1="\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "
#  setting color for grep command
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
