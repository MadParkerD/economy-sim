" the vimrc is where we configure our editor
" this guy has some great thoughts on the matter:
" http://mislav.uniqpath.com/2011/12/vim-revisited/
" look into colorschemes, pluggins, package managers for your plugins

"" Basics
colorscheme neonwave            " use an appealing and bright color set
syntax on                       " colorize code based on syntax highlihgting
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8              " utf8 is an encoding, set it
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number                      " keep number lines on the right side
                                " bonus: ask basil about her vim line numbers

"" Whitespace
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " backspace through everything in insert mode

" the next set is for tabs vs spaces
" tabs vs spaces is one of the computing holy wars
" also under contention is the number of spaces in a tab

"python/bash mode
set expandtab                   "don't uses spaces ever, a tab key is a jump of spaces
set tabstop=4                   "tabs are 4 spaces (:help tabstop)
set shiftwidth=4                "tabs are 4 spaces (:help shiftwidth)


"ruby/puppet mode
"set expandtab                  "don't uses spaces ever, a tab key is a jump of spaces
"set tabstop=2                  "tabs are 4 spaces (:help tabstop)
"set shiftwidth=2               "tabs are 4 spaces (:help shiftwidth)



"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
startinsert


