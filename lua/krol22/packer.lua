local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- basic setup
  use 'tpope/vim-vinegar'
  use 'stevearc/oil.nvim'
  use 'tpope/vim-surround'
  use 'scrooloose/nerdcommenter'
  use 'windwp/nvim-autopairs'
  use 'alvan/vim-closetag'
  use 'mg979/vim-visual-multi'
  use 'romainl/vim-qf'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-tree/nvim-web-devicons'
  use 'nmac427/guess-indent.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'rcarriga/nvim-notify'
  use 'nvimtools/none-ls.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'goolord/alpha-nvim'

  use 'mrjones2014/legendary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'folke/trouble.nvim'

  -- lsp
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use {
    "pmizio/typescript-tools.nvim",
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }
  }
  use 'simrat39/rust-tools.nvim'
  use {
    "nvimdev/lspsaga.nvim",
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  }

  -- completion
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  -- coding
  -- use 'elzr/vim-json'
  use 'othree/yajs.vim'
  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'tikhomirov/vim-glsl'
  use {
    'habamax/vim-godot',
    ft = { 'gdscript', 'gd', 'gdresource' }
  }

  use 'Exafunction/codeium.vim'

  -- notes
  use 'nvim-neorg/neorg'

  -- apperance
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'hachy/eva01.vim'
  use 'embark-theme/vim'
  use 'onsails/lspkind-nvim'
  use 'junegunn/seoul256.vim'
  use 'jaredgorski/spacecamp'
  use 'ronwoch/hotline-vim'
  use 'sainnhe/everforest'
  use 'cocopon/iceberg.vim'
  use 'kadekillary/skull-vim'
  use 'cseelus/vim-colors-lucid'
  use 'mellow-theme/mellow.nvim'
  use 'yorickpeterse/vim-paper'
  use 'nikolvs/vim-sunbather'
  use 'xiyaowong/transparent.nvim'
  use 'fcpg/vim-fahrenheit'
  use 'namrabtw/rusty.nvim'
  use 'AlessandroYorba/Sierra'
  use 'AlexvZyl/nordic.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'franbach/miramare'
  use 'Biscuit-Colorscheme/nvim'
  use 'habamax/vim-habamax'
  use 'gerardbm/vim-atomic'
  use { 'rose-pine/neovim', as ='rose-pine'}
end)
