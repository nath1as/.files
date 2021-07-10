"
"     в–€в–„
"     в–€в–€в–€в–„
"     в–€в–€в–€в–Ђв–€в–„
"     в–€в–€в–€  в–Ђв–€в–„              в–€
"     в–€в–€в–€   в–€в–€в–€             в–€     в–„              в–„в–„в–„
"     в–€в–€в–€   в–€в–€в–€     в–„в–€в–„     в–€     в–€       в–„в–€в–„  в–„в–€в–Ђ в–Ђв–Ђ
"     в–€в–€в–€   в–€в–€в–€   в–„в–€в–Ђ в–Ђв–€в–„  в–Ђв–€в–Ђ в–„в–„в–„в–€ в–Ђ   в–„в–€в–Ђ в–Ђв–€в–„ в–Ђв–€в–„в–„
"     в–€в–€в–€   в–€в–€в–€ в–„в–€в–€в–„   в–„в–€в–€в–„ в–€в–„ в–€  в–€ в–€ в–„в–€в–€в–„   в–„в–€в–€в–„  в–Ђв–€в–„
"     в–€в–€в–€   в–€в–€в–€                в–€             в–„в–„в–„в–„в–„в–„в–„в–€в–Ђ
"     в–€в–€в–€   в–€в–€в–€
"     в–€в–€в–€   в–€в–Ђ          в–Њ в–ђВ· в–Є   вЂў в–Њ в–„ В·.
"     в–€в–€в–€              в–Єв–€В·в–€в–Њ в–€в–€  В·в–€в–€ в–ђв–€в–€в–€в–Є
"     в–€в–€в–€              в–ђв–€в–ђв–€вЂў в–ђв–€В· в–ђв–€ в–Њв–ђв–Њв–ђв–€В·
"     в–€в–Ђ                в–€в–€в–€  в–ђв–€в–Њ в–€в–€ в–€в–€в–Њв–ђв–€в–Њ
"                        в–Ђ   в–Ђв–Ђв–Ђ в–Ђв–Ђ  в–€в–Єв–Ђв–Ђв–Ђ







"       в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"      в–€в–€ в—–VIM SETTINGSв—— в–€в–€
"       в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"

set nu
set lazyredraw
set list
set lcs=tab:в–ё\ trail:вЂў,nbsp:в–Ѓ
set encoding=UTF-8
set noerrorbells
set shortmess=aoOtIWcFs
set noshowmode
set wildmenu
set wildmode=longest:list,full
set smartcase
set magic
set relativenumber
set undofile
set undodir=~/.vim/undodir

"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"       в–€в–€ в—–REMAP KEYSв—— в–€в–€
"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€

" K=J
nnoremap K kJ

" stay in visual after indentation
vmap < <gv
vmap > >gv

" buffer cycling
map <A-j> :bn<CR>
map <A-k> :bp<CR>

" tabs cycling
map <A-h> <C-w>h
map <A-l> <C-w>l

" prettier
nmap <C-i>  :Prettier<CR>
" fzf
nmap <C-p>  :FZF<CR>

" fugitive
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"       в–€в–€ в—–REMAP MISTAKESв—— в–€в–€
"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w

"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"       в–€в–€ в—–PLUGINSв—— в–€в–€
"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
" ~/.local/share/nvim/plugged
" в• initializeв•Ј

call plug#begin('~/.vim/plugged')

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ writing mode  в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" goyo
Plug 'junegunn/goyo.vim'
" limelight
Plug 'junegunn/limelight.vim'
" markdown
Plug 'suan/vim-instant-markdown'
" latex
Plug 'lervag/vimtex'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ files and command line в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" ranger as file manager
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ git в–ђ
"в–”в–”в–”в–”в–”в–”в–”
" fugitive
Plug 'tpope/vim-fugitive'
" rhubarb
Plug 'tpope/vim-rhubarb'
" vim git
Plug 'tpope/vim-git'
" gist
Plug 'mattn/gist-vim'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њinterface functionality в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" learn more complex movement
" Plug 'takac/vim-hardtime'
" status line
Plug 'https://gitlab.com/maister/skyline.vim'
" highlight yanked text
Plug 'machakann/vim-highlightedyank'
" system copy: cpiw cp$ etc..
" copy: cp
" paste: cv
Plug 'christoomey/vim-system-copy'
" remember cursor position in closed buffers
Plug 'dietsche/vim-lastplace'
" move blocks of code with Ctrl+j/k
Plug 'matze/vim-move'
" surround
Plug 'tpope/vim,-surround'
"supertab
 Plug 'ervandew/supertab'
