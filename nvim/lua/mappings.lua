-- @lint-ignore-every LUA_LUAJIT

local cmd = vim.cmd

-- avoid mistyping write/quit
cmd("command WQ wq")
cmd("command Wq wq")
cmd("command W w")
cmd("command Q q")

-- set leader to <Space>
vim.api.nvim_set_keymap(
  "",
  "<Space>",
  "<Nop>",
  { noremap = true, silent = true }
)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
