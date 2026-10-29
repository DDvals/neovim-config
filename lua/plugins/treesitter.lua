return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup()
		require("nvim-treesitter").install({
			"lua",
			"javascript",
			"json",
			"yaml",
			"markdown",
			"markdown_inline",
		})

		vim.treesitter.language.register("json", "jsonc")

		local treesitter_group = vim.api.nvim_create_augroup("NvimTreesitter", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "javascript", "json", "jsonc", "yaml", "markdown" },
			group = treesitter_group,
			callback = function(event)
				vim.treesitter.start(event.buf)
				vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
