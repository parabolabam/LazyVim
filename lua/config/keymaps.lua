-- NEOTREE

-- TELESCOPE LIST OPENED BUFFERS
vim.keymap.set("n", "<Tab>", function()
  vim.cmd("Telescope buffers exclude_current_buffer=true")
end, { noremap = true, silent = true })
-- TELESCOPE LIST OPENED BUFFERS END

-- QUICK SWITCHER
local function find(file_regex, opts)
  return function()
    require("nvim-quick-switcher").find(file_regex, opts)
  end
end

vim.keymap.set(
  "n",
  "<leader>as",
  find(".+css|.+scss|.+sass|.+less", { regex = true, prefix = "full" }),
  { noremap = true, silent = true }
)

vim.keymap.set(
  "n",
  "<leader>ate",
  find(".+test|.+spec", { regex = true, prefix = "full" }),
  { noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>at", find(".+html", { regex = true, prefix = "full" }), { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>ac",
  find(".component.ts", { regex = true, prefix = "full" }),
  { noremap = true, silent = true }
)
-- QUICK SWITCHER END
