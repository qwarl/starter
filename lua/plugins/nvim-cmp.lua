return {
  "nvim-cmp",
  dependencies = {
    {
      "garymjr/nvim-snippets",
      opts = {
        friendly_snippets = true,
      },
      dependencies = { "rafamadriz/friendly-snippets" },
    },
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.snippet = {
      expand = function(item)
        return LazyVim.cmp.expand(item.body)
      end,
    }
    if LazyVim.has("nvim-snippets") then
      table.insert(opts.sources, { name = "snippets" })
    end

    mapping = cmp.mapping.preset.insert({
      ["<C-k>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
      ["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
      ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll docs up
      ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll docs down
      ["<C-Space>"] = cmp.mapping.complete(), -- Show completion suggestions
      ["<C-e>"] = cmp.mapping.abort(), -- Close completion window
      ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Confirm selection without auto-selecting first item
      ["<C-y>"] = cmp.mapping.confirm({ select = true }), -- Confirm with selection
      ["<S-CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item with shift + enter
      ["<C-CR>"] = function(fallback)
        cmp.abort() -- Abort completion if needed and fallback to default action
        fallback()
      end,
      ["Tab"] = function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "Tab"
      end,
    })
  end,
  main = "lazyvim.util.cmp",
}
