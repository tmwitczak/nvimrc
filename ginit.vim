" //////////////////////////////////////////////////////////////////////////// "
"GuiFont! Fira Code:h13
GuiFont! FiraCode NF:h11
"GuiFont! Fira Code iCursive S12:h11
" GuiFont! Arial:h15
" GuiFont! Source Code Pro for Powerline:h12
GuiTabline 0
GuiPopupmenu 0

" //////////////////////////////////////////////////////////////////////////// "
set termguicolors
let ayucolor = "mirage"
let g:gruvbox_contrast_dark = "hard"
set background=dark
"AirlineTheme ayu_mirage
"let g:forest_night_enable_italic = 0
"let g:forest_night_transparent_background = 0
"let g:forest_night_disable_italic_comment = 1
" let g:airline_theme='gruvbox_material'
let g:gruvbox_material_enable_italic = 1
let g:airline_theme='gruvbox_material'

" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep ='▌'
" let g:airline#extensions#tabline#right_sep = '▐'
" let g:airline#extensions#tabline#left_alt_sep = '│'
" let g:airline#extensions#tabline#right_alt_sep = '│'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_skip_empty_sections = 1
AirlineRefresh
"let g:airline_symbols.linenr = '='
"let g:airline_symbols.maxlinenr = ''

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"
nnoremap <silent> <F11> :FullscreenToggle<CR>

colorscheme gruvbox-material

nnoremap <silent> <space>vk :GuiFont! FiraCode NF:h16<cr>
nnoremap <silent> <space>vj :GuiFont! FiraCode NF:h11<cr>

