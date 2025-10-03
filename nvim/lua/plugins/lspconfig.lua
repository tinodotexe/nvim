return {
  {   "neovim/nvim-lspconfig",
        dependencies = {
          { "saghen/blink.cmp" },
          {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
              library = {
                  -- See the configuration section for more details
                  -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
              },
            },
          },
        },
        config = function()
        vim.lsp.enable('lua_ls')
		vim.lsp.config('clangd', {
        cmd = {
          "clangd",
          "--background-index",
          "--pch-storage=memory",
          "--all-scopes-completion",
          "--pretty",
          "--header-insertion=never",
          "-j=4",
          "--inlay-hints",
          "--header-insertion-decorators",
          "--function-arg-placeholders",
          "--completion-style=detailed",
        },
        settings = {
          "-std=c++23",
          "-stdlib=libc++",
        },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        --root_dir = require("lspconfig").util.root_pattern("src"),
        init_option = { fallbackFlags = { "-std=c++20", "-stdlib=libc++" } },
        --capabilities = capabilities,
        single_file_support = true,

		vim.lsp.enable('clangd')
	})
  vim.lsp.enable('marksman')

		vim.lsp.config('tinymist', {
			settings = {
				formatterMode = "typstyle",
				exportPdf = "onType",
				semanticTokens = "disable"
			},
			vim.lsp.enable('tinymist')
		})
		vim.lsp.config('pyright', {
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						diagnosticMode = 'openFilesOnly',
					},
				},
			},
			vim.lsp.enable('pyright')
		})
	    end,
    },
}
