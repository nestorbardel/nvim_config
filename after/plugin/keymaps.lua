local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
--keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader><Right>", ":tabn <CR>", opts)
keymap("n", "<leader><Left>", ":tabp <CR>", opts)
keymap("n", "<leader>nt", ":NERDTreeToggle <CR>", opts)
keymap("n", "<leader>nf", ":NERDTreeFind <CR>", opts)
keymap("n", "<leader>tt", ":TagbarToggle <CR>", opts)
