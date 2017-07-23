function love.load()
    posx, posy = love.graphics.getWidth() * 0.5, love.graphics.getHeight() * 0.5
    velx, vely = 0, 0 -- The scroll velocity
end

function love.draw()
    love.graphics.rectangle( 'line', posx, posy, 50, 50 )
end

function love.update( dt )
    posx = posx + velx * dt
    posy = posy + vely * dt

    -- Gradually reduce the velocity to create smooth scrolling effect.
    velx = velx - velx * math.min( dt * 10, 1 )
    vely = vely - vely * math.min( dt * 10, 1 )
end

function love.wheelmoved( dx, dy )
    velx = velx + dx * 20
    vely = vely + dy * 20
end
