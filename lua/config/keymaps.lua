-- NEOTREE
local function toggle_neotree_focus()
  -- Check if the current buffer is NeoTree
  if vim.bo.filetype == "neo-tree" then
    -- If yes, switch back to the previously focused buffer
    vim.cmd("wincmd p")
  else
    -- If no, open or focus NeoTree
    vim.cmd("Neotree reveal")
  end
end

-- Set a keymap to toggle focus to/from NeoTree
vim.keymap.set(
  "n",
  "<leader>o",
  toggle_neotree_focus,
  { noremap = true, silent = true, desc = "Reveal current buffer in tree" }
)

-- TELESCOPE LIST OPENED BUFFERS
vim.keymap.set("n", "<Tab>", function()
  require("telescope.builtin").buffers({ sort_lastused = true, ignore_current_buffer = true })

  -- vim.cmd("Telescope buffers exclude_current_buffer=true sort_lastused=true prompt_prefix=📂")
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
