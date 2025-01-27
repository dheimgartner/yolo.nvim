local yolo = {}

local config = require "yolo.config"

local run_config = require("yolo.runner").run_config

function yolo.setup(opts)
  opts = opts or {}
  config:set_from_options(opts)
  run_config()
end

yolo.run_config = run_config

return yolo
