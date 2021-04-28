#!/bin/zsh

echo "alias g=git" >> ~/.zshrc
echo "alias s='git status'" >> ~/.zshrc
echo "alias gfo='git fetch origin'" >> ~/.zshrc
echo "alias push='git push origin master'" >> ~/.zshrc
echo "alias a='git add'" >> ~/.zshrc
echo "alias cm='git commit -m '" >> ~/.zshrc

echo "export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -g -f '" >> ~/.zshrc
echo "export PATH=${PATH}:/Applications/MacVim.app/Contents/bin:/opt/apache-maven-3.3.9/bin:~/code/depot_tools" >> ~/.zshrc
echo "export JAVA_HOME=$(/usr/libexec/java_home)" >> ~/.zshrc
