function love.load()
    SCALE = 3
    GAME_WIDTH = 200
    GAME_HEIGHT = 150
    love.graphics.setDefaultFilter("nearest", "nearest")
    gameCanvas = love.graphics.newCanvas(GAME_WIDTH, GAME_HEIGHT)

    local font = love.graphics.newFont("font/DinaRemasterII.ttc", 12)
    love.graphics.setFont(font)

    player = {
        img = love.graphics.newImage("assets/player1.png"),
        x = 100,
        y = 0
    }
end

function love.update(dt)
end

function love.draw()
    love.graphics.setDefaultFilter("nearest", "nearest") -- turn off image smoothing

    -- Draw to canvas (200x150)
    love.graphics.setCanvas(gameCanvas)
    love.graphics.clear(0, 0, 0)
    
    love.graphics.print("test for scaling", 0, 0)
    love.graphics.draw(player.img, player.x, player.y)
    
    -- Draw canvas to screen, upscaled 3x // DONT TOUCH, ADD NEW CODE ABOVE THIS LINE
    love.graphics.setCanvas()
    love.graphics.draw(gameCanvas, 0, 0, 0, SCALE, SCALE)
end