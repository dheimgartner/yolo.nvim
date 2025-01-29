print("Your project specific yolo config")

-- Add a project specific yolo file
require("yolo").more_yolo("_foo.lua")
require("yolo").more_yolo("_plugins.lua")  -- use yolo as package manager
