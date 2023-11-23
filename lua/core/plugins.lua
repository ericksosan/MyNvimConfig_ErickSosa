local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)


local plugins = {
  
  -- Theme 

  'Shatur/neovim-ayu',

  -- Bakckground Transparent

  'xiyaowong/transparent.nvim',

  -- Nvim tree
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- Lualine
  'nvim-lualine/lualine.nvim',

  -- Treesitter 
  'nvim-treesitter/nvim-treesitter',
  
  --- Autocomplete

  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
 
  -- Auto tag
  'windwp/nvim-ts-autotag',

  -- LSP 
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Oil
  'stevearc/oil.nvim',

  -- Telescope 
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
      dependencies = { 
        'nvim-lua/plenary.nvim',
      }
  },
  
  -- Terminal 

  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true
  },

  -- Alpha to home 
  {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
	      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
}

local opts = { }

require("lazy").setup(plugins, opts)

