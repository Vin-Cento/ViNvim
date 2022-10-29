local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " " -- leader key

map("n", "<leader>fm", ":lua vim.lsp.buf.format { async = true }<CR>", opts)
--> key swap <--
map("n", ";", ":", opts)
map("n", "J", "}", opts)
map("n", "K", "{", opts)
map("v", "J", "}", opts)
map("v", "K", "{", opts)

--> write to file <--
map("n", "<leader>s", ":w<CR>", opts)
map("n", "<leader>S", ":w<CR> :runtime %<CR>", opts)

map("n", "<leader>fs", ":UltiSnipsEdit<CR>", opts)

--> nvim tree mappings <--
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)

--> telescope mappings <--
map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", opts)

--> barbar mappings <--
map("n", "<leader>n", ":BufferPrevious<CR>", opts)
map("n", "<leader>p", ":BufferNext<CR>", opts)
map("n", "<leader>mn", ":BufferMovePrevious<CR>", opts)
map("n", "<leader>mp", ":BufferMoveNext<CR>", opts)
map("n", "<leader>bd", ":BufferClose<CR>", opts)
map("n", "<leader>bon", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bod", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bol", ":BufferOrderByLanguage<CR>", opts)

--> terminal mappings <--
map("n", "<leader><leader>", ":ToggleTerm<CR>", opts)
