local M = {
	dark = require("visual_studio_code.colors.dark"),
	light = require("visual_studio_code.colors.light"),
	dark_modern = require("visual_studio_code.colors.dark_modern"),
	light_modern = require("visual_studio_code.colors.light_modern"),
}

function M.get_colors(mode)
	if not vim.tbl_contains(vim.tbl_keys(M), mode) then
		return M["dark"]
	end

	return M[mode]
end

return M
