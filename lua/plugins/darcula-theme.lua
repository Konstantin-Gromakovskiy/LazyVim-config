return {
  {
    "xiantang/darcula-dark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local function apply_darcula_highlights()
        local comment = "#808080"
        local documentation = "#629755"
        local todo = "#FFC66D"
        local note = "#6897BB"
        local bg = "#2B2B2B"

        vim.api.nvim_set_hl(0, "Comment", { fg = comment })
        vim.api.nvim_set_hl(0, "@comment", { fg = comment })

        for _, group in ipairs({
          "@comment.documentation",
          "@comment.documentation.javascript",
          "@comment.documentation.typescript",
          "@comment.documentation.tsx",
        }) do
          vim.api.nvim_set_hl(0, group, { fg = documentation, italic = true })
        end

        vim.api.nvim_set_hl(0, "Todo", { fg = todo, bold = true })

        vim.api.nvim_set_hl(0, "TodoFgTODO", { fg = todo, bold = true })
        vim.api.nvim_set_hl(0, "TodoBgTODO", { fg = bg, bg = todo, bold = true })
        vim.api.nvim_set_hl(0, "TodoSignTODO", { fg = todo })

        vim.api.nvim_set_hl(0, "TodoFgNOTE", { fg = note, bold = true })
        vim.api.nvim_set_hl(0, "TodoBgNOTE", { fg = bg, bg = note, bold = true })
        vim.api.nvim_set_hl(0, "TodoSignNOTE", { fg = note })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "darcula-dark",
        callback = apply_darcula_highlights,
      })

      if vim.g.colors_name == "darcula-dark" then
        apply_darcula_highlights()
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darcula-dark",
    },
  },
}
