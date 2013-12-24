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

" Test Formatting/Inpu {
	filetype plugin indent on
	set shiftwidth=4
	set tabstop=4
	set softtabstop=4
	set noexpandtab
" }

" Code Folding {
	set foldmethod=syntax
	set foldnestmax=10
	set nofoldenable
	set foldlevel=10000
" }

" Powerline {
	set encoding=utf-8
	let g:Powerline_symbols = 'fancy'
	set laststatus=2
	set rtp+=/Users/gcl/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
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
" }

" Macros {
	let @c = '0wiValidation.assertIsSomething($i€kr);€kd'
	let @d = '0wywiif (! Validation.isSomething($i€kr)) {}Othrow new TypeError("expected Something, got " + typeof pi€kr + ": " + pi€kr);€kd€kd'
	let @s = 'Iif (! Validation.isSomething($i€kr)) {}€ku06wwywothrow ThorError.create(ErrorCodes.Something, p$i€kr;€kd€kd'
	let @p = "0/(v%yop0x$x==ma:.s/, /;\\r/gembv'a=v'b:s/;$//ge'av'b:g/^/ norm @c"
	let @o = "0/(v%yop0x$x==ma:.s/, /;\\r/egmbv'a=v'b:s/;$//ge'av'b:g/^/ norm @s"
" }
