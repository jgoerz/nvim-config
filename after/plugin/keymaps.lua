--
-- Keymaps not specific to a plugin
--

-- label the group
local wk = require("which-key")
wk.register({
	["<leader>g"] = { name = "git" }
})

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

vim.keymap.set('n', '<leader>ad', function()
		require('cmp').setup.buffer {enabled = false}
	end,
	{desc = "autocomplete disable"}
)

vim.keymap.set('n', '<leader>ae', function()
		require('cmp').setup.buffer {enabled = true}
	end,
	{desc = "autocomplete enable"}
)
