
let mapleader= ","

let g:isort_vim_options = '--profile black'
nnoremap <buffer><silent> <F9> <cmd>call Black()<cr>
inoremap <buffer><silent> <F9> <cmd>call Black()<cr>
nnoremap <buffer><silent> <F8> :Isort<cr>
inoremap <buffer><silent> <F8> :Isort<cr>
g:isort_command = 'isort'
