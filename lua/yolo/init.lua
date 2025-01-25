local yolo = {}

local run_config = require("yolo.runner").run_config

function yolo.setup(opts)
  -- TODO: Let user specify filename (default _yolo.lua)
  run_config()
end

yolo.run_config = require("yolo.runner").run_config

return yolo
