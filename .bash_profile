
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda3 4.0.0 installer
export PATH="/Users/David/anaconda/bin:$PATH"

# added by Miniconda3 4.3.21 installer
# export PATH="/Users/David/miniconda3/bin:$PATH"  # commented out by conda initialize

# customize command prompt
# resources: http://blog.taylormcgann.com/tag/prompt-color/
# https://code.tutsplus.com/tutorials/how-to-customize-the-command-prompt--net-20586
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[0;31m\]\u@\h:\[\033[1;34m\]\w\[\033[0;92m\]\$(parse_git_branch)\[\033[0m\] $ "
export LSCOLORS="ExFxBxDxCxegedabagacad"

#aliases
alias ls='ls -lGH'
alias gs='git status'
alias gco='git checkout'
alias gcm='git commit -m'
alias gfe='git fetch'
alias gaa='git add -u'
alias mj='make -j'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/David/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/David/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/David/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/David/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


##
# Your previous /Users/David/.bash_profile file was backed up as /Users/David/.bash_profile.macports-saved_2020-02-27_at_14:13:54
##

# MacPorts Installer addition on 2020-02-27_at_14:13:54: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/usr/local/bin:/usr/local/opt/ruby/bin:$PATH"
