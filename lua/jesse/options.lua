vim.g.mapleader = ","

local options = {
	--[[ guicursor = "", -- fat cursor in insert mode ]]
	smartcase = true,
	smartindent = true,
	tabstop = 2,
	shiftwidth = 2,
	fileencoding = "utf-8",
	hlsearch = true,
	wrap = true,
	backup = false,
	swapfile = false,
	number = true,
	termguicolors = true,
	foldcolumn = "0",
	--[[ colorcolumn = "80", -- paints the column so you can wrap it manually ]]
}
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- visual select and move a block up and down
--[[ vim.keymap.set("v", "J", "m '>+1<CR>gv=gv") ]]
--[[ vim.keymap.set("v", "K", "m '<-2<CR>gv=gv") ]]

