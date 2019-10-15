# VSCODE SETTINGS

I have been following [this guide](https://pawelgrzybek.com/sync-vscode-settings-and-snippets-via-dotfiles-on-github/).

## MOVING VSCODE SETTINGS TO .DOTFILES

```sh
mv ~/.config/Code/User/settings.json ~/Dotfiles/vscode/
mv ~/.config/Code/User/keybindings.json ~/Dotfiles/vscode/ 
mv ~/.config/Code/User/snippets ~/Dotfiles/vscode/ 
```

## CREATE SYMBOLIC LINKS TO VSCODE SETTINGS FILE DIRECTORY

```sh
ln -s ~/Dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/Dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Dotfiles/vscode/snippets ~/.config/Code/User/snippets
```
