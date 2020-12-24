" \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ Plugins "
call plug#begin(stdpath('data') . '/plugged')

    " ................................................... Plugin management .. "
    Plug 'junegunn/vim-plug'

    " ......................................................... Syntax tree .. "
    " Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter', {'commit': '049028'}
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'beyondmarc/hlsl.vim'
    Plug 'bfrg/vim-cpp-modern'

    " ......................................................... Status line .. "
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/nvim-bufferline.lua'

    " Plug 'enricobacis/vim-airline-clock' " Breaks Goyo, disabled for now
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " ............................................................ Movement .. "
    Plug 'easymotion/vim-easymotion'
    Plug 'justinmk/vim-sneak'

    " ............................................................ Mappings .. "
    Plug 'Konfekt/vim-alias'
    Plug 'liuchengxu/vim-which-key'

    " ................................................................ Tabs .. "
    Plug 'gcmt/taboo.vim'

    " ........................................................ Fuzzy search .. "
    " versions over 0.22.0 break the preview window
    Plug 'junegunn/fzf', { 'tag': '0.22.0', 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim', {'commit': '0fe8e1'}
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim'

    Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/telescope.nvim'

    " ............................................................ Practice .. "
    Plug 'ThePrimeagen/vim-be-good', {'do': '.\install.sh'}

    " ................................................................. LSP .. "
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'

    " ............................................................ Sessions .. "
    Plug 'mhinz/vim-startify'

    " ....................................................... Color schemes .. "
    Plug 'sainnhe/edge'
    Plug 'sainnhe/forest-night'
    Plug 'sainnhe/gruvbox-material'
    Plug 'sainnhe/sonokai'
    " Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'arcticicestudio/nord-vim'
    Plug 'ayu-theme/ayu-vim'

    Plug 'tjdevries/colorbuddy.vim'
    Plug 'Th3Whit3Wolf/onebuddy'

    " ................................................................. Git .. "
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-git'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-fugitive'

    " ............................................................ Markdown .. "
    Plug 'iamcco/markdown-preview.nvim', {
                \ 'do': { -> mkdp#util#install() },
                \ 'for': ['markdown', 'vim-plug']}
    Plug 'jkramer/vim-checkbox'

    " Plug 'godlygeek/tabular'
    " Plug 'plasticboy/vim-markdown'

    " Plug 'SidOfc/mkdx'

    " ........................................................... Utilities .. "
    Plug 'Yggdroot/indentLine'
    Plug 'amix/vim-zenroom2'
    Plug 'jbgutierrez/vim-better-comments'
    Plug 'junegunn/goyo.vim'          " Focus mode
    Plug 'junegunn/limelight.vim'     " Highlight only current paragraph
    Plug 'junegunn/vim-easy-align'    " Text alignment
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'lambdalisue/vim-fullscreen' " GUI fullscreen
    Plug 'liuchengxu/vista.vim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'psliwka/vim-smoothie'       " Smooth scrolling
    Plug 'scrooloose/nerdtree'        " Filesystem tree
    Plug 'sheerun/vim-polyglot'       " Syntax files
    Plug 'tpope/vim-abolish'          " Coercions
    Plug 'tpope/vim-commentary'       " Comments
    Plug 'tpope/vim-repeat'           " Repeat some plugins with '.'
    Plug 'tpope/vim-surround'         " Surroundings

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim' " breaks Vista

    " ............................................................ Not-used .. "
    " Plug 'Iron-E/vim-libmodal'
    " Plug 'Xuyuanp/scrollbar.nvim'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'cocopon/iceberg.vim'
    " Plug 'dracula/vim', { 'as': 'dracula' }
    " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    " Plug 'itchyny/lightline.vim'
    " Plug 'jackguo380/vim-lsp-cxx-highlight'
    " Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'tag': '0.21.1' }
    " Plug 'junegunn/fzf.vim', {'commit': '4cf475'}
    " Plug 'junegunn/seoul256.vim'
    " Plug 'ludovicchabant/vim-gutentags'
    " Plug 'mechatroner/rainbow_csv'
    " Plug 'morhetz/gruvbox'
    " Plug 'nathanaelkane/vim-indent-guides'
    " Plug 'qpkorr/vim-bufkill'
    " Plug 'scrooloose/syntastic'
    " Plug 'tpope/vim-surround'
    " Plug 'tpope/vim-vinegar'
    " Plug 'yuki-ycino/fzf-preview.vim'

    " ............................................................... Icons .. "
    " Plug 'ryanoasis/vim-devicons' " Always load the plugin as the very last one

call plug#end()

" ---------------------------------------------------------------------------- "
"
"
"
"
" let g:python3_host_prog = "C:/Program Files/Python38/python.exe"

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

autocmd FocusGained,BufEnter * :checktime

nnoremap <silent> j gj
nnoremap <silent> k gk



" tnoremap <Esc> <C-\><C-n>


let mapleader = "\<space>"
nmap <silent> <leader>gg :GitGutterLineHighlightsToggle<cr>

set clipboard=unnamed

set showcmd

nnoremap <leader>` i~<esc>

nnoremap <silent> <leader>vv
        \ :tabnew<bar>
        \ :execute "edit ".stdpath("config")."\\ginit.vim"<bar>
        \ :vsplit<bar>
        \ :execute "edit ".stdpath("config")."\\init.vim"<bar>
        \ :TabooRename "Configuration"<cr>
nnoremap <silent> <leader>vs
        \ :execute "source ".stdpath("config")."\\init.vim"<cr>
        " \ :execute "source ".stdpath("config")."\\init.vim"<bar>
        " \ :execute "source ".stdpath("config")."\\ginit.vim"<cr>

nmap <silent> <leader>gs :tab G<cr>gg<c-n>
nmap <silent> <leader>gh :diffget //2<cr>
nmap <silent> <leader>gl :diffget //3<cr>

nmap <silent> <leader>gd :Gvdiffsplit<cr>


nnoremap <silent> [e :cp<cr>
nnoremap <silent> ]e :cn<cr>

" nnoremap <silent> <leader>bh :bp<cr>
" nnoremap <silent> <leader>bl :bn<cr>
nnoremap <silent> <leader>bd :BD<cr>
nnoremap <silent> <leader>bf :Format<cr>

nnoremap <silent> <leader>tn :tabnew<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
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

set spelllang=en,pl

" " //////////////////////////////////////////////////////////////////////////////
" set colorcolumn=81
"
"

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
let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep      = "\ue0b4"
let g:airline#extensions#tabline#left_alt_sep  = "\ue0b5"
let g:airline#extensions#tabline#right_sep     = "\ue0b6"
let g:airline#extensions#tabline#right_alt_sep = "\ue0b7"
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_left_sep      = ""
let g:airline_left_alt_sep  = ""
let g:airline_right_sep     = ""
let g:airline_right_alt_sep = ""
" let g:airline_left_sep      = "\ue0b4"
" let g:airline_left_alt_sep  = "\ue0b5"
" let g:airline_right_sep     = "\ue0b6"
" let g:airline_right_alt_sep = "\ue0b7"
  let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }
" highlight link airline_tab MoreMsg
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . " " . "\uE0A3" . '%{col(".")}'])
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set ts=4 sw=4 et
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
"" " //////////////////////////////////////////////////////////////////////////////
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
" nmap <silent> gr <Plug>(coc-references)

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
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

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
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

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
nnoremap <silent> <space>ls  :<C-u>Vista finder coc<cr>
" Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>






let g:netrw_liststyle=3
"""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>bf :Format<cr>

let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeWinSize = 39
nnoremap <silent> ` :NERDTreeToggle<cr>



"""""""""""""""""""""""""""""""""""""""""
"Per project settings
" nnoremap <leader>; :!msbuild<cr>
" nnoremap <silent> <leader>' :!e:\pbl\game\PBL_Engine\Debug\PBL_Engine.exe<cr>
" set colorcolumn=81
let &colorcolumn=join(range(81,999),",")
" set foldmethod=syntax



" gitcommit
filetype indent plugin on
au FileType gitcommit setlocal textwidth=72
au FileType gitcommit setlocal colorcolumn=51,73
au FileType gitcommit setlocal spell
au FileType gitcommit autocmd BufWritePre <buffer> :%s/\s\+$//e


nnoremap <silent> <leader>lf :Files<cr>
nnoremap <silent> <leader>lg :GFiles<cr>
nnoremap <silent> <leader>lb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> <leader>lr :Rg<cr>
nnoremap <silent> <leader>ll <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
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

nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [b :bprev<cr>
nnoremap <silent> ]t :tabn<cr>
nnoremap <silent> [t :tabp<cr>
nnoremap <silent> <tab>   <c-w>w
nnoremap <silent> <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" Help in new tabs
" ----------------------------------------------------------------------------
function! s:helptab()
  if &buftype == 'help'
    " wincmd T
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

" set conceallevel=0

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = { "python" },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gii",
      node_incremental = "gin",
      node_decremental = "gim",
      scope_incremental = "gis",
    },
  },
  indent = {
    enable = true
  },
  refactor = {
    enable = true,
    highlight_definitions = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grn",
      },
    },
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
require'bufferline'.setup{}
EOF
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr
" autocmd FileType c,cpp,java,py setlocal foldmethod=expr

" set completeopt=menuone,noinsert,noselect
" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" lua require'nvim_lsp'.clangd.setup{on_attach=require'completion'.on_attach}
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"

" augroup ScrollbarInit
"   autocmd!
"   autocmd WinEnter,FocusGained,CursorMoved,VimResized * silent! lua require('scrollbar').show()
"   autocmd WinLeave,FocusLost                          * silent! lua require('scrollbar').clear()
" augroup end


map <silent> <leader>bo mt:%bd\|e#\|bd#<cr>'tzz
map <silent> <leader>ba :%bd<cr>
map <silent> <leader>bd :bd<cr>

nnoremap Q @q

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" nnoremap <silent> ss :<C-U>call sneak#wrap('', 2, 0, 2, 1)<CR>

autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

nmap Y y$

" WhichKey ------------------------------------------------------------------- "
call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}
let g:which_key_map.l = {
      \ 'name': '+list',
      \ 'f':    'files',
      \ }
let g:which_key_map.v = {
      \ 'name':       '+configuration',
      \ 'j':          'increase-font-size',
      \ 'k':          'decrease-font-size',
      \ 'v':          'open-configuration',
      \ 's':          'source-configuration',
      \ 'u':          {
            \ 'name': '+update',
            \ 'p':    ['PlugUpgrade', 'plugin-manager'],
            \ 'u':    ['PlugUpdate', 'plugins'],
            \ 'c':    ['CocUpdate', 'coc'],
            \ 'r':    ['UpdateRemotePlugins', 'remote'],
      \ },
      \ }

let g:which_key_flatten = 0
let g:which_key_position = 'topleft'

" autocmd! FileType which_key
" autocmd  FileType which_key set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"
" ------------------------------------------------------------- Highlight yank "
augroup HIGHLIGHT_YANK
    autocmd!
    autocmd TextYankPost * silent!
                \ lua vim.highlight.on_yank { 
                \   higroup='HighlightedyankRegion',
                \   timeout=1000
                \ }
augroup END

        let g:mapleader = "\<Space>"
        let g:vista_cursor_delay = 0


    let g:vista_sidebar_width = 60
    let g:vista_echo_cursor_strategy = 'floating_win'
    let g:vista_default_executive = 'coc'
    nnoremap <space>k :Vista!!<cr>kj


        map s <Plug>(easymotion-prefix)
        let g:EasyMotion_do_mapping = 1
        let g:EasyMotion_use_upper = 0
        " let g:EasyMotion_keys = "ls;ahg'urieowpqyt[]vcxbnm,.\/094jfkd"
        " let g:EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
        let g:EasyMotion_keys = "aoeidtn',.pyfgcrl;qjkxbmuhs"
        "nmap , <Plug>(easymotion-overwin-f)
        " map  <space>j <Plug>(easymotion-bd-f)
        " map <silent> s <Plug>(easymotion-overwin-f)
        """nmap <silent> s <Plug>(easymotion-bd-f2)
        """xmap <silent> s <Plug>(easymotion-bd-f)
        """omap <silent> s <Plug>(easymotion-bd-f)
        " nmap <space>j <Plug>(easymotion-overwin-f)
        " omap <space>j <Plug>(easymotion-tn)
        let g:EasyMotion_smartcase = 1


    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

" Limelight
augroup GOYO
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
augroup END

nmap <silent> <leader>- :Limelight!!<cr>

" Markdown preview
nmap <leader>mp <Plug>MarkdownPreviewToggle
let g:which_key_map.m = {
      \ 'name': '+markdown',
      \ 'p':    'toggle-preview',
      \ }


" let g:startify_custom_header=['     _           _                      _             ',
"                              \'             ▕                                 ',
"                              \'  ▕ ███       ▕│█     ___   ___                 ',
"                              \'  ▕││███     ▕│███▕│         █   ██      ',
"                              \'  ▕││  ███   ▕│███▕│▕│ ▁ ▕│    ▕│██          ',
"                              \'  ▕││  ▕│███ ▕│███▕│▕│   ▕│    ▕│██  ◢◣  ◢  ',
"                              \'  ▕││  ▕│  ███│███▕│  ▁▁  ▁   ██   ▜█ ██  ',
"                              \'     ▕│    ████      ‾‾    ‾                 ',
"                              \'     ▕│                                        ',
"                              \'                 ‾                      ‾             ']

nmap <leader>; :

set complete+=kspell


let g:webdevicons_enable_nerdtree           = 1
let g:webdevicons_enable_airline_tabline    = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify           = 1


let g:clap_layout = { 'relative': 'editor', 'width': '80%', 'height': '50%', 'col': '10%', 'row': '10%'}
let g:clap_theme = 'material_design_dark'
let g:clap_insert_mode_only = v:true
let g:clap_popup_border = 'sharp'
let g:clap_prompt_format = ' %forerunner_status%%provider_id%: '
" let g:clap_prompt_format = ' %spinner%%forerunner_status%%provider_id% | '
let g:clap_preview_size = { '*': 5, 'files': 10 }
let g:clap_search_box_border_style = 'nil'

let g:livepreview_previewer = 'texworks'

nnoremap <silent> <leader>bb :BufferPick<cr>

" change font size
nnoremap <silent> <space>vk :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)+1)',
 \ '')<CR>
