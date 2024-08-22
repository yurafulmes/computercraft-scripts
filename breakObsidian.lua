while true do
    -- Check and dig in front
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
        end
    end

    -- Turn to the left, check and dig
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
        end
    end

    -- Turn to the left, check and dig (now facing back)
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
        end
    end

    -- Turn to the left, check and dig (now facing right)
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
        end
    end

    -- Turn back to the original direction
    turtle.turnLeft()
end
