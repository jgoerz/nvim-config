vim.cmd [[
" Many thanks to Narizocracia over at Reddit.
" https://www.reddit.com/r/neovim/comments/pz3wyc/is_there_any_good_way_to_edit_large_files/
" disable syntax highlighting in big files
function DisableSyntaxTreesitter()
    echo("Big file, disabling syntax, treesitter and folding")
    if exists(':TSBufDisable')
        exec 'TSBufDisable autotag'
        exec 'TSBufDisable highlight'
        " etc...
    endif

    set foldmethod=manual
    syntax clear
    syntax off    " hmmm, which one to use?
    filetype off
    set noundofile
    set noswapfile
    set noloadplugins
endfunction
]]

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
    autocmd BufEnter *.rb lua vim.api.nvim_win_set_option(0, "foldcolumn", "0")
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

	" Terraform
	silent! autocmd! filetypedetect BufRead,BufNewFile *.tf
	autocmd BufRead,BufNewFile *.hcl set filetype=hcl
	autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl
	autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform
	autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json
	autocmd BufWritePre *.tfvars lua vim.lsp.buf.format()
	autocmd BufWritePre *.tf lua vim.lsp.buf.format()

	augroup BigFileDisable
		autocmd!
		autocmd BufReadPre,FileReadPre * if getfsize(expand("%")) > 512 * 1024 | exec DisableSyntaxTreesitter() | endif
	augroup END

]]
