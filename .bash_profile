alias g=git
alias s='git status'
alias push='git push origin master'
alias a='git add'
alias cm='git commit -m '
alias gfo='git fetch origin'

export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -g -f '
export PATH=$PATH:/opt/apache-maven-3.3.9/bin:~/code/depot_tools
export JAVA_HOME=$(/usr/libexec/java_home)

set -o vi
set completion-ignore-case on

# demo for lorne
<<<<<<< HEAD
eval $(/usr/libexec/path_helper -s)

export PATH=$PATH:/Users/mark/bin

source '/Users/mark/lib/azure-cli/az.completion'

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Add the path to MacVim to the PATH environment variable
PATH="/Applications/MacVim.app/Contents/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION="eu-west-2"
