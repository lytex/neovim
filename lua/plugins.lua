vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'

    -- Surround an object with a character
    use 'tpope/vim-surround'

    -- Comments with gc
    use 'tpope/vim-commentary'

    -- Use [_  ]_ movements
    use 'tpope/vim-unimpaired'

    -- Highlight possible motions
    use 'easymotion/vim-easymotion'

    use 'justinmk/vim-sneak'

    -- Highlight possible f,t jumps
    use 'unblevable/quick-scope'

    use 'machakann/vim-highlightedyank'

    use 'jiangmiao/auto-pairs'

    -- Smooth C-D,U,B,F movements
    use 'psliwka/vim-smoothie'


    use { 'ibhagwan/fzf-lua',
      requires = {
        'vijaymarupudi/nvim-fzf',
        'kyazdani42/nvim-web-devicons' } -- optional for icons
    }

    -- Go to parent directories until there is an .git directory
    use 'airblade/vim-rooter'

    use 'sudormrfbin/cheatsheet.nvim'

    -- Dependencies of cheatsheet.nvim
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Terminal integration in neovim
    use 'nikvdp/neomux'

    use 'patstockwell/vim-monokai-tasty'

    use 'ActivityWatch/aw-watcher-vim'
end)
