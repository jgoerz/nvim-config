# Goals

- SCM workflow
    - Git support, and I doubt I'll use any of the others I've used before
    - Work with vim-fugitive (haven't seen a better workflow yet)
    - Git status shows untracked, unstaged, and staged
    - Can easily diff (side by side) unstaged to see what I'm committing
- Testing workflow
    - Similar to tslime + tmux
    - Run test identified by current cursor location
    - Run all tests in file
    - Show test results in another pane/window I can reference while not leaving the code/test
    - Bonus: decent test coverage workflow
- Coding workflow
    - First do no harm (see plugin entry below)
    - LSP + goodies for go, elixir, ruby, java
          - For go, vim-go is the bar.  Should do at least all its functionality.
          - completion, code generation (snippets), signature suggestion
          - call stack style navigation when traversing code (like g-Ctrl-[ and Ctrl-t with tag files)
- Avoid "opinionated" plugins 
    - default keymaps should be easily ignored or disabled
    - I can pick and choose which functionality to map to keymaps
          - this implies this is documented
    - I can choose the <leader> that works for me
    - ideally works with whichkey or something similar

# Dependencies

- Need webfonts: https://github.com/ryanoasis/nerd-fonts#font-installation
  - I'm using Hack NFM
	- On a Mac, you'll need to restart the terminal after install
- Need ripgrep


# Investigate

LSP "framework"
- https://github.com/VonHeikemen/lsp-zero.nvim
- once setup, run this: https://github.com/fatih/vim-go/wiki/Tutorial

Potential lua ideas to learn from
- https://github.com/ray-x/nvim

These two should hopefully address the workflows for test and some for coding
- https://github.com/ThePrimeagen/refactoring.nvim
- https://github.com/nvim-neotest/neotest

