local class = require "class"

local object = class.new()
object:set_value(2)
local value = object:get_value()
print(value)