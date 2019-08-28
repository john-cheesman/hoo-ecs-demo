local InputComponent = require('src.components.input_component')
local PhysicsComponent = require('src.components.physics_component')
local SpeedComponent = require('src.components.speed_component')

local EntityFactory = class('EntityFactory')

function EntityFactory:initialize(src)
    self.data = require(src)
end

function EntityFactory:build(engine, world)
    for i, entity_data in ipairs(self.data) do
        local entity = Entity()
        
        if (entity_data.input) then
            entity:add(InputComponent(entity_data.input.config, entity_data.input.direction))
        end
        
        if (entity_data.physics) then
            entity:add(PhysicsComponent(entity_data.physics, world))
        end
        
        if (entity_data.speed) then
            entity:add(SpeedComponent(entity_data.speed))
        end
        
        engine:addEntity(entity)
    end
    
    return engine
end

return EntityFactory
