# yolo.nvim

## Installation

- Install `yolo.nvim` with your favorite plugin manager (you can also use `yolo.nvim` as a minimal plugin manager; see below). E.g., with `lazy.nvim`

```lua
{ "dheimgartner/yolo.nvim", opts = {} }
```
## Usage

- Call `require("yolo").setup()`.
- Alternatively, you can specify another (or several) yolo files `require("yolo").setup(yolo_files = { "yolo1.lua", "yolo2.lua" }`.
- Put any code you would like to run on `nvim project_name` (i.e., on project startup) in `project_name/_yolo.lua` (i.e., into a file called `_yolo.lua` in the project root).
- Convenience command `:YoloFile foo.lua` to run the yolo file `foo.lua` or `:Yolo` to run all yolo files.
- You can also add a project specific additional yolo file with `require("yolo").more_yolo("yolo_file.lua")` (e.g., if you stuck with the default `_yolo.lua` file in the setup, you could put the previous line in any `project_root/_yolo.lua`)...

## Yolo as package manager

>This is mostly for pedagogical purposes. Recommend to use a proper package manager such as `lazy.nvim`!

1. Clone this github repo into some desitation `foo` (e.g., `~/.config/nvim/yolo`)
2. In your neovim config, add the cloned repo to the runtime path `vim.opt.runtimepath:append("foo/yolo.nvim")`
3. Init `_yolo.lua` in `~/.config/nvim` with the following code (or add it to your `init.lua`)

```lua
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
local plugins = "~/.config/nvim/yolo/plugins"
add_to_runtimepath(vim.fn.expand(plugins))
```
4. Clone any neovim plugin you like into some destination `bar` (e.g., `~/.config/nvim/yolo/plugins`)
