local baseUrl = "https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/GUIS/"
local firstScript = "List.lua"
local scripts = {
    "Universal-Scripts.lua",
    "Confirmation.lua",
    "Home.lua",
    "ChatLog.lua",
    "Stat-Board.lua"
}

local scriptsLoaded = 0
local totalScripts = #scripts
local allScriptsReady = false

local function checkAllLoaded()
    if scriptsLoaded >= totalScripts and not allScriptsReady then
        allScriptsReady = true
        spawn(function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/Create/buttons.lua"))()
            end)
        end)
    end
end

local success, response = pcall(function()
    return game:HttpGet(baseUrl .. firstScript)
end)

if success and response then
    local ok, err = pcall(function()
        loadstring(response)()
    end)
    
    if ok then
        for _, scriptName in ipairs(scripts) do
            spawn(function()
                local fullUrl = baseUrl .. scriptName
                local s, res = pcall(function()
                    return game:HttpGet(fullUrl)
                end)
                
                if s and res then
                    local loadSuccess = pcall(function()
                        loadstring(res)()
                    end)
                    
                    if loadSuccess then
                        scriptsLoaded = scriptsLoaded + 1
                        checkAllLoaded()
                    else

                    end
                else
                    scriptsLoaded = scriptsLoaded + 1
                    checkAllLoaded()
                end
            end)
        end
    end
end
