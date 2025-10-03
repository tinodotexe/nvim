return {
  {'nvim-telescope/telescope.nvim', branch = 'master',
      dependencies = {  { 'nvim-lua/plenary.nvim' }, 
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            --previewer = false,
            theme = 'ivy',
            --hidden = true
          },
          live_grep = {
            theme = 'ivy'
          },
          buffers = {
            theme = 'ivy'
          },
          help_tags = {
            theme = 'ivy'
          },
          colorscheme = {
            theme = 'ivy'
          }
        },

        extensions = {
          fzf = {}
        }
      }
      local builtin = require('telescope.builtin')
      require('telescope').load_extension('fzf')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Telescope colorschemes' })
			--vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
			--^already set in lazy.lua


    end
  }
}
