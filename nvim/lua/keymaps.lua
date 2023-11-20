local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

---- Normal ----
keymap("n", "<C-L>", ":update<CR>", opts)
keymap("n", "<Space>", "a_<ESC>r", opts)
keymap("n", "<M-Space>", "i_<ESC>r", opts)
keymap("n", "<Up>", "gk", opts)
keymap("n", "<Down>", "gj", opts)
keymap("n", "<C-P>", "<CMD>bp!<CR>", opts)
keymap("n", "<C-N>", "<CMD>bn!<CR>", opts)
-- keymap("n", "<C-\\>", "<CMD>bnbR>", opts)
---- Normal ----


---- Insert ----
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-L>", "<C-O>:update<CR>", opts)
---- Insert ----

---- Visual ----
keymap("v", "aa", "<ESC>", opts)
keymap("v", "<C-L>", "<C-C>:update<CR>", opts)
---- Visual ----

