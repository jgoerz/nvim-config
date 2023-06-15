vim.keymap.set('n', '<leader>mt', function()
		vim.cmd.GenTocGitLab()
	end,
	{desc = "gitlab TOC"}
)

vim.cmd [[

" Default is 1
let g:vmt_auto_update_on_save = 0

" By default, the :GenTocXXX commands will add <!-- vim-markdown-toc --> fence
" to the table of contents, it is designed for feature of auto update table of
" contents on save and :UpdateToc command, it won't effect what your Markdown
" file looks like after parse.
" Default is 0.
let g:vmt_dont_insert_fence = 1

]]

