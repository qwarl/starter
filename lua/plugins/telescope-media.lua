-- default teelescope-media plugin use chafa to display images. it quick but not good quality.
return {
  {
    "dharmx/telescope-media.nvim",
    config = function()
      local canned = require("telescope._extensions.media.lib.canned")

      require("telescope").setup({
        extensions = {
          media = {
            backend = "ueberzug", -- Set viu as the backend for image/gif previews
            -- flags = {
            -- ueberzug = { xmove = -12, ymove = -3, warnings = true, supress_backend_warning = false, move = true },
            -- },
            on_confirm_single = canned.single.copy_path,
            on_confirm_multiple = canned.multiple.bulk_copy,
            cache_path = vim.fn.stdpath("cache") .. "/media", -- Cache path for media files
          },
        },
      })

      require("telescope").load_extension("media") -- Load the media extension
    end,
  },
}
