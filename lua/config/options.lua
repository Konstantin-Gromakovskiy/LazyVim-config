-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Reload files changed outside of Neovim when possible.
vim.opt.autoread = true

-- Keep Copilot as inline ghost text only, without blink.cmp menu items.
vim.g.ai_cmp = false

-- Spell checking for English and Russian; camelCase words are split in code.
vim.opt.spelllang = { "en", "ru" }
vim.opt.spelloptions:append("camel")
