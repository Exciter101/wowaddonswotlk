local function BuffQueue(init)
    -- the new instance
    local self = {
        -- public fields go in the instance table
    }

    local queue = {}
  
    function self.addRecord(queueRecord)
        table.insert(queue, queueRecord)
    end
  
    function self.removeRecord(index)
        if (index ~= nil) then
            return table.remove(queue, index)
        else
            return table.remove(queue)
        end
    end
  
    -- return the instance
    return self
end
