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

-- Runs the file _yolo.lua in project root if it exists
function runner.run_config()
  local project_root = vim.fn.getcwd()
  local path_sep = package.config:sub(1, 1)
  local yolo_file = project_root .. path_sep .. config["yolo_file"]
  if file_exists(yolo_file) then
    dofile(yolo_file)
  end
end

return runner
