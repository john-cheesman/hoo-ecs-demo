local Baton = require('lib.baton')

local InputComponent = Component.create('Input')

function InputComponent:initialize(controls_config, direction)
    assert(controls_config.pairs.move)
    assert(direction)

    self.controls = Baton.new(controls_config)
    self.direction = direction
end

return InputComponent
