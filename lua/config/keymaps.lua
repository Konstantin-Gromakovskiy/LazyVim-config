-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local undo = "\27[122;9u"
local redo = "\27[122;10u"

vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

vim.keymap.set("n", undo, "u", {
  desc = "Undo",
})

vim.keymap.set("i", undo, "<C-o>u", {
  desc = "Undo",
})

vim.keymap.set("n", redo, "<C-r>", {
  desc = "Redo",
})

vim.keymap.set("i", redo, "<C-o><C-r>", {
  desc = "Redo",
})
