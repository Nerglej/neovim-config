return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      -- LSP
      {"neovim/nvim-lspconfig"},

      -- Auto-completion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"}
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
      end)

      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({})
      lspconfig.nil_ls.setup({})

      lspconfig.rust_analyzer.setup({})
      lspconfig.csharp_ls.setup({})

      -- Javascript I guess
      -- lspconfig.tsserver.setup({})
      -- lspconfig.svelte.setup({})

      -- VSCode lsp's
      lspconfig.eslint.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.jsonls.setup({})
    end
  },
}
