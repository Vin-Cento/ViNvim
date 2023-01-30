return require("packer").startup(function()
	use("wbthomason/packer.nvim") --> package manager

	--> Looks
	use("kyazdani42/nvim-web-devicons") --> icons
	use("norcalli/nvim-colorizer.lua") --> show hex color #1111AA
	use("romgrk/barbar.nvim") --> tabs
	use("kyazdani42/nvim-tree.lua") --> sidebar filetree
	use("lukas-reineke/indent-blankline.nvim") --> indent guides for neovim
	use("EdenEast/nightfox.nvim") --> theme
	use("nvim-lualine/lualine.nvim") --> statusline

	--> base
	use("nvim-lua/plenary.nvim") --> async library
	use("williamboman/mason.nvim") --> install formatting and autocompletion packages
	use("nvim-telescope/telescope.nvim") --> telescope fzf viewing

	--> Git
	use("airblade/vim-gitgutter") --> git sidebar
	use("tpope/vim-fugitive") --> git shortcuts
	use({
		"ldelossa/gh.nvim",
		requires = { { "ldelossa/litee.nvim" } },
	})

	--> quality of life
	use("phaazon/hop.nvim") --> sneak
	use("Pocco81/true-zen.nvim") --> focus view
	use("numToStr/Comment.nvim") --> comment lines
	use({ "folke/which-key.nvim" }) --> key binding popup
	use("akinsho/toggleterm.nvim") --> terminal
	use("windwp/nvim-autopairs") --> autopairs
	use({ "ethanholz/nvim-lastplace" }) --> save previous file location
	use("lewis6991/impatient.nvim") --> caching
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }) --> markdown preview

	--> Telescope
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	use("nvim-telescope/telescope-project.nvim")

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
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("SirVer/ultisnips")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use({ "tzachar/cmp-tabnine", run = "./install.sh" })

	--> Use later
	-- use({ "dccsillag/magma-nvim", run = ":UpdateRemotePlugins" })
	-- use("michaelb/sniprun", { run = "bash install.sh" }) --> run highlighted code
	-- use({ "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } })
	-- use("mfussenegger/nvim-dap") --> debugging / todo setup later
	-- use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	-- use("theHamsta/nvim-dap-virtual-text")
	-- use("mfussenegger/nvim-dap-python") --> python
	-- use("nvim-telescope/telescope-dap.nvim")
  --> DROP
	-- use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	-- use("nanotee/sqls.nvim")
end)
