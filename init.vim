let g:python3_host_prog = "C:/Program Files/Python38/python.exe"

language en
"set langmenu=en_US.UTF-8
"let $LANG = 'en_US'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"inoremap <silent> kj <Esc>
"set termguicolors
set lazyredraw
syntax enable
set cursorline
set noshowmode
set ignorecase
set smartcase


set inccommand=nosplit
set incsearch


set exrc
set secure

set relativenumber number
set linebreak

set autoread

au FocusGained,BufEnter * :checktime

nnoremap <silent> j gj
nnoremap <silent> k gk



" tnoremap <Esc> <C-\><C-n>


let mapleader = "\<space>"
nmap <silent> <leader>gg :GitGutterLineHighlightsToggle<cr>

set clipboard=unnamed

set showcmd

nnoremap <leader>` i~<esc>

function! s:openInitVim()
    execute "tabnew"
    execute "edit C:/Users/Tomek/AppData/Local/nvim/ginit.vim"
    execute "vsplit"
    execute "edit C:/Users/Tomek/AppData/Local/nvim/init.vim"
endfunction
command! OpenInitVim call <SID>openInitVim()
nnoremap <silent> <leader>vv :OpenInitVim<cr>
nnoremap <silent> <leader>vs
            \ :source C:/Users/Tomek/AppData/Local/nvim/init.vim<cr>
            \ :source C:/Users/Tomek/AppData/Local/nvim/ginit.vim<cr>

nmap <silent> <leader>gs :tab G<cr>gg<c-n>
nmap <silent> <leader>gh :diffget //2<cr>
nmap <silent> <leader>gl :diffget //3<cr>


nnoremap <silent> [e :cp<cr>
nnoremap <silent> ]e :cn<cr>

" nnoremap <silent> <leader>bh :bp<cr>
" nnoremap <silent> <leader>bl :bn<cr>
nnoremap <silent> <leader>bd :BD<cr>
nnoremap <silent> <leader>bf :Format<cr>

nnoremap <silent> <leader>tn :tabnew<cr>
" nnoremap <silent> <leader>th :tabp<cr>
" nnoremap <silent> <leader>tl :tabn<cr>

nnoremap <silent> <leader>w_ <c-w>_<cr>
nnoremap <silent> <leader>w<bar> <c-w><bar><cr>
nnoremap <silent> <leader>w= <c-w>=<cr>
nnoremap <silent> <leader>wj <c-w>j<cr>
nnoremap <silent> <leader>wk <c-w>k<cr>
nnoremap <silent> <leader>wh <c-w>h<cr>
nnoremap <silent> <leader>wl <c-w>l<cr>
nnoremap <silent> <leader>sj :split<cr><c-w>j<cr>
nnoremap <silent> <leader>sk :split<cr>
nnoremap <silent> <leader>sh :vsplit<cr>
nnoremap <silent> <leader>sl :vsplit<cr><c-w>l<cr>

nnoremap <silent> <leader><leader> :Goyo<cr>
let g:goyo_width=100
let g:goyo_height='100%'
let g:goyo_linenr=1

set incsearch


" " //////////////////////////////////////////////////////////////////////////////
" set colorcolumn=81
"
"
" //////////////////////////////////////////////////////////////////// Plugins "
call plug#begin(stdpath('data') . '/plugged')
"call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-plug'
Plug 'enricobacis/vim-airline-clock'
" let g:airline#extensions#clock#format = '%H:%M:%S'

Plug 'machakann/vim-highlightedyank'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ThePrimeagen/vim-be-good'

Plug 'liuchengxu/vim-which-key'
" call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
let g:mapleader = "\<Space>"
let g:vista_cursor_delay = 0
let g:which_key_map =  {}
let g:which_key_map.l = {
      \ 'name' : '+list',
      \ 'f' : 'files'    ,
      \ }

" Sessions
Plug 'mhinz/vim-startify'

" Color schemes
Plug 'cocopon/iceberg.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'junegunn/seoul256.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'sainnhe/forest-night'
Plug 'dracula/vim', { 'as': 'dracula' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utilities
Plug 'kien/rainbow_parentheses.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'jbgutierrez/vim-better-comments'
Plug 'lambdalisue/vim-fullscreen'

Plug 'easymotion/vim-easymotion'
    " map , <Plug>(easymotion-prefix)
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_use_upper = 0
    let g:EasyMotion_keys = "ls;ahg'urieowpqyt[]vcxbnm,.\/094jfkd"
    "nmap , <Plug>(easymotion-overwin-f)
    map  <space>j <Plug>(easymotion-bd-f)
    nmap <space>j <Plug>(easymotion-overwin-f)
    " omap <space>j <Plug>(easymotion-tn)
    let g:EasyMotion_smartcase = 1

Plug 'tpope/vim-surround'
"Plug 'tpope/vim-vinegar'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'bfrg/vim-cpp-modern'
Plug 'tpope/vim-abolish'
Plug 'sheerun/vim-polyglot'

Plug 'jackguo380/vim-lsp-cxx-highlight'


"Plug 'altercation/vim-colors-solarized'
"Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'psliwka/vim-smoothie'
"Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/limelight.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'liuchengxu/vista.vim'
let g:vista_sidebar_width = 60
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_default_executive = 'coc'
nnoremap <space>k :Vista!!<cr>kj

Plug 'beyondmarc/hlsl.vim'
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'Iron-E/vim-libmodal'

Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

" Plug 'nathanaelkane/vim-indent-guides'


"    Plug 'scrooloose/syntastic'

Plug 'scrooloose/nerdtree'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'tag': '0.21.1' }
" Plug 'junegunn/fzf.vim', {'commit': '4cf475'}
"
" Plug 'ludovicchabant/vim-gutentags'
"Plug 'yuki-ycino/fzf-preview.vim'
"
"
Plug 'ryanoasis/vim-devicons' " Always load the vim-devicons as the very last one


call plug#end()

"set renderoptions=type:directx


" " //////////////////////////////////////////////////////////////////////////////
"let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_relative_path       = 1
let g:startify_session_persistence = 1
let g:startify_change_to_dir       = 1
let g:startify_change_to_vcs_root  = 1

set background=dark
"colorscheme gruvbox
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
"let g:airline_left_sep=' '
"let g:airline_left_alt_sep='|'
"AirlineTheme gruvbox
"colorscheme gruvbox

" let g:goyo_width=80
" let g:airline#extensions#tabline#enabled=1
"let g:limelight_conceal_ctermfg='gray'
"
" "set background=dark
" let g:airline_theme='gruvbox'
"
" let g:indent_guides_enable_on_vim_startup=1
" let g:indent_guides_start_level=2
" let g:indent_guides_guide_size=1
"
"
"
"
" filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ts=4 sw=4 et
"
"
"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
" " autocmd vimenter * NERDTree
"
" " //////////////////////////////////////////////////////////////////////////////
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>o  :<C-u>Vista finder coc<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>






let g:netrw_liststyle=3
"""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>bf :Format<cr>

let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeWinSize = 40
nnoremap <silent> ` :NERDTreeToggle<cr>



