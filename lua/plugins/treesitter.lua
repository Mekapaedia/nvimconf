return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function()
        require('nvim-treesitter.configs').setup({
            highlight = {
                enable=true
            },
            ensure_installed =
            {
                "c",
                "lua",
                "help",
                "query",
                "bash",
                "cmake",
                "cpp",
                "diff",
                "dot",
                "git_rebase",
                "gitcommit",
                "json",
                "make",
                "python",
                "verilog",
                "yaml"
            },
        })
    end
}
