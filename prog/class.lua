local class = {__index = {}}

local function new(object)
  local instance = object or {value = 1}
  local self = setmetatable(instance, class)
  return self
end

function class.__index:set_value(v)
  self.value = v
end

function class.__index:get_value()
  return self.value
end

local class = {new = new}

return class