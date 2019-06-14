" ////////////////////////////////////////////////////////////////////// Plugins
call plug#begin('~/.local/share/nvim/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'altercation/vim-colors-solarized'

    Plug 'nathanaelkane/vim-indent-guides'

    Plug 'tpope/vim-fugitive'

    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'

call plug#end()


" ///////////////////////////////////////////////////////////////// Key mappings
inoremap kj <Esc>

nnoremap tree :NERDTreeToggle<cr>

nnoremap <C-h> :tabprevious<cr>
nnoremap <C-l> :tabnext<cr>


" //////////////////////////////////////////////////////////// 80 character line
set colorcolumn=81


" //////////////////////////////////////////////////////////////////////////////
syntax enable
set background=dark
colorscheme solarized

"set background=dark
"set colorscheme=one
let g:airline_theme='solarized'
set termguicolors

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1




filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ts=4 sw=4 et



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd vimenter * NERDTree

" //////////////////////////////////////////////////////////////////////////////
