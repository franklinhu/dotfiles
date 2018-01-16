set ruler        " Show line/col info

setlocal omnifunc=syntaxcomplete#Complete
set history=1000 " Lines of history to remember
set autoread     " Autoread when a file is changed

set number

"" Hack to get Go syntax highlighting
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

set encoding=utf-8
set showcmd

"" Completion popover colors
:highlight   Pmenu         ctermfg=0 ctermbg=2
:highlight   PmenuSel      ctermfg=0 ctermbg=7
:highlight   PmenuSbar     ctermfg=7 ctermbg=0
:highlight   PmenuThumb    ctermfg=0 ctermbg=7

"" Whitespace
set backspace=indent,eol,start

set hlsearch
set showmatch    " Highlights matching brackets
set incsearch    " Incremental search
set ignorecase   " searches are case insensitive
set smartcase    " ... unless they contain one capital
set wildignorecase " Wildcard searches (e.g. for file names) are case insensitive

set smartindent
set autoindent " If indented, newlines will be indented
set tabstop=2
set shiftwidth=2
set expandtab

map <C-J> <C-W><C-W>
map <C-K> <C-W><C-W>

"" Tab completion
""imap <Tab> <C-P>
""imap <S-Tab> <C-N>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap jj <Esc>

"" Column line limit
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%73v', 100)

execute pathogen#infect()

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }

"" vim-markdown
let g:vim_markdown_folding_disabled=1

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

"" Enable js syntax for json files
autocmd BufNewFile,BufRead *.json set ft=javascript

"" Disable version warning for vim-go
let g:go_version_warning = 0
