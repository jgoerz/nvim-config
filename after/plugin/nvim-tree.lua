vim.keymap.set('n', '<leader>e', function()
		vim.cmd.NvimTreeToggle()
	end,
	{desc = "explorer"}
)

require('nvim-tree').setup {
	highlight_focused_file = true,
	update_focused_file = {
		enable = true,
		update_cwd = false,
		ignore_list = {},
	}
}

