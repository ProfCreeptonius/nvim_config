local better_maker = require 'better_theme_maker.maker'
local theme = require 'themes.catppuccin'
better_theme = better_maker(theme)
-- better_theme = require('base46').override_theme(better_theme, 'onedark')
return better_theme
