-- local ensure_packer = function()
--   local fn = vim.fn
--   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--   if fn.empty(fn.glob(install_path)) > 0 then
--     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--     vim.cmd [[packadd packer.nvim]]
--     return true
--   end
--   return false
-- end

-- local packer_bootstrap = ensure_packer()
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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


require("lazy").setup({
    {
        "folke/which-key.nvim",
       event = "VeryLazy",
    },
    -- {
    --     "folke/neoconf.nvim",
    --     cmd = "Neoconf" 
    -- },
    {
      "folke/neodev.nvim"
    },
     { -- color theme
        "ellisonleao/gruvbox.nvim",
        priority = 1000 , config = true, opts = ...
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim"
        }
    },
     { -- notification
        "rcarriga/nvim-notify"
    },
     { -- directory tree 
        "nvim-tree/nvim-tree.lua"
    },
     { -- beautiful icon but need nerd font
        "nvim-tree/nvim-web-devicons"
    },
     { -- status line written in lua 
        "nvim-lualine/lualine.nvim"
    },
    { -- comment functionality 
        "numToStr/Comment.nvim"
    },
    { -- need to config, Show Banner on startup
        "nvimdev/dashboard-nvim",
        event = "VimEnter"
    },
    { -- fuzzy search
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = {'nvim-lua/plenary.nvim' }
    },
    { -- treesitter support 
        "nvim-treesitter/nvim-treesitter"
    },
    { "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },
    { -- git functionlity 
        "tpope/vim-fugitive"
    },
    { -- highlight git changes, blame, hunk functionality
        "lewis6991/gitsigns.nvim"
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets"
        }
    }
})
