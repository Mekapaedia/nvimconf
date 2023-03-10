return {
    "airblade/vim-gitgutter",
    config = function()
        vim.api.nvim_set_hl(0, "GitGutterAdd", { fg="#13a10e" })
        vim.api.nvim_set_hl(0, "GitGutterChange", { fg="#f9f1a5" })
        vim.api.nvim_set_hl(0, "GitGutterDelete", { fg="#ff5454" })
    end
}
