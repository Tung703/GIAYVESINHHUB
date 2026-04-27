-- loader.lua
local baseUrl = "https://raw.githubusercontent.com/TenBan/MyHub/main/"

-- Load UI
local UI = loadstring(game:HttpGet(baseUrl .. "ui/library.lua"))()

-- Detect game và load đúng script
local gameScripts = {
    [2753915549] = "games/bloxfruits.lua",  -- Blox Fruits
    [1537690962] = "games/petsim.lua",       -- Pet Sim
}

local placeId = game.PlaceId
local scriptPath = gameScripts[placeId]

if scriptPath then
    loadstring(game:HttpGet(baseUrl .. scriptPath))()
else
    UI:Notify("Game này chưa được hỗ trợ!")
end
