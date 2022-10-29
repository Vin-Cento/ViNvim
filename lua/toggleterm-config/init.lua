--[[ https://github.com/akinsho/toggleterm.nvim ]]

require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	size = 55,
	shade_terminals = true,
	--[[ direction = "vertical", ]]
	direction = "float",
	-- float_opts = {
	-- 	border = "double",
	-- },
	close_on_exit = true,
})

