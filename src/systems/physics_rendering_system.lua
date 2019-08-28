local PhysicsRenderingSystem = class('PhysicsRenderingSystem', System)

function PhysicsRenderingSystem:draw()
    for k, entity in pairs(self.targets) do
        local shape = entity:get('Physics').shape
        local body = entity:get('Physics').body        

        if shape:typeOf('CircleShape') then
            local cx, cy = shape:getPoint()
            love.graphics.circle('line', body:getX() + cx, body:getY() + cy, shape:getRadius())
        elseif shape:typeOf('PolygonShape') then
            love.graphics.polygon('line', body:getWorldPoints(shape:getPoints()))
        else
            love.graphics.line(body:getWorldPoints(shape:getPoints()))
        end
    end
end

function PhysicsRenderingSystem:requires()
    return { 'Physics' }
end

return PhysicsRenderingSystem
