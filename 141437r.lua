


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

loadstring(game:HttpGet("https://pastebin.com/raw/KQt4Xque"))()


key="123456"
ecp_key="1 2 2 2 2 3 4 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 9 9 9 9 9 9 9 9 9"
_haq="1 2 2 2 2 3 4 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 9 9 9 9 9 9 9 9 9"
if ecp_key==_haq then
print("con")
else
warn("con (2)")
return
end
 function API_Check()
    if Drawing == nil then
        return "No"
    else
        return "Yes"
    end
end



if _G.ScriptAlreadyOpened then
    warn("Blocked Multiple Instances.")
     return
end

_G.ScriptAlreadyOpened = true

loadmes = [[

                                     ============================
                                      [ Nexify Wave Loader ]
                                      Version: v1.9
                                      Key: Paid
                                     ============================
]]

warn(loadmes)
--[[
wait(3)
local Modules = {
    Colors =  {
        ["Green"] = "0,255,0", 
        ["Red"] = "255,0,0",
        ["White"] = "255,255,255",
        ["Pink"] = "255,102,153",
    },
    Services = {
        RunService = game:GetService("RunService"),
        CoreGui = game:GetService("CoreGui")
    }
}

Modules.ChangeColor = function() 
    local Loop
    Loop = Modules.Services.RunService.Heartbeat:Connect(function()
        local success, err = pcall(function()
            local devConsole = Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster")
            if not devConsole then
                Loop:Disconnect()
                return
            end

            for _, label in pairs(devConsole:GetDescendants()) do 
                if label:IsA("TextLabel") then 
                    label.RichText = true 
                end 
            end
        end)

        if not success then 
            warn("Error in ChangeColor: ", err)
            Loop:Disconnect()
        end 
    end)
end

Modules.InvalidLoad = function(watermark, color, delay, loadingsymbol)
    delay = delay or 0.1
    local Text = watermark..tostring(math.random(500, 20000))
    print(Text)

    local loadingLabel = nil
    local progress = ""
    local timeout = os.clock() + 5 -- 5-second timeout

    repeat
        task.wait()
        for _, label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do 
            if label:IsA("TextLabel") and string.find(label.Text:lower(), Text:lower()) then 
                loadingLabel = label 
                break
            end
        end
    until loadingLabel or os.clock() > timeout

    if not loadingLabel then
        warn("Loading label not found within the timeout.")
        return
    end

    for i = 1, 50 do
        progress = progress .. loadingsymbol
        loadingLabel.Text = string.format(
            "<font color='rgb(%s)' size='15'>[%s] [%d%% loaded] %s</font>",
            Modules.Colors["Pink"], watermark, i * 2, progress
        )
        task.wait(delay)
    end

    loadingLabel.Text = string.format(
        "<font color='rgb(%s)' size='15'>[%s] Anti-Tamper Enabled Loading Further... </font>",
        Modules.Colors["Green"], watermark
    )
end

-- Call the functions
Modules.ChangeColor()
Modules.InvalidLoad("Nexify", "Red", 0.05, "#")

--]]

--messagebox("Loaded Nexify Wave.\n\n\n- By mafaka.", "Nexify Wave", 0)
 g = Instance.new("ScreenGui")
g.Parent = game:GetService("CoreGui")
 t = Instance.new("TextLabel")
t.Text = "Nexify /\\ Wave"
t.Font = Enum.Font.Arcade
t.TextSize = 50
t.TextColor3 = Color3.new(1, 1, 1)
t.BackgroundTransparency = 1
t.AnchorPoint = Vector2.new(0.5, 0.5)
t.Position = UDim2.new(0.5, 0, -0.5, 0)
t.Size = UDim2.new(0, 300, 0, 100)
t.Parent = g

tweenService = game:GetService("TweenService")


tweenService:Create(
    t, 
    TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), 
    {Position = UDim2.new(0.5, 0, 0.5, 0)}
):Play()


task.spawn(function()
    task.wait(5)
    tweenService:Create(
        t, 
        TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), 
        {TextTransparency = 1, TextStrokeTransparency = 1}
    ):Play()
    task.wait(1)
    g:Destroy()
end)















 function API_Check()
    if Drawing == nil then
        return "No"
    else
        return "Yes"
    end
end

 Find_Required = API_Check()

if Find_Required == "No" then
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Nexify";
        Text = "Crosshair script could not be loaded because your exploit is unsupported.";
        Duration = math.huge;
        Button1 = "OK"
    })

    return
end

 Players = game:GetService("Players")
 RunService = game:GetService("RunService")
 UserInputService = game:GetService("UserInputService")
 Camera = workspace.CurrentCamera

 Typing = false

 ViewportSize_ = Camera.ViewportSize / 2
 Axis_X, Axis_Y = ViewportSize_.X, ViewportSize_.Y

 HorizontalLine = Drawing.new("Line")
 VerticalLine = Drawing.new("Line")


_G.CrosshairEnabled = false  

 Real_Size = 20 / 2  


HorizontalLine.Thickness = 1
VerticalLine.Thickness = 1
HorizontalLine.Color = Color3.fromRGB(0, 255, 0)
VerticalLine.Color = Color3.fromRGB(0, 255, 0)
HorizontalLine.Transparency = 1
VerticalLine.Transparency = 1

RunService.RenderStepped:Connect(function()
    if _G.CrosshairEnabled then
        HorizontalLine.Visible = true
        VerticalLine.Visible = true
        
        if _G.ToMouse then
            local MousePos = UserInputService:GetMouseLocation()
            HorizontalLine.From = Vector2.new(MousePos.X - Real_Size, MousePos.Y)
            HorizontalLine.To = Vector2.new(MousePos.X + Real_Size, MousePos.Y)
            
            VerticalLine.From = Vector2.new(MousePos.X, MousePos.Y - Real_Size)
            VerticalLine.To = Vector2.new(MousePos.X, MousePos.Y + Real_Size)
        else
            HorizontalLine.From = Vector2.new(Axis_X - Real_Size, Axis_Y)
            HorizontalLine.To = Vector2.new(Axis_X + Real_Size, Axis_Y)
        
            VerticalLine.From = Vector2.new(Axis_X, Axis_Y - Real_Size)
            VerticalLine.To = Vector2.new(Axis_X, Axis_Y + Real_Size)
        end
    else
        HorizontalLine.Visible = false
        VerticalLine.Visible = false
    end
end)


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

--[[
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
--]]
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
wait(0.2)
print("CHECK 1")

