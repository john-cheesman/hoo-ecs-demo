Vector = require('lib.vector')

local HooECS = require('lib.HooECS')
HooECS.initialize({ globals = true, debug = true })
local Factory = require('src.entity_factory')
local InputSystem = require('src.systems.input_system')
local MovementSystem = require('src.systems.movement_system')
local PhysicsRenderingSystem = require('src.systems.physics_rendering_system')

local engine, world, input, factory

function love.load(args)
    if arg[#arg] == '-debug' then require('mobdebug').start() end
    
    engine = Engine()
    engine:addSystem(InputSystem())
    engine:addSystem(MovementSystem())
    engine:addSystem(PhysicsRenderingSystem())
    world = love.physics.newWorld()
    factory = Factory('data.player_data')
    
    factory:build(engine, world, input)
end

function love.update(dt)
    world:update(dt)
    engine:update(dt)
end

function love.draw()
    engine:draw()
end
