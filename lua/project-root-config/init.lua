require("project_nvim").setup({
	-- Manual mode doesn't automatically change your root directory, so you have
	-- the option to manually do so using `:ProjectRoot` command.
	manual_mode = false,

	-- patterns = { "=src", ".git", "Makefile", "_darcs", "package.json", "go.mod", ".hg", ".bzr", ".svn" },
	patterns = { ".git" },
	detection_methods = { "lsp", "pattern" },
	exclude_dirs = { ".git", "node_modules", "venv" },
	ignore_lsp = {},

	show_hidden = false,
	silent_chdir = true,

	scope_chdir = "global", -- global / tab / win

	-- Path where project.nvim will store the project history for use in
	-- telescope
	datapath = vim.fn.stdpath("data"),
})
