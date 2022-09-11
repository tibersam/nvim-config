highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()



call plug#begin()
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline', { 'do': ':UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline-themes', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs', { 'do': ':UpdateRemotePlugins' }
" Python3 syntax highlighting
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
" Python3 Pep8 Syntax checking
Plug 'nvie/vim-flake8', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" Set Python3 enviroment for neovim!
"
let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python'


set list
set listchars=
set listchars+=tab:░\ 
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿


set ts=4
set shiftwidth=4
set ai sw=4
set number

" Completion System
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Airline (status bar)
let g:airline_symbols_ascii = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

"Spell Checker"
let g:myLangList=["nospell", "en_gb", "de_de"]
if !exists( "b:myLang" )
  if &spell
    let b:myLang=index(g:myLangList, &spelllang)
  else
    let b:myLang=0
  endif
endif
function! ToggleSpell()
	let b:myLang=b:myLang+1
	if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
	if b:myLang==0
		setlocal nospell
	else
		execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
	endif
	echo "spell checking language:" g:myLangList[b:myLang]
endfunction

" Key mappings here!
let mapleader=","
map <F10> :call ToggleSpell()<CR>

" improved keyboard navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" C syntax stuff
"
" let c_autodoc = 1
let c_gnu  = 1
let c_ansi_constants = 1
let c_space_errors = 1
let c_curly_error = 1
let c_no_if0  = 1

" Bash syntax stuff
"
let g:is_bash	   = 1


" Python syntax stuff
"
if &filetype ==# 'python'
	setlocal noexpandtab
endif
let python_highlight_all = 1
let g:jedi#auto_initialization = 0
let g:jedi#use_splits_not_buffers = "right"



