require "player"
require "ground"



function love.load()
	createGround();
end

function love.update(dt)
	player.update(dt)
end

function love.draw()
	love.graphics.setColor(255, 255, 255, 255)
	drawGround()
	player.draw()
--	love.graphics.draw(ground)

end 



