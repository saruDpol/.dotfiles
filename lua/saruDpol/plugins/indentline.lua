return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		-- Define custom scope highlight groups
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "ScopeRed", { fg = "#cb4a15", bold = true })
			vim.api.nvim_set_hl(0, "ScopePurple", { fg = "#6c71c4", italic = true })
			vim.api.nvim_set_hl(0, "ScopeGreen", { fg = "#859901", bold = true })
			vim.api.nvim_set_hl(0, "ScopeGold", { fg = "#ffc102", italic = true })
		end)
		require("ibl").setup({
			indent = {
				char = "▏",
			},
			scope = {
				enabled = true,
				highlight = {
					"ScopeRed",
					"ScopePurple",
					"ScopeGreen",
					"ScopeGold",
				},
				show_start = false,
				show_end = false,
				show_exact_scope = false,
				injected_languages = true,
			},
		})

		-- Set indent color to gold
	end,
}
