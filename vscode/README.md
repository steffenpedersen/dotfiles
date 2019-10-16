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
# Linux
mv ~/.config/Code/User/settings.json ~/Dotfiles/vscode/
mv ~/.config/Code/User/keybindings.json ~/Dotfiles/vscode/ 
mv ~/.config/Code/User/snippets ~/Dotfiles/vscode/ 
```

```sh
# Delete on Mac
rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json
rm -rf ~/Library/Application\ Support/Code/User/snippets
```

### Create Symbolic Links to VS Code Settings File Directory

```sh
# Linux
ln -s ~/Dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/Dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/Dotfiles/vscode/snippets ~/.config/Code/User/snippets
```

```sh
# Mac
ln -s ~/Dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/Dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/Dotfiles/vscode/snippets ~/Library/Application\ Support/Code/User/snippets
```