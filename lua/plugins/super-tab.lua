return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = {
        LazyVim.cmp.map({ "ai_nes", "ai_accept" }),
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          end
          return cmp.select_and_accept()
        end,
        "snippet_forward",
        "fallback",
      },
    },
  },
}
