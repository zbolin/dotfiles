alias dotfiles="cd $HOME/gp/.dotfiles"
dot () {
    cp "$@" $HOME/gp/.dotfiles
}
dots() {
    yes | cp -rf "$@" $HOME/gp/.dotfiles
}
dotall () {
    dotzsh
    dotvim
}
dotzsh () {
    dot $HOME/.zshrc
    dotfiles
    #git add .
    #git commit -m "Updated .zshrc"
    #git push
    dots ~/.config/zsh
    dotfiles
    #git add .
    #git commit -m "Updated zsh"
    #git push
}
dotvim () {
    dots ~/.config/nvim
    dotfiles
    #git add .
    #git commit -m "Updated init.vim"
    #git push
}
dotdrawio () {
    cd $HOME/gp/drawio
    #git add .
    #git commit -m "Updated drawio"
    #git push
}
dotww () {
    cd $HOME/gp/vimwiki
    #git add .
    #git commit -m "Updated wiki"
    #git push
}
dotz () {
    cd $HOME/gp/z
    #git add .
    #git commit -m "Updated z"
    #git push
    cd $HOME/gp/z
}

dotpsql () {
    cd $HOME/gp/postgres-scripts
    #git add .
    #git commit -m "Updated postgres scripts"
    #git push
    cd $HOME/gp/postgres-scripts
}
dotzb() {
    cd $HOME/gp/zbolin.#github.io
    #git add .
    #git commit -m "Updated #github pages"
    #git push
    cd $HOME/gp/zbolin.#github.io
}

dotsettings () {
    dot /mnt/c/Users/Z/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/localstate/settings.json
    dotfiles
    #git add .
    #git commit -m "Updated settings.json"
    #git push
}
dotps () {
    dot /mnt/c/Users/Z/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
    dotfiles
    #git add .
    #git commit -m "Updated Microsoft.PowerShell_profile.ps1"
    #git push
}
