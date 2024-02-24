-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  -- so %
  -- PackerSync
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'preservim/nerdtree'
    use 'evansalter/vim-checklist'
    use 'vim-test/vim-test'
    use 'psliwka/vim-smoothie'
    use 'vimwiki/vimwiki'
    use 'sbdchd/neoformat'
    use 'mfussenegger/nvim-jdtls'
    use 'xiyaowong/nvim-transparent'
    use 'nvim-tree/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'
    use 'sainnhe/gruvbox-material'
    use 'voldikss/clap-floaterm'
    use 'voldikss/vim-floaterm'
    use  {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
      'daltonmenezes/aura-theme',
      rtp = 'packages/neovim',
      config = function()
        --vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
      end
    }
    --use {
    --    "williamboman/mason.nvim",
    --    "williamboman/mason-lspconfig.nvim",
    --    "neovim/nvim-lspconfig",
    --}

end)
