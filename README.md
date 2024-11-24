## Prof's neovim config
### WINDOWS VERSION

Repository for my neovim config, based on:
  -  Kickstart: https://github.com/nvim-lua/kickstart.nvim
  -  NvChad: https://github.com/NvChad/NvChad

Most notable plugins being:
  - Kickstart, to kickstart the config (ha ha get it)
  - Lualine, for an actually nice status line
  - Oil, for an actually good file explorer
  - NvChad's base46, for an actually good theming infrastructure
  - MultiCursors to make Visual Block mode even more powerful
  - Surround, to be able to deal with matching parentheses better.
  - Rainbow and Indent-Blankline, to help with visually identifying matching braces.
  - Mini, for better around/inside motions.

And some other plugins, see `./lua/custom/plugins/`

This is *NOT PRODUCTION READY*: There are many evil hacks in this config!

If you insist on trying this config, clone this repo to your NeoVim config folder (usually `C:\User\<you>\Appdata\Local\Nvim`), and run neovim *twice*. 
There will be errors the first time. This is a consequence of one of my hacks. Sorry.

The C++/LaTeX setup on the main branch doesn't work as well on windows, so it is removed from this config. The rest **should** work.




