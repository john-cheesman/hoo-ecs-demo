local PhysicsComponent = Component.create('Physics')

function PhysicsComponent:initialize(physics_data, world)
    self.body = love.physics.newBody(world, physics_data.position.x, physics_data.position.y, physics_data.type)
    self.shape = physics_data.shape
    self.fixture = love.physics.newFixture(self.body, self.shape)
end

return PhysicsComponent