nnoremap <silent> <space>vj :silent! let &guifont = substitute(
 \ &guifont,
 \ ':h\zs\d\+',
 \ '\=eval(submatch(0)-1)',
 \ '')<CR>

"fzf colors
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

"fzf
" let $BAT_THEME = "gruvbox-light"
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline', '--preview-window=right:50%']}), <bang>0)

"paragraphs
nnoremap <expr> <silent> { (col('.') == 1 && len(getline(line('.') - 1)) == 0 ? '2{j' : '{j')
nnoremap <expr> <silent> } (col('.') == 1 && len(getline(line('.'))) == 0 ? 'j' : '}j')

"git changes
nmap <silent> <leader>gcp vac:diffput<cr>]czz
nmap <silent> <leader>gcg vac:diffget<cr>]czz

"airline
" augroup AIRLINE
    " autocmd!
    let g:airline#extensions#branch#enabled = 0
    let g:airline#extensions#hunks#enabled  = 0
    let g:airline_section_y                 = ''
    let g:airline_section_z                 = ''
    let g:airline_section_y = airline#section#create([])
    let g:airline_skip_empty_sections       = 1

let g:airline#extensions#default#layout = [ [ 'a', 'c' ], [ 'x', 'error', 'warning' ] ]
" let g:airline_statusline_ontop = 1
" autocmd BufEnter <buffer> laststatus=0 noshowmode noruler
" augroup END

