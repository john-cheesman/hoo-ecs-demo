return {
    {
        input = {
            config = {
                controls = {
                    left = { 'key:left', 'key:a', 'axis:leftx-', 'button:dpleft' },
                    right = { 'key:right', 'key:d', 'axis:leftx+', 'button:dpright' },
                    up = { 'key:up', 'key:w', 'axis:lefty-', 'button:dpup' },
                    down = { 'key:down', 'key:s', 'axis:lefty+', 'button:dpdown' },
                    action = { 'key:x', 'button:a' },
                },
                pairs = {
                    move = { 'left', 'right', 'up', 'down' }
                }
            },
            direction = Vector()
        },
        physics = {
            position = Vector(100, 100),
            type = 'kinematic',
            shape = love.physics.newRectangleShape(32, 32)
        },
        speed = 100
    }
}
