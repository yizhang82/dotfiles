-- @lint-ignore-every LUA_LUAJIT

-- Keybinds
vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  [[<cmd>Telescope myles<CR>]],
  { noremap = true, silent = true }
)

-- Local LSP Configs
-- This imports ~/.config/nvim/lua/lsp.lua or ~/.config/nvim/lua/lsp/init.lua.
local lsp_util = require("lsp")
-- This imports `lua/lspconfig/init.lua` from the nvim-lspconfig plugin.
local nvim_lsp = require("lspconfig")

-- null-ls configs
-- This imports `lua/null-ls/init.lua` from the null-ls plugin.
local null_ls = require("null-ls")
-- Register allows you to add more null-ls sources after having already called
-- null_ls.setup().
null_ls.register({
})

-- Treesitter configs
require("nvim-treesitter.install").prefer_git = true
