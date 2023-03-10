local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim' -- plugins control
	use 'ellisonleao/gruvbox.nvim' -- colorscheme
	use 'nvim-tree/nvim-tree.lua' -- file explorer
	use 'nvim-tree/nvim-web-devicons' --icons
	use 'nvim-lualine/lualine.nvim' -- status line
	use 'nvim-treesitter/nvim-treesitter' -- parser generator tool 
    use 'nvim-lua/plenary.nvim' --external library for plugins 

    use{ -- file finding
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use { -- optimize the speed of finding
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    use 'mbbill/undotree' --undo history 

    use { --terminal 
        "akinsho/toggleterm.nvim",
        tag = '*'
    }

    use 'j-morano/buffer_manager.nvim' --control buffers

    use { --show shortcut
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    }

    use 'windwp/nvim-ts-autotag' -- auto complete tag in HTML
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
    
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
    
            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
   
    use 'ray-x/web-tools.nvim'

    use 'mfussenegger/nvim-dap'

	if packer_bootstrap then
		require('packer').sync()
	end
end)

