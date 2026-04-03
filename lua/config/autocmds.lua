-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ниже идет скрипт для автоматической проверки изменений в файлах, открытых в Neovim, при возвращении фокуса на окно или при определенных событиях. Это полезно, если файлы могут быть изменены внешними программами, и вы хотите быть уверены, что видите актуальную версию.
local autoread_group = vim.api.nvim_create_augroup("user_autoread_checktime", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  group = autoread_group,
  desc = "Check if files changed outside of Neovim",
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
