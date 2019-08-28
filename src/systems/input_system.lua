local InputSystem = class('InputSystem', System)

function InputSystem:update()
    for k, entity in pairs(self.targets) do
        local input = entity:get('Input')
        
        input.controls:update()
        input.direction.x, input.direction.y = input.controls:get('move')
    end
end

function InputSystem:requires()
    return { 'Input' }
end

return InputSystem
