local fecs = require 'fecs'

local Position = fecs.rigidclass(
{ number = {'x', 'y'}}, 'Position')

function Position:initialize(x, y)
    self.x = x
    self.y = y
end

fecs.ComponentManager:add(Position)

local PositionSystem = fecs.middleclass('PositionSystem')

function PositionSystem:initialize()
    self.components =
    { 
        'Position'
    }
end

function PositionSystem:process(position)
    position.x = position.x + 1
    position.y = position.y - 1
end

fecs.SystemManager:add(PositionSystem())
