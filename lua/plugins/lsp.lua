return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      setup = {
        eslint = function()
          LazyVim.format.register(LazyVim.lsp.formatter({
            name = "eslint: lsp",
            filter = "eslint",
            primary = true,
            priority = 500,
          }))
        end,
      },
    },
  },
}
