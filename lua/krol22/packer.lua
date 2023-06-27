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
  use {
      'stevearc/oil.nvim',
      config = function() require('oil').setup() end
    }
  use 'tpope/vim-surround'
  use 'scrooloose/nerdcommenter'
  use 'windwp/nvim-autopairs'
  use 'alvan/vim-closetag'
  use 'Yggdroot/indentLine'
  use 'mg979/vim-visual-multi'
  use 'romainl/vim-qf'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'kyazdani42/nvim-web-devicons'
  use 'nmac427/guess-indent.nvim'
  use 'christoomey/vim-tmux-navigator'

  use 'mrjones2014/legendary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'folke/trouble.nvim'

  use 'tpope/vim-fugitive'

  use 'mbbill/undotree'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use {
    "pmizio/typescript-tools.nvim",
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }
  }

  -- completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/nvim-cmp'
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
  use 'habamax/vim-godot'
  use 'mfussenegger/nvim-dap'

  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
})

  -- apperance
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'embark-theme/vim'
  use 'onsails/lspkind-nvim'
  use 'junegunn/seoul256.vim'
  use 'jaredgorski/spacecamp'
  use 'ronwoch/hotline-vim'
  use 'sainnhe/everforest'
  use 'cocopon/iceberg.vim'
  use 'kadekillary/skull-vim'
  use 'cseelus/vim-colors-lucid'
  use 'krol22/vim-colors-paramount'
  use 'kvrohit/mellow.nvim'
end)
