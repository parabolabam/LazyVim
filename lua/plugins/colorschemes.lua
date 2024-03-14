return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "barrientosvctor/abyss.nvim",
    opts = {},
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "abyss",
    },
  },
}
