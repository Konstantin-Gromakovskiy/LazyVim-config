return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = { eslint = {} },
      setup = {
        eslint = function()
          Snacks.util.lsp.on(function(some, client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            else
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