"neovide
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_cursor = 'auto'
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_visual = 'grey background'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_diagnostic_line_highlight = 0
let g:gruvbox_material_current_word = 'grey background'
let g:gruvbox_material_better_performance = 0
let g:gruvbox_material_palette = 'material'
let g:gruvbox_contrast_dark = "medium"
colorscheme gruvbox-material
let g:airline_theme='gruvbox_material'
" colorscheme gruvbox-material
" let g:airline_theme='gruvbox_material'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_skip_empty_sections = 1
" AirlineRefresh
function! FullscreenToggleNeovide()
    if g:neovide_fullscreen
        let g:neovide_fullscreen = 0
    else
        let g:neovide_fullscreen = 1
    endif
endfunction
nnoremap <silent> <space>ff :call FullscreenToggleNeovide()<cr>
set guifont=Iosevka:h16
" nnoremap <silent> <space>vk :set guifont=Iosevka:h20<cr>
" nnoremap <silent> <space>vj :set guifont=Iosevka:h16<cr>
let g:neovide_cursor_animation_length = 0.08
let g:neovide_cursor_trail_size       = 0.4
let g:neovide_cursor_vfx_mode         = "sonicboom"
let g:neovide_cursor_vfx_opacity      = 50

" bufferline
" lua <<EOF
" require'bufferline'.setup {
  " options = {
    " view = "multiwindow",
    " numbers = "none" | "ordinal" | "buffer_id",
    " number_style = "superscript" | "",
    " mappings = true | false,
    " buffer_close_icon= '',
    " modified_icon = '●',
    " close_icon = '',
    " left_trunc_marker = '',
    " right_trunc_marker = '',
    " max_name_length = 18,
    " tab_size = 18,
    " show_buffer_close_icons = true | false,
    " -- can also be a table containing 2 custom separators
    " -- [focused and unfocused]. eg: { '|', '|' }
    " separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    " enforce_regular_tabs = false | true,
    " always_show_bufferline = true | false,
    " sort_by = 'extension' | 'relative_directory' | 'directory' | function(buffer_a, buffer_b)
    "   -- add custom logic
    "   return buffer_a.modified > buffer_b.modified
    " end
  " },
