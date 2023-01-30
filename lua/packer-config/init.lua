return require("packer").startup(function()
	--> BASE
	use("ldelossa/litee.nvim") --> package framework
	use("onsails/lspkind-nvim") --> icons for lsp completion
	use("nvim-lua/plenary.nvim") --> better async library
	use("neovim/nvim-lspconfig") --> configurate lsp client 
	use("wbthomason/packer.nvim") --> diagnistocs, formattings, code actions package manager
	use("williamboman/mason.nvim") --> code packages manager
	use("kyazdani42/nvim-tree.lua") --> filetree
	use("nvim-telescope/telescope.nvim") --> telescope fzf viewing
	use("jose-elias-alvarez/null-ls.nvim") --> diagnistocs, formattings, code actions
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter

  --> MIDDLEWARE
	use("williamboman/mason-lspconfig.nvim") --> bridge mason and lsp

	--> Looks
	use("romgrk/barbar.nvim") --> tabs
	use("EdenEast/nightfox.nvim") --> theme
	use("nvim-lualine/lualine.nvim") --> statusline
	use("norcalli/nvim-colorizer.lua") --> color
	use("kyazdani42/nvim-web-devicons") --> icons
	use("lukas-reineke/indent-blankline.nvim") --> show indent

	--> Filetree
	use("ahmedkhalf/project.nvim") --> sync filetree with project

	--> Git
	use("ldelossa/gh.nvim") --> github
	use("tpope/vim-fugitive") --> git shortcuts
	use("airblade/vim-gitgutter") --> git sidebar

	--> quality of life
	use("phaazon/hop.nvim") --> sneak
	use("windwp/nvim-autopairs") --> autopairs
	use("Pocco81/true-zen.nvim") --> focus view
	use("numToStr/Comment.nvim") --> comment lines
	use("akinsho/toggleterm.nvim") --> terminal
	use("lewis6991/impatient.nvim") --> caching
	use({ "folke/which-key.nvim" }) --> key binding popup
	use({ "ethanholz/nvim-lastplace" }) --> save previous file location
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }) --> markdown preview

	--> Telescope
	use("nvim-telescope/telescope-project.nvim") --> pull up projects
	use({ -->better fzf
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})

	--> treesitter & treesitter modules/plugins
	use("p00f/nvim-ts-rainbow") --> better pairing color
	use("nvim-treesitter/playground") --> toggle treesitter
	use("nvim-treesitter/nvim-treesitter-refactor") --> refactor variables
	use("nvim-telescope/telescope-media-files.nvim") --> show media
	use("JoosepAlviste/nvim-ts-context-commentstring") --> better comment
	use("nvim-treesitter/nvim-treesitter-textobjects") --> better textobjects

	--> lsp
	use("f3fora/cmp-spell")
	-- use("nanotee/sqls.nvim")

	--> completion
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("SirVer/ultisnips")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use({ "tzachar/cmp-tabnine", run = "./install.sh" })
end)