"""""""""""""""""""""""""""""""""""""""""
"Per project settings
nnoremap <leader>; :!msbuild<cr>
nnoremap <silent> <leader>' :!e:\pbl\game\PBL_Engine\Debug\PBL_Engine.exe<cr>
set colorcolumn=81
set foldmethod=syntax



" gitcommit
filetype indent plugin on
au FileType gitcommit setlocal textwidth=72
au FileType gitcommit setlocal colorcolumn=51,73
au FileType gitcommit setlocal spell


nnoremap <silent> <leader>lf :Files<cr>
nnoremap <silent> <leader>lg :GFiles<cr>
nnoremap <silent> <leader>lb :Buffers<cr>
nnoremap <silent> <leader>lr :Rg<cr>
nnoremap <silent> <leader>ll :BLines<cr>
nnoremap <silent> <leader>lc :Commits<cr>
nnoremap <silent> <leader>lm :Marks<cr>
nnoremap <silent> <leader>lw :Windows<cr>
nnoremap <silent> <leader>lhc :History:<cr>
nnoremap <silent> <leader>lhs :History/<cr>

set winblend=5

let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.9, 'border': 'rounded'} }

let g:LanguageClient_semanticHighlightMaps = {}
let g:LanguageClient_semanticHighlightMaps['cpp'] = {
      \ '^entity.name.function.cpp': 'Function',
      \ '^entity.name.function.method.cpp': 'Function',
      \ '^entity.name.function.preprocessor.cpp': 'PreProc',
      \ '^entity.name.namespace.cpp': 'Type',
      \ '^entity.name.type.class.cpp': 'Type',
      \ '^entity.name.type.enum.cpp': 'Type',
      \ '^entity.name.type.template.cpp': 'Type',
      \ '^meta.disabled': 'Comment',
      \ '^variable.other.cpp': 'Variable',
      \ '^variable.other.enummember.cpp': 'Constant',
      \ '^variable.other.field.cpp': 'Variable',
      \ }
let g:LanguageClient_semanticHighlightMaps['c'] = {
      \ '^entity.name.function.cpp': 'Function',
      \ '^entity.name.function.method.cpp': 'Function',
      \ '^entity.name.function.preprocessor.cpp': 'PreProc',
      \ '^entity.name.namespace.cpp': 'Type',
      \ '^entity.name.type.class.cpp': 'Type',
      \ '^entity.name.type.enum.cpp': 'Type',
      \ '^entity.name.type.template.cpp': 'Type',
      \ '^meta.disabled': 'Comment',
      \ '^variable.other.cpp': 'Variable',
      \ '^variable.other.enummember.cpp': 'Constant',
      \ '^variable.other.field.cpp': 'Variable',
      \ }

" WHITESPACE
set list listchars=tab:»·,trail:·

"""""""""""""""""""""""""""""""""""""""""
" source C:\\Users\\Tomek\\.local\\share\\nvim\\winmode\\winmode.vim
"""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost CMakeLists.txt silent exe "!cmake-format -i \<afile>" | exe "e"

nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Help in new tabs
" ----------------------------------------------------------------------------
function! s:helptab()
  if &buftype == 'help'
    wincmd T
    nnoremap <buffer> q :q<cr>
  endif
endfunction
autocmd BufEnter *.txt call s:helptab()

" function! MyFoldText() " {{{
"    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
"     let lines_count = v:foldend - v:foldstart + 1
"     let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
"     let foldchar = matchstr(&fillchars, 'fold:\zs.')
"     let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
"     let foldtextend = lines_count_text . repeat(foldchar, 8)
"     let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
"     return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
" endfunction " }}}
" set foldtext=MyFoldText()
"

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" if has('nvim') && !exists('g:fzf_layout')
"   autocmd! FileType fzf
"   autocmd  FileType fzf set laststatus=0 noshowmode noruler
"     \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" endif
"
let g:indentLine_char = '¦'
let g:indent_blankline_char = '¦'

set conceallevel=0

