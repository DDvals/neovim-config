return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		require("nvim-treesitter.install").compilers = { "zig" }
		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "javascript", "json", "jsonc", "yaml", "markdown" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
