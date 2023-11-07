local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 'echasnovski/mini.nvim', version = false },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'tpope/vim-sensible' },
    {
        'glacambre/firenvim',
        lazy = not vim.g.started_by_firenvim,
        build = function()
            vim.fn["firenvim#install"](0)
        end
    }
})

require('mini.surround').setup()
require('mini.completion').setup()
require('mini.pairs').setup()
require('mini.jump').setup()

--**firenvim**
vim.cmd([[
let g:firenvim_config = { 'localSettings': { '.*': { 'takeover': 'never', }, } }
let g:neovide_transparency = 0.8
]])
