" Theme
syntax on
set t_Co=256
set background=dark
colorscheme codedark
let g:codedark_contrast=0
let g:codedark_contrast="low"
let g:codedark_termcolors=256
hi Normal ctermbg=none
hi LineNr ctermbg=none
hi NonText ctermfg=none ctermbg=none cterm=none
hi EndOfBuffer ctermbg=none
set guifont=MonospaceBold11

" Enhanced cpp syntax highlighting
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_Decl_highlight=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1

autocmd BufNewFile *.java
      \ exe "normal ipublic class " . expand('%:r') .
      \ " {\npublic static void main(String[] args) {\n}\n}\<ESC>kk"

autocmd BufNewFile *.py :call NewPythonFile()
function! NewPythonFile()
  normal!idef main():
  normal!opass
  normal!oif __name__ == '__main__':
  normal!omain()
endfunction

inoremap {<CR> {<CR>}<ESC>O

" Formatting
set autoindent
set cindent
set smartindent
set cino=(0
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=79

" Git formatting
au FileType gitcommit set tw=72
set formatoptions=cqt

" Highlight white spaces
highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace /\s\+\%#\@<!$/

" Find and replace fix
set nogdefault

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
"set hlsearch

set nomodeline

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
set visualbell
set t_vb=

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
set softtabstop=2

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting=0
set completeopt-=preview
