return {
  "yetone/avante.nvim",
  opts = {
    provider = "codex",
    acp_providers = {
      codex = {
        command = "npx",
        args = { "-y", "-g", "@zed-industries/codex-acp" },
        env = {
          NODE_NO_WARNINGS = "1",
          HOME = os.getenv("HOME"),
          PATH = os.getenv("PATH"),
          OPENAI_API_KEY = os.getenv("OPENAI_API_KEY"),
        },
      },
    },
    windows = {
      sidebar_header = {
        include_model = false,
      },
    },
  },
}
