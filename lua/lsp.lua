local vim = vim
-- local function setup_servers()
--   require'lspinstall'.setup()
--   local servers = require'lspinstall'.installed_servers()
--   for _, server in pairs(servers) do
--     require'lspconfig'[server].setup{}
--   end
-- end
--
-- setup_servers()
--
-- -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require'lspinstall'.post_install_hook = function ()
--   setup_servers() -- reload installed servers
--   vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end
--
-- lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
-- lua require'lspconfig'.clangd.setup{}
-- nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
-- nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
--
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- require'completion'.on_attach()
  require'compe'.setup({
    source = {
      path = true;
      buffer = true;
      tags = false;
      spell = true;
      calc = false;
      omni = false;
      emoji = true;
      nvim_lsp = true;
      nvim_lua = true;
      vim_lsp = false;
      vim_lsc = false;
      vsnip = true;
      ultisnips = false;
      snippets_nvim = false;
      nvim_treesitter = false;
    };
  }, 0)
  

  -- Mappings.
  local opts = { noremap=true, silent=true }
  -- buf_set_keymap('n', '<space>a', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>bf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>bf", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red gui=bold guibg=#504945
      hi LspReferenceText cterm=bold ctermbg=red gui=bold guibg=#504945
      hi LspReferenceWrite cterm=bold ctermbg=red gui=bold guibg=#504945
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = { "clangd", "pyright" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

vim.api.nvim_exec([[
    augroup lsp
        autocmd!
        autocmd BufWritePre *.cpp,*.c,*.hpp,*.h lua vim.lsp.buf.formatting()
        autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
        nmap <silent> <space>bs :ClangdSwitchSourceHeader<cr>
    augroup end
]], false)

-- vim.o.completeopt='menuone,noinsert,noselect'
vim.o.completeopt='menuone,noselect'
-- vim.g.completion_matching_strategy_list = "['exact', 'substring', 'fuzzy', 'all']"
-- vim.g.completion_abbr_length = 30
-- vim.g.completion_menu_length = 30
-- vim.g.completion_sorting = "length"



-- commented options are defaults
require('lspkind').init({})

vim.o.pumheight = 15

-- Disable completion for python
vim.cmd('autocmd FileType python let b:coc_suggest_disable = 1')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = false,
  }
)
