
require "ground"
player = {}
player.x = 320
player.y = GroundY-16
player.speed = 1.25

function player.update(dt)
	if love.keyboard.isDown("up") and GroundY-16 < player.y then
		player.y = player.y - player.speed
	end 
	if love.keyboard.isDown("down") then
		player.y = player.y + player.speed
	end 
	if love.keyboard.isDown("left") then
		player.x = player.x - player.speed
	end
	if love.keyboard.isDown("right") then
		player.x = player.x + player.speed
	end  
	createHole(player.x,player.y)
end

function player.draw()
	love.graphics.rectangle("fill", player.x-16 , player.y-16, 32, 32)
end