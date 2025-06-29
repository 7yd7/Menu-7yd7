local baseUrl = "https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/GUIS/"

local scripts = {
    "List.lua",
    "Home.lua",
    "Universal-Scripts.lua",
    "ChatLog.lua",
    "Stat-Board.lua"
}

for _, scriptName in ipairs(scripts) do
    spawn(function()
        local fullUrl = baseUrl .. scriptName
        local success, response = pcall(function()
            return game:HttpGet(fullUrl)
        end)

        if success and response then
            local runSuccess, runErr = pcall(function()
                loadstring(response)()
            end)
    end
end)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/Create/buttons.lua"))()
