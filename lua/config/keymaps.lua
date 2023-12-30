local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Modes
keymap("i", "ff", "<Esc>", opts)

--NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

--Bufferline
keymap("n", "<C-TAB>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opts)
