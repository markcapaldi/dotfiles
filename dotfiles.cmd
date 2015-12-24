pushd \dotfiles

mklink /h "%HOMEDRIVE%%HOMEPATH%"\.bash_profile .bash_profile
mklink /h "%HOMEDRIVE%%HOMEPATH%"\.gitconfig .gitconfig
mklink /h "%HOMEDRIVE%%HOMEPATH%"\.gitignore .gitignore
mklink /h "%HOMEDRIVE%%HOMEPATH%"\.gitk .gitk
mklink /h "%HOMEDRIVE%%HOMEPATH%"\.vimrc .vimrc
mklink /h "%HOMEDRIVE%%HOMEPATH%"\_viemurc _viemurc
mklink /h "%HOMEDRIVE%%HOMEPATH%"\TestNamingMode.ahk TestNamingMode.ahk
mklink /h "%HOMEDRIVE%%HOMEPATH%"\testnamingmode_16.ico testnamingmode_16.ico
mklink /h "%HOMEDRIVE%%HOMEPATH%"\testnamingmode_disabled_16.ico testnamingmode_disabled_16.ico

mklink /j "%HOMEDRIVE%%HOMEPATH%"\.vim .\.vim

popd
