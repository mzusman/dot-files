" Ok, Hey There! 
" You want your Vim to be up and ready ,Right?
" So , Here's the to do list for you:
" 1) if you're working with gnome terminal or any different defaultTerm,
" 	get this solarized gnome theme from here :
" 	https://github.com/Anthony25/gnome-terminal-colors-solarized.git
" 	just git clone -> ./install.sh
" 2) install Powerline symbols (you want your statusline to look cool ,Eh?):
" 	clone https://github.com/powerline/fonts.git -> ./fonts ->./install.sh
" 3) git vundle(Plugin Manager) : git clone
" 	https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim	
" 4) run :PluginInstall , Now You want a working word completion right?
" 
" 5) make sure that you have installed: 
" 	- sudo apt-get install build-essential cmake
" 	- sudo apt-get install python-dev
"
" 	get into ~/.vim/YouCompleteMe -> run ./install.py --clang-completer
" 	(for C++ semantic completion and many more)!!!
"
" 6) Run :VimProcInstall , now you have vimshell , run it by :VimShell.
" 7) DONE!
"
" Notes: 
" 	* ESC key is binded into j-j strike  
" 	* Do not install airline + powerline symbols if you're working on a
" 		Plastic computer(it will slow Vim -> slower workflow).
" 	* Snips - Ctrl J for instat snip selection (it selects the first one)
" 	* Ctrl-P - Jump between files .
" 	* Ctrl-N - Jump between directories and files.
" 	* Ctrl-X - Tag jump - Ctrl-N/P(to navigate) -> Enter to jump
"	* Copy Ultisnaps dir to .vim for more Cool snips! 	
"	Make sure to change inside the Ultisnaps your name&email ,
"	I may change it (pretty soon) with script that reads
"	those parameters from git.
"	* g->c (In nmode) - comment , g->c->c - uncomment.
"	* g->p - Move to the previous buffer , g->n - Move to the next.
"	* gg->=->G indent the whole page(better to do this from the top 
"		the file. (vG-> <... to indent to the left)
" 	Created By: greatwing @ github/greatwing @ mor.zusmann@gmail.com
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

if !has('gui_running')
	  set t_Co=256
endif
" set the runtime path to include Vundle and initialize
" syntastic settings - 

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""'''
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1
" Enable syntastic integration
" let g:airline#extensions#syntastic#enabled = 1

let g:airline#extensions#tagbar#enabled = 1
" Enable a smart tab top
" let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#branch#enabled = 1
" Enable powerline fonts
set laststatus=2
""""""""""""""""""""""""""""""""""""
let g:UltiSnipsJumpForwardTrigger  = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger = '<C-K>'
let g:UltiSnipsExpandTrigger       = '<C-J>'
let g:UltiSnipsListSnippets        = '<C-L>'
""""""""""""""""""""""""""""""""""""""""
map <C-X> :TagbarOpenAutoClose<CR>
""""""""""""""""""""""""""""""""""""""""
" VimShell
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" Show hidden files by default
let g:NERDTreeShowHidden = 1

" Don't need window after selecting file
let g:NERDTreeQuitOnOpen = 1

" Classic theme with |'s instead of >'s
" let g:NERDTreeDirArrows = 0

" Width of window
let g:NERDTreeWinSize = 40

map <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1



let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1









" Check syntax on file open
"let g:syntastic_check_on_open = 1

" Show errors in the line numbers to left
" let g:syntastic_enable_signs = 1

" Format the syntastic message
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" List of files to ignore checking, may be useful later
" let g:syntastic_ignore_files = [ '\m^/usr/include/' ]

" Always use location list
" let g:syntastic_always_populate_loc_list = 1

:" Override, don't think I'll run any unsecure perl files
" let g:syntastic_enable_perl_checker = 1

" Manually set important checkers:
" let g:syntastic_python_checkers = ['python', 'pylint', 'flake8']
" let g:syntastic_perl_checkers = ['perl', 'perlcritic']
" let g:syntastic_rst_checkers = ['sphinx']

" Set what chechers are active or passive
" let g:syntastic_mode_map = {
    " \ 'mode': 'active',
    " \ 'active_filetypes': ['c', 'cpp', 'java', 'lisp', 'python', 'perl', 'ruby',
    " \                      'sh', 'xml', 'json', 'xhtml', 'html', 'css', 'javascript']
" \ }

" let g:syntastic_enable_signs = 1
" Relative numbers
set relativenumber

" Force a version of python
"let g:UltiSnipsUsePythonVersion = 2


" Vundle settings -------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'Shougo/vimproc.vim'
Plugin 'bling/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'plasticboy/vim-markdown'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'tomasr/molokai'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
" --------------------------------

nnoremap Q <Nop>
vnoremap i  <Esc>
imap jj <esc>
cmap jj <esc>

" Remap Space + direction to move between split windows
" nnoremap <silent> <Space>k :wincmd k<CR>
" nnoremap <silent> <Space>j :wincmd j<CR>
" nnoremap <silent> <Space>h :wincmd h<CR>
" nnoremap <silent> <Space>l :wincmd l<CR>

" Jumping between buffers 
" map gn :bn<cr>
" map gp :bp<cr>
" map gd :bd<cr>  

" Turn backup off, since most files in a VCS
set nobackup
set nowritebackup
set noswapfile


" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=


" Set position indicator on bottom right
set ruler
" Set spell checking
set spell
" Highlight current line in number side
" set cursorline
set number
" Show command in last line, usually on by default
set showcmd

" Minimum number of lines that will always be above/below cursor
set scrolloff=10
" Syntax checkgin' enabled 
syntax enable
" colorscheme specfications
set background=light
colorscheme gruvbox
" auto indent and avoiding annoying stuff
set hidden  
set autoindent
set wildmenu
set smartindent 

" Enable search Highlight
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize -10<CR>


" System default for mappings is now the "," character
let mapleader = ","

" Remap for fugitive commands
nmap <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gp :Gpush<CR>

nmap <leader>vs :VimShellPop<cr>
nmap <leader>sp :vsp<cr>
" GundoToggle will be open for ,,gu
nmap <leader>gu :GundoToggle<CR>
" :w and :wq is solved with ,,/q
nmap <leader><leader> :w<CR>
nmap <leader><leader>q :wq<CR>
" ,tt will lead to Tagbar
nmap <leader>tt :TagbarOpenAutoClose<CR>
" Tagbar configuration
let g:tagbar_left=1
" Tell gundo to close after a revert
let g:gundo_close_on_revert=1
" Laziness
nnoremap ; :


