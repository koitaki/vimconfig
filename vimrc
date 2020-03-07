
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Check if Windows OS and set home directory
if has('win32') || has('win64')
  set runtimepath^=~/.vim
  set runtimepath+=~/.vim/after
endif

" Set path variable to current directory (and all sub-dirs)
set path=.\**

" Detect filetype
filetype on
" Add filetype plugin if available
filetype plugin on
" Add filetype indent if available
filetype indent on

" Open in Full Screen Mode
" This executes the command simalt ~x
" Which is Alt Spacebar X
autocmd GUIEnter * simalt ~x


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set Tree List Style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use newtr (Nerd Tree replacement) to set styles (manually do this via hitting i)
" Use style 3 to get indented tree
let g:netrw_liststyle=3

" Remove Directory Banner
" let g:netrw_banner = 0

" Open in previous window
let g:netrw_browse_split = 4

" Open in vertical split
let g:netrw_altv = 1

" Set Tree window size
let g:netrw_winsize = 50

" Launch newtr after opening Vim
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change Esc key
" No need, just use:
" Use Ctrl-[ (control plus left square bracket)

" Set Default keys - Leader key from Ctrl to Space
" let mapleader = " "

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar (or za)
nnoremap <space> za


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set encoding to UTF-8
set encoding=utf-8

" Add syntax highlighting
syntax enable 
syntax on

" indent when moving to the next line while writing code
set autoindent

" Show existing tab with spaces width
set tabstop=2
set softtabstop=2

" when using the >> or << commands, shift lines by number of spaces
set shiftwidth=2

" Show line numbers
set number

" When indenting with '>', use 4 spaces width
set shiftwidth=2

" On pressing tab, insert spaces
set expandtab

" Set code folding to indent when opening and closing
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

" Folding shortcuts
" za: Toggle code folding at the current line.
" zo: Open fold.
" zc: Close fold.
" zR: Open all folds.
" zM: Close all folds.

" Show invisibles
set list
set listchars=tab:»-,trail:·,eol:¬

" show the matching part of the pair for [] {} and ()
set showmatch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set colorscheme
let g:airline_theme = 'cobalt2'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => French Characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set dg  " a<BS>`, a<BS>^, a<BS>', a<BS>:
