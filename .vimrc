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
filetype plugin indent on

au BufNewFile,BufRead *.ejs set filetype=html

map <C-e> :NERDTreeToggle<CR>
map <C-h> :TernDef<CR>

"Syntastic config starts here
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_less_checkers = ['recess']

"Ignore Angular directives
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", ' proprietary attribute "ng-'] 

"enable JSX syntax in js files
let g:jsx_ext_required = 0

"Syntastic config ends here

"Flowtype config
let g:flow#autoclose = 1

"Javascript libraries syntax
let g:used_javascript_libs = 'underscore,jquery,react,jasmine,chai,handlebars,ramda'
