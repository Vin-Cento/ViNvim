return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> packer plugin manager

	use("kyazdani42/nvim-web-devicons") --> icons
	use("romgrk/barbar.nvim") --> tabs
	use("nvim-lualine/lualine.nvim") --> statusline

	--> Looks
	use({ "bluz71/vim-moonfly-colors", branch = "cterm-compat" }) --> theme
	use({ "EdenEast/nightfox.nvim" }) --> theme

  --> Status
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

  --> Git
	use("airblade/vim-gitgutter") --> git sidebar
	use("tpope/vim-fugitive") --> git shortcuts

  --> performance
	use("lewis6991/impatient.nvim")


	use("lukas-reineke/indent-blankline.nvim") --> indent guides for neovim
	use("nvim-telescope/telescope.nvim") --> find, filter, preview, pick. all lua, all the time.
	use("phaazon/hop.nvim") --> sneak
	use("numToStr/Comment.nvim") --> comment lines
	use("windwp/nvim-autopairs") --> autopairs
	use("norcalli/nvim-colorizer.lua") --> show hex color #1111AA

	use("akinsho/toggleterm.nvim") --> terminal
	use("kyazdani42/nvim-tree.lua") --> file explorer

	-- use("michaelb/sniprun", { run = "bash install.sh" }) --> run highlighted code
	-- use("mfussenegger/nvim-dap") --> debugging / todo setup later

	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use("nvim-treesitter/nvim-treesitter-refactor") --> refactor variables
	use("p00f/nvim-ts-rainbow") --> better pairing color
	use("nvim-treesitter/playground") --> toggle treesitter
	use("JoosepAlviste/nvim-ts-context-commentstring") --> comment
	use("ahmedkhalf/project.nvim") --> pop open project
	use("nvim-telescope/telescope-media-files.nvim") --> show media

	--> lsp
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items
	use("nanotee/sqls.nvim")
	use("f3fora/cmp-spell")

	--> completion
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("SirVer/ultisnips")
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use({ "tzachar/cmp-tabnine", run = "./install.sh" })

	--> telescope
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	use("nvim-telescope/telescope-project.nvim")

	--> debugger
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("theHamsta/nvim-dap-virtual-text")
	use("nvim-telescope/telescope-dap.nvim")
	use("mfussenegger/nvim-dap-python") --> python

	use("Pocco81/true-zen.nvim")

	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })

	use({ "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" })

	use({
		"ldelossa/gh.nvim",
		requires = { { "ldelossa/litee.nvim" } },
	})

	use({ "folke/which-key.nvim" })

	use({ "ethanholz/nvim-lastplace" })

	use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
end)
