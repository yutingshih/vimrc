" [General configurations]
set nocompatible                        " use Vim settings, rather than Vi settings
set showcmd                             " show imcomplete command at the bottom

" [User interface options]
set laststatus=2                        " always display the status bar (0: close, 1: if buffers open, 2: always open)
set wildmenu                            " display command line's tab complete options as a menu
colorscheme desert                      " change colorscheme
set cursorline                          " highlight the line currently under cursor
set number                              " show line number on the side bar
set relativenumber                      " show line number on the current line and relative numbers on all other lines
set mouse=a                             " enable mouse for scrolling and resizing

" [Indentation options]
set autoindent                          " new lines inherit the indentation of previous lines
filetype indent on                      " smart auto indentation (instead of old smartindent option)
set tabstop=4                           " show existing tab with 4 spaces width
set shiftwidth=4                        " indent by 4 spaces when auto-indenting
set softtabstop=4                       " indent by 4 spaces when hitting tab
set expandtab                           " on pressing tab, insert 4 spaces
"set nowrap                             " don't wrap lines

" [Search options]
set incsearch                           " find the next match as we type the search
set hlsearch                            " highlight searches by default

" [Text rendering options]
set encoding=utf-8                      " use an encoding that supports Unicode
set linebreak                           " wrap lines at convenient points, avoid wrapping a line in the middle of a word
set scrolloff=3                         " the number of screen lines to keep above and below the cursor
set sidescrolloff=5                     " the number of screen columns to keep to the left and right of the cursor
syntax enable                           " enable syntax highlighting

" [Miscellaneous]
set confirm                             " display a confirmation dialog when closing an unsaved file
"set spell                              " enable spellchecking

" [Status line]
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
