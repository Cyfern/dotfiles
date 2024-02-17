return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "vv9k/bogster" },
  { "Mofiqul/adwaita.nvim" },
  {"catppuccin/nvim",
    name = "catppuccin",
    opts = {
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = {},
				conditionals = {},
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#111111",
					mantle = "#0e0e0e",
					crust = "#080808",
				},
			},
			integrations = {
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				dropbar = {
					enabled = true,
					color_mode = true,
				},
        mason = {
          enabled = true,
          style = "nvchad",
        },
			},
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
