return {
  "folke/twilight.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default options
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>t",
      -- "<cmd>Twilight<cr>",
      mode = "n",
      desc = "Twilight",
      noremap = true,
    },
    {
      "<leader>tt",
      "<cmd>Twilight<cr>",
      mode = "n",
      desc = "Toggle Twilight",
      noremap = true,
    },
  },
}
