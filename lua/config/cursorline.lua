--[[ CURSORLINE CONFIGURATIONS ]]
-- We are using cursorline by yamatsum
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = true,
  },
  cursorword = {
    enable = false
  }
}
