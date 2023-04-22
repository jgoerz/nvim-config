vim.keymap.set('n', '<leader>gs', function()
		vim.cmd.Git()
		vim.cmd.resize(15)
	end,
	{desc = "git status"}
)

vim.keymap.set('n','<leader>gb', function()
		vim.cmd('Git blame')
	end,
	{desc = "git blame"}
)

vim.keymap.set('n','<leader>gf', function()
		vim.cmd('Git fetch --all')
	end,
	{desc = "git fetch --all"}
)


