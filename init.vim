lua <<EOF
require('before')
EOF

call plug#begin(stdpath('data') . '/plugged')
    " Plugin management "
    Plug 'junegunn/vim-plug'

    " Treesitter "
    Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'nvim-treesitter/nvim-treesitter', {'commit': '00ea651'}
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'nvim-treesitter/playground'
    Plug 'p00f/nvim-ts-rainbow'

    " Syntax "
    Plug 'beyondmarc/hlsl.vim'
    Plug 'bfrg/vim-cpp-modern'

    " Statusline "
    " Plug 'enricobacis/vim-airline-clock' " Breaks Goyo, disabled for now
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'datwaft/bubbly.nvim'
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
		" Plug 'famiu/feline.nvim'

    " Bufferline "
    Plug 'kyazdani42/nvim-web-devicons'

		" if exists('g:started_by_firenvim')
		Plug 'akinsho/nvim-bufferline.lua'
		" endif

    " Movement "
    " Plug 'easymotion/vim-easymotion'
    Plug 'justinmk/vim-sneak'
    Plug 'phaazon/hop.nvim'
    " Plug 'unblevable/quick-scope'
    Plug 'haya14busa/vim-asterisk'

    " Motions
    Plug 'chaoren/vim-wordmotion'
    Plug 'wellle/targets.vim'

    " Mappings "
    Plug 'Konfekt/vim-alias'
    Plug 'liuchengxu/vim-which-key'

    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'psf/black', { 'branch': 'stable' }
    " Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
    "
    "
    Plug 'nacro90/numb.nvim'
    Plug 'romainl/vim-cool'
		Plug 'voldikss/vim-floaterm'

		" Plug 'subnut/nvim-ghost.nvim' ", {'do': ':call nvim_ghost#installer#install()'}
		Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

    " ................................................................ Tabs .. "
    " Plug 'gcmt/taboo.vim'
    "
    " Fuzzy search "
    " versions over 0.22.0 break the preview window
    " Plug 'junegunn/fzf', { 'tag': '0.22.0', 'do': { -> fzf#install() } }
    " Plug 'junegunn/fzf.vim', {'commit': '0fe8e1'}
    " Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
		Plug 'nvim-telescope/telescope-vimspector.nvim'

    Plug 'svermeulen/vimpeccable'

    " ............................................................ Practice .. "
    " Plug 'ThePrimeagen/vim-be-good', {'do': '.\install.sh'}

    " LSP "
    Plug 'neovim/nvim-lspconfig'
    " Plug 'kabouzeid/nvim-lspinstall'
    Plug 'nvim-lua/completion-nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'kosayoda/nvim-lightbulb'
    Plug 'onsails/lspkind-nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " ............................................................ Markdown .. "
    Plug 'iamcco/markdown-preview.nvim', {
                \ 'do': { -> mkdp#util#install() },
                \ 'for': ['markdown', 'vim-plug']}
    " Plug 'jkramer/vim-checkbox'

    " Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    " Sessions "
    Plug 'mhinz/vim-startify'

    " Themes "
    "Plug 'arcticicestudio/nord-vim'
    "Plug 'ayu-theme/ayu-vim'
    Plug 'sainnhe/edge'
    Plug 'sainnhe/forest-night'
    Plug 'sainnhe/gruvbox-material'
    Plug 'sainnhe/sonokai'

    " Git "
    Plug 'airblade/vim-gitgutter'
		" Plug 'lewis6991/gitsigns.nvim'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-git'

    " Utilities "
    Plug 'TaDaa/vimade'
    " Plug 'Yggdroot/indentLine'
    " Plug 'amix/vim-zenroom2'
    " Plug 'jbgutierrez/vim-better-comments'
    Plug 'junegunn/goyo.vim'          " Focus mode
    Plug 'junegunn/limelight.vim'     " Highlight only current paragraph
    Plug 'junegunn/vim-easy-align'    " Text alignment
    " Plug 'kien/rainbow_parentheses.vim'
    " Plug 'lambdalisue/vim-fullscreen' " GUI fullscreen
    Plug 'liuchengxu/vista.vim'
    Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'psliwka/vim-smoothie'       " Smooth scrolling
    " Plug 'scrooloose/nerdtree'        " Filesystem tree
    Plug 'kyazdani42/nvim-tree.lua' " , {'commit': '82b20f5b'}
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python -m chadtree deps'}
    Plug 'sheerun/vim-polyglot'       " Syntax files
    Plug 'tpope/vim-abolish'          " Coercions
    Plug 'tpope/vim-commentary'       " Comments
    Plug 'tpope/vim-repeat'           " Repeat some plugins with '.'
    Plug 'tpope/vim-surround'         " Surroundings
    " Plug 'tpope/vim-sleuth'
    " Plug 'jiangmiao/auto-pairs'
    "


call plug#end()

lua <<EOF
require('main')
EOF

" old config below ----------------------------------------------------------- "



" set exrc
" set secure

" set autoread

" autocmd FocusGained,BufEnter * :checktime

" set fileformats=dos

" tnoremap <Esc> <C-\><C-n>



" nnoremap <leader>` i~<esc>

" nmap <silent> <leader>gh :diffget //2<cr>
" nmap <silent> <leader>gl :diffget //3<cr>



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

nnoremap <silent> <leader><leader> :Goyo<cr>
let g:goyo_width=100
let g:goyo_height='62%'
let g:goyo_linenr=0

" set colorcolumn=81
" set renderoptions=type:directx

"colorscheme gruvbox
"let g:airline#extensions#coc#enabled = 1
"" let g:airline#extensions#tabline#enabled = 0
"" let g:airline#extensions#tabline#left_sep = ' '
"" let g:airline#extensions#tabline#left_alt_sep = '|'
"" let g:airline#extensions#tabline#left_sep      = "\ue0b4"
"" let g:airline#extensions#tabline#left_alt_sep  = "\ue0b5"
"" let g:airline#extensions#tabline#right_sep     = "\ue0b6"
"" let g:airline#extensions#tabline#right_alt_sep = "\ue0b7"
"" let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep      = ""
"let g:airline_left_alt_sep  = ""
"let g:airline_right_sep     = ""
"let g:airline_right_alt_sep = ""
"" let g:airline_left_sep      = "\ue0b4"
"" let g:airline_left_alt_sep  = "\ue0b5"
"" let g:airline_right_sep     = "\ue0b6"
"" let g:airline_right_alt_sep = "\ue0b7"
"  let g:airline_mode_map = {
"      \ '__'     : '-',
"      \ 'c'      : 'C',
"      \ 'i'      : 'I',
"      \ 'ic'     : 'I',
"      \ 'ix'     : 'I',
"      \ 'n'      : 'N',
"      \ 'multi'  : 'M',
"      \ 'ni'     : 'N',
"      \ 'no'     : 'N',
"      \ 'R'      : 'R',
"      \ 'Rv'     : 'R',
"      \ 's'      : 'S',
"      \ 'S'      : 'S',
"      \ ''     : 'S',
"      \ 't'      : 'T',
"      \ 'v'      : 'V',
"      \ 'V'      : 'V',
"      \ ''     : 'V',
"      \ }
"" highlight link airline_tab MoreMsg
"let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . " " . "\uE0A3" . '%{col(".")}'])
""let g:airline_left_sep=' '
""let g:airline_left_alt_sep='|'
""AirlineTheme gruvbox
""colorscheme gruvbox

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



" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set expandtab



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
" inoremap <silent><expr> <c-space> coc#refresh()

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
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
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
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
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
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" nnoremap <silent> <space>ls  :<C-u>Vista finder coc<cr>
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
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeWinSize = 39
" nnoremap <silent> ` :NERDTreeToggle<cr>



"""""""""""""""""""""""""""""""""""""""""
"Per project settings
" nnoremap <leader>; :!msbuild<cr>
" nnoremap <silent> <leader>' :!e:\pbl\game\PBL_Engine\Debug\PBL_Engine.exe<cr>
" set foldmethod=syntax



" set colorcolumn=81
" highlight ColorColumn ctermbg=0 guibg=red



" gitcommit
filetype indent plugin on
au FileType gitcommit setlocal textwidth=72
au FileType gitcommit setlocal colorcolumn=51,73
au FileType gitcommit setlocal spell
au FileType gitcommit autocmd BufWritePre <buffer> :%s/\s\+$//e


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
  let command_fmt = 'rg --trim --no-line-number --no-heading --color=always --smart-case -- %s || true'
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
" let g:indentLine_char = '¦'
" let g:indent_blankline_char = '¦'
let g:indent_blankline_char = '▏'
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'vista', 'vista_kind']
let g:indent_blankline_context_patterns = ['class', 'function', 'method', 'if', 'for']
let g:indent_blankline_context_highlight_list = ['Error', 'Warning']

" set conceallevel=0

" Treesitter
lua <<EOF
require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },
  highlight = {
    enable = true,
    -- disable = {"python"},
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
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grn",
      },
    },
  },
  rainbow = {
    enable = true,
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
EOF
" autocmd FileType c,cpp,java,py setlocal foldmethod=expr


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
" let g:vista_cursor_delay = 0


" let g:vista_sidebar_width = 60
let g:vista_echo_cursor = 0
" let g:vista_echo_cursor_strategy = 'scroll'
let g:vista_default_executive = 'coc'
let g:vista_executive_for = {
  \ 'cpp': 'nvim_lsp',
  \ 'python': 'nvim_lsp',
\ }
nnoremap <silent> <space>k :Vista!!<cr>kj


    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

" ---------------------------------------------------------------------- Goyo
function! s:goyo_enter()
  Limelight
  silent! let &guifont = substitute(
     \ &guifont,
     \ ':h\zs\d\+',
     \ '\=eval(submatch(0)+5)',
     \ '')
endfunction

function! s:goyo_leave()
  Limelight!
  silent! let &guifont = substitute(
     \ &guifont,
     \ ':h\zs\d\+',
     \ '\=eval(submatch(0)-5)',
     \ '')
endfunction


" Limelight
augroup GOYO
    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup END

nmap <silent> <leader>- :Limelight!!<cr>

" ----------------------------------------------------------------------

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


" let g:webdevicons_enable_nerdtree           = 1
"" let g:webdevicons_enable_airline_tabline    = 1
" let g:webdevicons_enable_airline_statusline = 1
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

" nnoremap <silent> <leader>bb :BufferPick<cr>

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
    " let g:airline#extensions#branch#enabled = 0
    " let g:airline#extensions#hunks#enabled  = 0
    " let g:airline_section_y                 = ''
    " let g:airline_section_z                 = ''
    " let g:airline_section_y = airline#section#create([])
    " let g:airline_skip_empty_sections       = 1

" let g:airline#extensions#default#layout = [ [ 'a', 'c' ], [ 'x', 'error', 'warning' ] ]
" " let g:airline_statusline_ontop = 1
" " autocmd BufEnter <buffer> laststatus=0 noshowmode noruler
" " augroup END

"neovide
if has('termguicolors')
  set termguicolors
endif
" set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_cursor = 'auto'
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_visual = 'grey background'
let g:gruvbox_material_menu_selection_background = 'grey'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_diagnostic_text_highlight = 0
let g:gruvbox_material_diagnostic_line_highlight = 0
let g:gruvbox_material_current_word = 'grey background'
let g:gruvbox_material_statusline_style = 'default'
" let g:gruvbox_material_better_performance = 0
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_palette = {
      \ 'bg0':              ['#1d2021',   '234'],
      \ 'bg1':              ['#262727',   '235'],
      \ 'bg2':              ['#0f1112',   '235'],
      \ 'bg3':              ['#3c3836',   '237'],
      \ 'bg4':              ['#3c3836',   '237'],
      \ 'bg5':              ['#504945',   '239'],
      \ 'bg_statusline1':   ['#0f1112',   '235'],
      \ 'bg_statusline2':   ['#32302f',   '235'],
      \ 'bg_statusline3':   ['#504945',   '239'],
      \ 'bg_diff_green':    ['#32361a',   '22'],
      \ 'bg_visual_green':  ['#333e34',   '22'],
      \ 'bg_diff_red':      ['#3c1f1e',   '52'],
      \ 'bg_visual_red':    ['#442e2d',   '52'],
      \ 'bg_diff_blue':     ['#0d3138',   '17'],
      \ 'bg_visual_blue':   ['#2e3b3b',   '17'],
      \ 'bg_visual_yellow': ['#473c29',   '94'],
      \ 'bg_current_word':  ['#32302f',   '236'],
      \ 'fg0':              ['#d4be98',   '223'],
      \ 'fg1':              ['#ddc7a1',   '223'],
      \ 'red':              ['#ea6962',   '167'],
      \ 'orange':           ['#e78a4e',   '208'],
      \ 'yellow':           ['#d8a657',   '214'],
      \ 'green':            ['#a9b665',   '142'],
      \ 'aqua':             ['#89b482',   '108'],
      \ 'blue':             ['#7daea3',   '109'],
      \ 'purple':           ['#d3869b',   '175'],
      \ 'bg_red':           ['#ea6962',   '167'],
      \ 'bg_green':         ['#a9b665',   '142'],
      \ 'bg_yellow':        ['#d8a657',   '214'],
      \ 'grey0':            ['#7c6f64',   '243'],
      \ 'grey1':            ['#928374',   '245'],
      \ 'grey2':            ['#a89984',   '246'],
      \ 'none':             ['NONE',      'NONE']
      \ }
" let g:gruvbox_contrast_dark = "low"
" colorscheme gruvbox-material
" let g:airline_theme='gruvbox_material'
" colorscheme gruvbox-material
" let g:airline_theme='gruvbox_material'
" let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_skip_empty_sections = 1
" AirlineRefresh
function! FullscreenToggleNeovide()
    let g:neovide_fullscreen = 1 - g:neovide_fullscreen
    " if g:neovide_fullscreen
    "     let g:neovide_fullscreen = 0
    " else
    "     let g:neovide_fullscreen = 1
    " endif
endfunction
nnoremap <silent> <space>ff :call FullscreenToggleNeovide()<cr>
" nnoremap <silent> <space>vk :set guifont=Iosevka:h20<cr>
" nnoremap <silent> <space>vj :set guifont=Iosevka:h16<cr>
let g:neovide_cursor_animation_length = 0.08
let g:neovide_cursor_trail_size       = 0.4
let g:neovide_cursor_vfx_mode         = "sonicboom"
let g:neovide_cursor_vfx_opacity      = 50

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
        -- prompt_prefix = '> ',
        sorting_strategy = "ascending",
        layout_strategy = "flex",
        -- generic_sorter = require'telescope.sorters'.get_fzy_sorter,
        use_less = false,
        -- set_env = { ['COLORTERM'] = 'truecolor' },
        -- file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        -- grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        -- qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    },
}
require('telescope').load_extension('fzy_native')
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



nmap <space>bp :b#<cr>



set noswapfile
set foldlevelstart=99

" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:indent_blankline_show_current_context = v:true

let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy' ]


" let g:airline#extensions#whitespace#enabled = 0

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

function! ChangeFolding()
	if &l:foldmethod !=? 'diff'
		setlocal foldmethod=indent
	endif
endfunction

augroup folding
        autocmd!
        autocmd BufReadPost,BufNewFile,WinEnter *.py,*.lua call ChangeFolding()
augroup end

" let g:airline_highlighting_cache = 1

" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1

" let g:airline_disable_statusline = 1

" set colorcolumn=81
" let &colorcolumn=join(range(81,999),",")

" ----------------------------------------------------- colorcolumn
" highlight ColorColumn guibg=#440000
" call matchadd('ColorColumn', '\%81v', 100)

let g:column_namespace = nvim_create_namespace('column_test')
function! ColumnCreateForBuffer()
    let l:numlines = line('$')
    let l:linenr = getcurpos()[1]
    let l:i = 0
    let l:view = winsaveview()
    " echo l:view['topline']
    call nvim_buf_clear_namespace(0, g:column_namespace, 0, -1)
    while i <= numlines
        let l:x = i
        " let x = linenr
        let l:length = strwidth(getline(x))

        if x > 1
            if 79 - length >= 0
                call nvim_buf_set_virtual_text(
                            \ 0,
                            \ g:column_namespace,
                            \ x - 1,
                            \ [[repeat(' ', 79 - length) . "┊", "Whitespace"]], {})
            endif
        endif
        let l:i += 1
    endwhile
endfunction

function! ColumnDelete()
    call nvim_buf_clear_namespace(0, g:column_namespace, 0, -1)
endfunction
" │


function! ColumnRefreshWindow()
    let l:numlines = line('$')
    let l:linenr = getcurpos()[1]
    let l:view = winsaveview()
    let l:current_buffer = 0
    let l:window_height = winheight(l:current_buffer)
    let l:window_topline = l:view['topline']
    " echo l:view['topline']
    call ColumnDelete()

    let l:i = l:window_topline
    while i <= l:window_topline + l:window_height
        let l:x = i
        let l:length = strwidth(getline(x))

        if 79 - l:length >= 0
            call nvim_buf_set_virtual_text(
                        \ 0,
                        \ g:column_namespace,
                        \ l:i - 1,
                        \ [[repeat(' ', 79 - length) . "┊", "Whitespace"]], {})
        endif
        let l:i += 1
    endwhile
endfunction

function! TestA()
    let l:linenr = getcurpos()[1]
    let l:x = linenr
    let l:length = strwidth(getline(x))

    if 79 - length >= 0
        call nvim_buf_set_virtual_text(0, g:column_namespace, x - 1, [[repeat(' ', 79 - length) . "┊", "Whitespace"]], {})
    endif
endfunction
nnoremap <silent> <space>xc :call ColumnRefreshWindow()<cr>
nnoremap <silent> <space>xd :call ColumnDelete()<cr>

augroup column
    autocmd!
    " autocmd BufEnter,BufWinEnter * call ColumnCreateForBuffer()
    " autocmd FileChangedShellPost,TextChanged,TextChangedI,WinScrolled,BufWinEnter,Filetype * call ColumnRefreshWindow()
    " autocmd TextChanged,TextChangedI,InsertEnter * call ColumnRefreshWindow()
augroup end


let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ ]
      " \ { 'type': 'files',     'header': ['   MRU']            },
      " \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      " \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      " \ { 'type': 'commands',  'header': ['   Commands']       },
let g:startify_fortune_use_unicode = 1
let g:startify_session_sort = 1

augroup DISABLE_DIFF
  autocmd!
  autocmd DiffUpdated * let b:coc_enabled=0
  autocmd DiffUpdated * setlocal nonumber norelativenumber
  autocmd DiffUpdated * setlocal signcolumn=no
augroup END

function! SaveAllWindowsInTab()
	let l:start_window = winnr()
	silent windo update
	silent execute l:start_window.'wincmd w'
endfunction

function! FugitiveDiff()
	call SaveAllWindowsInTab()
	silent wincmd o
	vsplit
  normal dv
	wincmd w
	wincmd R
  vertical resize 40
  setlocal winfixwidth
  wincmd w
	setlocal foldmethod=diff
  wincmd =
  diffupdate
	update
  wincmd w
	setlocal foldmethod=diff
	update
  windo setlocal winfixwidth
  wincmd W
  normal gg
endfunction

augroup FUGITIVE_MAP
  autocmd!
	autocmd FileType fugitive setlocal nonumber norelativenumber
  autocmd FileType fugitive map <buffer><silent> dd :call FugitiveDiff()<cr>
	autocmd FileType fugitive map <buffer><silent> q gq
augroup END

if exists('g:started_by_firenvim')
	set noshowmode
	set noruler
	set noshowcmd
	set laststatus=0
	set showtabline=0
	set nonumber norelativenumber
	set guifont=Iosevka:h10
	let g:startify_disable_at_vimenter=1
	let g:firenvim_config = { 
			\ 'globalSettings': {
					\ 'alt': 'all',
			\  },
			\ 'localSettings': {
					\ '.*': {
							\ 'cmdline': 'neovim',
							\ 'content': 'text',
							\ 'priority': 0,
							\ 'selector': 'textarea',
							\ 'takeover': 'never',
					\ },
			\ }
	\ }
	let fc = g:firenvim_config['localSettings']
	" let fc['https://todoist.com'] = { 'takeover': 'never', 'priority': 1 }
	" finish
endif

augroup NVIM_TREE
	autocmd!
	autocmd BufEnter NvimTree VimadeWinDisable
	autocmd BufEnter NvimTree nnoremap <buffer><silent> <tab> :call TreeGetOut()<cr>
augroup END

function! TreeGetOut()
	wincmd w
endfunction

highlight link FloatermBorder TelescopeBorder
let g:floaterm_title=''
nnoremap <silent> <space>tt :FloatermToggle<cr>
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_autoinsert=0

" Manage coc
let s:coc_blacklist = ['cpp', 'c', 'python']
function! s:disable_coc_for_type()
	if index(s:coc_blacklist, &filetype) != -1
		silent! CocDisable
	else
		silent! CocEnable
	endif
endfunction
augroup COC_DISABLE
	autocmd!
	autocmd BufNew,BufEnter * call s:disable_coc_for_type()
augroup END
