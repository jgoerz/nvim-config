local wk = require("which-key")
wk.register({
	["<leader>e"] = { name = "explorer" }
})

vim.keymap.set('n', '<leader>ee', function()
		vim.cmd.NvimTreeToggle()
	end,
	{desc = "toggle explorer"}
)

vim.keymap.set('n', '<leader>ew', function()
		vim.cmd.NvimTreeResize('+40')
	end,
	{desc = "make it wide"}
)

vim.keymap.set('n', '<leader>ec', function()
		vim.cmd.NvimTreeResize('-40')
	end,
	{desc = "make it normal"}
)


require('nvim-tree').setup {
	highlight_focused_file = true,
	update_focused_file = {
		enable = true,
		update_cwd = false,
		ignore_list = {},
	}
}

