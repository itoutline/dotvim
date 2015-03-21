let g:airline_powerline_fonts = 1
set nocompatible
"pathogen load
execute pathogen#infect()
syntax enable
filetype plugin indent on
"color scheme settings, TERM variable on console must be TERM=xterm-256color
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
let mapleader=","
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent
set shiftround
set softtabstop=4
set backspace=indent,eol,start
set number
set wrap
" Linebreak on 500 characters
set linebreak
set tw=500
set nrformats-=octal
set ttimeout
set ttimeoutlen=300
set showmode
"file and display encoding
set fileencoding=utf-8
set encoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
"status line settings
set ruler
" Height of the command bar
"set cmdheight=2
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"set statusline=%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set laststatus=2
set showcmd
set wildmenu
set incsearch
set ignorecase
set hlsearch
set list
set pastetoggle=<F2>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>t :tabnext<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remove trailing spaces from markdown files
autocmd FileType markdown autocmd BufWritePre <buffer> :%s/\s\+$//e

" Remember info about open buffers on close
set viminfo^=%

" Search all directories inside the current directory
set path+=**

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"if &listchars ==# 'eol:$'
"    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"endif

" unprintable chars for 'list' mode
set listchars=tab:▸\ ,eol:¬,trail:·
set fillchars=vert:│    " nicer separator for vertical splits



if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

set hidden
"set title               " change the terminal's title

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
nnoremap \ ,
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
"nnoremap <F2> :set invpaste paste?<CR>
"nnoremap <F2> :setlocal paste!<CR>
nnoremap <F3> :set hlsearch!<CR>

"Vim. Live it.
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>


" indent_guides {
    if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
        let g:indent_guides_start_level = 2
        let g:indent_guides_guide_size = 1
        let g:indent_guides_enable_on_vim_startup = 1
    endif
" }
