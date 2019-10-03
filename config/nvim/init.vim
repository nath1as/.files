"
"     █▄
"     ███▄
"     ███▀█▄
"     ███  ▀█▄              █
"     ███   ███             █     ▄              ▄▄▄
"     ███   ███     ▄█▄     █     █       ▄█▄  ▄█▀ ▀▀
"     ███   ███   ▄█▀ ▀█▄  ▀█▀ ▄▄▄█ ▀   ▄█▀ ▀█▄ ▀█▄▄
"     ███   ███ ▄██▄   ▄██▄ █▄ █  █ █ ▄██▄   ▄██▄  ▀█▄
"     ███   ███                █             ▄▄▄▄▄▄▄█▀
"     ███   ███
"     ███   █▀          ▌ ▐· ▪   • ▌ ▄ ·.
"     ███              ▪█·█▌ ██  ·██ ▐███▪
"     ███              ▐█▐█• ▐█· ▐█ ▌▐▌▐█·
"     █▀                ███  ▐█▌ ██ ██▌▐█▌
"                        ▀   ▀▀▀ ▀▀  █▪▀▀▀








"       ██████████████████
"      ██ ◖VIM SETTINGS◗ ██
"       ██████████████████
"
set hidden
set showtabline=0
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set nu
set hidden
set showmatch
set lazyredraw
set cursorline
set lcs=tab:▸\ ,trail:•,nbsp:▁
set list
set noerrorbells
set shortmess=aoOtIWcFs
set title
set showcmd
set wildmenu
set wildmode=longest:list,full
set ignorecase
set smartcase
set magic
set relativenumber

"        ████████████████
"       ██ ◖REMAP KEYS◗ ██
"        ████████████████

" K=J
nnoremap K kJ
" make line into display line
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" get out of insert mode with jj
inoremap jj <Esc>`^

" stay in visual after indentation
vmap < <gv
vmap > >gv

" buffer cycling
map <A-j> :bn<CR>
map <A-k> :bp<CR>

" tabs cycling
map <A-h> <C-w>h
map <A-l> <C-w>l

" ctrlspace
 nnoremap <silent><C-space> :CtrlSpace O<CR>


"        ████████████████████
"       ██ ◖REMAP MISTAKES◗ ██
"        ████████████████████

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w

"        █████████████
"       ██ ◖PLUGINS◗ ██
"        █████████████
" ~/.local/share/nvim/plugged
" ╠initialize╣

call plug#begin('~/.vim/plugged')

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ writing mode  ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" goyo
Plug 'junegunn/goyo.vim'
" limelight
Plug 'junegunn/limelight.vim'
" thesaurus
Plug 'beloglazov/vim-online-thesaurus'
" wordy
Plug 'reedes/vim-wordy'
" lexical
Plug 'reedes/vim-lexical'
" markdown
Plug 'suan/vim-instant-markdown'
" latex
Plug 'lervag/vimtex'

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ files and command line ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" vinegar
Plug 'tpope/vim-vinegar'
" ctrlp
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" ack
Plug 'mileszs/ack.vim'

"▁▁▁▁▁▁▁
"▌ git ▐
"▔▔▔▔▔▔▔
" fugitive
Plug 'tpope/vim-fugitive'
" rhubarb
Plug 'tpope/vim-rhubarb'
" vim git
Plug 'tpope/vim-git'

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌interface functionality ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
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
Plug 'tpope/vim-surround'
"supertab
Plug 'ervandew/supertab'
" multiple cursors
Plug 'terryma/vim-multiple-cursors'
" xterm-color-table
Plug 'guns/xterm-color-table.vim'
" comment toggle with gc: gcc whole line
Plug 'tpope/vim-commentary'

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌interface appearance ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" colorschemes
Plug 'zeis/vim-kolor'
Plug 'sfi0zy/atlantic-dark.vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'dikiaap/minimalist'
Plug 'neutaaaaan/iosvkem'
Plug 'andbar-ru/vim-unicon'
Plug 'bcicen/vim-vice'
Plug 'MvanDiemen/ghostbuster'
Plug 'limadm/vim-blues'


" fix for colorschemes
Plug 'godlygeek/csapprox'
" colorscheme
Plug 'flazz/vim-colorschemes'
" devicons
Plug 'ryanoasis/vim-devicons'
" colors
Plug 'lilydjwg/colorizer'
" emojis
Plug 'junegunn/vim-emoji'
" golden ratio
Plug 'roman/golden-ratio'

"▁▁▁▁▁▁▁▁▁▁▁▁
"▌ snippets ▐
"▔▔▔▔▔▔▔▔▔▔▔▔
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"▁▁▁▁▁▁▁▁▁▁▁
"▌ linters ▐
"▔▔▔▔▔▔▔▔▔▔▔
" ale
Plug 'w0rp/ale'
" " JavaScript
Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx']}
Plug 'moll/vim-node', {'for': ['javascript', 'javascript.jsx', 'json']}
Plug 'gerrard00/vim-mocha-only', { 'for': ['javascript'] }
Plug 'alampros/vim-styled-jsx'
Plug 'Galooshi/vim-import-js'
" Plug 'styled-components/vim-styled-components'
Plug 'mxw/vim-jsx'
" HTML/CSS
Plug 'ap/vim-css-color', {'for': ['css', 'scss']}
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
" Better Scss highlighting than polyglot
Plug 'tpope/vim-haml'
Plug 'othree/html5-syntax.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'hail2u/vim-css3-syntax'
" i3 syntax
Plug 'PotatoesMaster/i3-vim-syntax'
" Syntax and highlighting for every language
Plug 'sheerun/vim-polyglot'
Plug 'blockloop/vim-swigjs'
" language server protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'graphql']}
Plug 'skywind3000/asyncrun.vim'

" js es6
Plug 'isRuslan/vim-es6'
" jquery
Plug 'itspriddle/vim-jquery'
" js libraries
Plug 'othree/javascript-libraries-syntax.vim'


"▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ completion ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ╠initialize╣
call plug#end()



"        █████████████
"       ██ ◖OPTIONS◗ ██
"        █████████████

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ writing mode options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" goyo
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set spell spelllang=en
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
let g:tex_flavor = 'latex'

" vimtex
"compile \ll
" \lv
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ files and command line options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" vinegar gh toggles dotfiles
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' 

" ctrlp ignores gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

if has("gui_running")
    " Settings for MacVim and Inconsolata font
    let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif


"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ git options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔


"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌interface functionality options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔

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

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ interface appearance options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
colorscheme blues
" blues
"minimalist
"spacemacs-theme
"space-vim-dark
set background=dark
"set  termguicolors
syntax enable

" indent char
let g:indentLine_char = '→'
let g:indentLine_conceallevel = 2

" css color
let g:cssColorVimDoNotMessMyUpdatetime = 1

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ snippets options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
" ultisnips

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"▁▁▁▁▁▁▁▁▁▁▁
"▌ linters ▐
"▔▔▔▔▔▔▔▔▔▔▔
"

" ale
let g:ale_completion_delay = 0
let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'

" javascript
if has('vim-javascript')
  let g:javascript_plugin_flow=1
  let g:javascript_plugin_jsdoc=1
endif

" react
let g:jsx_ext_required = 0

" emmet
if has('emmet-vim')
  imap hh <C-y>,
endif

" polyglot
if has('vim-polyglot')
  let g:polyglot_disabled = ['markdown', 'scss']
  let g:jsx_ext_required = 0
endif

"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
"▌ completion options ▐
"▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
"
autocmd FileType javascript set formatprg=prettier\ --stdin
