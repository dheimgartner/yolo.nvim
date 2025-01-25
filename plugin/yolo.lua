vim.api.nvim_create_user_command(
  "Yolo",
  function()
    require("yolo").run_config()
  end,
  {}
)
