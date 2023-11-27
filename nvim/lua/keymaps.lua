local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- keymap("", "", "", opts)
---- Normal ----
keymap("n", "<C-L>", ":update<CR>", opts)
keymap("n", "<Up>", "gk", opts)
keymap("n", "<Down>", "gj", opts)
keymap("n", "<C-P>", "<CMD>bp!<CR>", opts)
keymap("n", "<C-N>", "<CMD>bn!<CR>", opts)
keymap("n", "<C-\\>", "<CMD>bn!<CR><CMD>bd#<CR>:<CR>", opts)
keymap("n", "<Space>", "\"=nr2char(getchar())<cr>p", opts)
keymap("n", "<M-Space>", "\"=nr2char(getchar())<cr>P", opts)

---- bug ---- 
-- can't replace the '_' character successfully (with cmp plugin) 
-- keymap("n", "<Space>", "a_<ESC>r", opts)
-- keymap("n", "<M-Space>", "i_<ESC>r", opts)
---- bug ---- 
---- Normal ----


---- Insert ----
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-L>", "<C-O>:update<CR>", opts)
keymap("i", "<C-_>", "<C-O><C-_>", {noremap = false})
keymap("i", "<C-V>", "<C-O><CMD>set paste<CR><C-R>+<C-O><CMD>set paste!<CR>", opts)
-- keymap("i", "<ScrollWheelUp>", "<C-O>k", opts)
-- keymap("i", "<ScrollWheelDown>", "<C-O>j", opts)
---- Insert ----


---- Visual ----
keymap("v", "aa", "<ESC>", opts)
keymap("v", "<C-L>", "<C-C>:update<CR>", opts)
-- Move text up and down
keymap("v", "<M-j>", ":m .+1<CR>==", opts)
keymap("v", "<M-k>", ":m .-2<CR>==", opts)
---- Visual ----

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<M-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<M-k>", ":move '<-2<CR>gv-gv", opts)
-- Visual Block --

