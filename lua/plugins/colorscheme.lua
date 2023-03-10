return {
    'bluz71/vim-moonfly-colors',
    lazy = false,
    config = function()
        vim.g.moonflyItalics = false
        vim.cmd('colorscheme moonfly')
        vim.api.nvim_set_hl(0, "Normal", { bg='#000000' })
        vim.api.nvim_set_hl(0, "LineNr", { fg='#3366ff' })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg='#13a10e' })
        vim.api.nvim_set_hl(0, "Whitespace", { fg='#80a0ff' })
        vim.api.nvim_set_hl(0, "MatchParen", { fg='#ff5454', bg='NONE'})
        vim.api.nvim_set_hl(0, "DiffAdd", { fg='#13a10e', bg='#000000' })
        vim.api.nvim_set_hl(0, "DiffDelete", { fg='#ff5454', bg='#000000' })
        vim.api.nvim_set_hl(0, "DiffChange", { fg='#f9f1a5', bg='#000000' })
    end,
}
