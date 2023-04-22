--[[]]
--[[ Keymaps not specific to a plugin ]]
--[[]]
vim.keymap.set('n', '<leader>h', function()
		vim.cmd.nohlsearch()
	end,
	{desc = "remove highlight"}
)
