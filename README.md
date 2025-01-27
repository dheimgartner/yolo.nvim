# yolo.nvim

## Usage

- Install `yolo.nvim` with your favorite plugin manager (you can also use `yolo.nvim` as a minimal plugin manager; see below).
- Call `require("yolo").setup()`.
- Put any code you would like to run on `nvim project_name` (i.e., on project startup in neovim) in `project_name/_yolo.lua` (i.e., into a file called `_yolo.lua` in the project root).
- Convenience command `:Yolo` to run `_yolo.lua`.

## Yolo as package manager

1. Clone this github repo to some desitation `foo` (e.g., `~/.config/nvim/yolo`)
2. In your neovim config, add the cloned repo to the runtime path `vim.opt.runtimepath:append("foo/yolo.nvim")`
3. Clone any neovim plugin you like to some destination `bar` (e.g., `~/.config/nvim/yolo/plugins`)
4. Init `_yolo.lua` in `~/.config/nvim` with the following code

```lua
-- Add all folders in `bar` to the runtime
```
