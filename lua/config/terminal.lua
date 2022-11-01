--[[ TERMINAL CONFIGURATIONS ]]
-- As of now we are using toggleterm by akinsho
-- setting up powershell for nvim
local powershell_options = {
  shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

require("toggleterm").setup{
    size = function(terminal) if terminal.direction == "horizontal" then return 15
            elseif terminal.direction == "vertical" then return vim.o.columns * .4 end end,
    open_mapping = [[<c-t>]],
    shade_terminals = true,
    shade_factor = "1",
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = 'horizontal',
    auto_scroll = true,
}
