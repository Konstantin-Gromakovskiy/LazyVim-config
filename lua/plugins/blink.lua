return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      providers = {
        lsp = {
          transform_items = function(_, items)
            local kinds = require("blink.cmp.types").CompletionItemKind
            local boost = {
              [kinds.Property] = 6,
              [kinds.Field] = 6,
              [kinds.EnumMember] = 4,
            }
            for _, item in ipairs(items) do
              local b = boost[item.kind]
              if b then
                item.score_offset = (item.score_offset or 0) + b
              end
            end
            return items
          end,
        },
      },
    },
  },
}
