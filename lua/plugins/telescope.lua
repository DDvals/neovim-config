return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {desc = "Telescope find files"})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc = "Telescope live grep"})
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, {desc = "Telescope grep string"})
			vim.keymap.set("n", "<leader>lb", builtin.buffers, {desc = "Telescope grep buffers"})
			vim.keymap.set("n", "<leader>lr", builtin.lsp_references, {desc = "Telescope LSP preference"})
			vim.keymap.set("n", "<leader>ts", builtin.treesitter, {desc = "Telescope treesitter"})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
