
local function setVisualMoney(amount)
    local num = tonumber(amount)
    if not num then
        warn("Invalid number provided")
        return false
    end
    
    local player = game:GetService("Players").LocalPlayer
    local done = false

    local ls = player:FindFirstChild("leaderstats")
    if ls then
        local s = ls:FindFirstChild("Sheckles")
        if s then 
            s.Value = num 
            done = true 
        end
        
        if not done then
            for _, name in pairs({"sheckles","Money","money","Cash","cash","Coins","coins"}) do
                local s2 = ls:FindFirstChild(name)
                if s2 then 
                    s2.Value = num 
                    done = true 
                    break 
                end
            end
        end
        
        if not done then
            for _, c in pairs(ls:GetChildren()) do
                if c:IsA("IntValue") or c:IsA("NumberValue") then
                    c.Value = num 
                    done = true 
                    break
                end
            end
        end
    end

    if not done then
        for _, v in ipairs(player:GetDescendants()) do
            if (v:IsA("IntValue") or v:IsA("NumberValue")) and (
                v.Name:lower():find("sheckle") or v.Name:lower():find("money") or
                v.Name:lower():find("cash") or v.Name:lower():find("coin")
            ) then
                v.Value = num 
                done = true 
                break
            end
        end
    end
    
    return done
end

setVisualMoney(1000000000)
