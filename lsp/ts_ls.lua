return {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  filetypes = {
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
		},
    settings = {
        typescript = {
            indentStyle = "space",
            indentSize = 4,
        },
        javascript = {
            indentStyle = "space",
            indentSize = 4,
        },
    },
}
