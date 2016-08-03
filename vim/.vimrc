    "file .vimrc  
    "Author Nitin Martolia 

call pathogen#infect()
call pathogen#helptags()

"Set filtype stuff to on
filetype on
filetype plugin on
filetype indent on


syntax on "Enable syntax coloring

"set rtp+=$ppath/powerline/bindings/vim

"let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_theme = 'solarized256'
"let g:Powerline_colorscheme = 'solarized256'
"let g:Powerline_stl_path_style = 'full'     

"" ---Removes delays between vim modes in powerline plugin
"if ! has('gui_running')
"    set ttimeoutlen=10
"    augroup FastEscape
"        autocmd!
"        au InsertEnter * set timeoutlen=0
"        au InsertLeave * set timeoutlen=1000
"    augroup END
"end
"" -------------------------------------------------------

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set noshowmode     " Hide the default mode text ( e.g. -- INSERT -- below the statusline)
set encoding=utf-8 " Necessary to show Unicode glyphs

" Adjusting Indentation
set autoindent       "Keep indentation from previous line
set smartindent      "Automatically inserts indentation in some cases 
set smarttab         "smart tabbing
set shiftwidth=2     "Indent by 4 spaces when using >>,<<,== etc
set softtabstop=2    "Indent by 4 spaces when pressing <TAB>
set tabstop=2        "Indent by 4 spaces when pressing <TAB>
set expandtab        "Use softtabstop spaces instead of tab characters for indentation

set nowrap         "Don't wrap line                                                                                     
set linebreak      "Wrap lines at convenient points
set t_Co=256       "Set 256 color terminal color for vim
set textwidth=90   "Setting text width
set number         "Show line numbers

set history=100     "Keep some stuff in history
set virtualedit=all "All the cursor to go in to invalid places
set hlsearch        "highlight the search
set incsearch       "Incrementally match the search 
set ignorecase      " case insensitive search

set smartcase
let mapleader = "," "System default for mapping is , char
set cursorline      "Highlight the current line

"set cpoptions=ces$ "Make the 'cw' and like commands put a $ at the end instead of just deleting the text and replacing it

"colorscheme codeschool "Set colorscheme
colorscheme jellybeans "Set colorscheme
 


" ============== Scrolling ========================
 set scrolloff=8
 set sidescrolloff=15
 set sidescroll=1

 "================ Mappings =============================================

 "Copy Paste from vim to system clipboard and from system clipboard to vim using 
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <C-r><C-o>+

 "forgot to use sudo ,using tee command to overcome this ---
    cmap w!! %!sudo tee > /dev/null %

 "Switch windows 
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l




"....................................................

"NERDTREE PLUGIN SETTINGS
"Shortcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle
"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"....................................................

"Helpful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

" ========================================================================


" Add the unnamed register to the clipboard
" set clipboard+=unnamed


