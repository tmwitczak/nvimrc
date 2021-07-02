local vim = vim
local o, g, cmd = vim.o, vim.g, vim.cmd

--if has('termguicolors')
  --set termguicolors
--endif

o.lazyredraw = true
o.termguicolors = true

o.colorcolumn = '1001'


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
o.number         = false
o.relativenumber = false

o.linebreak = true -- ?

-- Clipboard
o.clipboard = 'unnamed'


o.guifont = 'Iosevka:h14'

o.background = 'dark'

-- Syntax
cmd('syntax enable')

g.gruvbox_material_background = 'soft'
g.gruvbox_material_disable_italic_comment = 0
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_cursor = 'auto'
g.gruvbox_material_transparent_background = 0
g.gruvbox_material_visual = 'red background'
g.gruvbox_material_menu_selection_background = 'grey'
g.gruvbox_material_sign_column_background = 'default'
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
        -- sort_by = "directory",
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

-- require("which-key").setup{}
require('mappings')

-- cmd('highlight StatusLine guibg=#0f1112')
-- cmd('highlight StatusLineNC guibg=#0f1112')
-- cmd('highlight! StatusLineNC gui=underline guibg=NONE guifg=anycolor')
require('statusline')
-- require('feline-statusline')

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

      local tree_cb = require'nvim-tree.config'.nvim_tree_callback
      vim.g.nvim_tree_bindings = {
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
        { key = "<C-v>",                        cb = tree_cb("vsplit") },
        { key = "<C-x>",                        cb = tree_cb("split") },
        { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>",                         cb = tree_cb("close_node") },
        { key = "<S-CR>",                       cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "g?",                           cb = tree_cb("toggle_help") },
      }

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
    -- ["<CR>"] = ":YourVimFunction()<cr>",
    -- ["u"] = ":lua require'some_module'.some_function()<cr>",
  -- default mappings
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
        { key = "<C-v>",                        cb = tree_cb("vsplit") },
        { key = "<C-x>",                        cb = tree_cb("split") },
        { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>",                         cb = tree_cb("close_node") },
        { key = "<S-CR>",                       cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = "" }, --tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = "" }, --tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = "" }, --tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "g?",                           cb = tree_cb("toggle_help") },
  --["<Tab>"]          = "",
  --["d"]              = "",
  --["r"]              = "",
  --["<C-r>"]          = "",
  --["x"]              = "",
  --["c"]              = "",
  --["p"]              = "",
}

vim.cmd('let g:asterisk#keeppos = 1')

-- require('gitsigns').setup {
--   signs = {
--     add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
--     change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--     delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--     topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--     changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--   },
--   -- numhl = false,
--   -- linehl = false,
--   keymaps = {
--     -- Default keymap options
--     -- noremap = true,
--     -- buffer = true,

--     -- ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
--     -- ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

--     -- ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
--     -- ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
--     -- ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
--     -- ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
--     ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
--     -- ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',

--     -- Text objects
--     -- ['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
--     -- ['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>'
--   },
--   -- watch_index = {
--   --   interval = 1000
--   -- },
--   -- current_line_blame = false,
--   -- sign_priority = 6,
--   -- update_debounce = 100,
--   -- status_formatter = nil, -- Use default
--   -- use_decoration_api = true,
--   -- use_internal_diff = true,  -- If luajit is present
-- }


-- Telescope
local actions = require('telescope.actions')
require('telescope').setup{
	defaults = {
		mappings = {
			i={
				["<esc>"] = actions.close,
				-- ["<c-c>"] = function ()
				-- 	vim.cmd('normal <c-c>')
				-- end,
			},
		},
		layout_config = {
			prompt_position = "top",
		},
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
	-- extensions = {
	-- 	fzf = {
	-- 		override_generic_sorter = true,  -- override the generic sorter
	-- 		override_file_sorter = true,     -- override the file sorter
	-- 		case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
	-- 		-- the default case_mode is "smart_case"
	-- 	}
	-- }
}
require('telescope').load_extension('fzy_native')
-- require('telescope').load_extension('fzf')

-- setup for TrueZen.nvim
local true_zen = require("true-zen")
true_zen.setup({
	true_false_commands = false,
	cursor_by_mode = false,
	bottom = {
		hidden_laststatus = 0,
		hidden_ruler = false,
		hidden_showmode = false,
		hidden_showcmd = false,
		hidden_cmdheight = 1,

		shown_laststatus = 2,
		shown_ruler = true,
		shown_showmode = false,
		shown_showcmd = false,
		shown_cmdheight = 1
	},
	top = {
		hidden_showtabline = 0,

		shown_showtabline = 2
	},
	left = {
		hidden_number = false,
		hidden_relativenumber = false,
		hidden_signcolumn = "no",

		shown_number = false,
		shown_relativenumber = false,
		shown_signcolumn = "yes"
	},
	ataraxis = {
		ideal_writing_area_width = 0,
		just_do_it_for_me = true,
		left_padding = 40,
		right_padding = 40,
		top_padding = 0,
		bottom_padding = 0,
		custome_bg = "",
		disable_bg_configuration = false,
		disable_fillchars_configuration = false,
		force_when_plus_one_window = true,
		force_hide_statusline = true
	},
	focus = {
		margin_of_error = 5,
		focus_method = "experimental"
	},
	events = {
		before_minimalist_mode_shown = false,
		before_minimalist_mode_hidden = false,
		after_minimalist_mode_shown = false,
		after_minimalist_mode_hidden = false
	},
	integrations = {
		integration_galaxyline = true,
		integration_vim_airline = false,
		integration_vim_powerline = false,
		integration_tmux = false,
		integration_express_line = false,
		integration_gitgutter = true,
		integration_vim_signify = false,
		integration_limelight = false,
		integration_tzfocus_tzataraxis = true,
		integration_gitsigns = false
	}
})


true_zen.after_minimalist_mode_hidden = function ()
end

true_zen.before_minimalist_mode_hidden = function ()
end

true_zen.after_minimalist_mode_shown = function ()
end

true_zen.before_minimalist_mode_shown = function ()
end

require("todo-comments").setup{}
require("zen-mode").setup{}
