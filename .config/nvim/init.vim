syntax on

" ******************** PLUGINS ********************

call plug#begin('~/.config/nvim/plugged')

" Color schemes.
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'Mofiqul/dracula.nvim'

" Telescope plugin requires plenary to function.
Plug 'nvim-lua/plenary.nvim'

" Fuzzy file search, full text search and a lot more.
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" An optional plugin recommended by Telescope docs.
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Status line.
Plug 'nvim-lualine/lualine.nvim'

" File icons.
Plug 'kyazdani42/nvim-web-devicons'

" Git lines diff.
Plug 'lewis6991/gitsigns.nvim'

" LSP.
Plug 'neovim/nvim-lspconfig'

" Completions.
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'onsails/lspkind-nvim'

" Snippets.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Automatically highlighting other uses of the word under the cursor.
Plug 'RRethy/vim-illuminate'

" Better language support.
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Rainbow parentheses using tree-sitter.
" Plug 'p00f/nvim-ts-rainbow'

" Commenting support.
Plug 'numToStr/Comment.nvim'

" Parentheses autocompleting.
Plug 'windwp/nvim-autopairs'

" File tree explorer.
Plug 'nvim-tree/nvim-tree.lua'

" Buffers as browser tabs.
Plug 'akinsho/bufferline.nvim'

" Indentation guides for all lines.
Plug 'lukas-reineke/indent-blankline.nvim'

" Toggle floating terminal.
Plug 'numToStr/FTerm.nvim'

" Run test in VIM.
Plug 'vim-test/vim-test'

" Appends 'end' in Ruby.
Plug 'RRethy/nvim-treesitter-endwise'

" Allows navigating between Tmux and Neovim panes with Ctrl-hjkl.
Plug 'christoomey/vim-tmux-navigator'

" Allows to preview quickfix results.
Plug 'ronakg/quickr-preview.vim'

" Delete/change/add parentheses/quotes/XML-tags/much more with ease.
Plug 'tpope/vim-surround'

Plug 'ThePrimeagen/harpoon', { 'branch': 'harpoon2' }

call plug#end()

" ******************** LUA CONFIGS ********************

lua require('vitalii/options')
lua require('vitalii/keymaps')
lua require('vitalii/nvim-tree')
lua require('vitalii/colorscheme')
lua require('vitalii/cmp')
lua require('vitalii/lsp')
lua require('vitalii/telescope')
lua require('vitalii/treesitter')
lua require('vitalii/illuminate')
lua require('vitalii/autopairs')
lua require('vitalii/comment')
lua require('vitalii/gitsigns')
lua require('vitalii/lualine')
lua require('vitalii/bufferline')
lua require('vitalii/indent_blankline')
lua require('vitalii/fterm')
lua require('vitalii/harpoon')

" ******************** VIMSCRIPT CONFIGS ********************

" Configure Vim Test plugin.
let test#strategy = "basic"
let g:test#basic#start_normal = 1

" Remove trailing white spaces on save.
autocmd BufWritePre * :%s/\s\+$//e

" Remove number line in terminal mode.
autocmd TermOpen * setlocal nonumber norelativenumber
