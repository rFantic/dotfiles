vim.cmd([[
set shada=!,'20,<50,s10,h
set linebreak
set relativenumber
set sw=4 ts=4 et
set clipboard=unnamedplus
]])

vim.opt.smartindent = true -- Insert indents automatically
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.autowrite = true -- Enable auto write
vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
