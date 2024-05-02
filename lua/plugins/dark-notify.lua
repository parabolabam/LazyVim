return {
  "cormacrelf/dark-notify",
  config = function()
    require("dark_notify").run({
      onchange = function(mode)
        if mode == "light" then
          require("vscode").load("light")
        elseif mode == "dark" then
          vim.cmd("colorscheme slate")
        end
      end,
    })
  end,
}
