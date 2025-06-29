local baseUrl = "https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/GUIS/"

local firstScript = "List.lua"

local scripts = {
    ["Universal-Scripts.lua"] = 0.1,
    ["Home.lua"] = 0.5,
    ["ChatLog.lua"] = 0.5,
    ["Stat-Board.lua"] = 0.5
}

local success, response = pcall(function()
    return game:HttpGet(baseUrl .. firstScript)
end)

if success and response then
    local ok = pcall(function()
        loadstring(response)()
    end)

    if ok then
        for scriptName, delay in pairs(scripts) do
            spawn(function()
                wait(delay)
                local fullUrl = baseUrl .. scriptName
                local s, res = pcall(function()
                    return game:HttpGet(fullUrl)
                end)
                if s and res then
                    pcall(function()
                        loadstring(res)()
                    end)
                end
            end)
        end

        spawn(function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/Create/buttons.lua"))()
            end)
        end)
    end
end
wait(0.3)
