" VIM-PLUG (plugins)
call plug#begin('~/.nvim/plugged')
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'AlxHnr/clear_colors'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kien/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
call plug#end()

" APPEARANCE
:let $NVIM_TUI_ENABLE_TRUE_COLOR=1	" Only works with iTerm nightlies
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1	" Cursor is pipe in Insert, block in Normal
syntax enable				" Syntax highlighting
colorscheme hybrid_material             " Colorscheme
set background=dark                     " Dark background
set number				" Use line numbers
set ruler                               " Show line/col number in status bar
set hlsearch                            " Highlight search results
set wrap                                " -------------------------------------
set nolist                              " Word wrap without linebreaks
set linebreak                           " -------------------------------------

" INDENTATION
set autoindent
set copyindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab

" VARIOUS FUNCTIONALITY
filetype on                             " Detect filetype
filetype indent on                      " Filetype-specific indenting
filetype plugin on                      " Filtype-specific plugins
let mapleader=','                       " Use comma as leader
set scrolloff=8				" Starting scrolling from 8 lines of edge
set backspace=indent,eol,start		" Backspace over these things
set history=1000			" Lots of cmd history
set undolevels=1000			" Lots of undo history, too
set undoreload=1000                     " Undo lines on buffer reload
set visualbell                          " Don’t you beep at me
set noerrorbells                        " Don’t you beep at me at all!
set autoread                            " Auto read files when changed on disk
set laststatus=2                        " Always show the status bar
if has('persistent_undo')
  set undofile                          " Save undos after file closes
  set undodir=~/.nvim/undodir           " Save undos in undodir within nvim dir
endif

" LOAD SETTINGS
" (Keymaps and plugin settings)
so ~/.nvim/settings.vim