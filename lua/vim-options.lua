vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
-- vim.cmd("set shiftwidth=2")
-- vim.cmd("set foldcolumn=2")
vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/*", "*/.git/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

vim.opt.formatoptions:append({ "r" })

-- transparent background
vim.api.nvim_command([[
  augroup ChangeBackgroundColour
    autocmd colorscheme * :hi normal guibg=NONE
  augroup END
]])

vim.opt.clipboard = "unnamedplus"

-- mappings
vim.keymap.set("n", "<leader>w", ":w<CR>")
