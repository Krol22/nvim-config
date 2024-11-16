return {
  'tpope/vim-vinegar',
  'stevearc/oil.nvim',
  'tpope/vim-surround',
  'scrooloose/nerdcommenter',
  {
    'windwp/nvim-autopairs',
    config = function()
	    require("nvim-autopairs").setup {}
    end
  },
  'alvan/vim-closetag',
  'mg979/vim-visual-multi',
  'romainl/vim-qf',
  'nvim-lua/plenary.nvim',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  -- 'nvim-treesitter/nvim-treesitter-context',
  'nvim-tree/nvim-web-devicons',
  {
    'nmac427/guess-indent.nvim',
    opts = {
    filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
        "netrw",
        "tutor",
        "oil",
      }
    }
  },
  'christoomey/vim-tmux-navigator',
  'nvimtools/none-ls.nvim',
  'mrjones2014/legendary.nvim',
  'folke/trouble.nvim',
  'Asheq/close-buffers.vim',
  -- coding
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },
  { 'nelstrom/vim-textobj-rubyblock', dependencies = 'kana/vim-textobj-user'},
  {
    "tris203/precognition.nvim",
    config = {
      startVisible = false,
    }
  }
}
