-- require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
-- require "user.autopairs"
require "user.comment"
require "user.toggleterm"
require "user.lualine"
require "user.nvim-tree"
require "user.alpha"
require "user.autocommands"
require "user.whichkey"


local options = {
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
}
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
