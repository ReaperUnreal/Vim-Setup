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
	set rtp+=/usr/local/Cellar/fzf/0.8.6
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

" Neocomplete Setup {
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplete.
	let g:neocomplete#sources#syntax#min_keyword_length = 3
	let g:neocomplete#enable_at_startup = 1
	" Don't Use smartcase.
	let g:neocomplete#enable_smart_case = 0
	let g:neocomplete#enable_auto_close_preview = 0
	" Define dictionary.
	let g:neocomplete#sources#dictionary#dictionaries = {
		\ 'default' : '',
		\ 'vimshell' : $HOME.'/.vimshell_hist'
		\ }

	" Plugin key-mappings.
	inoremap <expr><C-g>     neocomplete#undo_completion()
	inoremap <expr><C-l>     neocomplete#complete_common_string()

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
	  "return neocomplete#close_popup() . "\<CR>"
	  " For no inserting <CR> key.
	  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

	inoremap<expr><Space> pumvisible() ? neocomplete#close_popup()."\<SPACE>" : "\<SPACE>"

	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplete#close_popup()
	inoremap <expr><C-e>  neocomplete#cancel_popup()

	let g:neocomplete#enable_auto_select = 0
	let g:neocomplete#disable_auto_complete = 0

	" Enable heavy omni completion.

	call neocomplete#custom#source('_', 'sorters', [])

	if !exists('g:neocomplete#sources')
			let g:neocomplete#sources = {}
	endif

	if !exists('g:neocomplete#sources#omni#input_patterns')
	  let g:neocomplete#sources#omni#input_patterns = {}
	endif

	let g:neocomplete#sources#omni#input_patterns.cs = '[a-zA-Z0-9_]\+'
	let g:neocomplete#sources.cs = ['omni']
	let g:neocomplete#enable_refresh_always = 0
	let g:echodoc_enable_at_startup = 1
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
	let g:jsx_ext_required=0
	let g:OmniSharp_server_type = 'roslyn'
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

" CtrlP Setup {
	let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .DS_Store --ignore "**/*.pyc" --ignore .gitignore --ignore .meta -g ""'
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
	nmap <leader>a: :Tabularize /:<CR>
	vmap <leader>a: :Tabularize /:<CR>
" CtrlP settings
	nmap <leader>t :CtrlP<CR>
	nmap <leader>T :CtrlP<CR><F5>
" Tagbar settings
	nmap <leader>] :TagbarToggle<CR>
" easy motion settings
	nmap <A-j> <Plug>(easymotion-j)
	nmap <A-k> <Plug>(easymotion-k)
" black hole delete
	nmap <leader>d "_d
" visual studio shift+enter
	imap <C-CR> <C-o>A;<C-c>:s/,;$/,/e<CR>:s/;\+$/;/e<CR>o
	nmap <C-CR> A;<C-c>:s/,;$/,/e<CR>:s/;\+$/;/e<CR>o
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
" Memes {
	function WIDE()
		s/\(\w\)/\U\1 /ge
		s/\s\+/ /ge
		noh
	endfunction
	command! WIDE call WIDE()
" }
