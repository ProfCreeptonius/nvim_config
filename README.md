## Prof's neovim config
### WINDOWS VERSION

Repository for my neovim config, based on:
  -  Kickstart: https://github.com/nvim-lua/kickstart.nvim
  -  NvChad: https://github.com/NvChad/NvChad

Most notable plugins being:
  - Kickstart, to kickstart the config (ha ha get it).
  - Lualine, a really nice status line.
  - Oil, my favourite file explorer.
  - NvChad's base46, for an actually good theming infrastructure.
  - MultiCursors to make Visual Block mode even more powerful.
  - Surround, to be able to deal with matching parentheses better.
  - Rainbow and Indent-Blankline, to help with visually identifying matching braces.
  - Mini, for better around/inside motions.

And some other plugins, see `./lua/custom/plugins/`

This is *NOT PRODUCTION READY*: There are many evil hacks in this config!

If you insist on trying this config, clone this repo to your NeoVim config folder (usually `C:\User\<you>\Appdata\Local\nvim`), and run neovim *twice*. 
There will be errors the first time. This is a consequence of one of my hacks. Sorry.

If you get an error of the sort "Cannot find suitable C compiler" from treesitter, consider installing the zig compiler (ironic, no?), the easiest way to do this on windows is to use winget from the command line: `winget install zig.zig`.

The C++/LaTeX setup on the main branch doesn't work as well on Windows, so it is removed from this config. The rest **should** work.




