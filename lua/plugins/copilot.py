return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    config = function()
      require("CopilotChat").setup({
         model = 'claude-3.5-sonnet'
      })
      map("n", "<leader>zc", ":CopilotChat<CR>")
      map("v", "<leader>ze", ":CopilotChatExplain<CR>")
      map("v", "<leader>zr", ":CopilotChatReview<CR>")
      map("v", "<leader>zf", ":CopilotChatFix<CR>")
      map("v", "<leader>zo", ":CopilotChatOptimize<CR>")
      map("v", "<leader>zt", ":CopilotChatTests<CR>")
    end,
  },
}

