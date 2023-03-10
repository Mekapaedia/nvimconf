local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require('lazy').setup({
    { import = "plugins" },
},
{
    ui = {
        icons = {
            cmd = "cmd",
            config = "conf",
            event = "evnt",
            ft = "ft",
            init = "init",
            import = "import",
            keys = "kets",
            lazy = "lazy",
            loaded = "ld",
            not_loaded = "nld",
            plugin = "plug",
            runtime = "runtime",
            source = "source",
            start = "start",
            task = "task",
            list = {
                "#",
                ">",
                "*",
                "-",
            },
        },
    },
})
