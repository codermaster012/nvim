local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here

	use 'wbthomason/packer.nvim'

	-- lsp
	use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
	use {
		"williamboman/nvim-lsp-installer",
		{
			config = function()
				require("nvim-lsp-installer").setup {}
				local lspconfig = require("lspconfig")
				lspconfig.sumneko_lua.setup {}
			end
		}
	}
	use {
		'junnplus/nvim-lsp-setup',
		requires = {
			'neovim/nvim-lspconfig',
			'williamboman/nvim-lsp-installer',
		}
	}
	use 'p00f/clangd_extensions.nvim'

	-- minimap
	-- use { "wfxr/minimap.vim", rtp = 'vim' }

	-- toggleterm
	use 'akinsho/toggleterm.nvim'

	-- pencil
	use { 'preservim/vim-pencil', rtp = 'vim' }

	-- gitsigns
	use {
		'lewis6991/gitsigns.nvim',
		-- tag = 'release' -- To use the latest release
	}

	-- orgmode
	use { 'nvim-orgmode/orgmode' }

    -- vim tex
    use { 'lervag/vimtex' }
    
    -- vim wiki
    use { 'vimwiki/vimwiki', rtp='vim' }

	-- telescope & file management
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'ahmedkhalf/project.nvim' }

	-- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
	}

	-- so I don't have to suffer 
	use 'windwp/nvim-autopairs'
	use 'famiu/bufdelete.nvim'
    use 'numToStr/Comment.nvim'

	-- cmp
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- cosmetics
	use { 'akinsho/bufferline.nvim', tag = "v2.*" --[[ requires = 'kyazdani42/nvim-web-devicons' ]] }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'goolord/alpha-nvim' } 
	use { "folke/which-key.nvim" }
	use { 'nvim-lualine/lualine.nvim' }
	use { 'karb94/neoscroll.nvim' }
	use { 'folke/zen-mode.nvim' }

	-- colorschemes
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'
	use 'shaunsingh/nord.nvim'
	use 'lunarvim/darkplus.nvim'
	use 'AlphaTechnolog/onedarker.nvim'
	use { 'sainnhe/edge', rtp = 'vim' }
    use { 'ackyshake/spacegray.vim', rtp = 'vim' }
    use 'ful1e5/onedark.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    use { "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" } 
    use { "davidosomething/vim-colors-meh", rtp = 'vim' }
    use { "overcache/NeoSolarized", rtp = 'vim' }
    use({
        'NTBBloodbath/doom-one.nvim',
        setup = function()
            -- Add color to cursor
    		vim.g.doom_one_cursor_coloring = false
    		-- Set :terminal colors
    		vim.g.doom_one_terminal_colors = true
    		-- Enable italic comments
    		vim.g.doom_one_italic_comments = false
    		-- Enable TS support
    		vim.g.doom_one_enable_treesitter = true
    		-- Color whole diagnostic text or only underline
            vim.g.doom_one_diagnostics_text_color = false
    		-- Enable transparent background
    		vim.g.doom_one_transparent_background = false
    
            -- Pumblend transparency
    		vim.g.doom_one_pumblend_enable = false
    		vim.g.doom_one_pumblend_transparency = 20
    
            -- Plugins integration
    		vim.g.doom_one_plugin_neorg = true
    		vim.g.doom_one_plugin_barbar = false
    		vim.g.doom_one_plugin_telescope = false
    		vim.g.doom_one_plugin_neogit = true
    		vim.g.doom_one_plugin_nvim_tree = true
    		vim.g.doom_one_plugin_dashboard = true
    		vim.g.doom_one_plugin_startify = true
    		vim.g.doom_one_plugin_whichkey = true
    		vim.g.doom_one_plugin_indent_blankline = true
    		vim.g.doom_one_plugin_vim_illuminate = true
    		vim.g.doom_one_plugin_lspsaga = false
    	end,
    	-- config = function()
            -- vim.cmd("colorscheme doom-one")
        -- end,
    })
    use { "jacoborus/tender.vim", rtp='vim' }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
