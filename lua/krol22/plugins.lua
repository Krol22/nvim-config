local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.o.termguicolors = true

require('lazy').setup({
  -- basic setup
  'tpope/vim-vinegar',
  'stevearc/oil.nvim',
  'tpope/vim-surround',
  'scrooloose/nerdcommenter',
  'windwp/nvim-autopairs',
  'alvan/vim-closetag',
  'mg979/vim-visual-multi',
  'romainl/vim-qf',
  'nvim-lua/plenary.nvim',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  'nvim-treesitter/nvim-treesitter-context',
  'nvim-tree/nvim-web-devicons',
  'nmac427/guess-indent.nvim',
  'christoomey/vim-tmux-navigator',
  'rcarriga/nvim-notify',
  'nvimtools/none-ls.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'goolord/alpha-nvim',

  'mrjones2014/legendary.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'folke/trouble.nvim',

  -- lsp
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'onsails/lspkind-nvim',
  'neovim/nvim-lspconfig',
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }
  },
  'simrat39/rust-tools.nvim',
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  },

  -- completion
  'hrsh7th/nvim-cmp',

  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  -- coding
  'othree/yajs.vim',
  'leafgarland/typescript-vim',
  'peitalin/vim-jsx-typescript',
  'MaxMEllon/vim-jsx-pretty',
  'tikhomirov/vim-glsl',
  {
    'habamax/vim-godot',
    ft = { 'gdscript', 'gd', 'gdresource' }
  },

  'Exafunction/codeium.vim',

  -- notes
  'nvim-neorg/neorg',

  -- apperance
  -- 'hachy/eva01.vim',
  -- 'embark-theme/vim',
  -- 'junegunn/seoul256.vim',
  -- 'jaredgorski/spacecamp',
  -- 'ronwoch/hotline-vim',
  -- 'sainnhe/everforest',
  -- 'cocopon/iceberg.vim',
  -- 'kadekillary/skull-vim',
  -- 'cseelus/vim-colors-lucid',
  -- 'mellow-theme/mellow.nvim',
  -- 'yorickpeterse/vim-paper',
  -- 'nikolvs/vim-sunbather',
  -- 'xiyaowong/transparent.nvim',
  -- 'fcpg/vim-fahrenheit',
  -- 'namrabtw/rusty.nvim',
  -- 'AlessandroYorba/Sierra',
  -- 'AlexvZyl/nordic.nvim',
  -- { "catppuccin/nvim", name = 'catppuccin' },
  -- 'franbach/miramare',
  -- 'Biscuit-Colorscheme/nvim',
  -- 'habamax/vim-habamax',
  -- 'gerardbm/vim-atomic',
  {
    'vim-airline/vim-airline',
    lazy = false,
  },
  {
    'vim-airline/vim-airline-themes',
    lazy = false,
  },
  {
    'rose-pine/neovim',
    lazy = false,
    name ='rose-pine',
    priority = 1000,
    config = function()
      vim.cmd("set background=dark")
      vim.cmd('colorscheme rose-pine')
    end,
  }
})
