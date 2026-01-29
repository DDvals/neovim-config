return {
	"rmagatti/auto-session",
	lazy = false,
	config = function()
		require("auto-session").setup({})
	end,
	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
}
