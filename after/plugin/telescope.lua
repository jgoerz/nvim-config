-- label the group
local wk = require("which-key")
wk.register({
	["<leader>f"] = { name = "find stuff" }
})

require('telescope').setup {
	pickers = {
		live_grep = {
			additional_args = function(opts)
				return {
					"--iglob=!vendor",
					"--iglob=!tags",
				}
			end
		}
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help tags"})
-- vim.keymap.set('n', '<leader>F', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
