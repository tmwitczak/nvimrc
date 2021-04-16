require('vimp')
local vim, vimp = vim, vimp

local configPath = vim.api.nvim_exec(':echo stdpath("config")', true)

local function unload_lua_namespace(prefix)
  local prefix_with_dot = prefix .. '.'
  for key, _ in pairs(package.loaded) do
    if key == prefix or key:sub(1, #prefix_with_dot) == prefix_with_dot then
      package.loaded[key] = nil
    end
  end
end

-- Leader
vim.g.mapleader = ' '

-- Configuration
vimp.nnoremap({'silent'}, '<leader>vv', function()
  vim.cmd('tabnew')
  vim.cmd('edit '..configPath..'/lua/main.lua')
  vim.cmd('vsplit')
  vim.cmd('edit '..configPath..'/init.vim')
end)
vimp.nnoremap({'silent'}, '<leader>vs', function ()
  vimp.unmap_all()
  -- TODO: Make reloading recursive
  for _, module in ipairs({'main', 'mappings', 'statusline', 'lsp'}) do
    require("plenary.reload").reload_module(module, true)
  end
  vim.cmd('source '..configPath..'/init.vim')
end)

-- Git
vimp.nnoremap({'silent'}, '<leader>gd', function ()
	vim.cmd('Gvdiffsplit')
	vim.cmd('diffupdate')
end)
vimp.nmap({'silent'}, '<leader>gs', ':tab G<cr>gg<c-n>')
vimp.nnoremap('<leader>dp', ':.diffput<cr>')
vimp.nnoremap('<leader>dg', ':.diffget<cr>')
vimp.xnoremap('<leader>dp', ':diffput<cr>')
vimp.xnoremap('<leader>dg', ':diffget<cr>')
vimp.nnoremap({'silent'}, '<leader>gg', ':GitGutterLineHighlightsToggle<cr>')
vimp.nnoremap({'silent'}, '<leader>gp', ':GitGutterPreviewHunk<cr>')

-- Maximizer
vimp.nnoremap({'silent'}, '<leader>mm', ':MaximizerToggle<cr>')

-- Hop
local hop = require'hop'
vimp.bind('nx', {'silent'}, 's', function ()
  hop.hint_char1()
end)

-- Completion
vimp.inoremap({'silent', 'expr'}, '<C-Space>', 'compe#complete()')
vimp.inoremap({'silent', 'expr'}, '<CR>', 'compe#confirm("<CR>")')
vimp.inoremap({'silent', 'expr'}, '<C-e>', 'compe#close("<C-e>")')
vimp.inoremap({'silent', 'expr'}, '<C-f>', 'compe#scroll({ "delta": +4 })')
vimp.inoremap({'silent', 'expr'}, '<C-d>', 'compe#scroll({ "delta": -4 })')

-- Startify
vimp.nnoremap({'silent'}, '<leader>p', function ()
  vim.cmd('Startify')
end)

-- Tree
vimp.nnoremap({'silent'}, '`', function ()
  vim.cmd('NvimTreeToggle')
end)

-- Telescope
local t = require('telescope')
local tb = require('telescope.builtin')

vimp.nnoremap({'silent'}, '<leader>lf', function ()
  tb.find_files()
end)

vimp.nnoremap({'silent'}, '<leader>lg', function ()
  tb.git_files()
end)

vimp.nnoremap({'silent'}, '<leader>lb', function ()
  tb.buffers {
    show_all_buffers = true
  }
end)

vimp.nnoremap({'silent'}, '<leader>ll', function ()
  tb.current_buffer_fuzzy_find()
end)

vimp.nnoremap({'silent'}, '<leader>lc', function ()
  tb.commands()
end)

vimp.nnoremap({'silent'}, '<leader>ls', function ()
  tb.lsp_document_symbols()
end)

-- vimp.nnoremap({'silent'}, '<leader>lr', function ()
--   tb.lsp_references()
-- end)

vimp.nnoremap({'silent'}, '<leader>a', function ()
  tb.lsp_code_actions()
end)

vimp.nnoremap({'silent'}, '<leader>ld', function ()
	t.extensions.vimspector.configurations()
end)

-- vimp.nnoremap({'silent'}, '<leader>lr', function ()
--   tb.grep_string({
-- 		search = vim.fn.input('Grep: ')
-- 	})
-- end)





-- nnoremap <silent> <leader>lf :Files<cr>
-- nnoremap <silent> <leader>lg :GFiles<cr>
-- nnoremap <silent> <leader>lb :Buffers<cr>
vimp.nnoremap({'silent'}, '<leader>lr', ':Rg<cr>')
-- vimp.nnoremap({'silent'}, '<leader>ll', ':BLines<cr>')
-- vimp.nnoremap({'silent'}, '<leader>lc', ':Commits<cr>')
vimp.nnoremap({'silent'}, '<leader>lm', ':Marks<cr>')
vimp.nnoremap({'silent'}, '<leader>lw', ':Windows<cr>')
vimp.nnoremap({'silent'}, '<leader>lhc', ':History:<cr>')
vimp.nnoremap({'silent'}, '<leader>lhs', ':History/<cr>')

-- Windows and splits
vimp.nnoremap({'silent'}, '<leader>wsj', ':split<cr><c-w>j')
vimp.nnoremap({'silent'}, '<leader>wsk', ':split<cr>')
vimp.nnoremap({'silent'}, '<leader>wsh', ':vsplit<cr><c-w>h')
vimp.nnoremap({'silent'}, '<leader>wsl', ':vsplit<cr>')

-- Search
vimp.rbind('nvo', {'silent'}, '*',  '<Plug>(asterisk-z*)')
vimp.rbind('nvo', {'silent'}, '#',  '<Plug>(asterisk-z#)')
vimp.rbind('nvo', {'silent'}, 'g*', '<Plug>(asterisk-gz*)')
vimp.rbind('nvo', {'silent'}, 'g#', '<Plug>(asterisk-gz#)')

-- Movement
vimp.bind('nvo', {'silent'}, 'j', 'gj')
vimp.bind('nvo', {'silent'}, 'k', 'gk')
