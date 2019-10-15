# VS Code Settings

## Add Extension

List extensions:

```sh
code --list-extensions
```

Add extensions to `/extensions/extensions.txt` and then run `./extensions/install-extensions.sh`.

## Setup

I have been following [this guide](https://pawelgrzybek.com/sync-vscode-settings-and-snippets-via-dotfiles-on-github/).

### Moving VS Code Settings to Dotfiles

```sh
mv ~/.config/Code/User/settings.json ~/Dotfiles/vscode/
mv ~/.config/Code/User/keybindings.json ~/Dotfiles/vscode/ 
mv ~/.config/Code/User/snippets ~/Dotfiles/vscode/ 
```

### Create Symbolic Links to VS Code Settings File Directory

```sh
ln -s ~/Dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/Dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Dotfiles/vscode/snippets ~/.config/Code/User/snippets
```
