execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
set ttyfast
set shiftwidth=4
set tabstop=4
set expandtab
" set relativenumber
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/

" vim-prettier conf https://github.com/prettier/vim-prettier
" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier

au BufRead,BufNewFile *.fn,*.hfn set filetype=efene
au FileType efene setl sw=2 sts=2 et

set colorcolumn=79

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

" Don't move on *
nnoremap * *<c-o>

" It's 2011.
noremap j gj
noremap k gk

" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" Substitute
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>


" Sudo to write
cmap w!! w !sudo tee % >/dev/null

" Toggle paste
set pastetoggle=<F8>
set backspace=indent,eol,start
set nonumber

" Automatically indent based on file type: 
" Keep indentation level from previous line: 
set autoindent

" shows the match while typing
set incsearch
" case insensitive search
set ignorecase

" http://items.sjbach.com/319/configuring-vim-right
set smartcase
set title
set scrolloff=3
set ruler
set shortmess=atI
runtime macros/matchit.vim

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
"set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
"set mat=2

"Highlight search things
set hlsearch

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so,*.pyc,*.class,*.beam,*.o,*/target,*/.eunit,*/build,*/node_modules,*/dist
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

set wildmode=list:longest

let g:syntastic_python_checkers=['pylint']
let g:syntastic_js_checkers=['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers=['eslint']


let g:slime_target = "tmux"

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"\ ['black',       'SeaGreen3'],
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:ackprg = 'ag --vimgrep'