" comment toggle with gc: gcc whole line
Plug 'tpope/vim-commentary'
" which key
" Plug 'liuchengxu/vim-which-key'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њinterface appearance в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”

" colorschemes
 Plug 'dikiaap/minimalist'
" colorscheme
 Plug 'flazz/vim-colorschemes'
" fix for colorschemes
 Plug 'godlygeek/csapprox'
" golden ratio
 Plug 'roman/golden-ratio'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ snippets в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
Plug 'epilande/vim-react-snippets'
" Plug 'SirVer/ultisnips'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ linters в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
" ale
Plug 'w0rp/ale'
" " JavaScript
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mxw/vim-jsx'
" typescript
Plug 'ianks/vim-tsx'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'HerringtonDarkholme/yats.vim'
" HTML/CSS
Plug 'ap/vim-css-color', {'for': ['css', 'scss']}
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components'
" dart
" Plug 'thosakwe/vim-flutter'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'
" i3 syntax
Plug 'PotatoesMaster/i3-vim-syntax'
" language server protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'jsx', 'tsx', 'css', 'scss', 'json', 'graphql', 'python', 'c', 'dart']}
Plug 'skywind3000/asyncrun.vim'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ completion в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" в• initializeв•Ј
call plug#end()



"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€
"       в–€в–€ в—–OPTIONSв—— в–€в–€
"        в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€в–€

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ writing mode options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" goyo
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999

  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" limelight
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" neotex
"
let g:neotex_enabled = 2
let g:neotex_latexdiff = 1
let g:te_flavor = 'latex'

" vimtex
"compile \ll
" \lv
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ files and command line options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–x”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”

" ranger as file manager bind to -
let g:ranger_map_keys = 0
map - :Ranger<CR>

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ git options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њinterface functionality options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
"hardtime
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" status line
let g:skyline_readonly_flag = 1
let g:skyline_line_count = 1
let g:skyline_git_branch = 1

if has('MatchTagAlways')
  let g:mta_filetypes = {
        \ 'html' : 1,
        \ 'xhtml' : 1,
        \ 'xml' : 1,
        \ 'jinja' : 1,
        \ 'javascript': 1,
        \}
nnoremap <leader>% :MtaJumpToOtherTag<cr>
endif

if has('vim-closetag')
  let g:closetag_filenames = "*.html,*.js,*.jsx"
  let g:closetag_close_shortcut = ''
endif

if has('auto-pairs')
  let g:AutoPairsCenterLine = 0
endif

" Open help in a vertical split
augroup vimrc-help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | setlocal relativenumber | endif
augroup END

augroup file-types
  autocmd!

  " Override some syntaxes so things look better
  autocmd BufNewFile,BufRead *.html setlocal syntax=swig
  autocmd BufNewFile,BufRead *.sss setlocal syntax=stylus
  autocmd BufNewFile,BufRead *.ts,*.snap*,*.es6,*.tsx setlocal filetype=javascript.jsx
  autocmd BufNewFile,BufRead *stylelintrc,*eslintrc,*babelrc,*jshintrc setlocal syntax=json
  autocmd BufNewFile,BufRead *.css setlocal syntax=scss
  autocmd BufNewFile,BufRead *.cshtml setlocal filetype=cshtml


let g:move_key_modifier = 'C'

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ interface appearance options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
colorscheme blues
" blues
"spacemacs-theme
"space-vim-dark
syntax enable

" indent char
let g:indentLine_char = 'в†’'
let g:indentLine_conceallevel = 2

" css color
let g:cssColorVimDoNotMessMyUpdatetime = 1

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ snippets options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
" ultisnips

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ linters в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
"

" ale
let g:ale_completion_delay = 0
let g:ale_sign_error = 'в—Џ'
let g:ale_sign_warning = 'в—Џ'
 let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tsserver', 'eslint']}
 let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'],  'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint']}

" react
let g:jsx_ext_required = 0

" dart
let g:lsc_auto_map = v:true


autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ completion options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
"
let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType javascript set frmatprg=prettier\ --stdin


"в–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓв–Ѓ
"в–Њ CoC options в–ђ
"в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”в–”
"
let g:coc_global_extensions = [ 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-tslint-plugin' ]

let g:coc_filetype_map = {
            \ 'javascroiptreact': 'typescriptreact',
            \ }

