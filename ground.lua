GroundY = 96

function createGround()
	width = love.graphics.getWidth()
	height = love.graphics.getHeight()-GroundY
	ground= love.graphics.newCanvas(width,height)
	love.graphics.setCanvas(ground)
		love.graphics.setColor(244, 164, 96, 255)
		love.graphics.clear()
		love.graphics.setBlendMode("alpha")
		love.graphics.rectangle('fill', 0,0, width, height)
--		love.graphics.rectangle("fill", 0, GroundY, love.graphics.getWidth(), love.graphics.getHeight())
	love.graphics.setCanvas()
end

function createHole(x,y)
	love.graphics.setCanvas(ground)
		love.graphics.setColor(139, 115, 85, 100)
		love.graphics.circle('fill', x, y-GroundY, 18, 111)
	love.graphics.setCanvas()
end

function drawGround()
	love.graphics.draw(ground,0,GroundY)
end

function isOpenSpace(x,y)
	data = ground:newImageData()
	r,g,b,a = data:getPixel(x,y)
	if a == 139 then
		return true
	end
	return false
end