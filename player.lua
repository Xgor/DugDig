
require "ground"
player = {}
player.x = 320
player.y = GroundY-16
player.digSpeed = 1.25
player.walkMultiplier = 1.5
function player.update(dt)
	if love.keyboard.isDown("up") and GroundY-16 < player.y then
		player.move(0,-player.digSpeed)
	end 
	if love.keyboard.isDown("down") then
		player.move(0,player.digSpeed)
	end 
	if love.keyboard.isDown("left") then
		player.move(-player.digSpeed,0)
	end
	if love.keyboard.isDown("right") then
		player.move(player.digSpeed,0)
	end  
	createHole(player.x,player.y)
end

function player.move(x,y)
	if isOpenSpace(player.x +x*16,player.y+y * 16) then 
		x = x*player.walkMultiplier 
		y = y*player.walkMultiplier 
	end

	player.x = player.x + x
	player.y = player.y + y
end

function player.draw()
	love.graphics.rectangle("fill", player.x-16 , player.y-16, 32, 32)
end