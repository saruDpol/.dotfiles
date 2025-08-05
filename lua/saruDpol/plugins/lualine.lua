-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	event = "VeryLazy",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local lualine = require("lualine")
-- 		local lazy_status = require("lazy.status")
--
-- 		lualine.setup({
-- 			options = {
-- 				theme = "solarized_dark",
-- 			},
-- 			sections = {
-- 				lualine_x = {
-- 					{
-- 						lazy_status.updates,
-- 						cond = lazy_status.has_updates,
-- 						color = { fg = "#ff9e64" },
-- 					},
-- 					{ "encoding" },
-- 					{ "fileformat" },
-- 					{ "filetype" },
-- 				},
-- 				lualine_z = {
-- 					function()
-- 						return os.date("%H:%M")
-- 					end,
-- 				},
-- 			},
-- 		})
--
-- 		-- Make statusline background transparent
-- 		vim.cmd("highlight StatusLine guibg=NONE")
-- 	end,
-- }
return { -- Statusline
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			theme = "solarized_dark",
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = false,
			refresh = {
				statusline = 100,
				tabline = 100,
				winbar = 100,
			},
		},
		sections = {
			lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = {
				{ "location", separator = { right = "" }, left_padding = 2 },
			},
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	},
}
