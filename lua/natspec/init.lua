local M = {}

function M.insert_comment()
	local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
	vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, { "// " })
	vim.api.nvim_win_set_cursor(0, { row, 3 })
end

function M.insert_notice()
	local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
	local notice_comment = "/// @notice "
	vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, { notice_comment })
	vim.api.nvim_win_set_cursor(0, { row, string.len(notice_comment) })
end

-- TODO insert natspec following function's signature
function M.insert_natspec()
	local row = vim.api.nvim_win_get_cursor(0)[1]
	local natspec_comment = {
		"/// @notice ",
		"/// @dev ",
		"/// @param ",
		"/// @return ",
	}
	vim.api.nvim_buf_set_lines(0, row - 1, row - 1, false, natspec_comment)
end

return M
