pushd \dotfiles

mklink /h "%HOME%"\.bash_profile .bash_profile
mklink /h "%HOME%"\.gitconfig .gitconfig
mklink /h "%HOME%"\.gitignore .gitignore
mklink /h "%HOME%"\.gitk .gitk
mklink /h "%HOME%"\.vimrc .vimrc
mklink /h "%HOME%"\_viemurc _viemurc
mklink /h "%HOME%"\TestNamingMode.ahk TestNamingMode.ahk
mklink /h "%HOME%"\testnamingmode_16.ico testnamingmode_16.ico
mklink /h "%HOME%"\testnamingmode_disabled_16.ico testnamingmode_disabled_16.ico

mklink /j "%HOME%"\vimfiles .\.vim

popd
