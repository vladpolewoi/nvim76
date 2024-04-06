vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set foldcolumn=2")
vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

-- mappings
vim.keymap.set("n", "<leader>w", ":w<CR>")
