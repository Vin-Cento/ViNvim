require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "venv", "tmp", "snippets" },
		layout_config = {
			preview_width = 0.65,
		},
	},

	extensions = {
		media_files = {
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg", -- find command (defaults to `fd`)
		},
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		},
		project = { -- https://github.com/nvim-telescope/telescope-project.nvim
			hidden_files = true,
			theme = "dropdown",
			base_dirs = {
				{ "~/dotfiles" },
				{ "~/Code" },
				-- { "~/.local/share/scripts" },
			},
			sync_with_nvim_tree = true,
			order_by = "recent",
		},
	},
})

require("telescope").load_extension("fzf")
require("telescope").load_extension("project")
require("telescope").load_extension("media_files")
