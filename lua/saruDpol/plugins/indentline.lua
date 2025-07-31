return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = {
				char = "▏",
			},
			scope = {
				enabled = true,
				show_start = false,
				show_end = false,
				show_exact_scope = false,
				injected_languages = true,
			},
		})

		-- Set indent color to gold
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#d12c28" }) -- hex code for gold
	end,
}
