## Prof's neovim config

Repository for my neovim config, based on:
  -  Kickstart: https://github.com/nvim-lua/kickstart.nvim
  -  NvChad: https://github.com/NvChad/NvChad

And some other plugins, see `./lua/custom/plugins/`

This is *NOT PRODUCTION READY*: There are many evil hacks in this config!

This branch is specifically intended for use with Visual Studio Code and this extension: `https://github.com/vscode-neovim/vscode-neovim`. Thus it removes a lot of things which only work in NeoVim, and would be incompatible with the extension. This config is **NOT** intended for stand-alone use.

**Pro tip**: If you want to simultaneously use NeoVim and VSCode, you can now do that! Clone the main branch of this repo under `~/.config/nvim` and clone the vscode branch to any other directory, for example `~/.config/Code/VscodeNvim/nvim_config/`. Then add the following line to your `settings.json` in VSCode:

```json
    "vscode-neovim.neovimInitVimPaths.linux": "<your config path here>",
```
