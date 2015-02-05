" Pathogen Setup {
	call pathogen#infect()
" }

" Mac Stuff { 
	if has("gui_macvim")
		noremap <D-t> :CommandT $TKC<CR>
		noremap <D-r> :CommandT $TKS<CR>
		set wildignore+=**/node_modules/**,*.png,*.jpg,*.wav,*.mp3
		set guifont=Inconsolata\ for\ Powerline:h13
	endif
	set wildignore+=js/freyja/node_modules/**
" }

" Basics {
	set hidden
	set nocompatible
	set noexrc
	set background=dark
	set t_Co=256
	colorscheme xoria256
	syntax on
	set ttyfast
	let mapleader = ","
	set cursorline
	set lines=81
	set columns=271
	set smartcase
" }

" General {
	set backspace=indent,eol,start
	set noerrorbells visualbell t_vb=
	if has('autocmd')
		autocmd GUIEnter * set visualbell t_vb=
	endif
	set title
	set shortmess=atI
	set history=1000
" }

" Scrolling {
	set scrolloff=4
" }

" Test Formatting/Input {
	filetype plugin indent on
	set shiftwidth=4
	set tabstop=4
	set softtabstop=4
	set noexpandtab
" }

" Programming Language Specific Formatting/Input {
	autocmd FileType haskell setlocal tabstop=8 expandtab softtabstop=4 shiftwidth=4 shiftround
	autocmd FileType python setlocal tabstop=4 noexpandtab softtabstop=4 shiftwidth=4 shiftround
	autocmd FileType cs setlocal tabstop=4 noexpandtab softtabstop=4 shiftwidth=4 shiftround
" }

" Code Folding {
	set foldmethod=syntax
	set foldnestmax=10
	set nofoldenable
	set foldlevel=10000
" }

" Airline {
	set encoding=utf-8
	let g:airline_powerline_fonts=1
	set laststatus=2
	let g:airline_theme="luna"
	let g:airline#extensions#whitespace#enabled=0
" }

" Git Gutter {
	let g:gitgutter_sign_column_always=1
	highlight clear SignColumn
	highlight GitGutterAdd guifg=#009900 guibg=#1c1c1c
	highlight GitGutterChange guifg=#bbbb00 guibg=#1c1c1c
	highlight GitGutterDelete guifg=#ff2222 guibg=#1c1c1c
	highlight GitGutterChangeDelete guifg=#bbbb00 guibg=#1c1c1c
" }

" Rainbow Parentheses {
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadBraces
" }

" Custom Keymaps {
" Bubble single lines
	nmap <C-k> ddkP
	nmap <C-j> ddp
" Bubble multiple lines
	vmap <C-k> xk`[V`]
	vmap <C-j> xp'[V']
" Display trailing whitespace
	set listchars=tab:>-,trail:~,eol:$
	nmap <silent> <leader>s :set nolist!<CR>
	nmap <C-h> njdd
" Split custom stuff
	nnoremap <M-right> <C-w>l
	nnoremap <M-left> <C-w>h
	nnoremap <M-down> <C-w>j
	nnoremap <M-up> <C-w>k
	nnoremap <M-,> :split<CR><C-w>j
	nnoremap <M-.> :vsplit<CR><C-w>l
	nnoremap <M-/> :close<CR>
	nnoremap <M-<> <C-w>K
	nnoremap <M->> <C-w>L
	nnoremap <Tab> <C-w><C-w>
" Tabularize settings
	nmap <leader>a= :Tabularize /=<CR>
	vmap <leader>a= :Tabularize /=<CR>
" CommandT settings
	nmap <leader>t :CommandT<CR>
	nmap <leader>T :CommandTFlush<CR>:CommandT<CR>
" Tagbar settings
	nmap <leader>] :TagbarToggle<CR>
" eclim Java settings
	nmap <leader>ji :JavaImport
	nmap <leader>jo :JavaImportOrganize
" easy motion settings
	nmap <A-j> <Plug>(easymotion-j)
	nmap <A-k> <Plug>(easymotion-k)
" black hole delete
	nmap <leader>d "_d
" }

" Custom Unicode Keys {
	imap <buffer> \to →
	imap <buffer> \gives ←
	imap <buffer> \forall ∀
	imap <buffer> \exists ∃
	imap <buffer> \not ¬
" }

" Macros {
	let @c = 'IValidation.assertIsSomething(A);j'
	let @p = "0/(v%yop0x$x==ma:.s/, /;\\r/gembv'a=v'b:s/;$//ge'av'b:g/^/ norm @c"
" }
