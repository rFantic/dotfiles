return {
    {
        'echasnovski/mini.nvim',
        version = false,
        config = function()
            require('mini.surround').setup()
            require('mini.pairs').setup()
            require('mini.jump').setup()
            require('mini.sessions').setup({
                force = {delete = true},
            })
        end,
    },
}
