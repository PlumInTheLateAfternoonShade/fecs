local rigidclass = require 'rigidclass.rigidclass'
local MAX_SIZE = 10000


local Position = rigidclass(
{ number = {'x', 'y'}}, 'Position')

function Position:initialize(x, y)
    self.x = x
    self.y = y
end

--local INC_ARR_SIZE = 10000
--local increments = {}

--[=[local function calculateIncrements(components1, components2)
   for comp1Index = 0, MAX_SIZE do 
       local offset = 0
       while components2[comp1Index + offset].id < components1[comp1Index].id do
           offset = offset + 1
       end
       increments[comp1Index*2] = increments[comp1Index*2] + comp1Index
       increments[comp1Index*2 + 1] =
       increments[comp1Index*2 + 1] + comp1Index + offset
       if components2[comp1Index + offset].id == components1[comp1Index].id then

       end
   end
end]=]--

local function process(comp1, comp2)

end

local function processAll2Comp(components1, components2)
    local comp1Index = 0
    local comp2Index = 0
    while comp1Index < MAX_SIZE and comp2Index < MAX_SIZE do
        while components2[comp2Index].id < components1[comp1Index].id
            and comp2Index < MAX_SIZE do
            comp2Index = comp2Index + 1
        end
        if components1[comp1Index].id == components2[comp2Index].id then
            process(components1[comp1Index], components2[comp2Index])
            comp2Index = comp2Index + 1
        end
        comp1Index = comp1Index + 1
    end

    --[=[for i = 1, INC_ARR_SIZE, 2 do
        process(components1[increments[i]],
                components2[increments[i + 1]])
    end]=]--
end


