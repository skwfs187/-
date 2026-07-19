if game.PlaceId == 16452693191 then
    local you = game:GetService("Players").LocalPlayer
    local n = you.Name

    local v = {}
    v.a = false
    v.f = false
    v.d = false
    
    function ga()
        local args = {
            [1] = Vector3.new(0),
            [2] = Vector3.new(0),
            [3] = Vector3.new(0),
            [4] = 0,
            [5] = "djhtelkds"
        }
        
        game:GetService("ReplicatedStorage").KickBall:FireServer(unpack(args))
        
        wait(0.5)
        
        local args = {
            [1] = n
        }
        
        game:GetService("ReplicatedStorage").GoalEvent:FireServer(unpack(args))
    end

    function gb()
        local args = {
            [1] = Vector3.new(0),
            [2] = Vector3.new(0),
            [3] = Vector3.new(0),
            [4] = 0,
            [5] = "djhtelkds"
        }
        
        game:GetService("ReplicatedStorage").KickBall:FireServer(unpack(args))
        
        wait(0.5)
        
        local args = {
            [1] = n
        }
        
        game:GetService("ReplicatedStorage").GoalEvent:FireServer(unpack(args))
    end

    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Lib/main/source.lua"))()
    local window = library:Window("Touch Football")
    window:Button("Bring Ball", function()
        game:GetService("Workspace").FootballField.SoccerBall.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end)

    window:Toggle("Auto Bring", true, function(bool)
        v.a = bool
        while v.a do
            game:GetService("Workspace").FootballField.SoccerBall.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        task.wait()
    end)

    window:Toggle("Auto Freeze", true, function(bool)
        v.f = bool
        while v.f do
            game:GetService("Workspace").FootballField.SoccerBall.Anchored = true
            local args = {
                [1] = Vector3.new(0),
                [2] = Vector3.new(0),
                [3] = Vector3.new(0),
                [4] = 0,
                [5] = n
            }
            
            game:GetService("ReplicatedStorage").KickBall:FireServer(unpack(args))
        end
        task.wait()
    end)

    window:Toggle("Delete Ball (Risk)", true, function(bool)
        v.d = bool
        while v.d do
            local args = {
                [1] = Vector3.new(560.5654296875, 600.843505859375, 1582.93701171875),
                [2] = Vector3.new(560.5654296875, 600.843505859375, 1582.93701171875),
                [3] = Vector3.new(560.5654296875, 600.843505859375, 1582.93701171875),
                [4] = 0,
                [5] = "djhtelkds"
            }
            
            game:GetService("ReplicatedStorage").KickBall:FireServer(unpack(args))
            
            game:GetService("Workspace").FootballField.SoccerBall.Anchored = true
        end
        task.wait()
    end)

    


    
end
