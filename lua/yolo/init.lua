local yolo = {}

local config = require "yolo.config"
local runner = require "yolo.runner"

function yolo.setup(opts)
  opts = opts or {}
  config:set_from_options(opts)
  runner.yolo()
end

function yolo.more_yolo(file)
  local yolo_files = config["yolo_files"] or {}
  yolo_files[#yolo_files + 1] = file
  config.yolo_files = yolo_files
end


yolo.run_config = runner.run_config
yolo.yolo = runner.yolo

return yolo
