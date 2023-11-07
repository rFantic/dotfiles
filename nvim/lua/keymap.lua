vim.cmd([[
let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>pv <cmd>Ex <cr>
nnoremap <leader>w <cmd>w <cr>
nnoremap <leader>bd <cmd>bd! <cr>
nnoremap <leader>rc <cmd>browse oldfiles <cr>
nnoremap <leader>tm <cmd>term <cr>
nnoremap <leader>id <cmd>put=strftime('%c') <cr>
]])
