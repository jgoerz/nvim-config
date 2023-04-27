
vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  " In newer versions of nvim it's format() instead of formatting_sync
  augroup _go
    autocmd!
    autocmd BufWritePre *.go lua vim.lsp.buf.format()
    autocmd BufWritePre *.go lua _GO_ORG_IMPORTS(100)
  augroup end

  augroup _ruby
    autocmd!
    autocmd BufWritePre *.rb lua vim.lsp.buf.format()
  augroup end

  augroup _dart
    autocmd!
    autocmd BufWritePre *.dart lua vim.lsp.buf.format()
  augroup end

	" Vimoutliner needs to be updated
  augroup _otl
    autocmd!
    autocmd BufEnter *.otl lua vim.api.nvim_win_set_option(0, "foldcolumn", "0")
  augroup end
]]
