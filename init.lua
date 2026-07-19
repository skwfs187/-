local usr = "skwfs187"
local rep = "-"
local br = "main"

local url = string.format("https://raw.githubusercontent.com/%s/%s/%s/Scripts/", usr, rep, br)
local currentPlaceId = tostring(game.PlaceId)
local targetScriptUrl = url .. currentPlaceId .. ".lua"

print("[Loader] Checking support for PlaceId: " .. currentPlaceId)

local success, scriptContent = pcall(function()
    return game:HttpGet(targetScriptUrl)
end)

if success and scriptContent and not string.find(scriptContent, "404") then
    print("[Loader] Game supported! Loading script...")
    
    local func, err = loadstring(scriptContent)
    if func then
        func()
    else
        warn("[Loader] Syntax error compiling script: " .. tostring(err))
    end
else
    warn("[Loader] This game place is not supported or the file does not exist in the repository.")
end
