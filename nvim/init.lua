require("config.lazy")
require'nvim-treesitter'.setup {
    -- A directory to install the parsers and queries to.
    -- Defaults to the `stdpath('data')/site` dir.
    install_dir = vim.fn.stdpath('data') .. "/site",
  }
  vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'rust', 'zig', 'lua', 'c', 'java', 'css', 'html', 'javascript', 'json', 'make', 'python' },
    callback = function()
      -- syntax highlighting, provided by Neovim
      vim.treesitter.start()
      -- folds, provided by Neovim
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      -- indentation, provided by nvim-treesitter
      --vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  })


-- keybindings:
vim.opt.clipboard = "unnamedplus"

-- Disable compatibility with legacy vi
vim.opt.compatible = false

-- Show matching brackets
vim.opt.showmatch = true

-- Case-insensitive search
vim.opt.ignorecase = true

-- Middle-click paste in visual mode
vim.opt.mouse = 'v'

-- Highlight search results
vim.opt.hlsearch = true

-- Incremental search (live feedback)
vim.opt.incsearch = true

-- Tab settings
vim.opt.tabstop = 4           -- Tab = 4 spaces
vim.opt.softtabstop = 4       -- Treat 4 spaces as a tab for backspace
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.shiftwidth = 4  -- Auto-indent width

-- Auto-indent new lines
vim.opt.autoindent = true
vim.opt.cindent = true

-- Line numbers
vim.opt.number = true

-- Bash-like tab completion
vim.opt.wildmode = 'longest,list'

-- Enable mouse in all modes
vim.opt.mouse = 'a'

-- Use system clipboard (unnamedplus)
vim.opt.clipboard = 'unnamedplus'

-- Filetype detection + plugins/indent
--vim.cmd('filetype plugin indent on')
--
-- Syntax highlighting
--vim.cmd('syntax on')

vim.opt.winborder = "rounded"

-- Faster scrolling
vim.opt.ttyfast = true

-- Terminal colors
vim.opt.termguicolors = true
-- Background for various UI elements
--vim.api.nvim_set_hl(0, 'NonText', { ctermbg = 'none', bg = 'none' })
--vim.api.nvim_set_hl(0, 'Normal', { ctermbg = 'none', bg = 'none' })
--vim.api.nvim_set_hl(0, 'NormalNC', { ctermbg = 'none', bg = 'none' })
--vim.api.nvim_set_hl(0, 'SignColumn', { ctermbg = 'none', ctermfg = 'none', bg = 'none' })

--vim.api.nvim_set_hl(0, 'Pmenu', { ctermbg = 'none', ctermfg = 'none', bg = 'none' })
--vim.api.nvim_set_hl(0, 'FloatBorder', { ctermbg = 'none', ctermfg = 'none', bg = 'none' })
--vim.api.nvim_set_hl(0, 'NormalFloat', { ctermbg = 'none', ctermfg = 'none', bg = 'none'})
--vim.api.nvim_set_hl(0, 'TabLine', { ctermbg = 'none', ctermfg = 'none', bg = 'none' })

-- Setting comments and line numbers to different color, overrides theme colors.
--vim.api.nvim_set_hl(0, 'LineNr', { bg = '#161616', fg = '#48BC68', ctermfg = 'white', ctermbg = 'black' })
--vim.api.nvim_set_hl(0, 'Comment', { fg = '#3c5580', ctermfg = 'white' })

-- Setting relative line numbers on.
vim.wo.relativenumber = true

-- Setting language server protocol.
--vim.lsp.enable('clangd')
vim.lsp.enable('zls')
vim.lsp.enable('jdtls')
vim.lsp.enable('rust_analyzer')
