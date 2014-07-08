local lds = require 'lds.lds'
local ComponentManager = require 'ComponentManager'
local SystemManager = require 'SystemManager'
local rigidclass = require 'rigidclass.rigidclass'
local middleclass = rigidclass.middle

local MAX_SIZE = 10000

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
end

return
{
    rigidclass = rigidclass,
    middleclass = middleclass,
    ComponentManager = ComponentManager,
    SystemManager = SystemManager,
    Vector = lds.Vector,
}
