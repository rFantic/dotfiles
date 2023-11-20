return {
    {
        'echasnovski/mini.nvim',
        version = false,
        config = function()
            require('mini.surround').setup()
            require('mini.pairs').setup()
            require('mini.jump').setup()
        end,
    },
}
