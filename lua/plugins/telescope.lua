return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },

    opts = {
      pickers = {
        live_grep = {
          additional_args = function(opts)
            return {
              "--hidden",
              "--glob", -- this flag allows you to hide exclude these files and folders from your search 👇
              "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock,**/dist/*,**/build/*,**/target/*,**/vendor/*,**/*report*/**}",
            }
          end,
        },
      },
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "build",
          "dist",
          "yarn.lock",
          "package-lock.json",
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "-u", -- thats the new thing
        },
      },
    },
  },
}
