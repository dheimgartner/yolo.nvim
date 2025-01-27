local runner = {}
local config = require("yolo.config")

local function file_exists(filepath)
  local f = io.open(filepath, "r")
  if f then
    f:close()
    return true
  end
  return false
end

-- Runs a yolo file in project root if it exists
function runner.run_config(yolo_file)
  -- TODO: check if yolo_file is in config["yolo_files"] and raise no yolo file error otherwise (?)
  local project_root = vim.fn.getcwd()
  local path_sep = package.config:sub(1, 1)
  local yolo_file = project_root .. path_sep .. yolo_file
  if file_exists(yolo_file) then
    dofile(yolo_file)
  end
end

-- Runs all yolo files
function runner.yolo()
  for index, value in ipairs(config["yolo_files"]) do
    runner.run_config(value)
  end
end

return runner
