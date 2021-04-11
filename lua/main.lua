local vim = vim
local o, g, cmd = vim.o, vim.g, vim.cmd

--if has('termguicolors')
  --set termguicolors
--endif

o.lazyredraw = true
o.termguicolors = true


-- Spelling
o.spelllang = 'en,pl'

-- Display
o.cursorline = true
o.showcmd    = true

-- Macros
o.showmode = false

-- Searching
o.inccommand = 'nosplit'
o.incsearch  = true
o.smartcase  = true
o.ignorecase = true

-- Line numbers
o.number         = true
o.relativenumber = true

o.linebreak = true -- ?

-- Clipboard
o.clipboard = 'unnamed'


o.guifont = 'Iosevka:h18'

o.background = 'dark'

-- Syntax
cmd('syntax enable')

g.gruvbox_material_background = 'hard'
g.gruvbox_material_disable_italic_comment = 0
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_cursor = 'auto'
g.gruvbox_material_transparent_background = 0
g.gruvbox_material_visual = 'grey background'
g.gruvbox_material_menu_selection_background = 'grey'
g.gruvbox_material_sign_column_background = 'none'
g.gruvbox_material_diagnostic_text_highlight = 0
g.gruvbox_material_diagnostic_line_highlight = 0
g.gruvbox_material_current_word = 'grey background'
g.gruvbox_material_statusline_style = 'default'
g.gruvbox_material_better_performance = 1
g.gruvbox_material_palette = 'material'
--g.gruvbox_material_palette = {
--       'bg0':              ['#1d2021',   '234'],
--       'bg1':              ['#262727',   '235'],
--       'bg2':              ['#0f1112',   '235'],
--       'bg3':              ['#3c3836',   '237'],
--       'bg4':              ['#3c3836',   '237'],
--       'bg5':              ['#504945',   '239'],
--       'bg_statusline1':   ['#0f1112',   '235'],
--       'bg_statusline2':   ['#32302f',   '235'],
--       'bg_statusline3':   ['#504945',   '239'],
--       'bg_diff_green':    ['#32361a',   '22'],
--       'bg_visual_green':  ['#333e34',   '22'],
--       'bg_diff_red':      ['#3c1f1e',   '52'],
--       'bg_visual_red':    ['#442e2d',   '52'],
--       'bg_diff_blue':     ['#0d3138',   '17'],
--       'bg_visual_blue':   ['#2e3b3b',   '17'],
--       'bg_visual_yellow': ['#473c29',   '94'],
--       'bg_current_word':  ['#32302f',   '236'],
--       'fg0':              ['#d4be98',   '223'],
--       'fg1':              ['#ddc7a1',   '223'],
--       'red':              ['#ea6962',   '167'],
--       'orange':           ['#e78a4e',   '208'],
--       'yellow':           ['#d8a657',   '214'],
--       'green':            ['#a9b665',   '142'],
--       'aqua':             ['#89b482',   '108'],
--       'blue':             ['#7daea3',   '109'],
--       'purple':           ['#d3869b',   '175'],
--       'bg_red':           ['#ea6962',   '167'],
--       'bg_green':         ['#a9b665',   '142'],
--       'bg_yellow':        ['#d8a657',   '214'],
--       'grey0':            ['#7c6f64',   '243'],
--       'grey1':            ['#928374',   '245'],
--       'grey2':            ['#a89984',   '246'],
--       'none':             ['NONE',      'NONE']
--       }
--" let g:gruvbox_contrast_dark = "low"

-- cmd('colorscheme gruvbox-material')
-- g.airline_theme='gruvbox_material'
cmd('colorscheme gruvbox-material')
-- g.airline_theme='edge'

o.termguicolors = true
require"bufferline".setup{
    options = {
        view = "multiwindow",
        -- numbers = "ordinal",
        -- number_style = "superscript" | "",
        -- mappings = true | false,
        -- buffer_close_icon= "",
        -- modified_icon = "●",
        -- close_icon = "",
        -- left_trunc_marker = "",
        -- right_trunc_marker = "",
        -- max_name_length = 18,
        -- max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        -- tab_size = 18,
        -- diagnostics = false | "nlsp"
        -- diagnostics_indicator = function(count, level)
        -- return "("..count..")"
        -- end
        show_buffer_close_icons = false,
        -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- -- can also be a table containing 2 custom separators
        -- -- [focused and unfocused]. eg: { "|", "|" }
        -- separator_style = "thick",
        -- enforce_regular_tabs = false,
        -- always_show_bufferline = true | false,
        sort_by = "directory",
        -- sort_by = "extension" | "relative_directory" | "directory" | function(buffer_a, buffer_b)
        -- -- add custom logic
        -- return buffer_a.modified > buffer_b.modified
        -- end
    }
}

