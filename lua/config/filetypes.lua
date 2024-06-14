vim.filetype.add({
    extension = {
        sweep = "json",
        repo = "json",
        models = "json",
        modelspp = "json",
        stats = "json",
        params = "json",
        simconfig = "json",
        cfg = "yaml",
        portmap = "json",
        v = "verilog",
        sv = "systemverilog"
    }
})
vim.api.nvim_command('filetype indent off')