" }
" EOF
" let g:airline#extensions#tabline#enabled = 0
" AirlineToggle
" AirlineRefresh
" AirlineToggle
" AirlineRefresh
" :execute "source ".stdpath("config")."\\init.vim"
"
" let g:sourced = 0
" function! DoubleSourceOnStart()
"     if g:sourced == 0
"         execute "source ".stdpath("config")."\\init.vim"
"         let g:sourced = 1
"     endif
" endfunction
" call DoubleSourceOnStart()

"markdown checkboxes
if has('conceal')
  if &termencoding ==# "utf-8" || &encoding ==# "utf-8"
    let s:checkbox_unchecked = " "
    let s:checkbox_checked = "\u2713"
  else
    let s:checkbox_unchecked = 'o'
    let s:checkbox_checked = 'x'
  endif
  syntax match markdownCheckbox "^\s*\([-\*] \[[ x]\]\|--\|++\) " contains=markdownCheckboxChecked,markdownCheckboxUnchecked
  execute 'syntax match markdownCheckboxUnchecked "\([-\*] \[ \]\|--\)" contained conceal cchar='.s:checkbox_unchecked
  execute 'syntax match markdownCheckboxChecked "\([-\*] \[x\]\|++\)" contained conceal cchar='.s:checkbox_checked
