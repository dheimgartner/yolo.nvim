vim.api.nvim_create_user_command(
  "Yolo",
  function()
    require("yolo").yolo()
  end,
  {}
)

vim.api.nvim_create_user_command(
  "YoloFile",
  function(opts)
    require("yolo").yolo_file(opts.args)
  end,
  { nargs = 1 }
)
