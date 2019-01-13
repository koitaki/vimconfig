"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make ViM non-compatible with Vi (else it loses a lot of functionality)
set nocompatible              " required to not retain compatibility with Vi & disable Gvim functions
filetype off                  " required to stop the vim filetype caching at runtime that clashes with Vundle


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
" Windows
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" Linux
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tpope/vim-sensible'

" Code completion
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" Code folding
Plugin 'tmhedberg/SimpylFold'

" Python indentation & syntax
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" Color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" File Tree
Plugin 'scrooloose/nerdtree'

" Tabs
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Search
Plugin 'kien/ctrlp.vim'

" Git
Plugin 'tpope/vim-fugitive'

" Statusbar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Enable syntax highlighting
syntax enable

" Set encoding to UTF-8
set encoding=utf-8


"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" show line numbers
set nu

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs, Indents, Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" set tab spaces
set tabstop=2
set softtabstop=2

" when using the >> or << commands, shift lines by number of spaces
set shiftwidth=2

" expand tabs into spaces
set expandtab

" indent when moving to the next line while writing code
set autoindent

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar (or za)
nnoremap <space> za

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" enable all Python syntax highlighting features
let python_highlight_all = 1
syntax on

" Enable PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Enable indention for other types
au BufNewFile,BufRead *.js, *.html, *.css, *.scss
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred

" Flag extra whitespace and mark it red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Virtualenv Support
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => French Characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set dg  " a<BS>`, a<BS>^, a<BS>', a<BS>:
