require("nvim-tree").setup({
	-- auto_close = true,
	diagnostics = {
		enable = true,
	},
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})
