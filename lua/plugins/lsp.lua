return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        cssls = {
          filetypes = { "css", "less", "vue" },
          settings = {
            css = { validate = true },
            -- SCSS проверяет somesass_ls
            scss = { validate = false },
            less = { validate = true },
          },
        },
        somesass_ls = {
          filetypes = { "scss", "sass", "vue" },
          settings = {
            somesass = {
              workspace = {
                -- алиас Nuxt `~/` -> корень проекта
                importAliases = { ["~/"] = "/" },
              },
              scss = {
                completion = {
                  -- подсказки только из модулей, подключённых через @use
                  suggestFromUseOnly = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
