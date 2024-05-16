return {
    {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    event = "VeryLazy",
    build = ":TSUpdate",
    opts = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "bash",
                "diff",
                "cpp",
                "csv",
                "gitignore",
                "html",
                "json",
                "make",
                "python",
                "regex",
                "rust",
                "ssh_config",
                "strace",
                "toml",
                "verilog",
                "yaml",
                "zig",
                "hare"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local max_filesize = 10000 * 1024
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = false },
        })
    end
    },
    {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter",
    event = "VeryLazy",
    enabled = true,
    opts = { mode = "cursor", max_lines = 10 },
    keys = {}
    }
}
