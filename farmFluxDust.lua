while true do
    -- Define function to perform actions after breaking obsidian
    local function handleObsidian()
        turtle.select(2)  -- Select the slot with redstone
        turtle.drop(1)    -- Drop only 1 redstone dust
        
        turtle.forward()
        turtle.select(3)  -- Select the slot with the obsidian
        turtle.placeUp()  -- Place the block
        turtle.back()     -- Move back to the original position
        turtle.attack()   -- Simulate a left-click on the placed block
        turtle.select(1)  -- Select the slot with redstone
    end

    -- Check and dig in front
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
            handleObsidian()
        end
    end

    -- Turn to the left, check and dig
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
            handleObsidian()
        end
    end

    -- Turn to the left, check and dig (now facing back)
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
            handleObsidian()
        end
    end

    -- Turn to the left, check and dig (now facing right)
    turtle.turnLeft()
    if turtle.detect() then
        local success, data = turtle.inspect()
        if success and data.name == "minecraft:obsidian" then
            turtle.dig()
            handleObsidian()
        end
    end

    -- Turn back to the original direction
    turtle.turnLeft()
end