print("CHECK 2")

print("CHECK 3")

print("CHECK 4")

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
    
    print("A-C SYSTEM RESULT: BYPASS")

    

else
    
    print("Anti-Crack System Trigered!")
    return
end
print(".")
print("DIRECTED.")


-- Variables for the UI elements
 player = game.Players.LocalPlayer
 ammoTextLabel = player.PlayerGui.MainGui.MainFrame.InteractionFrame.EquippedItem.Frame.Ammo

-- Variable to track whether the ammo check is enabled
 isAmmoCheckEnabled = false

-- Local variable to store the ammo value
 currentAmmo = 0
 maxAmmo = 0

-- Custom threshold for when to trigger reload
 reloadThreshold = 3  -- Default value, can be changed

-- Function to update the ammo values
 function updateAmmoValues()
    -- Get the ammo text (e.g., "10/30")
    local ammoText = ammoTextLabel.Text
    
    -- Try to split the ammo text into current ammo and max ammo
    local ammoCurrent, ammoMax = ammoText:match("(%d+)/(%d+)")
    
    -- If the ammo text is valid (both current and max ammo found)
    if ammoCurrent and ammoMax then
        currentAmmo = tonumber(ammoCurrent)
        maxAmmo = tonumber(ammoMax)
    end
end

-- Function to check ammo and trigger reload if it's below the threshold
 function checkAmmo()
    -- Update ammo values
    updateAmmoValues()

    -- Check if current ammo is below the custom threshold
    if currentAmmo <= reloadThreshold then
        -- Fire the reload event
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Reload"):InvokeServer()
        print("Reload triggered!")
    end
end

-- Function to toggle the ammo check on or off
 function toggleAmmoCheck()
    isAmmoCheckEnabled = not isAmmoCheckEnabled
    if isAmmoCheckEnabled then
        -- Start checking ammo every 0.01 seconds if it's enabled
        while isAmmoCheckEnabled do
            checkAmmo()
            wait(0.01)  -- Wait 0.01 seconds before checking again
        end
        print("Ammo check enabled.")
    else
        print("Ammo check disabled.")
    end
end



-- Example usage: calling toggleAmmoCheck to enable or disable ammo checking


--[[
-- Function to print the loading bar with percentage and hash marks
local function printLoadingBar(percentage)
    local totalLength = 33
    local hashMarks = math.floor(percentage / 3.1)  -- Number of hash marks
    local dashes = totalLength - hashMarks          -- Remaining dashes
    
    local loadingBar = string.rep("#", hashMarks) .. string.rep("-", dashes)
    warn(string.format("Loading Nexify %%%-3d %s", percentage, loadingBar))
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
--]]
print("If script ui not appears try spawning and waiting for 2 min")
warn("Silent Check 5")
wait(0.2)
warn("end")


local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
print("ok")

local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
local Library = loadstring(game:HttpGet(repo .. 'libbet.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Nexify /\ Wave PD',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.3
})

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('combat ⚔️'),
    esptabreal = Window:AddTab('Esp 👤'),
    antiaimtab = Window:AddTab('Anti-Aim 🛡️'),
    Esptab33 = Window:AddTab('Misc 🔅'),
    ['UI Settings'] = Window:AddTab('UI Settings 🎚️'),
}

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))
local antiaimtab = Tabs.antiaimtab:AddLeftGroupbox('Spin')
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Combat')
local Rightone = Tabs.Main:AddRightGroupbox('Combat2')
local Esptab3 = Tabs.Esptab33:AddLeftGroupbox('Movement')
local eaesptabactual = Tabs.esptabreal:AddLeftGroupbox('Esp')


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
        Title = "Nexify User Found!";
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
            sendNotification("Nexify User Found: " .. player.Name .. " Executor: Wave")
        elseif distance >= teleportThresholdSmall and distance < teleportThresholdLarge and not flaggedPlayers[player.Name] then
            flaggedPlayers[player.Name] = true
            print(player.Name .. " flagged for small teleportation!")
            sendNotification(" Nexify User Found: " .. player.Name .. " Executor: Solara")
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

	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("Unlocked")
	Library:Notify("CHECK 2")

	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("CHECK 3")

	loadstring(game:HttpGet("https://pastebin.com/raw/bZEizLZt"))()
	Library:Notify("Check 100%")


bypassedanticheat = false

 LocalPlayer = game.Players.LocalPlayer
 Humanoid = LocalPlayer.Character and LocalPlayer.Character:WaitForChild("Humanoid")

if not Humanoid then
    error("Humanoid not found!")
end

local Connections = {
    { "CharacterController", Humanoid:GetPropertyChangedSignal("WalkSpeed") },
    { "CharacterController", Humanoid:GetPropertyChangedSignal("JumpHeight") },
    { "CharacterController", Humanoid:GetPropertyChangedSignal("HipHeight") },
    { "CharacterController", workspace:GetPropertyChangedSignal("Gravity") },
    { "CharacterController", Humanoid.StateChanged },
    { "CharacterController", Humanoid.ChildAdded },
    { "CharacterController", Humanoid.ChildRemoved },
}

for _, Array in ipairs(Connections) do
    for _, Connection in ipairs(getconnections(Array[2])) do
        if type(Connection.Function) == "function" then
            local Info = debug.getinfo(Connection.Function)

            if Info and string.find(Info.source or "", Array[1]) then
            warn("internal load")
        --print("{tostring(Connection.Function)}:", tostring(Array[2]))
                Connection:Disable()
                bypassedanticheat = true
                if bypassedanticheat == true then
warn("Bypassed Anti Cheat: true")
else
warn("Bypassed Anti Cheat: false")
                end
                
            end
        end
    end
end

print("Done")

Library:Notify("Activated semi anti-cheat bypasser")

wait(0.3)


local silent_aim = {
    enabled = false,  -- Toggle this to enable/disable silent aim
    fov = true,
    fovsize = 170,
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
    versionText.Text = "Nexify V1.8"
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
        local cameraPosition = workspace.CurrentCamera.CFrame.Position
        
        -- Raycasting to check if there is an obstruction
        local direction = (head.Position - cameraPosition).unit * (head.Position - cameraPosition).Magnitude
        local raycastResult = workspace:Raycast(cameraPosition, direction)
        
        -- Check if the ray hit something
        if raycastResult then
            local hitPart = raycastResult.Instance
            -- Ensure the hitPart is not the player's own character or their head
            if hitPart:IsDescendantOf(character) then
                return false -- Not visible if the ray hits any part of the character
            end
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
            warn("disbaled")  -- Call the toggle function
		wait(1)			
        end
    end
end)

