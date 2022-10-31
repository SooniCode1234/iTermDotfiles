if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive' "Fugitive is the premier Vim plugin for Git
Plug 'tpope/vim-rhubarb' "If fugitive.vim is the Git, rhubarb.vim is the Hub
Plug 'cohama/lexima.vim' "Auto close parentheses and repeat by dot dot dot

if has("nvim")
  Plug 'neovim/nvim-lspconfig' "Quickstart configs for Nvim LSP 
  Plug 'williamboman/nvim-lsp-installer' "Seamlessly manage LSP servers with :LspInstall

  Plug 'hrsh7th/cmp-nvim-lsp' "nvim-cmp source for neovim builtin LSP client
  Plug 'hrsh7th/nvim-cmp' "nvim-cmp source for neovim builtin LSP client
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  Plug 'L3MON4D3/LuaSnip' "Snippet engine
  Plug 'rafamadriz/friendly-snippets' "A bunch of snippets to use
  Plug 'saadparwaiz1/cmp_luasnip'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "highlighting

  Plug 'hoob3rt/lualine.nvim' "Status bar

  Plug 'folke/which-key.nvim'

  Plug 'lervag/vimtex'
endif

call plug#end()

