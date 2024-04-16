return {
  {
    'rcarriga/nvim-notify',
    event = 'VeryLazy',
    config = function()
      require("notify").setup({
        background_colour = "#000000"
      })
      vim.notify = require("notify")
    end
  },
  'goolord/alpha-nvim',
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('ibl').setup()
    end
  },
  {
    'vim-airline/vim-airline',
    lazy = false,
  },
  {
    'vim-airline/vim-airline-themes',
    lazy = false,
    config = function()
      vim.g.airline_theme = 'atomic'
      vim.g['airline#extensions#codeium#enabled'] = 1
    end
  },
  {
    'rose-pine/neovim',
    lazy = false,
    name ='rose-pine',
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.cmd("set background=dark")
      vim.cmd('colorscheme rose-pine')
    end,
  },
  -- 'morhetz/gruvbox',
  -- {
    -- "f-person/auto-dark-mode.nvim",
    -- config = {
      -- update_interval = 1000,
      -- set_dark_mode = function()
        -- vim.api.nvim_set_option("background", "dark")
        -- vim.cmd("colorscheme rose-pine")
        -- vim.g.airline_theme = 'atomic'
      -- end,
      -- set_light_mode = function()
        -- vim.api.nvim_set_option("background", "light")
        -- vim.cmd("colorscheme gruvbox")
        -- vim.g.airline_theme = 'gruvbox'
      -- end,
    -- },
  -- },
  -- Unused colorschemes
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
}
