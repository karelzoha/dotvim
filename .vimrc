set nocompatible
set ruler
set showmode
set showcmd
set nowrap
set number
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
let delimitMate_expand_cr=1

execute pathogen#infect()
syntax on
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
filetype plugin indent on

au BufNewFile,BufRead *.ejs set filetype=html

map <C-e> :NERDTreeToggle<CR>

"enable JSX syntax in js files
let g:jsx_ext_required = 0

"Flowtype config
let g:flow#autoclose = 1

"Javascript libraries syntax
let g:used_javascript_libs = 'underscore,jquery,react,jasmine,chai,handlebars,ramda'
