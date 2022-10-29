return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> packer plugin manager
	-- Lua

	use("kyazdani42/nvim-web-devicons") --> enable icons
	use("nvim-lualine/lualine.nvim") --> a statusline written in lua
	use("romgrk/barbar.nvim") --> tabs for neovim
	use("nvim-lua/plenary.nvim")

	use("lukas-reineke/indent-blankline.nvim") --> indent guides for neovim
	use("akinsho/toggleterm.nvim")
	use("kyazdani42/nvim-tree.lua") --> file explorer
	use("nvim-telescope/telescope.nvim") --> Find, Filter, Preview, Pick. All lua, all the time.
	use("numToStr/Comment.nvim")
	use("ggandor/lightspeed.nvim") --> motion plugin with incremental input processing, allowing for unparalleled speed with near-zero cognitive effort
	use("windwp/nvim-autopairs")
	use("mfussenegger/nvim-dap")
	-- use("sunjon/shade.nvim") --> dim inactive windows

	--> colorschemes
	use({ "bluz71/vim-moonfly-colors", branch = "cterm-compat" })

	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("norcalli/nvim-colorizer.lua")
	use("ahmedkhalf/project.nvim")

	--> lsp
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items

	--> completion
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("SirVer/ultisnips")
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
end)