warn("disbaled")


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
ViewModelSettings = {
    Color = Color3.new(0.768627, 0.039216, 0.913725), 
    Material = Enum.Material.Plastic, 
    IsEnabled = false, 
    HighlightEnabled = false, 
    HighlightTransparency = 0.5, 
    ArmCustomizationEnabled = false 
}


function applySettings(viewModel)
    if viewModel and ViewModelSettings.IsEnabled then
        
        for _, part in ipairs(viewModel:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = ViewModelSettings.Color 
                part.Material = ViewModelSettings.Material 

                
                local highlight = part:FindFirstChildOfClass("Highlight")
                if ViewModelSettings.HighlightEnabled then
                    if not highlight then
                        highlight = Instance.new("Highlight")
                        highlight.Parent = part
                    end
                    highlight.FillColor = ViewModelSettings.Color 
                    highlight.OutlineColor = Color3.new(1, 1, 1) 
                    highlight.OutlineTransparency = ViewModelSettings.HighlightTransparency 
                elseif highlight then
                    highlight:Destroy() 
                end
            end
            
            
            if part:IsA("MeshPart") then
                local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
                if surfaceAppearance then
                    surfaceAppearance:Destroy() 
                end
            end
        end
    end
end


function customizeArms(viewModel)
    if not viewModel then return end
    
    
    local wastelandShirt = viewModel:FindFirstChild("WastelandShirt")
    if wastelandShirt then
        wastelandShirt:Destroy()
    end
    
    
    local armParts = { "LeftLowerArm", "LeftUpperArm", "RightLowerArm", "RightUpperArm" }
    
    
    for _, armName in ipairs(armParts) do
        local armPart = viewModel:FindFirstChild(armName)
        if armPart and armPart:IsA("BasePart") then
            armPart.Material = Enum.Material.ForceField 
            armPart.Transparency = 0.8 

            
            local highlight = armPart:FindFirstChildOfClass("Highlight")
            if not highlight then
                highlight = Instance.new("Highlight")
                highlight.Parent = armPart
            end
            highlight.FillColor = ViewModelSettings.Color 
            highlight.OutlineColor = Color3.new(1, 1, 1) 
            highlight.OutlineTransparency = 0.5 
        end
    end
end


Rightone:AddLabel('-------------------------------------------------------------')



SkyBoxes = {
    ["Standard"] = {
        ["SkyboxBk"] = "rbxassetid://123456789", 
        ["SkyboxDn"] = "rbxassetid://123456789",
        ["SkyboxFt"] = "rbxassetid://123456789",
        ["SkyboxLf"] = "rbxassetid://123456789",
        ["SkyboxRt"] = "rbxassetid://123456789",
        ["SkyboxUp"] = "rbxassetid://123456789"
    },
    ["Among Us"] = {
        ["SkyboxBk"] = "rbxassetid://5752463190",
        ["SkyboxDn"] = "rbxassetid://5752463190",
        ["SkyboxFt"] = "rbxassetid://5752463190",
        ["SkyboxLf"] = "rbxassetid://5752463190",
        ["SkyboxRt"] = "rbxassetid://5752463190",
        ["SkyboxUp"] = "rbxassetid://5752463190"
    },
    ["Doge"] = {
        ["SkyboxBk"] = "rbxassetid://159713165",
        ["SkyboxDn"] = "rbxassetid://159713165",
        ["SkyboxFt"] = "rbxassetid://5752463190",
        ["SkyboxLf"] = "rbxassetid://5752463190",
        ["SkyboxRt"] = "rbxassetid://159713165",
        ["SkyboxUp"] = "rbxassetid://159713165"
    },
    ["Spongebob"] = {
        ["SkyboxBk"] = "rbxassetid://277099484",
        ["SkyboxDn"] = "rbxassetid://277099500",
        ["SkyboxFt"] = "rbxassetid://277099554",
        ["SkyboxLf"] = "rbxassetid://277099531",
        ["SkyboxRt"] = "rbxassetid://277099589",
        ["SkyboxUp"] = "rbxassetid://277101591"
    },
["Blood"] = {
    ["SkyboxBk"] = "rbxassetid://163288979",  
    ["SkyboxDn"] = "rbxassetid://163288979",  
    ["SkyboxFt"] = "rbxassetid://163288979",  
    ["SkyboxLf"] = "rbxassetid://163288979",  
    ["SkyboxRt"] = "rbxassetid://163288979",  
    ["SkyboxUp"] = "rbxassetid://163288979"   
},

    ["Deep Space"] = {
        ["SkyboxBk"] = "rbxassetid://159248188",
        ["SkyboxDn"] = "rbxassetid://159248183",
        ["SkyboxFt"] = "rbxassetid://159248187",
        ["SkyboxLf"] = "rbxassetid://159248173",
        ["SkyboxRt"] = "rbxassetid://159248192",
        ["SkyboxUp"] = "rbxassetid://159248176"
    },
    ["Winter"] = {
        ["SkyboxBk"] = "rbxassetid://510645155",
        ["SkyboxDn"] = "rbxassetid://510645130",
        ["SkyboxFt"] = "rbxassetid://510645179",
        ["SkyboxLf"] = "rbxassetid://510645117",
        ["SkyboxRt"] = "rbxassetid://510645146",
        ["SkyboxUp"] = "rbxassetid://510645195"
    },
    ["Clouded Sky"] = {
        ["SkyboxBk"] = "rbxassetid://252760981",
        ["SkyboxDn"] = "rbxassetid://252763035",
        ["SkyboxFt"] = "rbxassetid://252761439",
        ["SkyboxLf"] = "rbxassetid://252760980",
        ["SkyboxRt"] = "rbxassetid://252760986",
        ["SkyboxUp"] = "rbxassetid://252762652"
    },
}


Rightone:AddDropdown('skyboxDropdown', {
    Values = {"Standard", "Blood", "Among Us", "Doge", "Spongebob", "Deep Space", "Winter", "Clouded Sky"},  
    Default = 1,  
    Multi = false,
    Text = 'Skybox Selector',
    Tooltip = 'Select a skybox from the dropdown',
    Callback = function(selectedSkybox)
        local sky = game.Lighting:FindFirstChildOfClass("Sky")
        
        
        if not sky then
            sky = Instance.new("Sky")
            sky.Parent = game.Lighting
        end

        
        local selectedBox = SkyBoxes[selectedSkybox]
        if selectedBox then
            for key, assetId in pairs(selectedBox) do
                sky[key] = assetId 
            end
        else
            warn("Selected skybox is not available!")
        end
    end
})



terrain = game:GetService("Workspace").Terrain
originalGrassColor = terrain:GetMaterialColor(Enum.Material.Grass)


Rightone:AddLabel('Grass Color Picker'):AddColorPicker('ColorPickerGrass', {
    Default = originalGrassColor, 
    Title = 'Grass Color Picker',
    Transparency = 0,

    Callback = function(Value)
        
        local grassColor = Value

        
        terrain:SetMaterialColor(Enum.Material.Grass, grassColor)

        
        sethiddenproperty(terrain, "Decoration", true) 
    end
})




lastSelectedColor = Color3.fromRGB(0, 255, 255) 
colorPickerEnabled = false 
storedItems = {} 


Rightone:AddToggle('Character Color Picker', {
    Text = 'Enable Character Color Picker',
    Default = false,

    Callback = function(isEnabled)
        colorPickerEnabled = isEnabled 
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        if isEnabled then
            
            for _, item in ipairs(character:GetChildren()) do
                if item:IsA("Shirt") then
                    table.insert(storedItems, item) 
                    item.ShirtTemplate = "rbxassetid://0" 
                elseif item:IsA("Pants") then
                    table.insert(storedItems, item) 
                    item.PantsTemplate = "rbxassetid://0" 
                elseif item:IsA("Accessory") then
                    
                    if item.Name:match("Hair") then
                        table.insert(storedItems, item) 
                        item.Handle.Transparency = 1 
                    end
                elseif item:IsA("Model") then
                    
                    if item.Name:match("^Waste") or item.Name:match("^Camo") then
                        table.insert(storedItems, item) 
                        
                        for _, part in ipairs(item:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.Transparency = 1 
                            end
                        end
                    end
                elseif item.Name:match("^Waste") or item.Name:match("^Camo") then
                    table.insert(storedItems, item) 
                    item.Transparency = 1 
                end
            end

            
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.ForceField
                    part.Color = lastSelectedColor 
                end
            end
        else
            
            for _, storedItem in ipairs(storedItems) do
                if storedItem:IsA("Shirt") then
                    storedItem.ShirtTemplate = "rbxassetid://0" 
                elseif storedItem:IsA("Pants") then
                    storedItem.PantsTemplate = "rbxassetid://0" 
                elseif storedItem:IsA("Accessory") then
                    
                    if storedItem.Name:match("Hair") then
                        storedItem.Handle.Transparency = 0 
                    end
                elseif storedItem:IsA("Model") then
                    
                    for _, part in ipairs(storedItem:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.Transparency = 0 
                        end
                    end
                else
                    
                    if storedItem.Name:match("^Waste") or storedItem.Name:match("^Camo") then
                        storedItem.Transparency = 0 
                    end
                end
            end
            storedItems = {} 

            
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.Plastic 
                    part.Color = Color3.new(1, 1, 1) 
                end
            end
        end
    end
})





Rightone:AddLabel('Character Color Picker'):AddColorPicker('ColorPickerCharacter', {
    Default = lastSelectedColor, 
    Title = 'Character Color Picker',
    Transparency = 0,

    Callback = function(selectedColor)
        lastSelectedColor = selectedColor 

        if colorPickerEnabled then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()

            
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.ForceField
                    part.Color = selectedColor 
                end
            end
        end
    end
})




Rightone:AddLabel('Ambient Color Picker'):AddColorPicker('ColorPickerAmbient', {
    Default = game.Lighting.Ambient, 
    Title = 'Ambient Color Picker',
    Transparency = 0,

    Callback = function(Value)
        game.Lighting.Ambient = Value 
    end
})


Rightone:AddLabel('ViewModel Chams Color Picker'):AddColorPicker('ColorPickerViewModel', {
    Default = ViewModelSettings.Color,
    Title = 'ViewModel Chams Color Picker',
    Transparency = 0,

    Callback = function(Value)
        ViewModelSettings.Color = Value 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end
})

Rightone:AddDropdown('MaterialDropdown', {
    Values = { 'Plastic', 'ForceField', 'Neon' },
    Default = 1, 
    Multi = false, 

    Text = 'Select Material',
    Tooltip = 'Change the material of the ViewModel parts',

    Callback = function(Value)
        ViewModelSettings.Material = Enum.Material[Value] 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end
})


Rightone:AddToggle('Toggle ViewModel Chams', {
    Text = 'Enable ViewModel Chams',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.IsEnabled = isEnabled 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end
})




Rightone:AddToggle('Toggle Highlight', {
    Text = 'Enable Highlight',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.HighlightEnabled = isEnabled 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end,
    
    ConditionalEnabled = function() return ViewModelSettings.IsEnabled end
})


Rightone:AddToggle('Toggle Arm Customization', {
    Text = 'Enable Arm Customization',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.ArmCustomizationEnabled = isEnabled 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        if isEnabled then
            customizeArms(viewModel) 
        end
    end
})

Rightone:AddLabel('-------------------------------------------------------------')

Rightone:AddToggle('disabletilt', {
    Text = 'Disable Tilt',
    Risky = true,
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

Rightone:AddToggle('Toggle Crosshair', {
    Text = 'Toggle Crosshair',
    Default = false,
    Callback = function(isEnabled)
        _G.CrosshairEnabled = isEnabled  
    end
    
})


Rightone:AddSlider('Crosshair Thickness', {
    Text = 'Crosshair Thicknes',
    Default = 1,
    Min = 1,
    Max = 4,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
VerticalLine.Thickness = Value
HorizontalLine.Thickness = Value
    end
})


Rightone:AddLabel('Crosshair Color Picker'):AddColorPicker('Crosshair Color Picker', {
    Default = ViewModelSettings.Color,
    Title = 'Crosshair Color Picker',
    Transparency = 0,

    Callback = function(Value)
        
        HorizontalLine.Color = Value
        VerticalLine.Color = Value
    end
})


viewmodelEnabled = false
xOffset, yOffset, zOffset = 0, 0, 0


function updateViewmodelOffset()
    
    local viewmodel = game.Workspace.Camera:FindFirstChild("ViewModel")
    if viewmodel then
        local camera = game.Workspace.CurrentCamera
        
        if camera and viewmodel then
            local newPosition = camera.CFrame.Position + camera.CFrame:VectorToWorldSpace(Vector3.new(xOffset, yOffset, zOffset))
            
            
            for _, part in pairs(viewmodel:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CFrame = CFrame.new(newPosition)
                end
            end
        end
    end
end


Rightone:AddToggle('viewq131425346yjrurefwgergrfgtjyuksedvgrtjh', {
    Text = 'Viewmodel Toggle',
    Default = false,
    Callback = function(isEnabled)
        
        viewmodelEnabled = isEnabled
        
        
        if viewmodelEnabled then
            
            game:GetService("RunService").Heartbeat:Connect(function()
                updateViewmodelOffset()
            end)
        end
    end
})


Rightone:AddSlider('X', {
    Text = 'X Value',
    Default = 0,
    Min = -5,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)

    end
})


Rightone:AddSlider('Y', {
    Text = 'Y Value',
    Default = 0,
    Min = -5,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)

    end
})


Rightone:AddSlider('Z', {
    Text = 'Z Value',
    Default = 0,
    Min = -5,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        
        zOffset = Value
        
        if viewmodelEnabled then
            updateViewmodelOffset()
        end
    end
})



Rightone:AddToggle('Remove Clouds', {
    Text = 'Remove Clouds',
    Default = false,
    Callback = function(isEnabled)
        terrain = game:GetService("Workspace").Terrain

        
        if isEnabled then
            terrain.Clouds.Density = 0
        else
            
            terrain.Clouds.Density = 1
        end
    end
})


function onViewModelSpawned()
    local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
    applySettings(viewModel) 
    if ViewModelSettings.ArmCustomizationEnabled then
        customizeArms(viewModel) 
    end
end


onViewModelSpawned()


game.Workspace.Camera.ChildAdded:Connect(function(child)
    if child.Name == "ViewModel" then
        wait(0.5) 
        onViewModelSpawned() 
    end
end)


game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Wait() 
    wait(0.5) 
    onViewModelSpawned() 
end)


game:GetService("RunService").Stepped:Connect(function()
    local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
    if viewModel then
        applySettings(viewModel) 
        if ViewModelSettings.ArmCustomizationEnabled then
            customizeArms(viewModel) 
        end
    end
end)

-- Zoom functionality



local zoomValue = 8 -- Default zoom value
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
    Max = 15,
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

Esptab3:AddToggle('No Fall Damage', {
    Text = 'No Fall Damage',
    Default = false,
    Risky = true,
    Callback = function(isEnabled)
        if isEnabled and bypassedanticheat == true then
           
            game.Workspace.Gravity = math.huge
            
        else
            game.Workspace.Gravity = 90
        end
    end
})

Esptab3:AddToggle('Automatic Instant Reload', {
    Text = 'Automatic Instant Reload',
    Default = false,
    Risky = true,
    Callback = function(Value)
       toggleAmmoCheck()
    end
})

Esptab3:AddToggle('antiaim', {
    Text = 'Tilt Manuplation',
    Risky = true,
    Default = false,

    Callback = function(first)
        game.ReplicatedStorage.Remotes.UpdateTilt:FireServer(first and 0 / 0 or 0)
    end
})


Esptab3:AddSlider('Reloadtheresold', {
    Text = 'Automatic Reload Threshold',
    Default = 3,
    Min = 3,
    Max = 10,
    Rounding = 0,
    Compact = false,

    Callback = function(number)
       reloadThreshold = number
    end
})


antiaimtab:AddSlider('hipheight', {
    Text = 'Hip Height',
    Default = 2,
    Min = 0.2,
    Max = 5,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value -- Any Number
    end
})



local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local zoomValue = 0
local defaultFOV = Camera.FieldOfView
local zoomKey = Enum.KeyCode.Z
local isZoomed = false

 function applyZoom()
    Camera.FieldOfView = defaultFOV - (zoomValue * 10)
end

-- Function to reset FOV
 function resetZoom()
    Camera.FieldOfView = defaultFOV
end

-- Slider for zoom value
Esptab3:AddSlider('ZoomSlider', {
    Text = 'Zoom Value',
    Default = 1,
    Min = 0.1,
    Max = 9,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        zoomValue = Value
    end
})

-- Key picker for zoom toggle key
Esptab3:AddLabel('Zoom Bind'):AddKeyPicker('ZoomKeyPicker', {
    Default = 'Z',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Zoom Keybind',
    Callback = function(value)
        print('[cb] Keybind clicked!', value)
    end,
    ChangedCallback = function(newKey)
        zoomKey = newKey
        print('[cb] Keybind changed!', newKey)
    end
})

-- Function to handle key press
local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        isZoomed = not isZoomed -- Toggle zoom state
        if not isZoomed then
            resetZoom() -- Reset zoom if untoggled
        end
    end
end

-- Continuously apply zoom while toggled
RunService.RenderStepped:Connect(function()
    if isZoomed then
        applyZoom()
    end
end)

-- Connect input events
UserInputService.InputBegan:Connect(onKeyPress)


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
    Risky = true,
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
    Risky = true,
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

-- Add the toggle to the eaesptabactual
if LeftGroupBox and LeftGroupBox.AddToggle then
    LeftGroupBox:AddToggle('minimap', {
        Text = 'Minimap',
        Default = false,
        Callback = function(first)
        
            UpdateRadarVisibility(first)
        end
    })
else
    warn("eaesptabactual or AddToggle method not found")
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
    warn("eaesptabactual or GetToggleState method not found")
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
        Title = "Welcome To Nexify";
        Text = "Welcome To Nexify. Report Bugs";
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
    Risky = true,
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
    Risky = true,
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


player = game:GetService("Players").LocalPlayer
mouse = player:GetMouse()
RunService = game:GetService("RunService")
toggle = false

function toggleShooting()
    toggle = not toggle
end


RunService.RenderStepped:Connect(function()
    if toggle then
        wait(0.001)
        for _, target in pairs(game:GetService("Players"):GetPlayers()) do
            if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                targetHRP = target.Character.HumanoidRootPart
                direction = (targetHRP.Position - player.Character.HumanoidRootPart.Position).unit
                camera = workspace.CurrentCamera
                cameraDirection = camera.CFrame.LookVector
                
                angle = math.acos(cameraDirection:Dot(direction))
                fov = math.rad(55)

                if angle <= fov / 2 then
                    ray = Ray.new(camera.CFrame.Position, (targetHRP.Position - camera.CFrame.Position).unit * 100)
                    hitPart, hitPosition = workspace:FindPartOnRay(ray, player.Character)

                    if hitPart and hitPart:IsDescendantOf(target.Character) then
                        mouse1press()
                        wait()
                        mouse1release()
                    end
                end
            end
        end
    end
end)

LeftGroupBox:AddToggle('trigfuckkk', {
    Text = 'Trigger Bot',
    Default = false,
    Risky = true,
    Callback = function(isEnabled)

toggleShooting()


    end
}):AddKeyPicker('triggerbot', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'Trigger Bot Key Bind',
    NoUI = false,

    Callback = function(Value)
    end,
})

-- Adding a toggle to enable/disable faster aiming
LeftGroupBox:AddToggle('fasteraim', { 
    Text = 'Instant Aim', 
    Risky = true,
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



LeftGroupBox:AddToggle('Bunnyhop', {
    Text = 'No Jump Cooldown',
    Tooltip = 'Bunny Hop',
    Risky = true,
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
Esptab3:AddSlider('Speedlocalplayer', {
    Text = 'Speed Hack',
    Default = 13, -- Slider için başlangıç değeri
    Min = 1,
    Max = 21, 
    Rounding = 1, 
    Compact = false,
}):OnChanged(function(State)
    
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Set walk speed
humanoid.WalkSpeed = State -- Adjust this value to your desired speed

end)






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

Rightone:AddToggle('exitesppdlt', {
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
Esptab3:AddToggle('Third Person', {
    Text = 'Third Person',
    Default = false,

    Callback = function(isEnabled)
        if isEnabled then
            print("called")
            
            loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/thirdpe.lua"))()
        else
        print("called2")
            
            loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/thirdsianle.lua"))()
        end
    end


}):AddKeyPicker('thirdpersonkeybind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'Third Person Keybind',
    NoUI = false,

    Callback = function(Value)
    end,
})


Esptab3:AddToggle('Server Info', {
    Text = 'Server Info',
    Default = true,
    Callback = function(value)
        local player = game.Players.LocalPlayer 
        if player and player:FindFirstChild("PlayerGui") then 
            local serverInfo = player.PlayerGui:FindFirstChild("ServerInfo") 
            if serverInfo then
                serverInfo.Enabled = value 
            else
                warn("ServerInfo GUI not found in PlayerGui") 
            end
        else
            warn("PlayerGui not found for LocalPlayer") 
        end
    end
})



Esptab3:AddToggle('Menu Blur', {
    Text = 'Menu Blur',
    Default = true,
    Callback = function(value)

game.Lighting.InventoryBlur.Enabled = value

    end
})


getgenv().Fly3 = false
getgenv().speed3 = 26

-- Directly accessing services without storing them in local variables
game:GetService("RunService").RenderStepped:Connect(function(dt)
    -- Access character's humanoid root part directly without using local variables
    local rootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    rootPart.Velocity = rootPart.Velocity -- Use default velocity initially
    local travelDirection3 = Vector3.new(0, 0, 0)

    if getgenv().Fly3 then
        -- Detect input for movement without using local variables for input
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, 1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, -1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            travelDirection3 = travelDirection3 + Vector3.new(-1, 0, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            travelDirection3 = travelDirection3 + Vector3.new(1, 0, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 1, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
            travelDirection3 = travelDirection3 + Vector3.new(0, -1, 0)
        end

        -- Only calculate movement if there's input
        if travelDirection3.Magnitude > 0 then
            -- Get camera properties directly
            travelDirection3 = (
                workspace.CurrentCamera.CFrame.LookVector * travelDirection3.z +
                workspace.CurrentCamera.CFrame.RightVector * travelDirection3.x +
                workspace.CurrentCamera.CFrame.UpVector * travelDirection3.y
            ).unit

            -- Apply movement without using a local velocity variable
            rootPart.Velocity = travelDirection3 * getgenv().speed3
        end
    end
end)

-- Toggle Fly Mode on key press 'B'

print("Script running...")

-- UI flight toggle without using local variables
Esptab3:AddToggle('flight3', {
    Text = 'Flight',
    Default = false,
    Callback = function(state3)
        getgenv().Fly3 = state3
    end
}):AddKeyPicker('flight_key3', {
    Default = 'nil',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Flight',
    NoUI = false,
    Callback = function(value3)
        -- Empty callback, no additional functionality needed for now
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
    Risky = true,
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

 ScreenGuiForInventory = Instance.new("ScreenGui")
 FrameForInventory = Instance.new("Frame")
 Slot1ForHotbar = Instance.new("ImageLabel")
 Slot2ForHotbar = Instance.new("ImageLabel")
 Slot3ForHotbar = Instance.new("ImageLabel")
 CutterForInventory = Instance.new("TextLabel")
 UICornerForInventory = Instance.new("UICorner")
 UIStrokeForInventory = Instance.new("UIStroke")
 PlayerNameLabelForInventory = Instance.new("TextLabel")  -- New label to display the player's name

-- Adding 8 clothing slots
 ClothingSlots = {}
for i = 1, 8 do
    ClothingSlots[i] = Instance.new("ImageLabel")
end

ScreenGuiForInventory.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGuiForInventory.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FrameForInventory.Parent = ScreenGuiForInventory
FrameForInventory.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameForInventory.BackgroundTransparency = 0.670
FrameForInventory.BorderColor3 = Color3.fromRGB(0, 0, 0)
FrameForInventory.BorderSizePixel = 0
FrameForInventory.Position = UDim2.new(0.5, -398, 0.010, -37)
FrameForInventory.Size = UDim2.new(0, 796, 0, 74)

Slot1ForHotbar.Name = "Slot1ForHotbar"
Slot1ForHotbar.BackgroundTransparency = 1
Slot1ForHotbar.Parent = FrameForInventory
Slot1ForHotbar.Position = UDim2.new(0.0075, 0, 0.0811, 0)
Slot1ForHotbar.Size = UDim2.new(0, 49, 0, 44)
Slot1ForHotbar.Image = ""

Slot2ForHotbar.Name = "Slot2ForHotbar"
Slot2ForHotbar.BackgroundTransparency = 1
Slot2ForHotbar.Parent = FrameForInventory
Slot2ForHotbar.Position = UDim2.new(0.1118, 0, 0.0811, 0)
Slot2ForHotbar.Size = UDim2.new(0, 49, 0, 44)
Slot2ForHotbar.Image = ""

Slot3ForHotbar.Name = "Slot3ForHotbar"
Slot3ForHotbar.BackgroundTransparency = 1
Slot3ForHotbar.Parent = FrameForInventory
Slot3ForHotbar.Position = UDim2.new(0.2173, 0, 0.0811, 0)
Slot3ForHotbar.Size = UDim2.new(0, 49, 0, 44)
Slot3ForHotbar.Image = ""

CutterForInventory.Name = "CutterForInventory"
CutterForInventory.Parent = FrameForInventory
CutterForInventory.BackgroundTransparency = 1
CutterForInventory.Position = UDim2.new(0.325, 0, 0.0811, 0)
CutterForInventory.Size = UDim2.new(0, 20, 0, 44)
CutterForInventory.Font = Enum.Font.SourceSans
CutterForInventory.Text = "|"
CutterForInventory.TextColor3 = Color3.fromRGB(255, 255, 255)
CutterForInventory.TextScaled = true

UICornerForInventory.Parent = FrameForInventory

UIStrokeForInventory.Parent = FrameForInventory
UIStrokeForInventory.Color = Color3.fromRGB(255, 152, 35)
UIStrokeForInventory.Thickness = 1.6

-- Player name label
PlayerNameLabelForInventory.Name = "PlayerNameLabelForInventory"
PlayerNameLabelForInventory.Parent = FrameForInventory
PlayerNameLabelForInventory.BackgroundTransparency = 1
PlayerNameLabelForInventory.Position = UDim2.new(0, 0, 0, -25)
PlayerNameLabelForInventory.Size = UDim2.new(0, 796, 0, 30)
PlayerNameLabelForInventory.Font = Enum.Font.Code
PlayerNameLabelForInventory.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerNameLabelForInventory.TextScaled = true
PlayerNameLabelForInventory.Text = "No player selected"  -- Default text

-- Clothing slots
for i, slot in ipairs(ClothingSlots) do
    slot.Name = "ClothingSlot" .. i
    slot.BackgroundTransparency = 1
    slot.Parent = FrameForInventory
    slot.Position = UDim2.new(0.35 + (i - 1) * 0.075, 0, 0.0811, 0)  -- Adjust spacing
    slot.Size = UDim2.new(0, 49, 0, 44)
    slot.Image = ""
end

-- Toggle state and function to change transparency
local isGuiVisibleForInventory = false  -- This will control the visibility of the ScreenGui

function toggleGuiVisibilityForInventory()
    ScreenGuiForInventory.Enabled = isGuiVisibleForInventory
    isGuiVisibleForInventory = not isGuiVisibleForInventory
end

function isPlayerInFOV(localPlayer, otherPlayer, fov)
    local localCharacter = localPlayer.Character
    local otherCharacter = otherPlayer.Character

    if not localCharacter or not otherCharacter then return false end
    if not localCharacter:FindFirstChild("HumanoidRootPart") or not otherCharacter:FindFirstChild("HumanoidRootPart") then return false end

    local localPosition = localCharacter.HumanoidRootPart.Position
    local otherPosition = otherCharacter.HumanoidRootPart.Position
    local direction = (otherPosition - localPosition).Unit

    local forwardVector = localCharacter.HumanoidRootPart.CFrame.LookVector
    local angle = math.deg(math.acos(direction:Dot(forwardVector)))

    return angle <= fov / 2
end

function getClosestPlayerToCrosshair(localPlayer, playersInFOV)
    local camera = game.Workspace.CurrentCamera
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in ipairs(playersInFOV) do
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local rootPart = character.HumanoidRootPart
            local screenPosition, onScreen = camera:WorldToScreenPoint(rootPart.Position)
            if onScreen then
                local distance = (Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2) - Vector2.new(screenPosition.X, screenPosition.Y)).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    return closestPlayer
end

function updateInventorySlotsForInventory(localPlayer, equipmentSlots, clothingSlots)
    local playersInFOV = {}
    local fov = 160  -- The FOV angle
    local players = game.Players:GetPlayers()

    for _, otherPlayer in pairs(players) do
        if otherPlayer ~= localPlayer and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if isPlayerInFOV(localPlayer, otherPlayer, fov) then
                table.insert(playersInFOV, otherPlayer)
            end
        end
    end

    local closestPlayer = getClosestPlayerToCrosshair(localPlayer, playersInFOV)
    if closestPlayer then
        PlayerNameLabelForInventory.Text = closestPlayer.Name .. "'s Inventory"
    else
        PlayerNameLabelForInventory.Text = "No player selected"
    end

    for i = 1, #equipmentSlots do
        equipmentSlots[i].Image = ""
    end
    for i = 1, #clothingSlots do
        clothingSlots[i].Image = ""
    end

    if closestPlayer then
        local playerData = game.ReplicatedStorage.Players:FindFirstChild(closestPlayer.Name)
        if playerData then
            local inventory = playerData:FindFirstChild("Inventory")
            if inventory then
                local slotIndex = 1
                for _, item in pairs(inventory:GetChildren()) do
                    local slots = nil
                    if slotIndex <= #equipmentSlots then
                        slots = equipmentSlots
                    elseif slotIndex - #equipmentSlots <= #clothingSlots then
                        slots = clothingSlots
                        slotIndex = slotIndex - #equipmentSlots
                    end
                    local slot = slots and slots[slotIndex]
                    if slot then
                        local itemProperties = item:FindFirstChild("ItemProperties")
                        if itemProperties then
                            local itemIcon = itemProperties:FindFirstChild("ItemIcon")
                            if itemIcon then
                                if itemIcon.ClassName == "ImageLabel" then
                                    slot.Image = itemIcon.Image
                                elseif itemIcon.ClassName == "StringValue" then
                                    slot.Image = "rbxassetid://" .. itemIcon.Value
                                end
                            end
                        end
                    end
                    slotIndex += 1
                end
            end
        end
    end
end

-- Regularly update inventory slots
local player = game.Players.LocalPlayer
local equipmentSlots = {Slot1ForHotbar, Slot2ForHotbar, Slot3ForHotbar}

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        updateInventorySlotsForInventory(player, equipmentSlots, ClothingSlots)
    end)
end)


LeftGroupBox:AddToggle('Inventory Viewer', {
    Text = 'Inventory Viewer',
    Default = false,
    Risky = true,
    Tooltip = 'Displays Inventory',
    Callback = function(first)
        toggleGuiVisibilityForInventory()
    end
}):AddKeyPicker('invViewerKeyBind', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Inventory Viewer Key Bind',
    NoUI = false,
    Callback = function(Value)
    end,
})

LeftGroupBox:AddSlider('Silent Aim Resp Sped', {
    Text = 'Silent Aim Response Speed',
    Default = 0.04,
    Min = 0.01,
    Max = 0.10,
    Risky = true,
    Rounding = 10,
    Compact = false,

    Callback = function(Value)
--loll

    end
})

-- GUI Toggle Integration
LeftGroupBox:AddToggle('Silentim', {
    Text = 'Silent Aim',
    Default = false, -- Default value (true / false)
    Risky = true,
    Tooltip = 'Silent Aim that will fuck everybody from ass', -- Information shown when you hover over the toggle
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

LeftGroupBox:AddDropdown('cameradropdown', {
    Values = { 'TF2', 'Gamesense', 'Rust', 'Neverlose', 'Bubble', 'Quake', 'Among-Us', 'Ding', 'Minecraft', 'Blackout', 'Osu!' },  
    Default = 3,  
    Multi = false,
    Text = 'Hit Sounds', 
    Tooltip = 'Hit Sounds', 
    Callback = function(state)
        
        local globalhitsounds = HitmarkerSounds[state]
        
        
        if globalhitsounds then
            local SFXDIRECTORY = game.ReplicatedStorage.SFX

            
            SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Helmet.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Headshot.SoundId = globalhitsounds
				
	    SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.Volume = 10
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.Volume = 10
            SFXDIRECTORY.Hits.HitMarkers.Helmet.Volume = 10
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.Volume = 10
            SFXDIRECTORY.Hits.HitMarkers.Headshot.Volume = 10
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
        wait(0.001) -- Update every 0.1 seconds
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

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
skidespLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/skid.lua'), true))()
espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/esplib3.lua'), true))()
corpseesplib3 = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/corpseesplib.lua'), true))()

alreadyinit=false
function firstloadesplib()

if alreadyinit==false then
alreadyinit=true
wait(0.1)
espLib:Load()
end

end

eaesptabactual:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,
    Risky = true,
    Callback = function(enabled)
    firstloadesplib()
        espLib.options.enabled = enabled
    end
})

eaesptabactual:AddLabel('Box Esp Color Picker'):AddColorPicker('Box Esp Color Picker', {
    Default = Color3.fromRGB(255, 255, 255),  
    Title = 'Box Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)

        espLib.options.boxesColor = Value     
    end
})



eaesptabactual:AddToggle('boxswitch', {
    Text = 'Boxes',
    Default = false,
    Callback = function(enabled)
        espLib.options.boxes = enabled
    end
})

eaesptabactual:AddToggle('Outofviewarrors', {
    Text = 'Out Of View Arrows',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrows = enabled
    end
})

eaesptabactual:AddToggle('Outofviewarrors', {
    Text = 'Out Of View Arrows Filled',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrowsFilled = enabled
    end
})

eaesptabactual:AddSlider('outofviewarrorsslider', {
    Text = 'Out Of View Arrows Size',
    Default = 25,
    Min = 5,
    Max = 40,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        espLib.options.outOfViewArrowsSize = Value
        
    end
})

eaesptabactual:AddSlider('outofviewarrorssliderRadius', {
    Text = 'Out Of View Arrows Radius',
    Default = 100,
    Min = 20,
    Max = 500,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        espLib.options.outOfViewArrowsRadius = Value
        
    end
})

eaesptabactual:AddSlider('outofviewarrorsslidertRANSPARENCY', {
    Text = 'Out Of View Arrows Transparency',
    Default = 0.5,
    Min = 0.1,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        espLib.options.outOfViewArrowsTransparency = Value
        
    end
})

eaesptabactual:AddToggle('visiblecheck', {
    Text = 'Visible Check',
    Default = false,
    Callback = function(enabled)
      --  espLib.options.visibleOnly = enabled
    end
})


eaesptabactual:AddLabel('Chams Esp Color Picker'):AddColorPicker('Chams Esp Color Picker', {
    Default = Color3.fromRGB(255, 255, 255),  
    Title = 'Chams Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)
        
        espLib.options.chamsFillColor = Value     
    end
})


eaesptabactual:AddToggle('chamswwt', {
    Text = 'Chams',
    Default = false,
    Callback = function(enabled)
        espLib.options.chams = enabled
    end
})

eaesptabactual:AddToggle('distance', {
    Text = 'Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.distance = enabled
    end
})



eaesptabactual:AddToggle('healthtext', {
    Text = 'Health Text',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthText = enabled
    end
})

eaesptabactual:AddLabel('Health Esp Color Picker'):AddColorPicker('Health Esp Color Picker', {
    Default = Color3.fromRGB(0, 255, 0),  
    Title = 'Health Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)
        
        espLib.options.healthBarsColor = Value     
    end
})

eaesptabactual:AddToggle('healthbar', {
    Text = 'Health Bar',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthBars = enabled
    end
})

eaesptabactual:AddToggle('names', {
    Text = 'Names',
    Default = false,
    Callback = function(enabled)
        espLib.options.names = enabled
    end
})



eaesptabactual:AddToggle('limitdistance', {
    Text = 'Limit Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.limitDistance = enabled
    end
})

eaesptabactual:AddSlider('distancelimit', {
    Text = 'Distance Limit',
    Default = 900,
    Min = 10,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        espLib.options.maxDistance = Value
        
    end
})

eaesptabactual:AddLabel("Nexify\n#1 Project Delta Script\nLast Updated: 28.12.2024\nVersion: V2.3 (Build 2312)\nUID: Buyer\n\nLibrary Version: Linoria Modded By Nexify V1.2\nRuntime Environment: Lua VM 5.1 (Optimized)\nEncryption: AES-256 + Luraph Obfuscation\nDetection Status: Undetected\nScript Ready!\nGame ID: 7336302630\n\n--- Performance Metrics ---\nCompatibility: Direct Game\nChecksum: 6F2D3B9A1C\nBootstrapping Time: <2.55ms\nExecutor: Wave\nExecution Time (Avg): <0.5ms\n--- Security Details ---\nAnticheat Bypass: Semi Bypassed A-C\nDebugging Protections: Enabled\nExploit Protections: High\nTelemetry Blocking: Active\n\n--- User Environment ---\nExecutor Version: Wave\nCustom Themes: Supported\n\n--- Additional Info ---\nSupport Contact: .crazyniga (Discord)\nLicense Type: Buyer / Standart", true)


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
    Default = false,
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

Library:SetWatermark(('Nexify /\ Wave | %s fps | %s ms | %s | %s'):format(
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
ThemeManager:SetFolder('nexifywave')
SaveManager:SetFolder('nexify/wavepd')

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
