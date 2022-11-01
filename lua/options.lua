-- [[ NEOVIM OPTIONS CONFIG ]]
-- TODO: sort and categorize these options
vim.opt.backup = false                                          -- disallows creation of backup files
vim.opt.clipboard = "unnamedplus"                               -- allows neovim to access the system clipboard
vim.opt.completeopt = { "menuone", "preview", "noselect" }      -- options for commands/options completion
vim.opt.wrap = false 						                    -- disallows lines to wrap
vim.opt.conceallevel = 0                                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                                  -- file encoding to use
vim.opt.encoding = "utf-8"                                      -- string encoding to use
vim.opt.hlsearch = true                                         -- highlights all matches on previous search pattern
vim.opt.incsearch = true                                        -- allows incremental search
vim.opt.ignorecase = true                                       -- ignores case in search patterns
vim.opt.pumheight = 10                                          -- pop up menu height
vim.opt.showmode = true                                         -- allows current nvim mode to be shown
vim.opt.showtabline = 1                                         -- only show tabs when there are 2 or more
vim.opt.smartcase = true                                        -- allows ignore case to be ignored
vim.opt.smartindent = true                                      -- allows smart indent
vim.opt.splitbelow = true                                       -- forces all horizontal splits to go below current window
vim.opt.splitright = true                                       -- forces all vertical splits to go to the right of current window
vim.opt.swapfile = false                                        -- disallows creation of swapfiles
vim.opt.termguicolors = true                                    -- sets terminal gui colors
vim.opt.syntax = "ON"                                           -- allows syntax highlighting
vim.opt.undofile = true                                         -- allows persistent undo
vim.opt.writebackup = true                                      -- allows files to be backed up when overwriting a file
vim.opt.expandtab = true                                        -- converts tabs to spaces***
vim.opt.shiftwidth = 4                                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                                             -- number of spaces tabs count ofr in Insert mode
vim.opt.softtabstop = 4                                         -- number of spaces tabs count for
vim.opt.cursorline = true                                       -- highlights the current line
vim.opt.number = true                                           -- sets numbered lines
vim.opt.relativenumber = true                                   -- sets relative numbered lines
vim.opt.scrolloff = 8                                           -- minimum number of lines for context (vertical)
vim.opt.sidescrolloff = 8                                       -- minimum number of lines for context (horizontal)
vim.opt.cmdheight = 1                                           -- height of neovim command line
vim.opt.signcolumn = "number"                                   -- shows signs in the number column
vim.opt.smarttab = true                                         -- allows smart tabbing
vim.opt.winblend = 15                                           -- allowing some transparency for floating windows
vim.opt.wildoptions = "pum"                                     -- displays the completion matches using pop up menus
vim.opt.pumblend = 15                                           -- allowing some transparency for pop up menus
vim.opt.background = "dark"                                     -- darkmode

-- enable the terminal's background image to bleedthrough
--[[vim.cmd [[
augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END
]]
