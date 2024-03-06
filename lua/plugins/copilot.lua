return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-d>",
          accept_word = false,
          accept_line = false,
          next = "<C-]>",
          prev = "<C-[>",
        },
      },
    })
  end,
}
