require('vimp')
local nvim, nvimp = vim, vimp

local configPath = nvim.api.nvim_exec(':echo stdpath("config")', true)

-- Leader
nvim.g.mapleader = ' '

-- Configuration
nvimp.nnoremap({'silent'}, '<leader>vv', function()
  nvim.cmd('tabnew')
  nvim.cmd('edit '..configPath..'/lua/main.lua')
  nvim.cmd('vsplit')
  nvim.cmd('edit '..configPath..'/init.vim')
end)
nvimp.nnoremap({'silent'}, '<leader>vs',
  ':source '..configPath..'/init.vim<cr>')

-- Git
nvimp.nmap({'silent'}, '<leader>gd', ':Gvdiffsplit<cr>')
nvimp.nmap({'silent'}, '<leader>gs', ':tab G<cr>gg<c-n>')

-- Maximizer
nvimp.nnoremap({'silent'}, '<leader>mm', ':MaximizerToggle<cr>')

-- Hop
local hop = require'hop'
nvimp.nnoremap({'silent'}, 's', function ()
  hop.hint_char1()
end)

