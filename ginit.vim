" //////////////////////////////////////////////////////////////////////////// "
"GuiFont! Fira Code:h13
GuiFont! FiraCode NF:h11
"GuiFont! Fira Code iCursive S12:h11
" GuiFont! Arial:h15
" GuiFont! Source Code Pro for Powerline:h12
GuiTabline 0
GuiPopupmenu 0
GuiLinespace 3


" Gruvbox Material Theme
if has('termguicolors')
  set termguicolors
endif

set background=dark

    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_disable_italic_comment = 1
    let g:gruvbox_material_enable_bold = 0
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_cursor = 'auto'
    let g:gruvbox_material_transparent_background = 0
    let g:gruvbox_material_visual = 'grey background'
    " let g:gruvbox_material_menu_selection_background = 'green'
    let g:gruvbox_material_sign_column_background = 'none'
    let g:gruvbox_material_diagnostic_line_highlight = 1
    let g:gruvbox_material_current_word = 'grey background'
    " let g:gruvbox_material_statusline_style = 'original'
    " let g:gruvbox_material_lightline_disable_bold = 1
    let g:gruvbox_material_better_performance = 0
    let g:gruvbox_material_palette = 'material'

colorscheme gruvbox-material

" Airline
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

" //////////////////////////////////////////////////////////////////////////// "
let ayucolor = "mirage"
let g:gruvbox_contrast_dark = "hard"
"AirlineTheme ayu_mirage
"let g:forest_night_enable_italic = 0
"let g:forest_night_transparent_background = 0
"let g:forest_night_disable_italic_comment = 1
" let g:airline_theme='gruvbox_material'


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

let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"
nnoremap <silent> <F11> :FullscreenToggle<CR>
nnoremap <silent> <space>f :FullscreenToggle<CR>

colorscheme gruvbox-material

nnoremap <silent> <space>vk :GuiFont! FiraCode NF:h16<cr>
nnoremap <silent> <space>vj :GuiFont! FiraCode NF:h11<cr>

