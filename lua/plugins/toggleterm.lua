return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 20,
            direction = 'horizontal',
            open_mapping = [[<c-\>]],
        })
        map('n', '<Leader>t', ':ToggleTerm<CR>')
    end
}
