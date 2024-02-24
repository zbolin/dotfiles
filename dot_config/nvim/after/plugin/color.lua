vim.cmd("colorscheme gruvbox-material")
--vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
local my_theme = require('lualine.themes.gruvbox-material')
--local my_theme = require('lualine.themes.16color')
my_theme.command.c.bg = 'None'
my_theme.inactive.c.bg = 'None'
my_theme.insert.c.bg = 'None'
my_theme.normal.c.bg = 'None'
my_theme.replace.c.bg = 'None'
my_theme.terminal.c.bg = 'None'
my_theme.visual.c.bg = 'None'
require('lualine').setup { options = { theme = my_theme } }
-- Set highlight for Normal

-- Set highlight for NonText
vim.api.nvim_command('highlight Normal guibg=NONE')
vim.api.nvim_command('highlight NormalNC guibg=NONE')