endif

"telescope
lua << EOF
local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
    mappings = {
    i={
        ["<esc>"] = actions.close
    },
    },
        prompt_position = "top",
        prompt_prefix = '> ',
        sorting_strategy = "ascending",
        layout_strategy = "flex",
        -- generic_sorter = require'telescope.sorters'.get_fzy_sorter,
        use_less = false,
        -- set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer = require'telescope.previewers'.cat.new,
    }
}
EOF



   :map [[ ?{<CR>w99[{
   :map ][ /}<CR>b99]}
   :map ]] j0[[%/{<CR>
   :map [] k$][%?}<CR>



highlight link EasyMotionTarget        MoreMsg
highlight link EasyMotionShade         NonText
highlight link EasyMotionTarget2First  MoreMsg
highlight link EasyMotionTarget2Second NonText
" highlight link EasyMotionMoveHL        NonText
" highlight link EasyMotionIncSearch     NonText
"

nmap <silent> <space>ss <cmd>setlocal spell!<cr>


function! NeatFoldText()
    let line             = getline(v:foldstart)
    let foldchar         = ' '
    let hiddenLinesCount = v:foldend - v:foldstart
    let lines_count_text = printf("%1s \u22ef", hiddenLinesCount) . repeat(foldchar, 9)
    let foldtextstart    = " \u22ef " " . repeat(' ', indent(nextnonblank(v:foldstart)))
    let foldtextend      = lines_count_text " . repeat(foldchar, 8)
    let foldtextlength   = strlen(substitute(line . foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn

    return line . foldtextstart . repeat(foldchar, winwidth(0) - foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
