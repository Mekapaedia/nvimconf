vim.opt.backspace = {"eol", "start", "indent"}
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.syntax = "enable"
vim.opt.wildmenu = true

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftround = true

vim.opt.cursorline = true
vim.opt.lazyredraw = true
vim.opt.list = true
vim.opt.listchars = {
    tab = ">-",
    trail = "-",
    extends = ">",
    precedes = "<"
}
vim.opt.number = true
vim.opt.scrolloff = 18
vim.opt.sidescrolloff = 3
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.laststatus=0

vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.shortmess = "aIF"

vim.opt.history = 1000
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 250
vim.opt.ttimeoutlen = 10
vim.opt.updatetime = 100

local undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true
vim.opt.undodir = undodir
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

local swpdir = vim.fn.stdpath("data") .. "/swp"
vim.opt.swapfile = true
vim.opt.directory = swp

local backdir = vim.fn.stdpath("data") .. "/backup"
vim.opt.backup = true
vim.opt.backupdir = backdir

vim.opt.sessionoptions = "buffers,folds,globals,localoptions"

vim.g.loaded_perl_provider=0
vim.g.loaded_ruby_provider=0
vim.g.loaded_node_provider=0
vim.g.do_filetype_lua = 1
if nvimpager ~= nil then
    nvimpager.maps = false
end
