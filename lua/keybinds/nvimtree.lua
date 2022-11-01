--[[ NVIMTREE KEYBINDS ]]
local keymap = vim.keymap.set

-- toggle nvim-tree
keymap("n", "<C-o>", "<cmd>NvimTreeToggle<CR>", { silent = true })
