return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},
  {
    "vim-scripts/newsprint.vim"
  },
  {
    "gbprod/nord.nvim"
  },
  {
    "slugbyte/lackluster.nvim",
  },
  {
    "vim-scripts/zenesque.vim",
  },
  {
    "jaredgorski/fogbell.vim",
  },
  -- Using lazy.nvim
  -- {
  --   "metalelf0/black-metal-theme-neovim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("black-metal").setup({
  --       theme = "taake",
  --       code_style = {
  --         comments = "none",
  --         conditionals = "none",
  --         functions = "none",
  --         keywords = "none",
  --         headings = "bold", -- Markdown headings
  --         operators = "none",
  --         keyword_return = "none",
  --         strings = "none",
  --         variables = "none",
  --       },
  --     })
  --     require("black-metal").load()
  --   end,
  -- },
  {
    "oahlen/iceberg.nvim",
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
    end,
  },
  {
    "Skardyy/makurai-nvim",
  },
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = false,
    },
  },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    italic = false,
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- optional configuration here
        -- transparent = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = "none",
          number = "none",
          float = "none",
          error = "none",
          comments = "none",
          conditionals = "none",
          functions = "none",
          headings = "bold",
          operators = "none",
          strings = "none",
          variables = "none",

          -- keywords
          keywords = "none",
          keyword_return = "none",
          keywords_loop = "none",
          keywords_label = "none",
          keywords_exception = "none",

          -- builtin
          builtin_constants = "none",
          builtin_functions = "none",
          builtin_types = "none",
          builtin_variables = "none",
        },
        colors = {
          --func = "#bc96b0",
          --keyword = "#787bab",
          -- -- string = "#d4bd98",
          --string = "#8a739a",
          -- -- string = "#f2e6ff",
          -- -- number = "#f2e6ff",
          -- -- string = "#d8d5b1",
          --number = "#8f729e",
          -- -- type = "#dcaed7",
					-- defaults below:
					bg = "#141415",
					inactiveBg = "#1c1c24",
					fg = "#cdcdcd",
					floatBorder = "#878787",
					line = "#252530",
					comment = "#606079",
					builtin = "#b4d4cf",
					func = "#c48282",
					string = "#e8b589",
					number = "#e0a363",
					property = "#c3c3d5",
					constant = "#aeaed1",
					parameter = "#bb9dbd",
					visual = "#333738",
					error = "#d8647e",
					warning = "#f3be7c",
					hint = "#7e98e8",
					operator = "#90a0b5",
					keyword = "#6e94b2",
					type = "#9bb4bc",
					search = "#405065",
					plus = "#7fa563",
					delta = "#f3be7c",
        },
      })
    end,
  },
  {
    "jnurmine/Zenburn",
  },
  {
    --"RRethy/base16-nvim",
  },

}
