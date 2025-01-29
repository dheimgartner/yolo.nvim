local yolo = {}

local config = require "yolo.config"
local runner = require "yolo.runner"

function yolo.setup(opts)
  opts = opts or {}
  config:set_from_options(opts)
  runner.yolo()
end

local function has_value(tab, val)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end
  return false
end

function yolo.more_yolo(file)
  local yolo_files = config["yolo_files"] or {}
  if has_value(yolo_files, file) then
    return
  end
  yolo_files[#yolo_files + 1] = file
  config.yolo_files = yolo_files
end


yolo.yolo_file = runner.yolo_file
yolo.yolo = runner.yolo

return yolo
