local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- keymap("", "", "", opts)
---- Normal ----
keymap("n", "<C-L>", ":update<CR>", opts)
keymap("n", "<Up>", "gk", opts)
keymap("n", "<Down>", "gj", opts)
keymap("n", "<Space>", "a_<ESC>r", opts)
keymap("n", "<M-Space>", "i_<ESC>r", opts)
keymap("n", "<C-P>", "<CMD>bp!<CR>", opts)
keymap("n", "<C-N>", "<CMD>bn!<CR>", opts)
keymap("n", "<C-\\>", "<CMD>bn!<CR><CMD>bd#<CR>:<CR>", opts)
---- Normal ----


---- Insert ----
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-L>", "<C-O>:update<CR>", opts)
keymap("i", "<C-_>", "<C-O><C-_>", {noremap = false})
-- keymap("i", "<ScrollWheelUp>", "<C-O>k", opts)
-- keymap("i", "<ScrollWheelDown>", "<C-O>j", opts)
keymap("i", "<C-V>", "<C-O><CMD>set paste<CR><C-R>+<C-O><CMD>set paste!<CR>", opts)
---- Insert ----


---- Visual ----
keymap("v", "aa", "<ESC>", opts)
keymap("v", "<C-L>", "<C-C>:update<CR>", opts)
---- Visual ----

