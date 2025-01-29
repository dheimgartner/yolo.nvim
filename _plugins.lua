-- Add all folders in plugins to the runtime
local lfs = require("lfs")

-- Add all folders in `bar` to the runtime path
local function add_to_runtimepath(base_dir)
  for folder in lfs.dir(base_dir) do
    local path_sep = package.config:sub(1, 1)
    local full_path = base_dir .. path_sep .. folder
    if folder ~= "." and folder ~= ".." and lfs.attributes(full_path, "mode") == "directory" then
      vim.opt.runtimepath:append(full_path)
    end
  end
end

-- Call the function with your `bar` directory
local plugins = "~/github/nvim_plugins"
add_to_runtimepath(vim.fn.expand(plugins))

require("oil").setup()
