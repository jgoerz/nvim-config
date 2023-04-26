--[[]]
--[[ Keymaps not specific to a plugin ]]
--[[]]
vim.keymap.set('n', '<leader>h', function()
		vim.cmd.nohlsearch()
	end,
	{desc = "remove highlight"}
)

vim.keymap.set('n', '<leader>gd', function()
		vim.cmd.Gdiffsplit()
	end,
	{desc = "git diff"}
)

vim.keymap.set('n', '<leader>g;', function()
		-- 0 is the current window, signcolumn happens to be a window variable
	  local curval = vim.api.nvim_win_get_option(0, "signcolumn")
		if curval == "yes" then
			vim.cmd[[set signcolumn=no]]
		else
			vim.cmd[[set signcolumn=yes]]
		end
	end,
	{desc = "toggle gitsigns"}
)
