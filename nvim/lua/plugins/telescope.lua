return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>pf",
        function() require("telescope.builtin").find_files() end,
        desc = "Find Plugin File",
      },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "bottom" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
    file_ignore_patterns = {
      "node_modules",
    },
  },
}
