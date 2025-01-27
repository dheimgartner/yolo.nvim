local defaults = require "yolo.defaults"

local config = {}

setmetatable(config, {
  __index = defaults, -- Fallback to defaults if a key is missing in config
})

-- Set a single key-value pair
function config:set(key, value)
  rawset(self, key, value) -- Avoid overwriting methods
end

-- Set multiple key-value pairs from a user-provided table
function config:set_from_options(opts)
  for key, value in pairs(opts) do
    if defaults[key] ~= nil then -- Only override if the key exists in defaults
      self:set(key, value)
    end
  end
end

return config

