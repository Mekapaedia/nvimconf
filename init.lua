vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.termguicolors = true

vim.wo.number = true
vim.wo.signcolumn = 'yes'

vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.spelloptions = 'camel'

vim.o.breakindent = true

vim.o.undofile = true
vim.o.history = 2000

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.infercase = true

vim.o.updatetime = 100
vim.o.timeout = true
vim.o.timeoutlen = 1000
vim.o.redrawtime = 1500

vim.o.completeopt = 'menuone,noselect'
vim.o.shortmess = 'aoOTIcF'
vim.o.wildmode = 'full'
vim.o.wildignorecase = true
vim.o.magic = true
vim.o.showmatch = true
vim.o.hidden = true
vim.o.confirm = true
vim.o.showcmd = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.autoindent = true

vim.o.list = true
vim.o.listchars = 'tab:>-,nbsp:+,trail:-,extends:>,precedes:<'

vim.o.cursorline = true

vim.o.textwidth = 100
vim.o.colorcolumn = '100'

require("core.lazy")
