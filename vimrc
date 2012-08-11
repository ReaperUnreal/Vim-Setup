" Pathogen Setup {
	call pathogen#infect()
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
" }

" General {
	set backspace=indent,eol,start
	set noerrorbells
	set title
	set shortmess=atI
	set history=1000
" }

" Scrolling {
	set scrolloff=4
" }

" Test Formatting/Inpu {
	filetype plugin indent on
	set shiftwidth=4
	set tabstop=4
" }

" Code Folding {
	set foldmethod=syntax
	set foldnestmax=10
	set nofoldenable
	set foldlevel=10000
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
" }