require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across sessions
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

o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldmethod = 'expr'

-- "let g:startify_custom_header = 'startify#center(startify#fortune#cowsay())'
g.startify_update_oldfiles     = 1
g.startify_session_autoload    = 1
g.startify_relative_path       = 1
g.startify_session_persistence = 1
g.startify_change_to_dir       = 1
g.startify_change_to_vcs_root  = 1

require('mappings')

-- cmd('highlight StatusLine guibg=#0f1112')
-- cmd('highlight StatusLineNC guibg=#0f1112')
-- cmd('highlight! StatusLineNC gui=underline guibg=NONE guifg=anycolor')
require('statusline')

require'colorizer'.setup()


-- Legacy: easymotion
-- map s <Plug>(easymotion-prefix)
-- let g:EasyMotion_do_mapping = 1
-- let g:EasyMotion_use_upper = 0
-- " let g:EasyMotion_keys = "ls;ahg'urieowpqyt[]vcxbnm,.\/094jfkd"
-- " let g:EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
-- let g:EasyMotion_keys = "aoeidtn',.pyfgcrl;qjkxbmuhs"
-- "nmap , <Plug>(easymotion-overwin-f)
-- " map  <space>j <Plug>(easymotion-bd-f)
-- " map <silent> s <Plug>(easymotion-overwin-f)
-- """nmap <silent> s <Plug>(easymotion-bd-f2)
-- """xmap <silent> s <Plug>(easymotion-bd-f)
-- """omap <silent> s <Plug>(easymotion-bd-f)
-- " nmap <space>j <Plug>(easymotion-overwin-f)
-- " omap <space>j <Plug>(easymotion-tn)
-- let g:EasyMotion_smartcase = 1

-- Hop
local hop = require'hop'
hop.setup { keys = 'aoeidtnpyfgcrlqjkxbmuh' }

require('lsp')

require('numb').setup()

o.mouse = 'a'

-- Tree
g.nvim_tree_width = 40
g.nvim_tree_indent_markers = 1
g.nvim_tree_add_trailing = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_follow = 1
g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
      unstaged = "✗",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
      deleted = ""
      },
    folder = {
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
      symlink_open = "",
      }
    }
vim.cmd([[autocmd FileType NvimTree VimadeWinDisable]])

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
	  -- ["<CR>"] = ":YourVimFunction()<cr>",
	  -- ["u"] = ":lua require'some_module'.some_function()<cr>",
  -- default mappings
  ["<CR>"]           = tree_cb("edit"),
  ["o"]              = tree_cb("edit"),
  ["<2-LeftMouse>"]  = tree_cb("edit"),
  ["<2-RightMouse>"] = tree_cb("cd"),
  ["<C-]>"]          = tree_cb("cd"),
  ["<C-v>"]          = tree_cb("vsplit"),
  ["<C-x>"]          = tree_cb("split"),
  ["<C-t>"]          = tree_cb("tabnew"),
  ["<"]              = tree_cb("prev_sibling"),
  [">"]              = tree_cb("next_sibling"),
  ["<BS>"]           = tree_cb("close_node"),
  ["<S-CR>"]         = tree_cb("close_node"),
  ["<Tab>"]          = "",
  ["I"]              = tree_cb("toggle_ignored"),
  ["H"]              = tree_cb("toggle_dotfiles"),
  ["R"]              = tree_cb("refresh"),
  ["a"]              = tree_cb("create"),
  ["d"]              = "",
  ["r"]              = "",
  ["<C-r>"]          = "",
  ["x"]              = "",
  ["c"]              = "",
  ["p"]              = "",
  ["[c"]             = tree_cb("prev_git_item"),
  ["]c"]             = tree_cb("next_git_item"),
  ["-"]              = tree_cb("dir_up"),
  ["q"]              = tree_cb("close"),
}

vim.cmd('let g:asterisk#keeppos = 1')
