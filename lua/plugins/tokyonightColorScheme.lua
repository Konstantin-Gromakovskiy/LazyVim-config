-- переопределение цветов для некоторых элементов редактора
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl)
        hl.LspInlayHint = { fg = "#AAAAAA", bg = "#2B2B2B" } -- для виртуального текста, например для вывода типов
        hl.CursorLine = { bg = "#16171f" } -- линия курсора
        hl.BlinkCmpGhostText = { fg = "#5D6791" } -- для дополнений в коде
        hl.DiagnosticUnnecessary = { fg = "#646E9C" } -- неиспользуемые переменные
      end,
    },
  },
}
