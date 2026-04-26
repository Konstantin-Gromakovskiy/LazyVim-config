return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        cssls = {
          filetypes = { "css", "scss", "less", "vue" },
          settings = {
            css = { validate = true },
            scss = { validate = true },
            less = { validate = true },
          },
        },
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
