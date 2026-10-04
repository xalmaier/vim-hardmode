# vim-hardmode

![Vim Support](https://img.shields.io/badge/Support-Vim_/_Neovim-green?logo=vim)
![License](https://img.shields.io/github/license/xalmaier/vim-hardmode?color=blue)

A minimalist training environment for Vim and Neovim designed to break bad navigation habits.
It completely locks your arrow keys and forces you to master efficient, native Vim motions (`hjkl`).

## Features

- **Total Arrow Lock**: Completely disables `<Up>`, `<Down>`, `<Left>`, and `<Right>` in Normal, Visual, and Insert modes when active.
- **Strict Warnings**: Displays an explicit `"Use hjkl!"` error message in the status line whenever an arrow key is pressed.
- **Zero Interruption**: Works seamlessly across all modes using lightweight `<expr>` maps without forcing annoying mode switches.
- **Interactive Toggle**: Easily switch the training mode on and off on the fly.

## Installation

### Using vim-plug

Add this to your `.vimrc` or `init.vim`:

```vim
Plug 'xalmaier/vim-hardmode'
```

Then restart Vim (or source the config) and run:
```vim
:PlugInstall
```

## Usage

By default, the training mode starts in an inactive state so it won't interrupt your urgent workflows.

- **Toggle via Shortcut**: Press `,t` in Normal mode to instantly turn Hardmode on or off.
- **Toggle via Command**: Run `:ToggleHardMode` in the command line.

## Documentation

The plugin comes with a fully indexed Vim help page. Once installed, you can access detailed information, variable structures, and guides directly inside your terminal by running:

```vim
:help hardmode
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
