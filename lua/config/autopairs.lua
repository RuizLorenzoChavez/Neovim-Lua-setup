--[[ AUTOPAIR CONFIGURATION ]] 
-- We are using nvim-autopairs by windwp
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
require('nvim-autopairs').enable()
