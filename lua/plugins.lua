-- [[ NEOVIM PLUGINS w/ PACKER ]]

-- [[ PLUG-IN INSTALLER LINK ]]
require('plugs')

-- [[ PLUG-IN CONFIG LINK ]]
require("config.plugfig")

-- [[ PACKER CONFIGURATIONS ]] 
-- download and install Packer in machine if it has not been installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[ packadd packer.nvim ]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

-- ensure that Packer will run without any error 
local status_ok, packer = pcall(require, 'packer')
if not status_ok then 
    vim.notify('error encountered running that command')
    return
end

-- automatically installs and updates plug-ins once changes are made in plugs.lua
vim.cmd [[
augroup Packer
  autocmd!
  autocmd BufWritePost plugs.lua source <afile> | PackerSync
  augroup end
]]

-- open Packer in a popup window 
packer.init {
    display = {
        open_fn = function() 
            return require("packer.util").float { border = "single" }
        end,
    }
}
