-- [[ PLUG-IN INSTALLER ]
return require("packer").startup(function(use)

    -- Plug-in manager: Packer
    use "wbthomason/packer.nvim"

    -- Colorscheme
    use "EdenEast/nightfox.nvim"

    -- Greeter
    -- Tabline
    use "kdheepak/tabline.nvim"

    -- Statusline
    use "nvim-lualine/lualine.nvim"

    -- Terminal
    use { "akinsho/toggleterm.nvim", tag = '*' }

    -- File explorer
    use "kyazdani42/nvim-tree.lua"

    -- LSP and Autocomplete
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"
    use "onsails/lspkind.nvim"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use { "L3MON4D3/LuaSnip",
        tag = "v<CurrentMajor>.*"
    }
    use "glepnir/lspsaga.nvim"
    use { "jose-elias-alvarez/null-ls.nvim",
          requires = { { "nvim-lua/plenary.nvim" }}
    }
    use "williamboman/mason.nvim"

    -- Syntax Highlighting
    use { "nvim-treesitter/nvim-treesitter",
          run = ":TSUpdate"
    }
    use "m-demare/hlargs.nvim"
    use "p00f/nvim-ts-rainbow"
    use "NvChad/nvim-colorizer.lua"
    use "RRethy/vim-illuminate"
    use "koenverburg/peepsight.nvim"
    use "yamatsum/nvim-cursorline"
    use "sunjon/shade.nvim"

    -- Syntax
    use "kylechui/nvim-surround"
    use "windwp/nvim-ts-autotag"
    use "windwp/nvim-autopairs"
    use { "filipdutescu/renamer.nvim",
          requires = { { "nvim-lua/plenary.nvim" } }
    }
    use "mcauley-penney/tidy.nvim"

    -- Git
    use "dinhhuy258/git.nvim"
    use "lewis6991/gitsigns.nvim"
    use "f-person/git-blame.nvim"

    -- Code runner
    use { "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" }
    use { "CRAG666/code_runner.nvim", requires = "nvim-lua/plenary.nvim" }

    -- Comment
    use "Djancyp/better-comments.nvim"

    -- Formatter
    use "MunifTanjim/prettier.nvim"
    use "lukas-reineke/lsp-format.nvim"
    use "lukas-reineke/indent-blankline.nvim"

    -- Fuzzyfinder
    use { "nvim-telescope/telescope.nvim", tag = "0.1.0" }

    -- Web Icons
    use "kyazdani42/nvim-web-devicons"

    -- Refactoring
    use { "ThePrimeagen/refactoring.nvim",
          requires = { "nvim-lua/plenary.nvim"
        }
    }

    -- Motion
    use "abecodes/tabout.nvim"

    -- Keybinding
    --[[
    use "mrjones2014/legendary.nvim"
    use "folke/which-key.nvim"
    ]]
    use "max397574/better-escape.nvim"

    -- Others
    use "nacro90/numb.nvim"
    use "ethanholz/nvim-lastplace"
    use "booperlv/nvim-gomove"

    -- Colemak keymap
    use "jooize/vim-colemak"

    -- automatically sets up configuration after cloning packer.nvim
    -- REMEMBER: place this at the end of this script
    if packer_bootstrap then
    require("packer").sync()
    end

end)
