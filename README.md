# yolo.nvim

## Use as package manager

1. Clone this github repo to some desitation `foo` (e.g., `~/.config/nvim/yolo`)
2. In your nvim config, add the cloned repo to the runtime path `vim.opt.runtimepath:append("foo/yolo.nvim")`
3. Clone any neovim plugin you like to some destination `bar` (e.g., `~/.config/nvim/yolo/plugins`)
4. Add `_yolo.lua` to your `~/.config/nvim` with the following code

```lua
-- Add all folders in `bar` to the runtime
```
