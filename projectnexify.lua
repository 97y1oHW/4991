--[[                                                                                                                     
Project Nexify
Licensed By ObfuscoMatrix

[ https://obfuscomatrix.com/  ]

NNNNNNNN        NNNNNNNNEEEEEEEEEEEEEEEEEEEEEEXXXXXXX       XXXXXXXIIIIIIIIIIFFFFFFFFFFFFFFFFFFFFFFYYYYYYY       YYYYYYY
N:::::::N       N::::::NE::::::::::::::::::::EX:::::X       X:::::XI::::::::IF::::::::::::::::::::FY:::::Y       Y:::::Y
N::::::::N      N::::::NE::::::::::::::::::::EX:::::X       X:::::XI::::::::IF::::::::::::::::::::FY:::::Y       Y:::::Y
N:::::::::N     N::::::NEE::::::EEEEEEEEE::::EX::::::X     X::::::XII::::::IIFF::::::FFFFFFFFF::::FY::::::Y     Y::::::Y
N::::::::::N    N::::::N  E:::::E       EEEEEEXXX:::::X   X:::::XXX  I::::I    F:::::F       FFFFFFYYY:::::Y   Y:::::YYY
N:::::::::::N   N::::::N  E:::::E                X:::::X X:::::X     I::::I    F:::::F                Y:::::Y Y:::::Y   
N:::::::N::::N  N::::::N  E::::::EEEEEEEEEE       X:::::X:::::X      I::::I    F::::::FFFFFFFFFF       Y:::::Y:::::Y    
N::::::N N::::N N::::::N  E:::::::::::::::E        X:::::::::X       I::::I    F:::::::::::::::F        Y:::::::::Y     
N::::::N  N::::N:::::::N  E:::::::::::::::E        X:::::::::X       I::::I    F:::::::::::::::F         Y:::::::Y      
N::::::N   N:::::::::::N  E::::::EEEEEEEEEE       X:::::X:::::X      I::::I    F::::::FFFFFFFFFF          Y:::::Y       
N::::::N    N::::::::::N  E:::::E                X:::::X X:::::X     I::::I    F:::::F                    Y:::::Y       
N::::::N     N:::::::::N  E:::::E       EEEEEEXXX:::::X   X:::::XXX  I::::I    F:::::F                    Y:::::Y       
N::::::N      N::::::::NEE::::::EEEEEEEE:::::EX::::::X     X::::::XII::::::IIFF:::::::FF                  Y:::::Y       
N::::::N       N:::::::NE::::::::::::::::::::EX:::::X       X:::::XI::::::::IF::::::::FF               YYYY:::::YYYY    
N::::::N        N::::::NE::::::::::::::::::::EX:::::X       X:::::XI::::::::IF::::::::FF               Y:::::::::::Y    
NNNNNNNN         NNNNNNNEEEEEEEEEEEEEEEEEEEEEEXXXXXXX       XXXXXXXIIIIIIIIIIFFFFFFFFFFF               YYYYYYYYYYYYY                                                                                                                                                                                                                        
--]]

originalLoadstring = loadstring
originalGetMetatable = getmetatable
originalSetMetatable = setmetatable
originalGame = game
originalEnv = getfenv
originalDebug = debug
originalPlayers = game:GetService("Players")
originalPlayer = originalPlayers.LocalPlayer
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

 function getClientId()
    local clientId = RbxAnalyticsService:GetClientId()  
    return clientId
end
client_id = getClientId()
function checkLoadstring()
    if loadstring and loadstring ~= originalLoadstring then
        originalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Tampering Detected Type: 1")
        return true
    end
    return false
end
local auth_start_time = tick()  -- Start time (in seconds)
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

license_key = key
local executor_name = "Solara"
local localplayer_name = game.Players.LocalPlayer.Name
local place_id = game.PlaceId

local position = "Unknown"
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

local server_url = "https://7745-94-137-92-1.ngrok-free.app/"


local data = {
    license_key = license_key,
    executor_name = executor_name,
    localplayer_name = localplayer_name,
    place_id = place_id,
    position = position,
    client_id = client_id  
}


local json_data = HttpService:JSONEncode(data)

local response = http_request({
    Url = server_url,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = json_data
})

if response.StatusCode == 200 then
    local result = HttpService:JSONDecode(response.Body)
    if result.status == "success" then
        -- Authentication successful
        print("Authenticated successfully!")

        -- Calculate elapsed time
        local auth_elapsed_time = tick() - auth_start_time  -- Elapsed time in seconds

        -- Print the time taken to authenticate with high precision
        print(string.format("Authentication took: %.6f seconds", auth_elapsed_time))

    else
        print("Authentication failed:", result.message)
        game.Players.LocalPlayer:Kick("Authentication failed: " .. result.message)
        return
    end
else
    print("Error:", response.Body)
    game.Players.LocalPlayer:Kick("Error connecting to authentication server")
    return
end

function checkMetatables()
    if getmetatable ~= originalGetMetatable or setmetatable ~= originalSetMetatable then
        originalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Tampering Detected Type: 2")
        return true
    end
    return false
end

function checkGameObject()
    if game ~= originalGame then
        originalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Tampering Detected Type: 3")
        return true
    end
    return false
end

function checkDebugFunctions()
    local success = pcall(function() debug.getinfo(1) end)
    if not success then
        originalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Tampering Detected Type: 4")
        return true
    end
    return false
end

spawn(function()
    while true do
        if checkLoadstring() or checkMetatables() or checkGameObject() or checkDebugFunctions() then
            break
        end
        wait(1) 
    end
end)

--SCRIPT
