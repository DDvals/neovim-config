return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "clangd",
          "jsonls",
          "terraformls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities,
        filetypes = { "c", "h", "cpp" }
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
        filetypes = { "json", "jsonc" },
      })
      lspconfig.terraformls.setup({
        capabilities = capabilities
      })
	  
	  vim.diagnostic.config({
	    virtual_text = {
		  spacing = 4,
		  prefix = "●",
	    },
	    signs = true,
	    underline = true,
	    update_in_insert = false,
	    severity_sort = true,
	  })	
	  
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = "Popup hover"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "Go to definition"})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {desc = "LSP Code Action"})
	  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {desc = "Rename"})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {desc = "Go to references"})
    end
  }
}
