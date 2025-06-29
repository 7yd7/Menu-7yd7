local baseUrl = "https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/GUIS/"
local firstScript = "List.lua"
local scripts = {
    "Universal-Scripts.lua",
    "Home.lua",
    "ChatLog.lua",
    "Stat-Board.lua"
}

local function loadAndExecuteScript(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success and response and response ~= "" then
        pcall(function()
            loadstring(response)()
        end)
    end
end

local firstScriptSuccess = loadAndExecuteScript(baseUrl .. firstScript)

if firstScriptSuccess then
    for i, scriptName in ipairs(scripts) do
        local fullUrl = baseUrl .. scriptName
        loadAndExecuteScript(fullUrl)
    end
    
    loadAndExecuteScript("https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/Create/buttons.lua")
end
