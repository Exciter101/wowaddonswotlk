local function QueueRecord(group, unit, auraGroupKey, type)
    -- the new instance
    local self = {
      -- public fields go in the instance table
      public_field = 0
    }

    local group = group
    local unit = unit
    local auraGroupKey = auraGroupKey
    local type = type
  
    function self.get(key)
      return [key]
    end
  
    function self.set(key, val)
      [key] = val
    end
  
    -- return the instance
    return self
end
