local MovementSystem = class('MovementSystem', System)

function MovementSystem:update(dt)
    for k, entity in pairs(self.targets) do
        local direction = entity:get('Input').direction
        local body = entity:get('Physics').body
        local speed = entity:get('Speed').value
        local target_position = Vector(body:getPosition()) + (direction * speed * dt) 
        
        body:setPosition(target_position.x, target_position.y)
    end
end

function MovementSystem:requires()
    return { 'Input', 'Physics', 'Speed' }
end

return MovementSystem
