local runner = {}

local function file_exists(filepath)
  local f = io.open(filepath, "r")
  if f then
    f:close()
    return true
  end
  return false
end

-- Runs the file yolo.lua in project root if it exists
function runner.run_config()
  local project_root = vim.fn.getcwd()
  local yolo_file = project_root .. "/_yolo.lua"
  if file_exists(yolo_file) then
    dofile(yolo_file)
  end
end

return runner
