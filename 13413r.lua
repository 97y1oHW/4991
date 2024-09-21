

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

-- Initialize the global tracking table if it doesn't exist
-- Initialize the global tracking table if it doesn't exist

local function securitylayerchecks()

print("dd")

end

securitylayerchecks()


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

		-- Create a function to apply ForceField to all parts in the game and remove SurfaceAppearance
local function applyForceFieldAndRemoveSurfaceAppearance()
    -- Get all parts in the game
    for _, part in pairs(workspace:GetDescendants()) do
        -- Check if the part is a BasePart (like Part, MeshPart, etc.)
        if part:IsA("BasePart") then
            -- Destroy any SurfaceAppearance attached to the part
            local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
            if surfaceAppearance then
                surfaceAppearance:Destroy()
            end
            
            -- Check if the part already has a ForceField
            if not part:FindFirstChildOfClass("ForceField") then
                -- Create a new ForceField
                local forceField = Instance.new("ForceField")
                -- Set the parent of the ForceField to the part
                forceField.Parent = part
            end
        end
    end
end


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local grassVisible = true
local predictionEnabled = false
local adjustPredictionEnabled = false -- Default to enabled
local executorname33 = "Unknown"
local predictionFactor = { value = 0.118 } -- Adjust this value based on desired prediction (higher means more prediction)
local aimbotEnabled = false
local plrs = game:GetService("Players")
local virtualInput = game:GetService("VirtualInputManager")
print(".")
local ammo = game.ReplicatedStorage.AmmoTypes
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local isAiming = false
local headSizeMultiplier = 5 -- Multiplier for head size
local transparencyValue = 0.3 -- Transparency for the head
local targetHead = nil
local targetPart = "Head" -- Default target part
local isEnabled = false -- State to track if the effect is on or off
local aimingTarget = nil

-- Function to print the loading bar with percentage and hash marks
local function printLoadingBar(percentage)
    local totalLength = 35
    local hashMarks = math.floor(percentage / 3.6)  -- Number of hash marks
    local dashes = totalLength - hashMarks          -- Remaining dashes
    
    local loadingBar = string.rep("#", hashMarks) .. string.rep("-", dashes)
    warn(string.format("Loading Doge Hub V1.6 %%%-3d %s", percentage, loadingBar))
end

-- Function to simulate the loading process
local function simulateLoading()
    for percentage = 0, 101, 1 do
        printLoadingBar(percentage)
        wait(0.02)  -- Adjust the wait time to make the loading appear slower or faster
    end
end

-- Run the simulation
simulateLoading()

print("If script ui not appears try spawning and waiting for 2 min")
wait(1)
warn("Started Check")
print("Checking Executor......")
wait(2)

local player = game.Players.LocalPlayer

-- Wait for the character to be added to the player
local character = player.Character or player.CharacterAdded:Wait()

-- Wait for the humanoid to be present in the character
local humanoid = character:WaitForChild("Humanoid")

-- Function to toggle the swimming state
local function toggleSwimmingState()
    -- Check the current swimming state
    local isSwimmingEnabled = humanoid:GetStateEnabled(Enum.HumanoidStateType.Swimming)
    
    -- Toggle the swimming state
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, not isSwimmingEnabled)
end

-- Example usage
  -- This will toggle the swimming state (enable if currently disabled, disable if currently enabled)


function SetDoorMaterialToForceField()
    -- Get all descendants in the game
    local allDescendants = game:GetDescendants()

    -- Iterate through all descendants
    for _, descendant in ipairs(allDescendants) do
        -- Check if the descendant is a Model and named "Door"
        if descendant:IsA("Model") and descendant.Name == "Door" then
            -- Find the child named "Main" in the model
            local mainPart = descendant:FindFirstChild("Main")
            
            -- If "Main" exists and is a BasePart, proceed
            if mainPart and mainPart:IsA("BasePart") then
                -- Set the Material to ForceField
                mainPart.Material = Enum.Material.ForceField

                -- Check for a SurfaceAppearance object and destroy it
                local surfaceAppearance = mainPart:FindFirstChildOfClass("SurfaceAppearance")
                if surfaceAppearance then
                    surfaceAppearance:Destroy()
                end
            end
        end
    end
end




-- Call the function to apply the change


local function detectExecutor()
    -- Check if identifyexecutor exists and what it returns
    if type(identifyexecutor) == "function" then
        local executorName = identifyexecutor()
        
        -- Check for known executors
        if executorName == "Solara" then
            return "Solara"
        elseif executorName == "Nezur" then
            return "Nezur"    
        elseif executorName == "Manti" then
            return "Manti"
        elseif executorName == "Wave" then
            return "Wave"
        elseif executorName == "Celery" then
            return "Celery"
        end
    end
    
    -- If no known executor is detected
    return "Unknown Executor"
end

-- Main script execution
local executor = detectExecutor()

if executor == "Solara" then
    print("This script is running in Solara Executor.")
    executorname33 = "Solara"
elseif executor == "Wave" or executor == "Wave 5.0" then
    print("This script is running in Wave Executor (Called Loadstring!).")
    -- New example script written by wally
-- You can suggest changes with a pull request or something
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

    Title = 'Doge Hub /\ Wave PD',
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
    Main = Window:AddTab('combat'),
    movetab3 = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))
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
local silent_aim = {
    enabled = false,  -- Toggle this to enable/disable silent aim
    fov = true,
    fovsize = 125,
    part = "Head",
    targetai = true
}


local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiInset = game:GetService("GuiService"):GetGuiInset()

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
                    local position, onscreen = Camera:WorldToViewportPoint(hitpart.Position)
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
                local position, onscreen = Camera:WorldToViewportPoint(hitpart.Position)
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
        args[2] = (silent_aim.target_part.Position - args[1]).Unit * 10000
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
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()
local runService = game:GetService("RunService")

-- FOV Settings
local fovRadius = 180  -- Increased FOV for slightly better target tracking
local fovCircle
local fovSize = fovRadius  -- Ensure this is defined to match the radius

-- Settings
local minPrediction = 0.05        -- Slightly higher minimum for short-range prediction stability
local maxPrediction = 0.45        -- Reduced from 0.5 to prevent overshooting at long distances
local defaultPrediction = 0.15    -- Increased default for more reliable accuracy
local predictionAmount = defaultPrediction  -- Initial prediction value

local minDistance = 10            -- Lowered to capture very close targets
local maxDistance = 900           -- Slightly extended for longer mid-range engagements

-- Variables to track aiming state and debugging
local isAiming = false
local lockedCharacter = nil
local debugEnabled = false -- Toggle this to enable/disable debugging prints
local isSilentAimEnabled994 = false -- Toggle this to enable/disable silent aim

-- Function to create a visible FOV circle
local function createFovCircle()
    if fovCircle then
        fovCircle:Remove()  -- Remove existing circle if it exists
    end
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.NumSides = 100
    fovCircle.Radius = fovSize
    fovCircle.Color = Color3.new(1, 1, 1) -- White color
    fovCircle.Filled = false
    fovCircle.Visible = true
    fovCircle.Transparency = 1
end

-- Update FOV circle position
local function updateFovCircle994()
    if fovCircle then
        local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        fovCircle.Position = screenCenter
        fovCircle.Radius = fovSize -- Update FOV circle size
        if debugEnabled then
            print("FOV circle updated to center:", screenCenter, "and size:", fovSize)
        end
    elseif debugEnabled then
        print("FOV circle is not created or is nil.")
    end
end

-- Update FOV Circle every frame
runService.RenderStepped:Connect(function()
    if fovCircle and fovCircle.Visible then
        updateFovCircle994()
    end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera

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
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")

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
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

local isFiring = false
local UserInputService = game:GetService("UserInputService")

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

-- Add a toggle for the tracers in the UI
LeftGroupBox:AddToggle('tracers', {
    Text = 'Tracers',
    Tooltip = 'Toggle tracers on or off',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(enabled)
        Utility:ToggleTracers(enabled) -- Enable or disable based on toggle
    end
})

-- Zoom functionality
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

local zoomValue = 0 -- Default zoom value
local defaultFOV = Camera.FieldOfView -- Get the current FOV from the camera
local zoomKey = Enum.KeyCode.Z -- Default keybind

-- Function to apply zoom based on zoom value
local function applyZoom()
    Camera.FieldOfView = defaultFOV - (zoomValue * 10) -- Adjust FOV based on zoom value
end

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



LeftGroupBox:AddToggle('nowaterblur', {
    Text = 'No Water Blur',
    Tooltip = 'No Blur For Water',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(enabled)
        if enabled then
            game.Lighting.WaterBlur.Size = 0 -- If toggle is enabled, set blur to 0
        else
            game.Lighting.WaterBlur.Size = 24 -- If toggle is disabled, set blur to default (24)
        end
    end
})




-- Toggle implementation
LeftGroupBox:AddToggle('jesus', {
    Text = 'Walk On Water',
    Tooltip = 'Lets You Walk On Water',
    Default = false,

    Callback = function(value)
        onJesusToggle(value)
    end
})


LeftGroupBox:AddButton('Remove Scope From Gun', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):Destroy()

 end)

LeftGroupBox:AddButton('Disable OKP7 SCOPE GUI', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):FindFirstChild("OKP7"):FindFirstChild("Reticle"):FindFirstChild("ScopeGui"):Destroy()

 end)

LeftGroupBox:AddButton('Remove Gloves From Viewmodel', function()


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
    print("Bunny Hop is now", isEnabled883 and "enabled" or "disabled")
end

game:GetService("RunService").RenderStepped:Connect(function()
    if isEnabled883 then
        LC.Character.Humanoid:SetAttribute("JumpCooldown", 0)
    end
end)

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

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
        warn("ViewModel or Camera not found in Workspace")
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
local newFireRate = 0.05  -- Set the fire rate to a faster value
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
local Players = game:GetService("Players")
local LC = Players.LocalPlayer  -- Correctly define `LC` as the LocalPlayer
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
local player = game.Players.LocalPlayer
local runSpeedThreshold = 16 -- Trigger teleport only when running faster than normal walk speed
local speed = 0.5 -- Initial teleport speed for running
local isRunning = false
local cframeSpeedActive = false -- Toggle state for CFrameSpeed
local humanoid

-- Function to handle teleport movement while running
local function teleportWhileRunning()
    while isRunning and cframeSpeedActive do -- Check if toggle is active
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -speed)
        end
        task.wait(0.03) -- Smoother teleportation
    end
end

-- Check when the player is running (speed greater than walk speed)
local function onRunning(walkSpeed)
    if walkSpeed > runSpeedThreshold and cframeSpeedActive then
        if not isRunning then
            isRunning = true
            teleportWhileRunning() -- Start teleport when running
        end
    else
        isRunning = false -- Stop teleporting when running stops or player walks
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
    Default = 0.5, -- Initial default value for the slider
    Min = 0,
    Max = 2, -- Maximum speed value
    Rounding = 3, -- Set rounding precision
    Compact = false,
}):OnChanged(function(State)
    -- Update the teleportation speed with the slider's value
    speed = State
end)

-- Adding a toggle to enable/disable CFrameSpeed
Esptab3:AddToggle('cframespeed', {
    Text = 'CFrameSpeed Toggle',
    Default = false,
    Callback = function(state)
        cframeSpeedActive = state
        if not state then
            isRunning = false -- Disable running when toggle is off
        elseif humanoid and humanoid.MoveDirection.Magnitude > 0 then
            isRunning = true
            teleportWhileRunning() -- Start teleporting if moving
        end
    end
})



local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
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
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
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


local lighting = game:GetService("Lighting")
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




local player = game.Players.LocalPlayer
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

local lighting = game:GetService("Lighting")
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

local lighting = game:GetService("Lighting")
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

-- Services
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local runService = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

-- ESP toggle
local espEnabled = false
local espObjects = {}

-- Function to create or update ESP for a player
local function createOrUpdateESP(player)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    -- Create ESP if it doesn't already exist for this player
    if not espObjects[player] then
        -- Box ESP
        local boxESP = Instance.new("BoxHandleAdornment")
        boxESP.Size = character:GetExtentsSize()
        boxESP.Adornee = character.HumanoidRootPart
        boxESP.Color3 = Color3.new(1, 1, 1)
        boxESP.Transparency = 1
        boxESP.ZIndex = 5
        boxESP.AlwaysOnTop = true
        boxESP.Parent = character.HumanoidRootPart

        -- Billboard for Name and Health
        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = character.HumanoidRootPart
        billboard.Size = UDim2.new(0, 200, 0, 70)
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
            distanceLabel = distanceLabel,
        }
    end

    -- Update ESP elements for the player
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        local health = humanoid.Health
        espObjects[player].nameHealthLabel.Text = string.format("%s | %d", player.Name, health)

        -- Calculate distance in meters (1 stud = 0.28 meters)
        local distance = (character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude * 0.28
        espObjects[player].distanceLabel.Text = string.format("%.2f m", distance)

        -- Update the box size
        espObjects[player].boxESP.Size = character:GetExtentsSize()
    end
end

-- Function to remove ESP for a player
local function removeESP(player)
    if espObjects[player] then
        -- Clean up the ESP objects
        for _, obj in pairs(espObjects[player]) do
            obj:Destroy()
        end
        espObjects[player] = nil
    end
end

-- Function to check for nearby players every 0.5 seconds
local function checkNearbyPlayers()
    while espEnabled do
        local localCharacter = localPlayer.Character
        if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local distance = (character.HumanoidRootPart.Position - localCharacter.HumanoidRootPart.Position).Magnitude * 0.28
                        if distance <= 1000 * 0.28 then  -- 1000 studs = 280 meters
                            createOrUpdateESP(player)
                        else
                            removeESP(player)
                        end
                    end
                end
            end
        end
        wait(0.5) -- Update every 0.5 seconds
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
end)

-- Example of how to toggle ESP
LeftGroupBox:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,
    Callback = function(first)
        toggleESP()
    end
})

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
createFovCircle()


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

LeftGroupBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    -- SyncToggleState only works with toggles.
    -- It allows you to make a keybind which has its state synced with its parent toggle

    -- Example: Keybind which you use to toggle flyhack, etc.
    -- Changing the toggle disables the keybind state and toggling the keybind switches the toggle state

    Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
    SyncToggleState = false,


    -- You can define custom Modes but I have never had a use for it.
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold

    Text = 'Test', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,

    -- Occurs when the keybind is clicked, Value is `true`/`false`
    Callback = function(Value)
        print('[cb] Keybind clicked!', Value)
    end,

    -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
    ChangedCallback = function(New)
        print('[cb] Keybind changed!', New)
    end
})

-- OnClick is only fired when you press the keybind and the mode is Toggle
-- Otherwise, you will have to use Keybind:GetState()
Options.KeyPicker:OnClick(function()
    print('Keybind clicked!', Options.KeyPicker:GetState())
end)

Options.KeyPicker:OnChanged(function()
    print('Keybind changed!', Options.KeyPicker.Value)
end)

task.spawn(function()
    while true do
        wait(1)

        -- example for checking if a keybind is being pressed
        local state = Options.KeyPicker:GetState()
        if state then
            print('KeyPicker is being held down')
        end

        if Library.Unloaded then break end
    end
end)

Options.KeyPicker:SetValue({ 'MB2', 'Toggle' }) -- Sets keybind to MB2, mode to Hold

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

    Library:SetWatermark(('Doge Hub /\ Wave | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.KeybindFrame.Visible = true; -- todo: add a function for this

Library:OnUnload(function()
    WatermarkConnection:Disconnect()

    print('Unloaded!')
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

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
    return -- Stop the script from executing further
elseif executor == "Manti" then
    print("This script is running in Manti Executor (Not allowed)")
    plrs.LocalPlayer:Kick("\n🤥Fuck Manti Nigga")
    return
elseif executor == "Nezur" then
    warn("This script is running in Nezur Executor (This Executor Is Not Stable)")
elseif executor == "Celery" then
    plrs.LocalPlayer:Kick("\n🤥Fuck Celery")
    print("This script is running in Celery Executor.")
	return
else
    print("Unknown executor detected.")
end
-- Your actual script logic here


-- Function to apply head effect to a single player
local function applyHeadEffect(player)
    if player ~= localPlayer and player.Character then
        local head = player.Character:FindFirstChild("Head")
        if head then
            if isEnabled then
                -- Increase head size and adjust transparency
                head.Size = Vector3.new(headSizeMultiplier, headSizeMultiplier, headSizeMultiplier)
                head.Transparency = transparencyValue
            else
                -- Reset head size and transparency
                head.Size = Vector3.new(1, 1, 1) -- Reset to normal size
                head.Transparency = 0
            end
        end
    end
end

-- Function to toggle head size and transparency for all players
local function toggleHeadEffect()
    isEnabled = not isEnabled -- Toggle the state
    
    for _, player in pairs(players:GetPlayers()) do
        applyHeadEffect(player)
    end
end

-- Function to continuously check for new players and apply the effect if needed
local function checkForNewPlayers()
    while true do
        wait(10) -- Wait 10 seconds before checking again
        if isEnabled then
            for _, player in pairs(players:GetPlayers()) do
                applyHeadEffect(player)
            end
        end
    end
end

-- Start the player check loop in a separate thread
spawn(checkForNewPlayers)

-- Create a ScreenGui
--local screenGui = Instance.new("ScreenGui")
--screenGui.Name = "VideoGui"
--screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a VideoFrame
--local videoFrame = Instance.new("VideoFrame")
--videoFrame.Name = "IntroVideo"
--videoFrame.Size = UDim2.new(1, 0, 1, 0)  -- Full screen
--videoFrame.Position = UDim2.new(0, 0, 0, 0)
--videoFrame.Parent = screenGui

-- Set the video asset ID (replace with your video asset ID)
--videoFrame.Video = "rbxassetid://5608412605"
-- Start playing the video
--videoFrame:Play()
--wait(12)
--videoFrame:Destroy()


-- Optional: Connect to the video end event
--videoFrame.Ended:Connect(function()
    -- Hide or remove the video frame after it finishes playing
--    videoFrame:Destroy()
--end)



-- Function to toggle the aimbot
-- Function to toggle the aimbot
-- Function to toggle the aimbot
-- Function to toggle the aimbot
function toggleAimbot()
    aimbotEnabled = not aimbotEnabled -- Toggle the state

    if not aimbotEnabled then
        isAiming = false -- Reset aiming when disabling
        targetHead = nil -- Clear target head
    end
end

-- Function to toggle prediction
function togglePrediction()
    predictionEnabled = not predictionEnabled -- Toggle the prediction state
    print("Prediction Enabled: ", predictionEnabled)
end

-- Function to toggle adjust prediction feature
function toggleAdjustPrediction()
    adjustPredictionEnabled = not adjustPredictionEnabled -- Toggle the adjust prediction state
    if not adjustPredictionEnabled then
        predictionFactor = 0.118 -- Reset to default prediction factor
    end
    print("Adjust Prediction Enabled: ", adjustPredictionEnabled)
    print("Current Prediction Factor: ", predictionFactor)
end

-- Function to adjust prediction factor based on distance
local function adjustPredictionFactor(distance)
    if adjustPredictionEnabled then
        if distance >= 400 then
            predictionFactor = 0.200
        elseif distance >= 300 then
            predictionFactor = 0.180
        elseif distance >= 230 then
            predictionFactor = 0.160
        elseif distance >= 100 then
            predictionFactor = 0.140
        else
            predictionFactor = 0.115 -- Default if under 100 meters
        end
        print("Current Prediction Factor: ", predictionFactor)
    end
end

-- Function to predict future position based on velocity
local function predictTargetPosition(target)
    if not predictionEnabled then
        return target.Position -- Return the current position if prediction is disabled
    end

    local targetCharacter = target.Parent
    local humanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local velocity = humanoidRootPart.AssemblyLinearVelocity
        local currentPosition = target.Position
        
        -- Assume distance is provided externally
        adjustPredictionFactor(distance)  -- Update prediction factor based on distance

        -- Calculate the predicted position
        local predictedPosition = currentPosition + velocity * predictionFactor
        return predictedPosition
    end
    return target.Position
end

-- Function to lock the aim on the head with prediction
function updateAimbot()
    if aimbotEnabled and isAiming then
        local target = mouse.Target -- Get the object the mouse is currently over

        -- Check if the target is an NPC character
        if target and target.Parent then
            local npcModel = target.Parent
            if npcModel:FindFirstChild("Humanoid") and npcModel:FindFirstChild("Head") then
                targetHead = npcModel.Head -- Set target to the NPC's head
            end
        end

        -- Aim at the head with prediction if it exists
        if targetHead then
            local targetPosition = predictTargetPosition(targetHead)

            -- Smoothly aim at the predicted head position
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, targetPosition)
        end
    end
end

-- Input handling for right mouse button
mouse.Button2Down:Connect(function()
    if aimbotEnabled then
        isAiming = true -- Start aiming when right mouse button is held down
    end
end)

mouse.Button2Up:Connect(function()
    isAiming = false -- Stop aiming when right mouse button is released
    targetHead = nil -- Unlock the target when the right mouse button is released
end)

-- Heartbeat connection to update aimbot
game:GetService("RunService").Heartbeat:Connect(updateAimbot)

-- Example input to toggle prediction and adjust prediction features (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()` and `toggleAdjustPrediction()`

-- Example input to toggle prediction and adjust prediction features (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()` and `toggleAdjustPrediction()`

-- Example input to toggle prediction (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()`

-- Function to get the ping
local function getPing()
    local stats = game:GetService("Stats")
    local networkStats = stats.Network.ServerStatsItem["Data Ping"]
    return math.floor(networkStats:GetValue())
end

-- Function to get the FPS
local function getFPS()
    local fps = workspace:GetRealPhysicsFPS()
    return math.floor(fps)
end

-- Function to update the info text
local function updateInfo()
    while true do
        infoLabel.Text = string.format("FPS: %d  Ping: %dms", getFPS(), getPing())
        wait(1)
    end
end

-- Function to toggle grass visibility
function toggleGrass()
    grassVisible = not grassVisible

    -- Loop through all terrain decoration instances
    for _, terrain in ipairs(workspace:GetDescendants()) do
        if terrain:IsA("Terrain") then
            for _, decoration in ipairs(terrain:GetChildren()) do
                if decoration:IsA("Decoration") and decoration.Name:lower():find("grass") then
                    decoration.Transparency = grassVisible and 0 or 1
                end
            end
        end
    end
end

-- Function to smoothly change the RGB color of the title label's tex

-- Start the info update and RGB animation
--spawn(updateInfo)




local counter = 1
local devbuild228 = not swimguardvars
if devbuild228 then
    swimguardvars = {
        user = "Private",
        discordid = 716514203137081376,
        isprivate = true,
        isdeveloper = true,
        version = "v1"
    }
end
local title, title2 = '.sigma paid pd | %s | %s | fps %s',
    '<font color="rgb(255, 213, 0)">$$</font> Doge<font color="rgb(166, 0, 255)">.sigma</font> ' ..
    (swimguardvars.isprivate and not swimguardvars.isdeveloper and 'private ' or swimguardvars.isdeveloper and 'Private ' or '') ..
    '<font color="rgb(255, 213, 0)">$$</font>'
local loadprivate = swimguardvars.isprivate or swimguardvars.isdeveloper

local function wrap(f) coroutine.resume(coroutine.create(f)) end
local Library, Toggles, Options, ThemeManager, SaveManager, _esplib = nil, nil, nil, nil, nil, nil
print("loading doge hub")
print('load_' .. tostring(counter))
counter = counter + 1
do
    local repo = "http://31.210.171.229:3000/new/"
    Library, Toggles, Options = loadstring(game:HttpGet(repo .. 'newlib/old/main'))()
    ThemeManager = loadstring(game:HttpGet(repo .. 'newlib/old/theme'))()
    SaveManager = loadstring(game:HttpGet(repo .. 'newlib/old/save'))()
    _esplib = loadstring(game:HttpGet(repo .. 'newlib/old/esp'))()
end
print('sucker_' .. tostring(counter))
counter = counter + 1
local Window = Library:CreateWindow({
    Title = title2,
    Center = true,
    AutoShow = true,
    TabPadding = 8
})
local Tabs = {
    Main = Window:AddTab('combat'),
    Visuals = Window:AddTab('esp'),
    Misc = Window:AddTab('misc'),
    Lua = Window:AddTab('Other'),
    Settings = Window:AddTab('settings/configs'),
}


local autoFireEnabled = false -- Initially disabled
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")

local othergames = {
    pdelta = {
        drawfov = false,
        aimfov = 0,
        silentaim = false,
        silentaimwall = false,
        silentaimpart = "HumanoidRootPart",
        fovcolor = Color3.new(1, 1, 1),
        fovoutline = false,
        p2cmode = 0,
        corpseesp = false,
        corpsecolor = Color3.new(1, 1, 1),
        AA = false,
        AAangle = 0,
        AIesp = false,
        AIcolor = Color3.new(1, 1, 1),
        npcsilentaim = false,
        hitlogs = true,
        hitsound = true,
        hittracers = true,
        hittracerscolor = Color3.new(1, 1, 1),
        hittracerslife = 5,
        hittracersdecal = "",
        novisor = false,
        nobobrecoil = true
    }
}
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
local spamsets = varsglobal.spamsettings
wrap(function()
    local function generateword(word)
        local final = " " .. word .. " "
        local function addsomething()
            if spamsets.emojis and spamsets.symb then
                local chosen, word = spamsets.real[1], nil
                word = spamsets.symbols[math.random(1, #spamsets.symbols)]:rep(math.random(2, 5)) ..
                    chosen[math.random(1, #chosen)]:rep(1, 2) .. " "
                return word
            elseif spamsets.emojis then
                local chosen, word = spamsets.real[1], nil
                word = chosen[math.random(1, #chosen)]:rep(1, 2) .. " "
                return word
            elseif spamsets.symb then
                local word = nil
                word = spamsets.symbols[math.random(1, #spamsets.symbols)]:rep(math.random(2, 5)) ..
                    " "
                return word
            else
                return ""
            end
        end
        if not spamsets.emojis and not spamsets.symb then
            return (final):sub(1, spamsets.chatlenghtpatch)
        else
            return (addsomething() .. addsomething() .. final .. addsomething() .. addsomething() .. final .. addsomething() .. addsomething() .. final .. addsomething() .. addsomething() .. final .. addsomething() .. addsomething())
                :sub(1, spamsets.chatlenghtpatch)
        end
    end
    while task.wait(spamsets.speed) do
        if spamsets.enabled then
            if spamsets.num >= #spamsets.real[2] then
                if not spamsets.customwordenabled then
                    spamsets.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        generateword(spamsets.real[2][spamsets.num]),
                        spamsets.chatchannelpatch)
                else
                    spamsets.num = 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        generateword(spamsets.customword), spamsets.chatchannelpatch)
                end
            else
                if not spamsets.customwordenabled then
                    spamsets.num = spamsets.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        generateword(spamsets.real[2][spamsets.num]),
                        spamsets.chatchannelpatch)
                else
                    spamsets.num = spamsets.num + 1
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        generateword(spamsets.customword), spamsets.chatchannelpatch)
                end
            end
        end
    end
end)
local Visuals = Tabs.Visuals:AddRightTabbox()
local TabEsp = Tabs.Visuals:AddLeftTabbox()
local EnemyEspTab = TabEsp:AddTab('esp')
local cheat = { fonts = {} }

if ({ identifyexecutor() })[1] == "Krampus" then
    -- Define folder names and paths consistently
    local folderName = "dogehub66"
    local assetsFolder = folderName .. "/assets"

    -- Create the main folder
    if not isfolder(folderName) then
        print("Creating folder: " .. folderName)
        local success, error = pcall(function() makefolder(folderName) end)
        if not success then
            print("Failed to create folder: " .. folderName .. " - Error: " .. tostring(error))
            return
        end
    else
        print("Folder already exists: " .. folderName)
    end

    -- Create the assets folder
    if not isfolder(assetsFolder) then
        print("Creating folder: " .. assetsFolder)
        local success, error = pcall(function() makefolder(assetsFolder) end)
        if not success then
            print("Failed to create folder: " .. assetsFolder .. " - Error: " .. tostring(error))
            return
        end
    else
        print("Folder already exists: " .. assetsFolder)
    end

    -- Function to download and save the font
    local function downloadFont(fontName, url)
        print("Attempting to download font: " .. fontName)
        local font
        local success, error = pcall(function()
            font = game:HttpGet(url)
        end)
        if not success then
            print("Error while downloading font " .. fontName .. ": " .. error)
            return nil
        end
        local filePath = assetsFolder .. "/" .. fontName .. ".ttf"
        print("Saving font to: " .. filePath)
        writefile(filePath, font)
        return filePath
    end

    -- Download fonts if they don't exist
    if not isfile(assetsFolder .. "/plex.ttf") then
        print("plex.ttf not found, downloading...")
        cheat.fonts.plex = downloadFont("plex", "http://31.210.171.229:3000/assets/plex.ttf")
    else
        print("plex.ttf already exists.")
    end

    if not isfile(assetsFolder .. "/mono.ttf") then
        print("mono.ttf not found, downloading...")
        cheat.fonts.mono = downloadFont("mono", "http://31.210.171.229:3000/assets/mono.ttf")
    else
        print("mono.ttf already exists.")
    end

    if not isfile(assetsFolder .. "/spixel7.ttf") then
        print("spixel7.ttf not found, downloading...")
        cheat.fonts.spixel7 = downloadFont("spixel7", "http://31.210.171.229:3000/assets/spixel7.ttf")
    else
        print("spixel7.ttf already exists.")
    end

    -- Read the font data
    if isfile(assetsFolder .. "/plex.ttf") then
        cheat.fonts["plex"] = { Data = readfile(assetsFolder .. "/plex.ttf") }
    else
        print("Error: plex.ttf not found after supposed download.")
    end

    if isfile(assetsFolder .. "/mono.ttf") then
        cheat.fonts["mono"] = { Data = readfile(assetsFolder .. "/mono.ttf") }
    else
        print("Error: mono.ttf not found after supposed download.")
    end

    if isfile(assetsFolder .. "/spixel7.ttf") then
        cheat.fonts["spixel7"] = { Data = readfile(assetsFolder .. "/spixel7.ttf") }
    else
        print("Error: spixel7.ttf not found after supposed download.")
    end
end
print('load_' .. tostring(counter))
counter = counter + 1
EnemyEspTab:AddDropdown('font font',
    {
        Values = { 'UI', 'System', 'Plex', 'Monospace', 'spixel7', 'mono', 'plex' },
        Default = 4,
        Multi = false,
        Text = 'font',
        Tooltip = 'select font',
        Callback = function(Value)
            if Drawing.Fonts[Value] then
                varsglobal.visuals.font = Drawing.Fonts[Value]
            elseif ({ identifyexecutor() })[1] == "Krampus" then
                varsglobal.visuals.font = cheat.fonts[Value]
            else
                varsglobal.visuals.font = Drawing.Fonts.Monospace
            end
        end
    })
EnemyEspTab:AddDropdown('esp font',
    {
        Values = { 'UI', 'System', 'Plex', 'Monospace', 'spixel7', 'mono', 'plex' },
        Default = 4,
        Multi = false,
        Text = 'esp font',
        Tooltip = 'select font',
        Callback = function(Value)
            if Drawing.Fonts[Value] then
                _esplib.sharedSettings.textFont = Drawing.Fonts[Value]
            elseif ({ identifyexecutor() })[1] == "Krampus" then
                _esplib.sharedSettings.textFont = cheat.fonts[Value]
            else
                _esplib.sharedSettings.textFont = Drawing.Fonts.Monospace
            end
        end
    })


-- Table to store tracers for all players
local tracers = {}

-- Function to toggle the tracer for a specific player
local function toggleTracer(player)
    -- If the tracer is already enabled for the player, disable it
    if tracers[player] then
        tracers[player]:Destroy()  -- Remove the tracer part
        tracers[player] = nil
    else
        -- Otherwise, create and enable the tracer
        local head = player.Character and player.Character:FindFirstChild("Head")
        if head then
            -- Create a new part for the tracer
            local tracerPart = Instance.new("Part")
            tracerPart.Size = Vector3.new(0.2, 0.2, 2)  -- Thin and short
            tracerPart.Anchored = true
            tracerPart.CanCollide = false
            tracerPart.Transparency = 0.5  -- Set transparency
            tracerPart.Material = Enum.Material.Neon  -- Use ForceField material to make it visible through walls
            tracerPart.Color = Color3.fromRGB(255, 255, 255)  -- White color
            tracerPart.Parent = workspace

            -- Store the tracer part in the table
            tracers[player] = tracerPart

            -- Update the tracer's position and orientation every frame
            local connection
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                if not tracers[player] or not player.Character or not player.Character:FindFirstChild("Head") then
                    connection:Disconnect()  -- Stop updating if the tracer is disabled or player disappears
                    return
                end

                -- Get the player's Head position and look direction
                local headPosition = player.Character.Head.Position
                local lookDirection = player.Character.Head.CFrame.LookVector

                -- Set the position and orientation of the tracer part
                tracers[player].CFrame = CFrame.new(headPosition, headPosition + lookDirection) * CFrame.new(0, 0, -1)
            end)
        end
    end
end

-- Example: Toggling the tracer for all players except the local player
local function toggleTracersForAllPlayersExceptLocal(localPlayer)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            toggleTracer(player)
        end
    end
end

-- Connect to PlayerAdded to allow new players to toggle tracers
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        -- Delay the toggle to ensure the character is fully loaded
        wait(1)
        local localPlayer = game.Players.LocalPlayer
        if player ~= localPlayer then
            toggleTracer(player)  -- Automatically toggle tracer for new players, except local player
        end
    end)
end)

-- Example usage: Toggle tracers for all players except the local player
local localPlayer = game.Players.LocalPlayer






EnemyEspTab:AddSlider('esp fontsize',
    { Text = 'esp font size', Default = 12, Min = 1, Max = 30, Rounding = 0, Compact = true })
    :OnChanged(function(State)
        _esplib.sharedSettings.textSize = State
    end)

local enemysets = _esplib.teamSettings.enemy
EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'enable esp',
    Default = false,
    Callback = function(first)
        enemysets.enabled = first
    end
})



local Players = game:service("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:service("Workspace").CurrentCamera
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
if EnemyEspTab and EnemyEspTab.AddToggle then
    EnemyEspTab:AddToggle('minimap', {
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
if EnemyEspTab and EnemyEspTab.GetToggleState then
    local success, toggleState = pcall(function() return EnemyEspTab:GetToggleState('minimap') end)
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


EnemyEspTab:AddToggle('boxswitch', {
    Text = 'box esp',
    Default = false,
    Callback = function(first)
        enemysets.box = first
    end
}):AddColorPicker('boxcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'box color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.boxColor[1] = Value
    end
})
EnemyEspTab:AddToggle('nameswitch', {
    Text = 'name esp',
    Default = false,


    Callback = function(first)
        enemysets.name = first
    end
}):AddColorPicker('namecolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'name color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.nameColor[1] = Value
    end
})

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera

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


EnemyEspTab:AddToggle('skeletonesp', {
    Text = 'Skeleton Esp',
    Default = false,
    Callback = function(first)
        ToggleESP()
    end
})

EnemyEspTab:AddToggle('FaceDirectionEsp', {
    Text = 'Face Direction Esp',
    Tooltip = 'Face Direction Esp',
    Default = false,

    Callback = function(first)



toggleTracersForAllPlayersExceptLocal(localPlayer)





       
    end
})

EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health bar esp',
    Default = false,


    Callback = function(first)
        enemysets.healthBar = first
    end
})
EnemyEspTab:AddToggle('healthswitch', {
    Text = 'health text esp',
    Default = false,


    Callback = function(first)
        enemysets.healthText = first
    end
}):AddColorPicker('healthcolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'health color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.healthTextColor[1] = Value
    end
})

EnemyEspTab:AddToggle('distswitchniger', {
    Text = 'Outline',
    Default = false,

    Callback = function(first)
        enemysets.chams = first
    end
})
EnemyEspTab:AddToggle('tracerswitch', {
    Text = 'tracers esp',
    Default = false,
    Callback = function(first)
        enemysets.tracer = first
    end
}):AddColorPicker('tracercolor', {
    Default = Color3.new(0, 1, 0),
    Title = 'tracer color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.tracerColor[1] = Value
    end
})
EnemyEspTab:AddDropdown('Enemy Tracer Origin',
    {
        Values = { 'Top', 'Bottom' },
        Default = 1,
        Multi = false,
        Text = 'tracer origin',
        Tooltip = 'select origin',
        Callback = function(Value)
            enemysets.tracerOrigin = Value
        end
    })
EnemyEspTab:AddToggle('distswitch', {
    Text = 'distance esp',
    Default = false,

    Callback = function(first)
        enemysets.distance = first
    end
}):AddColorPicker('distcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'distance color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.distanceColor[1] = Value
    end
}):AddColorPicker('distcolor1337', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams outline',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsOutlineColor[1] = Value
    end
}):AddColorPicker('distcolor228', {
    Default = Color3.new(1, 1, 1),
    Title = 'chams fill',
    Transparency = 0,

    Callback = function(Value)
        enemysets.chamsFillColor[1] = Value
    end
})

EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'oof arrows',
    Default = false,
    Callback = function(first)
        enemysets.offScreenArrow = first
    end
}):AddColorPicker('outOfViewArrowscolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'oof color',
    Transparency = 0,

    Callback = function(Value)
        enemysets.offScreenArrowColor[1] = Value
    end
})
EnemyEspTab:AddToggle('outOfViewArrows/switch', { --//outOfViewArrows for EnemySets
    Text = 'oof outline',
    Default = false,
    Callback = function(first)
        enemysets.offScreenArrowOutline = first
    end
})
EnemyEspTab:AddSlider('outOfViewArrowsOutlines radius',
    { Text = 'oof radius', Default = 60, Min = 0, Max = 600, Rounding = 0, Compact = true })
    :OnChanged(function(State)
        enemysets.offScreenArrowRadius = State
    end)
EnemyEspTab:AddSlider('outOfViewArrowsOutlines Size',
    { Text = 'oof size', Default = 60, Min = 0, Max = 600, Rounding = 0, Compact = true })
    :OnChanged(function(State)
        enemysets.offScreenArrowSize = State
    end)

_esplib.Load()
print('load_' .. tostring(counter))
counter = counter + 1
local WorldTab = Visuals:AddTab('world')
local Misc = Tabs.Misc:AddLeftGroupbox('misc1')
local CrosshairTab = Tabs.Misc:AddLeftGroupbox('crosshair')
local movetab = Tabs.Misc:AddRightGroupbox('misc2')
local stuffz = Tabs.Settings:AddLeftGroupbox('stuffz')
local luatab = Tabs.Lua:AddRightGroupbox('dogelua');
do
    local Sky = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
    if not Sky then Sky = Instance.new("Sky", Lighting) end
    local value = "Standard"
    local SkyBoxes = {
        ["Standard"] = { ["SkyboxBk"] = Sky.SkyboxBk, ["SkyboxDn"] = Sky.SkyboxDn, ["SkyboxFt"] = Sky.SkyboxFt, ["SkyboxLf"] = Sky.SkyboxLf, ["SkyboxRt"] = Sky.SkyboxRt, ["SkyboxUp"] = Sky.SkyboxUp, },
        ["Among Us"] = { ["SkyboxBk"] = "rbxassetid://5752463190", ["SkyboxDn"] = "rbxassetid://5752463190", ["SkyboxFt"] = "rbxassetid://5752463190", ["SkyboxLf"] = "rbxassetid://5752463190", ["SkyboxRt"] = "rbxassetid://5752463190", ["SkyboxUp"] = "rbxassetid://5752463190" },
        ["Doge"] = { ["SkyboxBk"] = "rbxassetid://159713165", ["SkyboxDn"] = "rbxassetid://159713165", ["SkyboxFt"] = "rbxassetid://5752463190", ["SkyboxLf"] = "rbxassetid://5752463190", ["SkyboxRt"] = "rbxassetid://159713165", ["SkyboxUp"] = "rbxassetid://159713165" },
        ["Spongebob"] = { ["SkyboxBk"] = "rbxassetid://277099484", ["SkyboxDn"] = "rbxassetid://277099500", ["SkyboxFt"] = "rbxassetid://277099554", ["SkyboxLf"] = "rbxassetid://277099531", ["SkyboxRt"] = "rbxassetid://277099589", ["SkyboxUp"] = "rbxassetid://277101591" },
        ["Deep Space"] = { ["SkyboxBk"] = "rbxassetid://159248188", ["SkyboxDn"] = "rbxassetid://159248183", ["SkyboxFt"] = "rbxassetid://159248187", ["SkyboxLf"] = "rbxassetid://159248173", ["SkyboxRt"] = "rbxassetid://159248192", ["SkyboxUp"] = "rbxassetid://159248176" },
        ["Winter"] = { ["SkyboxBk"] = "rbxassetid://510645155", ["SkyboxDn"] = "rbxassetid://510645130", ["SkyboxFt"] = "rbxassetid://510645179", ["SkyboxLf"] = "rbxassetid://510645117", ["SkyboxRt"] = "rbxassetid://510645146", ["SkyboxUp"] = "rbxassetid://510645195" },
        ["Clouded Sky"] = { ["SkyboxBk"] = "rbxassetid://252760981", ["SkyboxDn"] = "rbxassetid://252763035", ["SkyboxFt"] = "rbxassetid://252761439", ["SkyboxLf"] = "rbxassetid://252760980", ["SkyboxRt"] = "rbxassetid://252760986", ["SkyboxUp"] = "rbxassetid://252762652" },
        --["test"] = {"SkyboxBk"="rbxassetid://","SkyboxDn"="rbxassetid://","SkyboxFt"="rbxassetid://","SkyboxLf"="rbxassetid://","SkyboxRt"="rbxassetid://","SkyboxUp"="rbxassetid://"},
    }



    WorldTab:AddDropdown('SkyboxeChange',
        {
            Values = { "Standard", "Among Us", "Doge", "Spongebob", "Deep Space", "Winter", "Clouded Sky" },
            Default = 3,
            Multi = false,
            Text =
            'Sky'
        }):OnChanged(function(Value)
        value = Value
    end);
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(SkyBoxes[value]) do
            Sky[i] = v
        end
    end);
end
(function()
    local draw, objects = {}, {}
    function draw:new(type, props)
        local obj = Drawing.new(type)
        for i, v in pairs(props) do
            obj[i] = v
        end
        objects[#objects + 1] = obj
        return obj
    end

    function draw:removeall()
        for i, v in pairs(objects) do
            v:Remove()
        end
    end

    function draw:changevis(value)
        for i, v in pairs(objects) do
            v.Visible = value
        end
    end

    local color = Color3.fromRGB(139, 68, 235)
    Misc:AddToggle('showwatermark', {
        Text = 'watermark',
        Default = true,
        Callback = function(v)
            draw:changevis(v)
        end
    }):AddColorPicker('watercolor',
        {
            Default = Color3.fromRGB(139, 68, 235),
            Title = 'watermark color',
            Transparency = 0,
            Callback = function(v)
                color =
                    v
            end
        })
    local toprightpos = Vector2.new(camera.ViewportSize.X - 10, 10)

    local background = draw:new("Line", {
        To = toprightpos - Vector2.new(200, -(6 + 3)),
        From = toprightpos - Vector2.new(0, -(6 + 3)),
        Thickness = 15,
        Transparency = 0.7,
        Visible = true,
        Color = Color3.new(0, 0, 0),
        ZIndex = 1,
    })
    local topbar = draw:new("Line", {
        To = toprightpos - Vector2.new(200, 0),
        From = toprightpos - Vector2.new(0, 0),
        Thickness = 1,
        Transparency = 1,
        Visible = true,
        Color = color,
        ZIndex = 1,
    })
    local topbar1 = draw:new("Line", {
        To = toprightpos - Vector2.new(200, -1),
        From = toprightpos - Vector2.new(0, -1),
        Thickness = 1,
        Transparency = 1,
        Visible = true,
        Color = color,
        ZIndex = 2,
    })

WorldTab:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
 end
 end)

 


-- Call the function to apply ForceField and remove SurfaceAppearance




		
    local logotext = draw:new("Text", {
        Text = "Doge",
        Size = 13,
        Font = varsglobal.visuals.font,
        Outline = true,
        Center = false,
        Position = toprightpos - Vector2.new(200 - 5, -2),
        Transparency = 1,
        Visible = true,
        Color = color,
        ZIndex = 2,
    })
    local text = draw:new("Text", {
        Text = ".sigma | Fps | Ping",
        Size = 13,
        Font = varsglobal.visuals.font,
        Outline = true,
        Center = false,
        Position = toprightpos - Vector2.new(200 - 5, -2),
        Transparency = 1,
        Visible = true,
        Color = Color3.new(1, 1, 1),
        ZIndex = 2,
    })
    draw:changevis(false)
    local FrameTimer = tick()
    local FrameCounter = 0;
    local FPS = 60;
    local vector2_new = Vector2.new
    RunService.Stepped:Connect(LPH_JIT_MAX(function()
        local txtboundsx = text.TextBounds.X
        local lgtextboundsx = logotext.TextBounds.X
        toprightpos = vector2_new(camera.ViewportSize.X - 10, 10)

        topbar.From = toprightpos
        topbar1.From = toprightpos - vector2_new(0, -1)
        background.From = toprightpos - vector2_new(0, -(6 + 3))

        topbar.To = toprightpos - vector2_new(lgtextboundsx + txtboundsx + 10, 0)
        topbar1.To = toprightpos - vector2_new(lgtextboundsx + txtboundsx + 10, -1)
        background.To = toprightpos - vector2_new(lgtextboundsx + txtboundsx + 10, -(6 + 3))

        logotext.Position = toprightpos - vector2_new(lgtextboundsx + txtboundsx + 5, -2)
        text.Position = toprightpos - vector2_new(txtboundsx + 5, -2)

        topbar.Color = color
        topbar1.Color = color
        logotext.Color = color
        logotext.Font = varsglobal.visuals.font
        text.Font = varsglobal.visuals.font

        FrameCounter = FrameCounter + 1;
        if (tick() - FrameTimer) >= 1 then
            FPS = FrameCounter;
            FrameTimer = tick();
            FrameCounter = 0;
        end;

        text.Text = title:format(
            swimguardvars.user,
            swimguardvars.version,
            math.floor(FPS)
        );
    end))
end)();
makefolder("dogehub661")
luatab:AddLabel("Sigma Or Bigma?")
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
luatab:AddLabel("1.2")


do
    varsglobal.cursor.rainbow = false
    varsglobal.cursor.sussy = false
    CrosshairTab:AddToggle('crosshairenable', {
        Text = 'enable crosshair',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Enabled = first
        end
    }):AddColorPicker('crosshaircolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'crosshair color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Color = Value
        end
    })
    CrosshairTab:AddSlider('crosshairspeed', {
        Text = 'speed',
        Default = 1.5,
        Min = 0.1,
        Max = 15,
        Rounding = 1,
        Compact = true,
    }):OnChanged(function(State)
        varsglobal.cursor.Speed = State / 10
    end)
    CrosshairTab:AddSlider('crosshairradius', {
        Text = 'radius',
        Default = 25,
        Min = 0.1,
        Max = 100,
        Rounding = 1,
        Compact = true,
    }):OnChanged(function(State)
        varsglobal.cursor.Radius = State
    end)
    CrosshairTab:AddSlider('crosshairthickness', {
        Text = 'thickness',
        Default = 1.5,
        Min = 0.1,
        Max = 10,
        Rounding = 1,
        Compact = true,
    }):OnChanged(function(State)
        varsglobal.cursor.Thickness = State
    end)
    CrosshairTab:AddSlider('crosshairgapsize', {
        Text = 'gap',
        Default = 5,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Compact = true,
    }):OnChanged(function(State)
        varsglobal.cursor.Gap = State
    end)
    CrosshairTab:AddToggle('crosshairenablegap', {
        Text = 'math divide gap',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.TheGap = first
        end
    })
    CrosshairTab:AddToggle('crosshairenableoutline', {
        Text = 'outline',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Outline = first
        end
    })
    CrosshairTab:AddToggle('crosshairenableresize', {
        Text = 'resize animation',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Resize = first
        end
    })
    CrosshairTab:AddToggle('crosshairenabledot', {
        Text = 'dot',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Dot = first
        end
    })
    CrosshairTab:AddToggle('crosshairenablenazi', {
        Text = 'sussy',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.sussy = first
        end
    })
    CrosshairTab:AddToggle('crosshairenablefaggot', {
        Text = 'rainbow',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.rainbow = first
        end
    })
    CrosshairTab:AddToggle('crosshairtextLogo', {
        Text = 'text logo',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Text.Logo = first
        end
    }):AddColorPicker('crosshairlogocolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'logo color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Text.LogoColor = Value
        end
    })
    CrosshairTab:AddToggle('crosshairtextName', {
        Text = 'text name',
        Default = false,

        Callback = function(first)
            varsglobal.cursor.Text.Name = first
        end
    }):AddColorPicker('crosshairtextcolor', {
        Default = Color3.new(1, 1, 1),
        Title = 'text color',
        Transparency = 0,
        Callback = function(Value)
            varsglobal.cursor.Text.NameColor = Value
        end
    })
    CrosshairTab:AddSlider('crosshairlogooffset', {
        Text = 'logo fade offset',
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Compact = true,
    }):OnChanged(function(State)
        varsglobal.cursor.Text.LogoFadingOffset = State
    end)
    local utility = {}

    -- // Functions
    function utility:new(type, properties)
        local object = Drawing.new(type)

        for i, v in pairs(properties) do
            object[i] = v
        end
        return object
    end

    -- // Initilisation
    local lines = {}
    -- // Drawings
    local outline = utility:new("Square", {
        Visible = true,
        Size = Vector2.new(4, 4),
        Color = Color3.fromRGB(0, 0, 0),
        Filled = true,
        ZIndex = 1,
        Transparency = 1
    })
    --
    local dot = utility:new("Square", {
        Visible = true,
        Size = Vector2.new(2, 2),
        Color = varsglobal.cursor.Color,
        Filled = true,
        ZIndex = 2,
        Transparency = 1
    })
    --
    local logotext = utility:new("Text", {
        Visible = false,
        Font = varsglobal.visuals.font,
        Size = 13,
        Color = Color3.fromRGB(138, 128, 255),
        ZIndex = 3,
        Transparency = 1,
        Text = "Doge.sigma",
        Center = true,
        Outline = true,
    })
    local text = utility:new("Text", {
        Visible = false,
        Font = varsglobal.visuals.font,
        Size = 13,
        Color = Color3.new(1, 1, 1),
        ZIndex = 3,
        Transparency = 1,
        Text = plr.Name,
        Center = true,
        Outline = true,
    })
    --
    for i = 1, 4 do
        --
        local line_outline = utility:new("Line", {
            Visible = true,
            From = Vector2.new(200, 500),
            To = Vector2.new(200, 500),
            Color = Color3.fromRGB(0, 0, 0),
            Thickness = varsglobal.cursor.Thickness + 2.5,
            ZIndex = 1,
            Transparency = 1
        })
        --
        local line = utility:new("Line", {
            Visible = true,
            From = Vector2.new(200, 500),
            To = Vector2.new(200, 500),
            Color = varsglobal.cursor.Color,
            Thickness = varsglobal.cursor.Thickness,
            ZIndex = 2,
            Transparency = 1
        })

        local naziline = utility:new("Line", {
            Visible = true,
            From = Vector2.new(200, 500),
            To = Vector2.new(200, 500),
            Color = varsglobal.cursor.Color,
            Thickness = varsglobal.cursor.Thickness,
            ZIndex = 2,
            Transparency = 1
        })

        lines[i] = { line, line_outline, naziline }
    end
    -- // Main
    local angle = 0
    local transp = 0
    local reverse = false
    local function setreverse(value)
        if reverse ~= value then
            reverse = value
        end
    end
    --
    local pos, rainbow, rotationdegree, color = Vector2.zero, 0, 0, Color3.new()
    local math_cos, math_atan, math_pi, math_sin = math.cos, math.atan, math.pi, math.sin
    local function DEG2RAD(x) return x * math_pi / 180 end
    local function RAD2DEG(x) return x * 180 / math_pi end
    RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(delta)
        if varsglobal.cursor.Enabled then
            rainbow = rainbow + (delta * 0.5)
            if rainbow > 1.0 then rainbow = 0.0 end
            color = Color3.fromHSV(rainbow, 1, 1)
            if varsglobal.cursor.CustomPos then
                pos = varsglobal.cursor.Position
            else
                pos = Vector2.new(
                    game.Players.LocalPlayer:GetMouse().X,
                    game.Players.LocalPlayer:GetMouse().Y + game:GetService("GuiService"):GetGuiInset().Y)
            end
            if varsglobal.cursor.rainbow then color = Color3.fromHSV(rainbow, 1, 1) else color = varsglobal.cursor.Color end
            if transp <= 1.5 + varsglobal.cursor.Text.LogoFadingOffset and not reverse then
                transp = transp + ((varsglobal.cursor.Speed * 10) * delta)
                if transp >= 1.5 + varsglobal.cursor.Text.LogoFadingOffset then setreverse(true) end
            elseif reverse then
                transp = transp - ((varsglobal.cursor.Speed * 10) * delta)
                if transp <= 0 - varsglobal.cursor.Text.LogoFadingOffset then setreverse(false) end
            end
            logotext.Position = Vector2.new(pos.X, (pos + Vector2.new(0, varsglobal.cursor.Radius + 5)).Y)
            logotext.Transparency = transp
            logotext.Visible = varsglobal.cursor.Text.Logo
            logotext.Color = varsglobal.cursor.Text.LogoColor
            logotext.Font = varsglobal.visuals.font
            --
            text.Position = Vector2.new(pos.X,
                (pos + Vector2.new(0, varsglobal.cursor.Radius + (varsglobal.cursor.Text.Logo and 19 or 5))).Y)
            text.Visible = varsglobal.cursor.Text.Name
            text.Color = varsglobal.cursor.Text.NameColor
            text.Font = varsglobal.visuals.font

            if varsglobal.cursor.sussy then
                local frametime = delta
                local a = varsglobal.cursor.Radius - 10
                local gamma = math_atan(a / a)

                if rotationdegree >= 90 then rotationdegree = 0 end

                for i = 1, 4 do
                    local p_0 = (a * math_sin(DEG2RAD(rotationdegree + (i * 90))))
                    local p_1 = (a * math_cos(DEG2RAD(rotationdegree + (i * 90))))
                    local p_2 = ((a / math_cos(gamma)) * math_sin(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))
                    local p_3 = ((a / math_cos(gamma)) * math_cos(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))


                    lines[i][1].From = Vector2.new(pos.X, pos.Y)
                    lines[i][1].To = Vector2.new(pos.X + p_0, pos.Y - p_1)
                    lines[i][1].Color = color
                    lines[i][1].Thickness = varsglobal.cursor.Thickness
                    lines[i][1].Visible = true
                    lines[i][3].From = Vector2.new(pos.X + p_0, pos.Y - p_1)
                    lines[i][3].To = Vector2.new(pos.X + p_2, pos.Y - p_3)
                    lines[i][3].Color = color
                    lines[i][3].Thickness = varsglobal.cursor.Thickness
                    lines[i][3].Visible = true
                end
                rotationdegree = rotationdegree + ((varsglobal.cursor.Speed * frametime) * 1000)
            else
                angle = angle + ((varsglobal.cursor.Speed * 10) * delta)

                if angle >= 90 then
                    angle = 0
                end
                --
                dot.Visible = varsglobal.cursor.Dot
                dot.Color = color
                dot.Position = Vector2.new(pos.X - 1, pos.Y - 1)
                --
                outline.Visible = varsglobal.cursor.Outline and varsglobal.cursor.Dot
                outline.Position = Vector2.new(pos.X - 2, pos.Y - 2)
                --

                --
                for index, line in pairs(lines) do
                    index = index
                    if varsglobal.cursor.Resize then
                        x = { pos.X +
                        (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + ((varsglobal.cursor.Radius * math.sin(angle)) / 9))),
                            pos.X +
                            (math.cos(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and (((varsglobal.cursor.Radius - 20) * math.cos(angle)) / 4) or (((varsglobal.cursor.Radius - 20) * math.cos(angle)) - 4)))) }
                        y = { pos.Y +
                        (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + ((varsglobal.cursor.Radius * math.sin(angle)) / 9))),
                            pos.Y +
                            (math.sin(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and (((varsglobal.cursor.Radius - 20) * math.cos(angle)) / 4) or (((varsglobal.cursor.Radius - 20) * math.cos(angle)) - 4)))) }
                        x1 = { pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + 1)), pos
                        .X +
                        (math.cos(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20 + 1) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20 + 1) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20 + 1) - varsglobal.cursor.Gap)))) }
                        y1 = { pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + 1)), pos
                        .Y +
                        (math.sin(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20 + 1) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20 + 1) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20 + 1) - varsglobal.cursor.Gap)))) }
                    else
                        x = { pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius)), pos.X +
                        (math.cos(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20) - varsglobal.cursor.Gap)))) }
                        y = { pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius)), pos.Y +
                        (math.sin(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20) - varsglobal.cursor.Gap)))) }
                        x1 = { pos.X + (math.cos(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + 1)), pos
                        .X +
                        (math.cos(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20 + 1) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20 + 1) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20 + 1) - varsglobal.cursor.Gap)))) }
                        y1 = { pos.Y + (math.sin(angle + (index * (math.pi / 2))) * (varsglobal.cursor.Radius + 1)), pos
                        .Y +
                        (math.sin(angle + (index * (math.pi / 2))) * ((varsglobal.cursor.Radius - 20 + 1) - (varsglobal.cursor.TheGap and ((varsglobal.cursor.Radius - 20 + 1) / varsglobal.cursor.Gap) or ((varsglobal.cursor.Radius - 20 + 1) - varsglobal.cursor.Gap)))) }
                    end
                    --
                    line[1].Visible = true
                    line[1].Color = color
                    line[1].From = Vector2.new(x[2], y[2])
                    line[1].To = Vector2.new(x[1], y[1])
                    line[1].Thickness = varsglobal.cursor.Thickness
                    --
                    line[2].Visible = varsglobal.cursor.Outline
                    line[2].From = Vector2.new(x1[2], y1[2])
                    line[2].To = Vector2.new(x1[1], y1[1])
                    line[2].Thickness = varsglobal.cursor.Thickness + 2.5

                    line[3].Visible = false
                end
            end
        else
            dot.Visible = false
            outline.Visible = false
            logotext.Visible = false
            text.Visible = false
            --
            for index, line in pairs(lines) do
                line[1].Visible = false
                line[2].Visible = false
                line[3].Visible = false
            end
        end
    end))
end
print('load_' .. tostring(counter))
counter = counter + 1
--[[WorldTab:AddToggle('nograsss', {
    Text = 'no grass',
    Default = false,
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})]]

if true then
    WorldTab:AddSlider('timechanger', {
        Text = 'time changer',

        Default = varsglobal.visuals.oldTime,
        Min = 0,
        Max = 24,
        Rounding = 1,

        Compact = false,
    }):OnChanged(function(State)
        varsglobal.visuals.Time = State
    end)
    WorldTab:AddLabel('zoom bind'):AddKeyPicker('zoombind', {
        Default = 'None',
        SyncToggleState = false,
        Mode = 'Toggle',
        Text = 'zoom onto thing',
        NoUI = false,
        Callback = function(first)
            varsglobal.visuals.FovZoom = first
            if first then
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.ZoomAmt
            else
                workspace.CurrentCamera.FieldOfView = varsglobal.visuals.OldFov
            end
        end,
    })
    WorldTab:AddSlider('zoomslider', {
        Text = 'zoom slider',
        Default = varsglobal.visuals.OldFov - 30,
        Min = 0,
        Max = 120,
        Rounding = 0,
        Compact = false,
    }):OnChanged(function(State)
        varsglobal.visuals.ZoomAmt = State
    end)
end
print('load_' .. tostring(counter))
counter = counter + 1
WorldTab:AddToggle('ambientswitch', {
    Text = 'enable ambient',
    Default = false,


    Callback = function(first)
        varsglobal.visuals.gradientenabled = first
    end
}):AddColorPicker('ambientcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color1',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor1 = Value
    end
}):AddColorPicker('ambientcolor1', {
    Default = Color3.new(1, 1, 1),
    Title = 'ambient color2',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.gradientcolor2 = Value
    end
})
WorldTab:AddToggle('fogswitch', {
    Text = 'enable fog',
    Default = false,


    Callback = function(first)
        varsglobal.visuals.FogEnabled = first
    end
}):AddColorPicker('fogcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'fog color',
    Transparency = 0,

    Callback = function(Value)
        varsglobal.visuals.FogColor = Value
    end
})
WorldTab:AddSlider('fogstart', {
    Text = 'fog start',

    Default = 0,
    Min = 0,
    Max = 1000,
    Rounding = 0,

    Compact = false,
}):OnChanged(function(State)
    varsglobal.visuals.FogStart = State
end)
WorldTab:AddSlider('fogend', {
    Text = 'fog end',

    Default = 10000,
    Min = 0,
    Max = 10000,
    Rounding = 0,

    Compact = false,
}):OnChanged(function(State)
    varsglobal.visuals.FogEnd = State
end)
print('load_' .. tostring(counter))
counter = counter + 1
if true then
    local visuals_BloomInstance = Instance.new("BloomEffect", Lighting)

    local visuals_BloomIntensity = 0
    local visuals_BloomSize = 17
    local visuals_BloomThreshold = 0.9
    local visuals_BloomEnabled = false
    RunService.Stepped:Connect(function()
        visuals_BloomInstance.Intensity = visuals_BloomIntensity
        visuals_BloomInstance.Size = visuals_BloomSize
        visuals_BloomInstance.Threshold = visuals_BloomThreshold
        visuals_BloomInstance.Enabled = visuals_BloomEnabled
    end)
end
print('load_' .. tostring(counter))
counter = counter + 1
Misc:AddToggle('keybindshoww', {
    Text = 'show keybinds',
    Default = false,


    Callback = function(first)
        Library.KeybindFrame.Visible = first;
    end
})
Misc:AddToggle('ChatSPAM', {
    Text = 'chatspam',
    Default = false,


    Callback = function(first)
        spamsets.enabled = first
    end
})


WorldTab:AddButton('Delete Solters Anti Cheat', function()



		
 end)

Misc:AddSlider('fpslimiter', {
    Text = 'FPS Limiter',
    Default = 120,
    Min = 10,
    Max = 500,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(State)
    setfpscap(State)
end)


Misc:AddSlider('spamspeed', {
    Text = 'message interval',
    Default = 3,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
}):OnChanged(function(State)
    spamsets.speed = State
end)
Misc:AddToggle('chatpsa1mcdstlbols', {
    Text = 'custom word',
    Default = false,


    Callback = function(first)
        spamsets.customwordenabled = first
    end
})
Misc:AddInput('customwordtextbox', {
    Default = 'Doge.sigma on top!',
    Numeric = false,
    Finished = false,

    Text = 'custom word',
    Tooltip = 'hmmm',

    Placeholder = 'enter text',

    Callback = function(Value)
        spamsets.customword = Value
    end
})
do
    do
        local csb = Misc
        local speed, enabled, pos, ytspam = 3, false, 1, false
        --[[local spam_words = {
            "Hack", "Cheat", "Roblox", "Mod Menu", "Mod", "Menu", "God Mode", "Kill All", "Silent", "Silent Aim", "X Ray", "Aim", "Bypass", "Glitch", "Wallhack", "ESP", "Dupe", "Dupe Script",
            "SwimHub", "Server Backdoor", "Serverside", "2021", "Working", "(WORKING)", "瞄准无声目标绕过", "Gamesense", "Onetap", "PD Exploit", "Project Delt",
            "Cracked", "TP Hack", "PD MOD MENU", "DOWNLOAD", "Paste Bin", "download", "Download", "Teleport", "100% legit", "100%", "pro", "Professional", "灭性的神经",
            "No Virus All Clean", "No Survey", "No Ads", "Free", "Not Paid", "Real", "REAL 2024", "2024", "Real 2024", "SwimHub", "Cracked", "SwimHub CRACKED", "2014", "picklespub crack",
            "Aimware", "Hacks", "Cheats", "Exploits", "(FREE)", "🕶😎", "😎", "😂", "😛", "paste bin", "swimhub script", "hard code", "正免费下载和使", "SERVER BACKDOOR",
            "Secret", "SECRET", "Unleaked", "Not Leaked", "Method", "Minecraft Steve", "Steve", "Minecraft", "Swim Hub", "Crumble Ware", "Script", "Octo Hook",
            "(OP)", "Verified", "All Clean", "Program",
            "Anti Ban", "Speed", "Fly", "Big Head", "Magic Bullet", "No Clip", "Auto", "Rapid Fire",
            "God Mode", "God", "Speed Fly", "Magic Bullet", "Infinite XRay", "Kill All", "Sigma", "And", "LEAKED",
            "🥳🥳🥳", "RELEASE", "IP RESOLVER", "Infinite Wall Bang", "Wall Bang", "Trickshot", "Sniper", "Wall Hack", "😍😍", "🤩", "🤑", "😱😱", "Free Download SwimHUB", "Taps", "Owns",
            "Owns All", "Trolling", "Troll", "Grief", "Kill", "弗吉艾尺艾杰开", "swim", "kavkaznation", "JSON", "SWIMHUB Developers",
            "Server Hack", "Babies", "Children", "TAP", "Meme", "MEME", "Laugh", "LOL!", "Lol!", "ROFLSAUCE", "Rofl", ";p", ":D", "=D", "xD", "XD", "=>", "₽", "$", "8=>", "😹😹😹", "🎮🎮🎮", "🎱", "⭐", "✝",
            "Ransomware", "Malware", "SKID", "Pasted vw", "Encrypted", "Brute Force", "Cheat Code", "Hack Code", ";v", "No Ban", "Bot", "Editing", "Modification", "injection", "Bypass Anti Cheat",
            "铜色类别创意", "Cheat Exploit", "Hitbox Expansion", "Cheating AI", "Auto Wall Shoot", "Konami Code", "Debug", "Debug Menu", "🗿", "£", "¥", "₽", "₭", "€", "₿", "Meow", "MEOW", "meow",
            "Under Age", "underage", "UNDER AGE", "18-", "not finite", "Left", "Right", "Up", "Down", "Left Right Up Down A B Start", "Noclip Cheat", "Bullet Check Bypass",
            "AssemblyLinearVelocity SPEED CHEAT."
        }
        local spam_chinese = {
            "音频少年公民记忆欲求无尽 heywe 僵尸强迫身体哑集中排水",
            "持有毁灭性的神经重景气游行脸红青铜色类别创意案",
            "诶比西迪伊艾弗吉艾尺艾杰开艾勒艾马艾娜哦屁吉吾",
            "完成与草屋两个苏巴完成与草屋两个苏巴完成与草屋",
            "庆崇你好我讨厌你愚蠢的母愚蠢的母庆崇",
            "坐下，一直保持着安静的状态。 谁把他拥有的东西给了他，所以他不那么爱欠债务，却拒  参加锻炼，这让他爱得更少了",
            ", yīzhí bǎochízhe ānjìng de zhuàngtài. Shéi bǎ tā yǒngyǒu de dōngxī gěile tā, suǒyǐ tā bù nàme ài qiàn zhàiwù, què jùjué cānjiā duànliàn, z",
            "他，所以他不那r给了他东西给了他爱欠s，却拒绝参加锻炼，这让他爱得更UGT少了",
            "swimhub 有的东西给了他，所以他不那rblx trader captain么有的东西给了他爱欠绝参加锻squidward炼，务，却拒绝参加锻炼，这让他爱得更UGT少了",
            "wocky slush他爱欠债了他他squilliam拥有的东西给爱欠绝参加锻squidward炼",
            "坐下，一直保持着安静的状态swimhub 谁把他拥有的东西给了他，所以他不那rblx trader captain么有的东西给了他爱欠债了他他squilliam拥有的东西给爱欠绝参加锻squidward炼，务，却拒绝参加锻炼，这让他爱得更UGT少了",
            "免费手榴弹swimhub hack绕过作弊工作Trident Surviv roblox aimbot瞄准无声目标绕过2020工作真正免费下载和使用",
            "zal發明了roblox汽車貿易商的船長ro blocks，並將其洩漏到整個宇宙，還修補了虛假的角神模式和虛假的身體，還發明了基於速度的AUTOWALL和無限制的自動壁紙遊戲 ",
            "彼が誤って禁止されたためにファントムからautowallgamingを禁止解除する請願とそれはでたらめですそれはまったく意味がありませんなぜあなたは合法的なプレーヤーを禁止するのですか ",
            "ジェイソンは私が神に誓う女性的な男の子ではありません ",
            "傑森不是我向上帝發誓女性男孩 ",
        }]]
        --[[local spam_original = {
            "gEt OuT oF tHe GrOuNd 🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡 ",
            "brb taking a nap 💤💤💤 ",
            "gonna go take a walk 🚶‍♂️🚶‍♀️🚶‍♂️🚶‍♀️ ",
            "low orbit ion cannon booting up ",
            "how does it feel to not have swimhub 🤣🤣🤣😂😂😹😹😹 ",
            "im a firing my laza! 🙀🙀🙀 ",
            "😂😂😂😂😂GAMING CHAIR😂😂😂😂😂",
            "retardheadass",
            "can't hear you over these kill sounds ",
            "i'm just built different yo 🧱🧱🧱 ",
            "📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈",
            "OFF📈THE📈CHART📈",
            "KICK HIM 🦵🦵🦵",
            "THE AMOUNT THAT I CARE --> 🤏 ",
            "🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏",
            "SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DON'T CARE ",
            'table.find(charts, "any other script other than swimhub") -> nil 💵💵💵',
            "LOL WHAT ARE YOU SHOOTING AT BRO ",
            "🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥",
            "BRO UR SHOOTING AT LIKE NOTHING LOL UR A CLOWN",
            "🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡",
            "ARE U USING EHUB? 🤡🤡🤡🤡🤡",
            "'FRAG PUB IS THE BEST' 🤡 PASTED LINES OF CODE WITH UNREFERENCED AND UNINITIALIZED VARIABLES AND PEOPLE HAVE NO IDEA WHY IT'S NOT WORKING ",
            "LOL",
            "GIVE UP ",
            "GIVE UP BECAUSE YOU'RE NOT GOING TO BE ABLE TO KILL ME OR WIN LOL",
            "Can't hear you over these bands ",
            "I’m better than you in every way 🏆",
            "I’m smarter than you (I can verify this because I took an online IQ test and got 150) 🧠",
            "my personality shines and it’s generally better than your personality. Yours has flaws",
            "I’m more ambitious than you 🏆💰📣",
            "I’m more funny than you (long shot) ",
            "I’m less turbulent and more assertive and calm than you (proof) 🎰",
            "I’m stronger than you 💪 🦵 ",
            "my attention span is greater and better than yours (proven from you not reading entire list) ",
            "I am more creative and expressive than you will ever be 🎨 🖌",
            "I’m a faster at typing than you 💬 ",
            "In 30 minutes, I will have lifted more weights than you can solve algebraic equations 📓 ",
            "By the time you have completed reading this very factual and groundbreaking evidence that I am truly more superior, thoughtful, and presentable than you are, I will have prospered (that means make negotiable currency or the American Dollar) more than your entire family hierarchy will have ever made in its time span 💰",
            "I am more seggsually stable and better looking than you are 👨",
            "I get along with women easier than you do 👩‍🚀", -- end
            "I am very good at debating 🗣🧑‍⚖️ ",
            "I win more hvh than you do 🏆", -- end yes this is actually how im going to fix this stupid shit
            "I am more victorious than you are 🏆",
            "Due to my agility, I am better than you at basketball, and all of your favorite sports or any sport for that matter (I will probably break your ankles in basketball by pure accident) ",
            "WE THE BEST CHEATS 🔥🔥🔥🔥 ",
            "antares hack client isn't real ",
            "interpolation DWORD* C++ int 32 bit programming F# c# coding",
            "Mad?",
            "are we in a library? 🤔 📚 cause you're 👉 in hush 🤫 mode 🤣 😂",
            "🏀🏀 did i break your ankles brother ",
            "he has access to HACK SERVER AND CHANGE WEIGHTS!!!!! STOOOOOOP 😡😒😒😡😡😡😡😡",
            '"cmon dude don\'t use that" you asked for it LOL ',
            "ima just quit mid hvh 🚶‍♀️ ",
            "BABY 😭",
            "BOO HOO 😢😢😭😭😭 STOP CRYING ",
            "🤏",
            "🤏 <-- just to elaborate that i have no care for this situation or you at all, kid (not that you would understand anyways, you're too stupid to understand what i'm saying to begin with)",
            "y",
            "b",
            "before swimhub 😭 📢                after swimhub 😁😁😜                    don't be like the person who doesn't have swimhub",
            "                            MADE YOU LOOK ",
            "                            LOOK BRO LOOK LOOK AT ME ",
            "    A    ",
            "            S        W        I        M    ",
            "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                I HAVE AJAX YALL BETTER WATCH OUT OR YOU'LL DIE, WATCH WHO YOU'RE SHOOTING",
            "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                WATCH YOUR STEP KID",
            "BROOOO HE HAS                                                                                                        GOD MODE BRO HE HAS GOD MODE 🚶‍♀️🚶‍♀️🚶‍♀️😜😂😂🤦‍♂️🤦‍♂️😭😭😭👶",
            '"guys what hub has auto shooting"                                                                                                         ',
            "god i wish i had swimhub..... 🙏🙏🥺🥺🥺                                                    plzzzzz brooooo 🛐 GIVE IT🛐🛐",
            "swum huh                                                 ",
            "votekick him!!!!!!! 😠 vk VK VK VK VOTEKICK HIM!!!!!!!!! 😠 😢 VOTE KICK !!!!! PRESS Y WHY DIDNT U PRESS Y LOL!!!!!! 😭 ", -- shufy made this
            "Swimhub omg omggg omggg its SwimHub its SwimHub OMGGG!!!  🙏🙏🥺🥺😌😒😡",
            "HOw do you get ACCESS to this SWIMHUB ", -- end
            "I NEED ACCESS 🔑🔓 TO SWIMHUB 🤖📃📃📃 👈 THIS THING CALLED SWIMHUB SCRIPT, I NEED IT ",
            '"this god mode guy is annoying", Pr0blematicc says as he loses roblox hvh ',
            "you can call me king of spades 🦹‍♂️🦹‍♂️ cause i turned your screen black ⬛⬛⬛⬛                                     ",
            "clipped that 🤡 ",
            "Clipped and Uploaded. 🤡",
            "nodus client slime castle crashers minecraft dupeing hack wizardhax xronize grief ... Tlcharger minecraft crack Oggi spiegheremo come creare un ip grabber!",
            "Off synonyme syls midge, smiled at mashup 2 mixed in key free download procom, ... Okay, love order and chaos online gameplayer hack amber forcen ahdistus",
            "ˢᵗᵃʸ ᵐᵃᵈ ˢᵗᵃʸ ˢʷⁱᵐʰᵘᵇˡᵉˢˢ $ ",
            "swimhub does not relent ",
        }]]
        local spam_ytthumbs = {
            "\72\97\99\107",
            "\67\104\101\97\116",
            "\82\111\98\108\111\120",
            "\77\111\100\32\77\101\110\117",
            "\77\111\100",
            "\77\101\110\117",
            "\71\111\100\32\77\111\100\101",
            "\75\105\108\108\32\65\108\108",
            "\83\105\108\101\110\116",
            "\83\105\108\101\110\116\32\65\105\109",
            "\88\32\82\97\121",
            "\65\105\109",
            "\66\121\112\97\115\115",
            "\71\108\105\116\99\104",
            "\87\97\108\108\104\97\99\107",
            "\69\83\80",
            "\68\117\112\101",
            "\68\117\112\101\32\83\99\114\105\112\116",
            "\83\119\105\109\72\117\98",
            "\83\101\114\118\101\114\32\66\97\99\107\100\111\111\114",
            "\83\101\114\118\101\114\115\105\100\101",
            "\50\48\50\49",
            "\87\111\114\107\105\110\103",
            "\40\87\79\82\75\73\78\71\41",
            "\231\158\132\229\135\134\230\151\160\229\163\176\231\155\174\230\160\135\231\187\149\232\191\135",
            "\71\97\109\101\115\101\110\115\101",
            "\79\110\101\116\97\112",
            "\80\68\32\69\120\112\108\111\105\116",
            "\80\114\111\106\101\99\116\32\68\101\108\116",
            "\67\114\97\99\107\101\100",
            "\84\80\32\72\97\99\107",
            "\80\68\32\77\79\68\32\77\69\78\85",
            "\68\79\87\78\76\79\65\68",
            "\80\97\115\116\101\32\66\105\110",
            "\100\111\119\110\108\111\97\100",
            "\68\111\119\110\108\111\97\100",
            "\84\101\108\101\112\111\114\116",
            "\49\48\48\37\32\108\101\103\105\116",
            "\49\48\48\37",
            "\112\114\111",
            "\80\114\111\102\101\115\115\105\111\110\97\108",
            "\231\129\173\230\128\167\231\154\132\231\165\158\231\187\143",
            "\78\111\32\86\105\114\117\115\32\65\108\108\32\67\108\101\97\110",
            "\78\111\32\83\117\114\118\101\121",
            "\78\111\32\65\100\115",
            "\70\114\101\101",
            "\80\97\105\100",
            "\82\101\97\108",
            "\82\69\65\76\32\50\48\50\52",
            "\50\48\50\52",
            "\82\101\97\108\32\50\48\50\52",
            "\83\119\105\109\72\117\98",
            "\67\114\97\99\107\101\100",
            "\83\119\105\109\72\117\98\32\67\82\65\67\75\69\68",
            "\50\48\50\51",
            "\112\105\99\107\108\101\115\112\117\98\32\99\114\97\99\107",
            "\65\105\109\119\97\114\101",
            "\72\97\99\107\115",
            "\67\104\101\97\116\115",
            "\69\120\112\108\111\105\116\115",
            "\40\70\82\69\69\41",
            "\240\159\149\182\240\159\152\142",
            "\240\159\152\142",
            "\240\159\152\130",
            "\112\97\115\116\101\32\98\105\110",
            "\115\119\105\109\104\117\98\32\115\99\114\105\112\116",
            "\104\97\114\100\32\99\111\100\101",
            "\230\173\163\229\133\141\232\180\185\228\184\139\232\189\189\229\146\140\228\189\191",
            "\83\69\82\86\69\82\32\66\65\67\75\68\79\79\82",
            "\83\101\99\114\101\116",
            "\83\69\67\82\69\84",
            "\85\110\108\101\97\107\101\100",
            "\78\111\116\32\76\101\97\107\101\100",
            "\77\101\116\104\111\100",
            "\77\105\110\101\99\114\97\102\116\32\83\116\101\118\101",
            "\83\116\101\118\101",
            "\77\105\110\101\99\114\97\102\116",
            "\83\119\105\109\32\72\117\98",
            "\67\114\117\109\98\108\101\32\87\97\114\101",
            "\83\99\114\105\112\116",
            "\79\99\116\111\32\72\111\111\107",
            "\40\79\80\41",
            "\86\101\114\105\102\105\101\100",
            "\65\108\108\32\67\108\101\97\110",
            "\80\114\111\103\114\97\109",
            "\65\110\116\105\32\66\97\110",
            "\83\112\101\101\100",
            "\70\108\121",
            "\66\105\103\32\72\101\97\100",
            "\77\97\103\105\99\32\66\117\108\108\101\116",
            "\78\111\32\67\108\105\112",
            "\65\117\116\111",
            "\82\97\112\105\100\32\70\105\114\101",
            "\71\111\100\32\77\111\100\101",
            "\71\111\100",
            "\83\112\101\101\100\32\70\108\121",
            "\77\97\103\105\99\32\66\117\108\108\101\116",
            "\73\110\102\105\110\105\116\101\32\88\82\97\121",
            "\75\105\108\108\32\65\108\108",
            "\83\105\103\109\97",
            "\65\110\100",
            "\76\69\65\75\69\68",
            "\240\159\165\179\240\159\165\179\240\159\165\179",
            "\82\69\76\69\65\83\69",
            "\84\114\105\99\107\115\104\111\116",
            "\83\110\105\112\101\114",
            "\87\97\108\108\32\72\97\99\107",
            "\240\159\164\169",
            "\240\159\164\145",
            "\240\159\152\177\240\159\152\177",
            "\70\114\101\101\32\68\111\119\110\108\111\97\100\32\83\119\105\109\72\85\66",
            "\84\97\112\115",
            "\79\119\110\115",
            "\79\119\110\115\32\65\108\108",
            "\84\114\111\108\108\105\110\103",
            "\84\114\111\108\108",
            "\71\114\105\101\102",
            "\75\105\108\108",
            "\229\188\151\229\144\137\232\137\190\229\176\186\232\137\190\230\157\176\229\188\128",
            "\115\119\105\109",
            "\107\97\118\107\97\122\110\97\116\105\111\110",
            "\74\83\79\78",
            "\83\87\73\77\72\85\66\32\68\101\118\101\108\111\112\101\114\115",
            "\83\101\114\118\101\114\32\72\97\99\107",
            "\84\65\80",
            "\77\101\109\101",
            "\77\69\77\69",
            "\76\97\117\103\104",
            "\76\79\76\33",
            "\76\111\108\33",
            "\82\79\70\76\83\65\85\67\69",
            "\82\111\102\108",
            "\59\112",
            "\58\68",
            "\61\68",
            "\120\68",
            "\88\68",
            "\61\62",
            "\226\130\189",
            "\36",
            "\240\159\152\185\240\159\152\185\240\159\152\185",
            "\240\159\142\174\240\159\142\174\240\159\142\174",
            "\240\159\142\177",
            "\226\173\144",
            "\226\156\157",
            "\82\97\110\115\111\109\119\97\114\101",
            "\77\97\108\119\97\114\101",
            "\83\75\73\68",
            "\80\97\115\116\101\100\32\118\119",
            "\69\110\99\114\121\112\116\101\100",
            "\66\114\117\116\101\32\70\111\114\99\101",
            "\67\104\101\97\116\32\67\111\100\101",
            "\72\97\99\107\32\67\111\100\101",
            "\59\118",
            "\78\111\32\66\97\110",
            "\66\111\116",
            "\69\100\105\116\105\110\103",
            "\77\111\100\105\102\105\99\97\116\105\111\110",
            "\105\110\106\101\99\116\105\111\110",
            "\66\121\112\97\115\115\32\65\110\116\105\32\67\104\101\97\116",
            "\233\147\156\232\137\178\231\177\187\229\136\171\229\136\155\230\132\143",
            "\67\104\101\97\116\32\69\120\112\108\111\105\116",
            "\72\105\116\98\111\120\32\69\120\112\97\110\115\105\111\110",
            "\67\104\101\97\116\105\110\103\32\65\73",
            "\65\117\116\111\32\87\97\108\108\32\83\104\111\111\116",
            "\75\111\110\97\109\105\32\67\111\100\101",
            "\68\101\98\117\103",
            "\68\101\98\117\103\32\77\101\110\117",
            "\240\159\151\191",
            "\194\163",
            "\194\165",
            "\226\130\189",
            "\226\130\173",
            "\226\130\172",
            "\226\130\191",
            "\77\101\111\119",
            "\77\69\79\87",
            "\109\101\111\119",
        }
        local spam_original = {
            "\103\69\116\32\79\117\84\32\111\70\32\116\72\101\32\71\114\79\117\78\100\32\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\32",
            "\98\114\98\32\116\97\107\105\110\103\32\97\32\110\97\112\32\240\159\146\164\240\159\146\164\240\159\146\164\32",
            "\103\111\110\110\97\32\103\111\32\116\97\107\101\32\97\32\119\97\108\107\32\240\159\154\182\226\128\141\226\153\130\239\184\143\240\159\154\182\226\128\141\226\153\128\239\184\143\240\159\154\182\226\128\141\226\153\130\239\184\143\240\159\154\182\226\128\141\226\153\128\239\184\143\32",
            "\108\111\119\32\111\114\98\105\116\32\105\111\110\32\99\97\110\110\111\110\32\98\111\111\116\105\110\103\32\117\112\32",
            "\104\111\119\32\100\111\101\115\32\105\116\32\102\101\101\108\32\116\111\32\110\111\116\32\104\97\118\101\32\115\119\105\109\104\117\98\32\240\159\164\163\240\159\164\163\240\159\164\163\240\159\152\130\240\159\152\130\240\159\152\185\240\159\152\185\240\159\152\185\32",
            "\105\109\32\97\32\102\105\114\105\110\103\32\109\121\32\108\97\122\97\33\32\240\159\153\128\240\159\153\128\240\159\153\128\32",
            "\240\159\152\130\240\159\152\130\240\159\152\130\240\159\152\130\240\159\152\130\71\65\77\73\78\71\32\67\72\65\73\82\240\159\152\130\240\159\152\130\240\159\152\130\240\159\152\130\240\159\152\130",
            "\99\97\110\39\116\32\104\101\97\114\32\121\111\117\32\111\118\101\114\32\116\104\101\115\101\32\107\105\108\108\32\115\111\117\110\100\115\32",
            "\105\39\109\32\106\117\115\116\32\98\117\105\108\116\32\100\105\102\102\101\114\101\110\116\32\121\111\32\240\159\167\177\240\159\167\177\240\159\167\177\32",
            "\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136\240\159\147\136",
            "\79\70\70\240\159\147\136\84\72\69\240\159\147\136\67\72\65\82\84\240\159\147\136",
            "\66\65\78\32\72\73\77\32\240\159\148\168\240\159\148\168",
            "\84\72\69\32\65\77\79\85\78\84\32\84\72\65\84\32\73\32\67\65\82\69\32\45\45\62\32\240\159\164\143\32",
            "\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143\240\159\164\143",
            "\83\79\82\82\89\32\73\32\72\85\82\84\32\89\79\85\82\32\82\79\66\76\79\88\32\69\71\79\32\66\85\84\32\76\79\79\75\32\45\62\32\240\159\164\143\32\73\32\68\79\78\39\84\32\67\65\82\69\32",
            "\116\97\98\108\101\46\102\105\110\100\40\99\104\97\114\116\115\44\32\34\97\110\121\32\111\116\104\101\114\32\115\99\114\105\112\116\32\111\116\104\101\114\32\116\104\97\110\32\115\119\105\109\104\117\98\34\41\32\45\62\32\110\105\108\32\240\159\146\181\240\159\146\181\240\159\146\181",
            "\76\79\76\32\87\72\65\84\32\65\82\69\32\89\79\85\32\83\72\79\79\84\73\78\71\32\65\84\32\66\82\79\32",
            "\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165",
            "\66\82\79\32\85\82\32\83\72\79\79\84\73\78\71\32\65\84\32\76\73\75\69\32\78\79\84\72\73\78\71\32\76\79\76\32\85\82\32\65\32\67\76\79\87\78",
            "\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161",
            "\65\82\69\32\85\32\85\83\73\78\71\32\70\82\65\71\32\80\85\66\63\32\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161\240\159\164\161",
            "\39\70\82\65\71\32\80\85\66\32\73\83\32\84\72\69\32\66\69\83\84\39\32\240\159\164\161\32\80\65\83\84\69\68\32\76\73\78\69\83\32\79\70\32\67\79\68\69\32\87\73\84\72\32\85\78\82\69\70\69\82\69\78\67\69\68\32\65\78\68\32\85\78\73\78\73\84\73\65\76\73\90\69\68\32\86\65\82\73\65\66\76\69\83\32\65\78\68\32\80\69\79\80\76\69\32\72\65\86\69\32\78\79\32\73\68\69\65\32\87\72\89\32\73\84\39\83\32\78\79\84\32\87\79\82\75\73\78\71\32",
            "\76\79\76",
            "\71\73\86\69\32\85\80\32",
            "\71\73\86\69\32\85\80\32\66\69\67\65\85\83\69\32\89\79\85\39\82\69\32\78\79\84\32\71\79\73\78\71\32\84\79\32\66\69\32\65\66\76\69\32\84\79\32\75\73\76\76\32\77\69\32\79\82\32\87\73\78\32\76\79\76",
            "\67\97\110\39\116\32\104\101\97\114\32\121\111\117\32\111\118\101\114\32\116\104\101\115\101\32\98\97\110\100\115\32",
            "\73\226\128\153\109\32\98\101\116\116\101\114\32\116\104\97\110\32\121\111\117\32\105\110\32\101\118\101\114\121\32\119\97\121\32\240\159\143\134",
            "\73\226\128\153\109\32\115\109\97\114\116\101\114\32\116\104\97\110\32\121\111\117\32\40\73\32\99\97\110\32\118\101\114\105\102\121\32\116\104\105\115\32\98\101\99\97\117\115\101\32\73\32\116\111\111\107\32\97\110\32\111\110\108\105\110\101\32\73\81\32\116\101\115\116\32\97\110\100\32\103\111\116\32\49\53\48\41\32\240\159\167\160",
            "\109\121\32\112\101\114\115\111\110\97\108\105\116\121\32\115\104\105\110\101\115\32\97\110\100\32\105\116\226\128\153\115\32\103\101\110\101\114\97\108\108\121\32\98\101\116\116\101\114\32\116\104\97\110\32\121\111\117\114\32\112\101\114\115\111\110\97\108\105\116\121\46\32\89\111\117\114\115\32\104\97\115\32\102\108\97\119\115",
            "\73\226\128\153\109\32\109\111\114\101\32\97\109\98\105\116\105\111\117\115\32\116\104\97\110\32\121\111\117\32\240\159\143\134\240\159\146\176\240\159\147\163",
            "\73\226\128\153\109\32\109\111\114\101\32\102\117\110\110\121\32\116\104\97\110\32\121\111\117\32\40\108\111\110\103\32\115\104\111\116\41\32",
            "\73\226\128\153\109\32\108\101\115\115\32\116\117\114\98\117\108\101\110\116\32\97\110\100\32\109\111\114\101\32\97\115\115\101\114\116\105\118\101\32\97\110\100\32\99\97\108\109\32\116\104\97\110\32\121\111\117\32\40\112\114\111\111\102\41\32\240\159\142\176",
            "\73\226\128\153\109\32\115\116\114\111\110\103\101\114\32\116\104\97\110\32\121\111\117\32\240\159\146\170\32\240\159\166\181\32",
            "\109\121\32\97\116\116\101\110\116\105\111\110\32\115\112\97\110\32\105\115\32\103\114\101\97\116\101\114\32\97\110\100\32\98\101\116\116\101\114\32\116\104\97\110\32\121\111\117\114\115\32\40\112\114\111\118\101\110\32\102\114\111\109\32\121\111\117\32\110\111\116\32\114\101\97\100\105\110\103\32\101\110\116\105\114\101\32\108\105\115\116\41\32",
            "\73\32\97\109\32\109\111\114\101\32\99\114\101\97\116\105\118\101\32\97\110\100\32\101\120\112\114\101\115\115\105\118\101\32\116\104\97\110\32\121\111\117\32\119\105\108\108\32\101\118\101\114\32\98\101\32\240\159\142\168\32\240\159\150\140",
            "\73\226\128\153\109\32\97\32\102\97\115\116\101\114\32\97\116\32\116\121\112\105\110\103\32\116\104\97\110\32\121\111\117\32\240\159\146\172\32",
            "\73\110\32\51\48\32\109\105\110\117\116\101\115\44\32\73\32\119\105\108\108\32\104\97\118\101\32\108\105\102\116\101\100\32\109\111\114\101\32\119\101\105\103\104\116\115\32\116\104\97\110\32\121\111\117\32\99\97\110\32\115\111\108\118\101\32\97\108\103\101\98\114\97\105\99\32\101\113\117\97\116\105\111\110\115\32\240\159\147\147\32",
            "\66\121\32\116\104\101\32\116\105\109\101\32\121\111\117\32\104\97\118\101\32\99\111\109\112\108\101\116\101\100\32\114\101\97\100\105\110\103\32\116\104\105\115\32\118\101\114\121\32\102\97\99\116\117\97\108\32\97\110\100\32\103\114\111\117\110\100\98\114\101\97\107\105\110\103\32\101\118\105\100\101\110\99\101\32\116\104\97\116\32\73\32\97\109\32\116\114\117\108\121\32\109\111\114\101\32\115\117\112\101\114\105\111\114\44\32\116\104\111\117\103\104\116\102\117\108\44\32\97\110\100\32\112\114\101\115\101\110\116\97\98\108\101\32\116\104\97\110\32\121\111\117\32\97\114\101\44\32\73\32\119\105\108\108\32\104\97\118\101\32\112\114\111\115\112\101\114\101\100\32\40\116\104\97\116\32\109\101\97\110\115\32\109\97\107\101\32\110\101\103\111\116\105\97\98\108\101\32\99\117\114\114\101\110\99\121\32\111\114\32\116\104\101\32\65\109\101\114\105\99\97\110\32\68\111\108\108\97\114\41\32\109\111\114\101\32\116\104\97\110\32\121\111\117\114\32\101\110\116\105\114\101\32\102\97\109\105\108\121\32\104\105\101\114\97\114\99\104\121\32\119\105\108\108\32\104\97\118\101\32\101\118\101\114\32\109\97\100\101\32\105\110\32\105\116\115\32\116\105\109\101\32\115\112\97\110\32\240\159\146\176",
            "\73\32\119\105\110\32\109\111\114\101\32\104\118\104\32\116\104\97\110\32\121\111\117\32\100\111\32\240\159\143\134",
            "\68\117\101\32\116\111\32\109\121\32\97\103\105\108\105\116\121\44\32\73\32\97\109\32\98\101\116\116\101\114\32\116\104\97\110\32\121\111\117\32\97\116\32\98\97\115\107\101\116\98\97\108\108\44\32\97\110\100\32\97\108\108\32\111\102\32\121\111\117\114\32\102\97\118\111\114\105\116\101\32\115\112\111\114\116\115\32\111\114\32\97\110\121\32\115\112\111\114\116\32\102\111\114\32\116\104\97\116\32\109\97\116\116\101\114\32\40\73\32\119\105\108\108\32\112\114\111\98\97\98\108\121\32\98\114\101\97\107\32\121\111\117\114\32\97\110\107\108\101\115\32\105\110\32\98\97\115\107\101\116\98\97\108\108\32\98\121\32\112\117\114\101\32\97\99\99\105\100\101\110\116\41\32",
            "\87\69\32\84\72\69\32\66\69\83\84\32\67\72\69\65\84\83\32\240\159\148\165\240\159\148\165\240\159\148\165\240\159\148\165\32",
            "\97\110\116\97\114\101\115\32\104\97\99\107\32\99\108\105\101\110\116\32\105\115\110\39\116\32\114\101\97\108\32",
            "\105\110\116\101\114\112\111\108\97\116\105\111\110\32\68\87\79\82\68\42\32\67\43\43\32\105\110\116\32\51\50\32\98\105\116\32\112\114\111\103\114\97\109\109\105\110\103\32\70\35\32\99\35\32\99\111\100\105\110\103",
            "\77\97\100\63",
            "\97\114\101\32\119\101\32\105\110\32\97\32\108\105\98\114\97\114\121\63\32\240\159\164\148\32\240\159\147\154\32\99\97\117\115\101\32\121\111\117\39\114\101\32\240\159\145\137\32\105\110\32\104\117\115\104\32\240\159\164\171\32\109\111\100\101\32\240\159\164\163\32\240\159\152\130",
            "\240\159\143\128\240\159\143\128\32\100\105\100\32\105\32\98\114\101\97\107\32\121\111\117\114\32\97\110\107\108\101\115\32\98\114\111\116\104\101\114\32",
            "\104\101\32\104\97\115\32\97\99\99\101\115\115\32\116\111\32\72\65\67\75\32\83\69\82\86\69\82\32\65\78\68\32\65\78\84\73\67\72\69\65\84\32\68\73\83\65\66\76\69\82\33\33\33\33\33\32\83\84\79\79\79\79\79\79\80\32\240\159\152\161\240\159\152\146\240\159\152\146\240\159\152\161\240\159\152\161\240\159\152\161\240\159\152\161\240\159\152\161",
            "\34\99\109\111\110\32\100\117\100\101\32\100\111\110\39\116\32\117\115\101\32\116\104\97\116\34\32\121\111\117\32\97\115\107\101\100\32\102\111\114\32\105\116\32\76\79\76\32",
            "\105\109\97\32\106\117\115\116\32\113\117\105\116\32\109\105\100\32\104\118\104\32\240\159\154\182\226\128\141\226\153\128\239\184\143\32",
            "\66\65\66\89\32\240\159\152\173",
            "\66\79\79\32\72\79\79\32\240\159\152\162\240\159\152\162\240\159\152\173\240\159\152\173\240\159\152\173\32\83\84\79\80\32\67\82\89\73\78\71\32",
            "\240\159\164\143",
            "\98\101\102\111\114\101\32\115\119\105\109\104\117\98\32\240\159\152\173\32\240\159\147\162\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\97\102\116\101\114\32\115\119\105\109\104\117\98\32\240\159\152\129\240\159\152\129\240\159\152\156\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\100\111\110\39\116\32\98\101\32\108\105\107\101\32\116\104\101\32\112\101\114\115\111\110\32\119\104\111\32\100\111\101\115\110\39\116\32\104\97\118\101\32\115\119\105\109\104\117\98",
            "\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\77\65\68\69\32\89\79\85\32\76\79\79\75\32",
            "\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\76\79\79\75\32\66\82\79\32\76\79\79\75\32\76\79\79\75\32\65\84\32\77\69\32",
            "\32\32\32\32\83\32\32\32\32\87\32\32\32\32\73\32\32\32\32\77\32\32\32\32\72\32\32\32\32\85\32\32\32\32\66\32\32\32\32",
            "\103\111\100\32\105\32\119\105\115\104\32\105\32\104\97\100\32\115\119\105\109\104\117\98\46\46\46\46\46\32\240\159\153\143\240\159\153\143\240\159\165\186\240\159\165\186\240\159\165\186\32\32\112\108\122\122\122\122\122\32\98\114\111\111\111\111\111\32\240\159\155\144\32\71\73\86\69\32\73\84\240\159\155\144\240\159\155\144",
            "\115\119\117\109\32\104\117\104\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32",
            "\98\97\110\32\104\105\109\33\33\33\33\33\33\33\32\240\159\152\160\32\98\97\110\32\66\65\78\32\66\65\78\32\66\65\78\32\66\65\78\32\72\73\77\33\33\33\33\33\33\33\33\33\32\240\159\152\160\32\240\159\152\162\32\66\65\78\32\33\33\33\33\33\32\80\82\69\83\83\32\66\65\78\32\87\72\89\32\68\73\68\78\84\32\85\32\80\82\69\83\83\32\66\65\78\32\76\79\76\33\33\33\33\33\33\32\240\159\152\173\32",
            "\83\119\105\109\104\117\98\32\111\109\103\32\111\109\103\103\103\32\111\109\103\103\103\32\105\116\115\32\83\119\105\109\72\117\98\32\105\116\115\32\83\119\105\109\72\117\98\32\79\77\71\71\71\33\33\33\32\32\240\159\153\143\240\159\153\143\240\159\165\186\240\159\165\186\240\159\152\140\240\159\152\146\240\159\152\161",
            "\72\79\119\32\100\111\32\121\111\117\32\103\101\116\32\65\67\67\69\83\83\32\116\111\32\116\104\105\115\32\83\87\73\77\72\85\66\32",
            "\73\32\78\69\69\68\32\65\67\67\69\83\83\32\240\159\148\145\240\159\148\147\32\84\79\32\83\87\73\77\72\85\66\32\240\159\164\150\240\159\147\131\240\159\147\131\240\159\147\131\32\240\159\145\136\32\84\72\73\83\32\84\72\73\78\71\32\67\65\76\76\69\68\32\83\87\73\77\72\85\66\32\83\67\82\73\80\84\44\32\73\32\78\69\69\68\32\73\84\32",
            "\34\116\104\105\115\32\103\111\100\32\109\111\100\101\32\103\117\121\32\105\115\32\97\110\110\111\121\105\110\103\34\44\32\80\114\48\98\108\101\109\97\116\105\99\99\32\115\97\121\115\32\97\115\32\104\101\32\108\111\115\101\115\32\114\111\98\108\111\120\32\104\118\104\32",
            "\121\111\117\32\99\97\110\32\99\97\108\108\32\109\101\32\107\105\110\103\32\111\102\32\115\112\97\100\101\115\32\240\159\166\185\226\128\141\226\153\130\239\184\143\240\159\166\185\226\128\141\226\153\130\239\184\143\32\99\97\117\115\101\32\105\32\116\117\114\110\101\100\32\121\111\117\114\32\115\99\114\101\101\110\32\98\108\97\99\107\32\226\172\155\226\172\155\226\172\155\226\172\155\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32",
            "\99\108\105\112\112\101\100\32\116\104\97\116\32\240\159\164\161\32",
            "\67\108\105\112\112\101\100\32\97\110\100\32\85\112\108\111\97\100\101\100\46\32\240\159\164\161",
            "\110\111\100\117\115\32\99\108\105\101\110\116\32\115\108\105\109\101\32\99\97\115\116\108\101\32\99\114\97\115\104\101\114\115\32\109\105\110\101\99\114\97\102\116\32\100\117\112\101\105\110\103\32\104\97\99\107\32\119\105\122\97\114\100\104\97\120\32\120\114\111\110\105\122\101\32\103\114\105\101\102\32\46\46\46\32\84\108\99\104\97\114\103\101\114\32\109\105\110\101\99\114\97\102\116\32\99\114\97\99\107\32\79\103\103\105\32\115\112\105\101\103\104\101\114\101\109\111\32\99\111\109\101\32\99\114\101\97\114\101\32\117\110\32\105\112\32\103\114\97\98\98\101\114\33",
            "\79\102\102\32\115\121\110\111\110\121\109\101\32\115\121\108\115\32\109\105\100\103\101\44\32\115\109\105\108\101\100\32\97\116\32\109\97\115\104\117\112\32\50\32\109\105\120\101\100\32\105\110\32\107\101\121\32\102\114\101\101\32\100\111\119\110\108\111\97\100\32\112\114\111\99\111\109\44\32\46\46\46\32\79\107\97\121\44\32\108\111\118\101\32\111\114\100\101\114\32\97\110\100\32\99\104\97\111\115\32\111\110\108\105\110\101\32\103\97\109\101\112\108\97\121\101\114\32\104\97\99\107\32\97\109\98\101\114\32\102\111\114\99\101\110\32\97\104\100\105\115\116\117\115",
            "\203\162\225\181\151\225\181\131\202\184\32\225\181\144\225\181\131\225\181\136\32\203\162\225\181\151\225\181\131\202\184\32\203\162\202\183\226\129\177\225\181\144\202\176\225\181\152\225\181\135\203\161\225\181\137\203\162\203\162\32\36\32",
            "\115\119\105\109\104\117\98\32\100\111\101\115\32\110\111\116\32\114\101\108\101\110\116\32",
        }
        csb:AddToggle('newchatspam_enabled', {
            Text = 'new chat spam',
            Default = false,
            Callback = function(first)
                enabled = first
            end
        })
        csb:AddSlider('newchatspam_multiplier',
            { Text = 'spam speed', Default = 3, Min = 1, Max = 5, Rounding = 1, Suffix = "s", Compact = false })
            :OnChanged(function(
                State)
                speed = State
            end)
        local function genyt()
            local len = 150
            local currstring = ""
            while currstring:len() <= len do
                currstring = currstring .. spam_ytthumbs[math.random(#spam_ytthumbs)] .. " "
            end
            return currstring
        end
        task.spawn(LPH_JIT_MAX(function()
            while wait(speed) do
                if enabled then
                    local tosend = ytspam and genyt() or spam_original[pos]
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tosend,
                        "Global")
                    pos = (#spam_original <= pos + 1 and 1 or pos + 1)
                end
            end
        end))
    end
end
Misc:AddButton('Rejoin', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoining⚡")
        wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
    end
end)
--[[do
    local socket
    local rand = game:service("HttpService"):GenerateGUID(false):sub(1,5)
    if not ( websocket and websocket.connect and pcall(function()socket = websocket.connect("ws://31.210.171.229:8080")end) ) then
        return print("chat failed\nsupported: "..(websocket and websocket.connect and "✅\n" or "❌\n").."connected: ❌")
    else
        socket.OnMessage:Connect(function(txt)
            print(txt)
        end)
        Misc:AddInput('chatboxtest', {Default = 'hello there',Numeric = false,Finished = false,Text = 'chat',Tooltip = 'chat',Placeholder = 'enter text'})
        Misc:AddButton('send message in swimhub chat', function()
            socket:Send("swimhub_"..rand..":-/-:"..tostring(Options.chatboxtest.Value))
        end)
    end
end;]]

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
movetab:AddToggle('ThirdPerson', {
    Text = 'Third Person',
    Default = false,

    Callback = function(isEnabled)
        toggleThirdPerson(isEnabled)
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

print('Fuckers_' .. tostring(counter))
counter = counter + 2

do
    local tpwalking = false
    movetab:AddToggle('ToggleSpeed', {
        Text = 'speed toggle',
        Default = false,


        Callback = function(first)
            tpwalking = first
        end
    })
    RunService.Heartbeat:Connect(LPH_JIT_MAX(function(delta)
        if tpwalking then
            local chr = plr.Character
            local hum = chr and chr:FindFirstChildOfClass("Humanoid")
            if hum and hum.MoveDirection.Magnitude > 0 then
                if varsglobal.tpwalkspeed then
                    chr:TranslateBy(hum.MoveDirection * tonumber(varsglobal.tpwalkspeed) * delta * 10)
                else
                    chr:TranslateBy(hum.MoveDirection * delta * 10)
                end
            end
        end
    end))



    movetab:AddSlider('CFrameSpeed', {
        Text = 'speed slider',

        Default = 0,
        Min = 0,
        Max = 2,
        Rounding = 3,

        Compact = false,
    }):OnChanged(function(State)
        varsglobal.tpwalkspeed = State
    end)
end
print('load_' .. tostring(counter))
counter = counter + 1
movetab:AddToggle('justspin', { Text = 'spin', Default = false, }):OnChanged(function(State)
    varsglobal.spin = State
end)
movetab:AddSlider('justspinspeed', { Text = 'spin speed', Default = 1, Min = 1, Max = 220, Rounding = 1, Compact = false })
    :OnChanged(function(State)
        varsglobal.spinspeed = State
    end)
print('load_' .. tostring(counter))
counter = counter + 1
-- totally not cripware
local function ToYRotation(_CFrame)
    local _, Y, _ = _CFrame:ToOrientation()
    return CFrame.new(_CFrame.Position) * CFrame.Angles(0, Y, 0)
end
local OriginalAutoRotate = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and
    plr.Character:FindFirstChildOfClass("Humanoid").AutoRotate or true
RunService.Stepped:Connect(LPH_NO_VIRTUALIZE(function()
    camera = game:GetService("Workspace").CurrentCamera
    if varsglobal.visuals.gradientenabled then
        Lighting.Ambient = varsglobal.visuals.gradientcolor1
        Lighting.OutdoorAmbient = varsglobal.visuals.gradientcolor2
    else
        Lighting.Ambient = varsglobal.visuals.oldgradient1
        Lighting.OutdoorAmbient = varsglobal.visuals.oldgradient2
    end
    if varsglobal.visuals.FogEnabled then
        Lighting.FogStart = varsglobal.visuals.FogStart
        Lighting.FogEnd = varsglobal.visuals.FogEnd
        Lighting.FogColor = varsglobal.visuals.FogColor
    else
        Lighting.FogStart = varsglobal.visuals.oldFogStart
        Lighting.FogEnd = varsglobal.visuals.oldFogEnd
        Lighting.FogColor = varsglobal.visuals.oldFogColor
    end
    if varsglobal.visuals.FovZoom then
        camera.FieldOfView = varsglobal.visuals.ZoomAmt
    end

    Lighting.ClockTime = varsglobal.visuals.Time

    local SelfCharacter = plr.Character
    local SelfRootPart, SelfHumanoid = SelfCharacter and SelfCharacter:FindFirstChild("HumanoidRootPart"),
        SelfCharacter and SelfCharacter:FindFirstChildOfClass("Humanoid")
    if (SelfCharacter and SelfRootPart and SelfHumanoid) and varsglobal.spin then
        SelfHumanoid.AutoRotate = false
        local Angle = -math.atan2(camera.CFrame.LookVector.Z, camera.CFrame.LookVector.X) +
            tick() * varsglobal.spinspeed % 360
        SelfRootPart.CFrame = ToYRotation(CFrame.new(SelfRootPart.Position) * CFrame.Angles(0, Angle, 0))
    elseif (SelfCharacter and SelfRootPart and SelfHumanoid) and not varsglobal.spin then
        SelfHumanoid.AutoRotate = OriginalAutoRotate
    end
end))
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
ThemeManager:SetFolder('dogehub66')
SaveManager:SetFolder('dogehub66')
SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToGroupbox(stuffz)
print('load_' .. tostring(counter))
counter = counter + 1
local pdlt = othergames.pdelta
local pdeltatabbox = Tabs.Main:AddLeftTabbox("Project Delta Doge Hub")
local pdeltatabbox1 = Tabs.Main:AddRightTabbox("Project Delta Doge Hub1")
local aimtab = pdeltatabbox:AddTab("Combat Features")

local function castgun()
    if not plr.Character or not workspace.CurrentCamera:FindFirstChild("ViewModel") then return (camera.ViewportSize / 2) end
    if not workspace.Camera:FindFirstChild("ViewModel"):FindFirstChild("AimPart") then return (camera.ViewportSize / 2) end
    local from = workspace.Camera.ViewModel:FindFirstChild("AimPart")
    local ray = Ray.new(from.CFrame.p, (from.CFrame.LookVector).Unit * 1000)
    local part, position = workspace:FindPartOnRayWithIgnoreList(ray, { plr.Character, camera })

    if part then
        local result = camera:WorldToViewportPoint(position)
        return Vector2.new(result.X, result.Y)
    else
        return (camera.ViewportSize / 2)
    end
end
RunService.Stepped:Connect(function() if varsglobal.cursor.CustomPos then varsglobal.cursor.Position = castgun() end end)
print('suckerloaders_' .. tostring(counter))
counter = counter + 4
--[[
aimtab:AddToggle('FUCKPDDDD', {
    Text = "FUCK UP THE SERVER FPS",
    Default = false,
})
aimtab:AddLabel("@w._.ruby._.w gave me it ^w^!! thx!!")
aimtab:AddSlider('FUCKPDD!!!!', {
    Text = 'TABLE INCR',
    Default = 250,
    Min = 1,
    Max = 300,
    Rounding = 0,
    Compact = false,
})
aimtab:AddSlider('FUCKPDD!!!!!!', {
    Text = 'TRIES',
    Default = 2,
    Min = 1,
    Max = 5,
    Rounding = 0,
    Compact = false,
})
aimtab:AddSlider('FUCKPDD!!!!!!!!', {
    Text = 'DELAY',
    Default = 0.6,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false,
})
wrap(function()
    local function rahhh()
        local function getmaxvalue(val)
            local mainvalueifonetable = 499999
            if type(val) ~= "number" then
                return nil
            end
            local calculateperfectval = (mainvalueifonetable/(val+2))
            return calculateperfectval
        end
        local function bomb(tableincrease, tries)
            local maintable = {}
            local spammedtable = {}

            table.insert(spammedtable, {})
            z = spammedtable[1]

            for i = 1, tableincrease do
                local tableins = {}
                table.insert(z, tableins)
                z = tableins
            end

            local calculatemax = getmaxvalue(tableincrease)
            local maximum

            if calculatemax then
                maximum = calculatemax
            else
                maximum = 1999999
            end

            for i = 1, maximum do
                table.insert(maintable, spammedtable)
            end

            for i = 1, tries do
                game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
            end
        end
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
        bomb(Options["FUCKPDD!!!!"].Value, Options["FUCKPDD!!!!!!!!"].Value)
    end
    while true do
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
        if Options["FUCKPDDDD"].Value then rahhh() end
        wait(Options["FUCKPDD!!!!!!!!"].Value)
    end
end)]]

aimtab:AddLabel("Doge Hub 1", true)

aimtab:AddToggle('nograss', {
    Text = 'No Grass',
    Default = false,
    Tooltip = 'Removes Grasses',
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})

-- Ensure that `players` is defined correctly and `skins` is accessible.
local Players = game:GetService("Players")
local LC = Players.LocalPlayer  -- Correctly define `LC` as the LocalPlayer
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
  -- Ensure `skins` is defined, e.g., skins = { ["ItemName"] = "SkinId" }





aimtab:AddButton('Skin Changer', function()

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

WorldTab:AddButton('Remove SFX', function()

game.ReplicatedStorage.SFX:Destroy()

 end)

WorldTab:AddButton('Remove VFX', function()

game.ReplicatedStorage.VFX:Destroy()

 end)

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

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
        warn("ViewModel or Camera not found in Workspace")
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
aimtab:AddToggle('InstantReload', {
    Text = 'Instant Reload',
    Tooltip = 'Instant Reload',
    Default = false,
    
    Callback = function(isToggled)
        if isToggled then
            -- Enable instant reload and set high speed
            setSpeedMultiplier(3)
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

aimtab:AddToggle('NostalgiaMode', {
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

aimtab:AddButton('Nigga Whisper', function()

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

aimtab:AddButton('Destroy Look At (Whisper)', function()

game.ReplicatedStorage.AiPresets.WhisperAI.LookAt:Destroy()


 end)

aimtab:AddButton('Naked Whisper', function()

game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()

 end)

aimtab:AddButton('Print All Clan Names', function()

printFolderNames(directory)

 end)

aimtab:AddButton('Destroy Drown Remote', function()

game.StarterPlayer.StarterCharacterScripts.Health.Drowning:Destroy()

 end)

aimtab:AddButton('Destroy Buildables', function()

game.ReplicatedStorage.Buildable:Destroy()

 end)

aimtab:AddToggle('Aimbot', {
    Text = 'Aim Bot',
    Tooltip = 'Locks To Head Or Torso',
    Default = false,

    Callback = function(first)
        toggleAimbot()
    end

    }):AddKeyPicker('aimbotkeybind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'Aimbot Key Bind',
    NoUI = false,

    Callback = function(Value)
    end,
})

aimtab:AddButton('No Gun Weight', function()

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

aimtab:AddSlider('hydration', {
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


aimtab:AddSlider('radiationslider', {
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


aimtab:AddSlider('legfracture', {
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


aimtab:AddSlider('Bleeding', {
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


aimtab:AddSlider('hunger', {
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


aimtab:AddDropdown('raritychanger', {
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

aimtab:AddDropdown('cameradropdown', {
    Values = { 'Attach', 'Custom', 'Fixed', 'Follow', 'Orbital', 'Scriptable', 'Track', 'Watch'},
    Default = 2,
    Multi = false,
    Text = 'Camera Type',
    Tooltip = 'Camera Type',
    Callback = function(state)
        game.workspace.Camera.CameraType = state -- Update the target part based on dropdown selection
    end
})

aimtab:AddDropdown('aimbottargetpart', {
    Values = { 'HumanoidRootPart', 'Head' },
    Default = 2,
    Multi = false,
    Text = 'Aimbot Target Part',
    Tooltip = 'Select a part for targeting (Aimbot)',
    Callback = function(Value)
        targetPart = Value -- Update the target part based on dropdown selection
    end
})



local function norecoil()

for i,v in pairs(ammo:GetChildren()) do
     v:SetAttribute("RecoilStrength", "0")
end

end
--[[
aimtab:AddToggle('InstantHit', {
    Text = 'Instant Hit',
    Tooltip = 'Instant Hit',
    Default = false,

    Callback = function(enabled)
        -- Locate the AmmoTypes folder in ReplicatedStorage
        local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            -- Iterate through all children of AmmoTypes
            for _, v in pairs(ammo:GetChildren()) do
                -- If the toggle is enabled, set MuzzleVelocity to 3200, else revert it to default (you might need to set the correct default value)
                if enabled then
                    v:SetAttribute("MuzzleVelocity", 3200)
                else
                    v:SetAttribute("MuzzleVelocity", 3100) -- Replace 1500 with the default value you want
                end
            end
        end
    end
})

--]]


-- Create the recoil slider and handle its change event
aimtab:AddSlider('RecoilStrength', {
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


local function predict_drop(part, entity, projectile_speed, projectile_drop)
    local distance = (trident.middlepart.Position - part.Position).Magnitude
    local time_to_hit = (distance / projectile_speed)
    local final_projectile_speed = projectile_speed * (time_to_hit) * projectile_speed ^ 2
    time_to_hit = time_to_hit + (distance / final_projectile_speed)
    local drop_timing = projectile_drop ^ (time_to_hit * projectile_drop) - 1
    if not (drop_timing ~= drop_timing) then
        return drop_timing
    end
    return 0
end

aimtab:AddButton('Drop Prediction', function()

predict_drop()

end)


aimtab:AddLabel("Default Is 0.118", true)

-- Slider setup
aimtab:AddSlider('Predictionslider', {
    Text = 'Prediction Slider',
    Default = 0.118,
    Min = 0.1,
    Max = 0.340,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    if type(state) == "number" then
        predictionFactor = state
        print("Prediction factor updated to:", predictionFactor)
    else
        warn("Slider state is not a number:", state)
    end
end)



-- Get all available materials in Roblox
local materials = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    table.insert(materials, material.Name)
end

-- Define the material mapping (for quick lookup)
local materialMapping = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    materialMapping[material.Name] = material
end

-- Dropdown setup with all materials
aimtab:AddDropdown('dv2materialchanger', {
    Values = materials,
    Default = 1,
    Multi = false,
    Text = 'DV2 Material Changer',
    Tooltip = 'Changes The Material Of The DV2',
    Callback = function(selectedValue)
        -- Get the material type based on the dropdown selection
        local materialType = materialMapping[selectedValue]
        
        -- Ensure the material type exists in the mapping
        if materialType then
            -- Get the item from the specified path
            local item = game.Workspace:FindFirstChild('Camera')
                                    :FindFirstChild('ViewModel')
                                    :FindFirstChild('Item')
                                    :FindFirstChild('ItemRoot')

            -- Check if the item was found
            if item then
                -- Apply the selected material to the item
                item.Material = materialType
                item.SurfaceAppearance:Destroy()
            else
                warn('Item not found at the specified path.')
            end
        else
            warn('Selected material not recognized.')
        end
    end
})


--aimtab:AddToggle('hitboxexpander', {
--    Text = 'Bigger Heads',
--    Tooltip = 'Bigger Heads',
--    Default = false,
--
--    Callback = function(first)
--       toggleHeadEffect()
--    end
--})

aimtab:AddButton('Make Doors Invisible', function()

setDoorsMaterialToForceField()
		
 end)

-- Ensure this script is a LocalScript
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local camera = game.Workspace.CurrentCamera

-- Adding the slider to adjust FOV
aimtab:AddSlider('fovslider', {
    Text = 'FOV Slider',
    Default = 90,
    Min = 0, -- Minimum FOV value
    Max = 120,
    Rounding = 2,
    Compact = false,
}):OnChanged(function(State)
    -- Check if the camera is available
    if camera then
        camera.FieldOfView = State -- Update the FOV of the camera
    else
        warn("Camera not found!")
    end
end)





-- Add the Head Size Slider
aimtab:AddSlider('HeadSizeSlider', {
    Text = 'Head Size Slider',
    Default = 3.5,
    Min = 1, -- Minimum normal head size
    Max = 4,
    Rounding = 3,
    Compact = false,
}):OnChanged(function(State)
    headSizeMultiplier = State -- Update the head size multiplier when the slider changes
    
    -- Apply the effect to all players if it is enabled
    if isEnabled then
        for _, player in pairs(players:GetPlayers()) do
            applyHeadEffect(player)
        end
    end
end)

-- Function to check if a target is visible (line-of-sight)
-- Function to check if a target is visible (line-of-sight)
-- Function to simulate holding the left mouse button
-- Function to check if the target is a valid player (or another specific type of target)
local function isValidTarget(target)
    if target and target:IsA("BasePart") then
        local character = target.Parent
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        return humanoid and humanoid.Health > 0
    end
    return false
end

---- Function to simulate holding the left mouse button
--local function startAutoFire()
--    while autoFireEnabled do
--        local target = mouse.Target
        
 --       if isValidTarget(target) then
            virtualInput:SendMouseButtonEvent(0, 0, 0, true, game, 0) -- Hold down left mouse button
 --       else
            virtualInput:SendMouseButtonEvent(0, 0, 0, false, game, 0) -- Release left mouse button if no valid target
 --       end
        
 --       wait(0.1) -- Adjust the delay as needed
  --  end
    
    -- Ensure the left mouse button is released when auto-fire is disabled
--    virtualInput:SendMouseButtonEvent(0, 0, 0, false, game, 0)
--end

-- Function to toggle auto-firing
--local function toggleAutoFire()
--    autoFireEnabled = not autoFireEnabled
    
--    if autoFireEnabled then
--        print("Auto-fire enabled")
        -- Start auto-firing in a coroutine
--        coroutine.wrap(startAutoFire)()
--    else
 --       print("Auto-fire disabled")
--    end
--end


--aimtab:AddToggle('atgyatshoot', {
--    Text = 'Auto Shoot',
 --   Tooltip = 'Auto Shoots Until That Player You Aim Dies.',
--    Default = false,

--    Callback = function(first)
--        toggleAutoFire()
--    end
--}):AddKeyPicker('autoshotkeybind', {
--    Default = 'None',
--    SyncToggleState = true,

--    Mode = 'Toggle',

--    Text = 'AutoShootKeyBind',
----    NoUI = false,
--
--    Callback = function(Value)
---    end,
--})

aimtab:AddToggle('predictiontoggle13', {
    Text = 'Prediction Toggle',
    Tooltip = 'Prediction',
    Default = false,

    Callback = function(first)
                print("Prediction enabled:", predictionEnabled)
                togglePrediction()
    end
})

-- Aim FOV Slider to adjust prediction value
--aimtab:AddSlider('Prediction', {
 --   Text = 'Prediction Slider',
 --   Default = predictionFactor, -- Default value set here
 --   Min = 0.1,
 --   Max = 1,
  --  Rounding = 2, -- You can set the rounding to 2 decimal places for more precise control
 --   Compact = false,
--}):OnChanged(function(state)
 --   predictionFactor = state -- Update the predictionFactor based on slider value
--    print("Prediction Factor updated to:", predictionFactor)
--zend)

local isEnabled883 = false  -- Global variable to track whether the script is enabled or disabled
local LC = game.Players.LocalPlayer

local function toggleBunnyHop()
    isEnabled883 = not isEnabled883
    print("Bunny Hop is now", isEnabled883 and "enabled" or "disabled")
end

game:GetService("RunService").RenderStepped:Connect(function()
    if isEnabled883 then
        LC.Character.Humanoid:SetAttribute("JumpCooldown", 0)
    end
end)

aimtab:AddToggle('Bunnyhop', {
    Text = 'No Jump Cooldown',
    Tooltip = 'Bunny Hop',
    Default = false,

    Callback = function(first)
        toggleBunnyHop()
    end
})


-- Define the function to update sound IDs
local function updateSoundIds()
    -- Fetching the sound objects
    local hitMarkers = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("HitMarkers")
    local hitMarkers2 = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("ProjectileHits")
    
    -- Defining the sounds dictionary with their corresponding instances
    local sounds = {
        Helmet = hitMarkers:FindFirstChild("Helmet"),
        BodyArmor = hitMarkers:FindFirstChild("BodyArmor"),
        Hit2 = hitMarkers2:FindFirstChild("Hit"),
        Bodyshot = hitMarkers:FindFirstChild("Bodyshot"),
        Headshot = hitMarkers:FindFirstChild("Headshot")
    }

    -- Loop through each sound and update its SoundId
    for name, sound in pairs(sounds) do
        if sound then
            sound.SoundId = "rbxassetid://5043539486"
            print(name .. " SoundId updated to: " .. sound.SoundId)
        else
            warn(name .. " sound not found")
        end
    end
end



-- Adding a button to change the hit sounds
aimtab:AddButton('Different Hit Sounds', function()
    updateSoundIds()
    print("Sound IDs updated")
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

-- Example usage: toggle visibility checking on/off
--toggleVisibilityCheck() -- Call this to enable or disable the function


--aimtab:AddToggle('faketoggle1', {
  --  Text = 'Better Aimbot',
  --  Tooltip = 'Better Aimbot',
 --   Default = false,

  --  Callback = function(first)
        
 --   end
--})

--aimtab:AddToggle('automatic131', {
--    Text = 'Automatic Prediction Adjust',
--    Tooltip = 'Automatic Prediction Adjust',
--    Default = false,
--
--    Callback = function(first)
--       toggleAdjustPrediction()
--    end
--})

--toggleSwimmingState()


aimtab:AddToggle('walkunderwater', {
    Text = 'Walk Under Water',
    Tooltip = 'Walk Under The Water',
    Default = false,

    Callback = function(first)
        toggleSwimmingState()
    end
})




local UserInputService3es = game:GetService("UserInputService")
local Players3es = game:GetService("Players")
local RunService3es = game:GetService("RunService")
local Workspace3es = game:GetService("Workspace")

local player3es = Players3es.LocalPlayer
local mouse3es = player3es:GetMouse()
local keybind3es = Enum.KeyCode.G  --- for retard niggers this is keybind
local aimLockEnabled3es = false  --- Toggle for enabling/disabling aimlock
local aimLock3es = false  --- To track if aimlock is currently active
local lockedPlayer3es = nil

local function findClosestPlayerToCursor3es()
    local closestPlayer3es = nil
    local shortestDistance3es = math.huge
    for _, otherPlayer3es in pairs(Players3es:GetPlayers()) do
        if otherPlayer3es ~= player3es and otherPlayer3es.Character and otherPlayer3es.Character:FindFirstChild("HumanoidRootPart") then
            local screenPosition3es, onScreen3es = Workspace3es.CurrentCamera:WorldToScreenPoint(otherPlayer3es.Character.HumanoidRootPart.Position)
            if onScreen3es then
                local distanceFromMouse3es = (Vector2.new(screenPosition3es.X, screenPosition3es.Y) - Vector2.new(mouse3es.X, mouse3es.Y)).magnitude
                if distanceFromMouse3es < shortestDistance3es then
                    shortestDistance3es = distanceFromMouse3es
                    closestPlayer3es = otherPlayer3es
                end
            end
        end
    end
    return closestPlayer3es
end

local function teleportAndLockToHead3es()
    local closestPlayer3es = findClosestPlayerToCursor3es()
    if closestPlayer3es and player3es.Character and player3es.Character:FindFirstChild("HumanoidRootPart") then
        local head3es = closestPlayer3es.Character:FindFirstChild("Head")
        if head3es then
            local targetPosition3es = closestPlayer3es.Character.HumanoidRootPart.Position - (closestPlayer3es.Character.HumanoidRootPart.CFrame.LookVector * 5)
            local targetOrientation3es = closestPlayer3es.Character.HumanoidRootPart.CFrame.LookVector

            player3es.Character.HumanoidRootPart.Anchored = true
            RunService3es.Stepped:Wait()

            player3es.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition3es, targetPosition3es + targetOrientation3es)
            RunService3es.Stepped:Wait()
            player3es.Character.HumanoidRootPart.Anchored = false

            Workspace3es.CurrentCamera.CFrame = CFrame.new(Workspace3es.CurrentCamera.CFrame.Position, head3es.Position)
            aimLock3es = true
            lockedPlayer3es = closestPlayer3es

            RunService3es.RenderStepped:Connect(function()
                if aimLock3es and lockedPlayer3es and Players3es:FindFirstChild(lockedPlayer3es.Name) then
                    local head3es = lockedPlayer3es.Character:FindFirstChild("Head")
                    if head3es then
                        Workspace3es.CurrentCamera.CFrame = CFrame.new(Workspace3es.CurrentCamera.CFrame.Position, head3es.Position)
                    end
                end
            end)
        end
    end
end

UserInputService3es.InputBegan:Connect(function(input3es, isProcessed3es)
    if not isProcessed3es and input3es.KeyCode == keybind3es then
        if aimLockEnabled3es then
            aimLock3es = false
            lockedPlayer3es = nil
            aimLockEnabled3es = false
        else
            teleportAndLockToHead3es()
            aimLockEnabled3es = true
        end
    end
end)

UserInputService3es.InputEnded:Connect(function(input3es, isProcessed3es)
    if not isProcessed3es and input3es.KeyCode == keybind3es then
        aimLock3es = false
        lockedPlayer3es = nil
    end
end)

player3es.CameraMode = Enum.CameraMode.LockFirstPerson


aimtab:AddLabel("To Use TP Kill Press G", true)
--aimtab:AddToggle('toggletpkill', {
--    Text = 'Toggle TP Kill',
 --   Tooltip = 'Toggle TP Kill',
 ----   Default = false,

 --   Callback = function(first)
----        if first then
            -- Toggle is turned on
 --           aimLockEnabled3es = true
--            print("TP Kill Enabled")
 --       else
            -- Toggle is turned off
 --           aimLockEnabled3es = false
 --           print("TP Kill Disabled")
--        end
--    end
--})

local Utility = {
    Drawings = { };
    Objects = { };
    BindToRenders = { };
    Fonts = { }
}

local tracersEnabled = false -- Initial state of tracers

--- Lighting shits world
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

local isFiring = false
local UserInputService = game:GetService("UserInputService")

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

-- Add a toggle for the tracers in the UI
aimtab:AddToggle('tracers', {
    Text = 'Tracers',
    Tooltip = 'Toggle tracers on or off',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(enabled)
        Utility:ToggleTracers(enabled) -- Enable or disable based on toggle
    end
})


aimtab:AddButton('No Drag', function()

-- Function to set ammo drag
local function setAmmoDrag(first)
    local ammoTypes = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
    if not ammoTypes then
        warn("AmmoTypes not found in ReplicatedStorage")
        return
    end

    for _, ammoType in pairs(ammoTypes:GetChildren()) do
        local dragValue = first and "0" or "DefaultDrag"
        ammoType:SetAttribute("Drag", dragValue)
    end
end

-- Call the setAmmoDrag function (example usage)
setAmmoDrag(true) -- sets Drag to "0"


 end)

aimtab:AddButton('No Spread', function()

local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            for _, v in pairs(ammo:GetChildren()) do
                v:SetAttribute("ProjectileWidth", first and "0" or "DefaultWidth")
            end
        else
            warn("AmmoTypes not found in ReplicatedStorage")
        end



 end)

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
-- Toggle implementation
aimtab:AddToggle('jesus', {
    Text = 'Walk On Water',
    Tooltip = 'Lets You Walk On Water',
    Default = false,

    Callback = function(value)
        onJesusToggle(value)
    end
})




--aimtab:AddToggle('WalkOnWater', {
--    Text = 'Walk On Water',
--    Tooltip = 'Lets You Walk On Water',
--    Default = false,

--    Callback = function(first)
 --           local character = LC.Character or LC.CharacterAdded:Wait()
--            local part = character:FindFirstChild("Head")
 --           local rayparams = RaycastParams.new()
 --           rayparams.FilterType = Enum.RaycastFilterType.Exclude
 --   
  --          rayparams.FilterDescendantsInstances = {character}
    
 --   end
--})

aimtab:AddButton('Remove Scope From Gun', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):Destroy()

 end)

aimtab:AddButton('Disable OKP7 SCOPE GUI', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):FindFirstChild("OKP7"):FindFirstChild("Reticle"):FindFirstChild("ScopeGui"):Destroy()

 end)

aimtab:AddButton('Remove Gloves From Viewmodel', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("CombatGloves"):Destroy()	

 end)

aimtab:AddToggle('VisibleText', {
    Text = 'Visible Text',
    Tooltip = 'Tells you if the user you aim is visible or not',
    Default = false,

    Callback = function(first)
        toggleVisibilityCheck()
    end
})

pdlt.exitespfun = function(drop)
    local dropesp = Drawing.new("Text")
    dropesp.Visible = false
    dropesp.Center = true
    dropesp.Outline = true
    dropesp.Font = varsglobal.visuals.font
    dropesp.Size = 13
    local renderstepped
    renderstepped = RunService.Stepped:Connect(LPH_JIT_MAX(function()
        dropesp.Font = varsglobal.visuals.font
        if Toggles["exitesppdlt"].Value and drop then
            dropesp.Color = Options.exitespcolor.Value
            local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop.Position)
            if drop_onscreen then
                dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                dropesp.Text = drop.Name .. "\n[" .. math.floor((camera.CFrame.p - drop.Position).Magnitude * 0.28) ..
                    "]"
                dropesp.Visible = true
            else
                dropesp.Visible = false
            end
        else
            dropesp.Visible = false
            dropesp:Remove()
            renderstepped:Disconnect()
        end
    end))
end



aimtab:AddToggle('exitesppdlt', {
    Text = 'exit esp',
    Tooltip = 'Shows Exits',
    Default = false,

    Callback = function(first)
        if first then
            for _, drop in next, workspace.NoCollision.ExitLocations:GetChildren() do
                pdlt.exitespfun(drop)
            end
            workspace.NoCollision.ExitLocations.ChildAdded:Connect(function(drop)
                pdlt.exitespfun(drop)
            end)
        end
    end
}):AddColorPicker('exitespcolor', {
    Default = Color3.new(1, 1, 1),
    Title = 'esp color',
    Transparency = 0,
})


aimtab:AddButton('Remove Mag From Viewmodel', function()


local camera = game.Workspace:FindFirstChild("Camera")
if camera then
    local viewModel = camera:FindFirstChild("ViewModel")
    if viewModel then
        local item = viewModel:FindFirstChild("Item")
        if item then
            local attachments = item:FindFirstChild("Attachments")
            if attachments then
                local magazine = attachments:FindFirstChild("Magazine")
                if magazine then
                    magazine:Destroy()
                else
                    warn("Magazine not found in Attachments")
                end
            else
                warn("Attachments not found in Item")
            end
        else
            warn("Item not found in ViewModel")
        end
    else
        warn("ViewModel not found in Camera")
    end
else
    warn("Camera not found in Workspace")
end


 end)
print('number_' .. tostring(counter))
counter = counter + 1
local charactertab = pdeltatabbox1:AddTab("misc")
do
    if game.PlaceId == 7336302630 then
        local lagger_debouce = 0
        local lagger_strenght = 1000
        local lagger_auto = false
        local function lag(...)
            LPH_JIT_MAX(function()
                if lagger_debouce < tick() then
                    if (camera.CFrame.p - Vector3.new(-136.8913116455078, 22.075862884521484, -415.0973815917969)).Magnitude < 15 then
                        lagger_debouce = tick() + lagger_strenght / 1000 * 1.6
                        for i = 1, lagger_strenght do
                            coroutine.resume(coroutine.create(function()
                                local args = {
                                    [1] = workspace.Model.MeshPart,
                                    [2] = Vector3.new(-136.8913116455078, 22.075862884521484, -415.0973815917969),
                                    [3] = Vector3.new(-0.6733897924423218, -0.06580131500959396, 0.7363536357879639),
                                    [4] = Enum.Material.Metal,
                                    [5] = Vector3.new(0.4024893045425415, 0.8358040452003479, -0.373408704996109)
                                }
                                game:GetService("ReplicatedStorage").Remotes.MeleeReplicate:FireServer(unpack(args))
                                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                            end))
                        end
                    else
                        Library:Notify("too far")
                    end
                else
                    Library:Notify("please wait " .. tostring(math.round(lagger_debouce - tick())) .. " seconds")
                end
            end)
            end
            end
            end
 
   
local Target
local CircleOutline = Drawing.new("Circle")
local CircleInline = Drawing.new("Circle")
CircleInline.Transparency = 1
CircleInline.Thickness = 1
CircleInline.ZIndex = 2
CircleOutline.Thickness = 3
CircleOutline.Color = Color3.new()
CircleOutline.ZIndex = 1

pdlt.corpseespfun = function(drop)
    local dropesp = Drawing.new("Text")
    dropesp.Visible = false
    dropesp.Center = true
    dropesp.Outline = true
    dropesp.Font = varsglobal.visuals.font
    dropesp.Size = 13
    local renderstepped
    renderstepped = RunService.Stepped:Connect(LPH_JIT_MAX(function()
        dropesp.Font = varsglobal.visuals.font
        if pdlt.corpseesp and drop then
            if drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") then
                dropesp.Color = pdlt.corpsecolor
                local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop:FindFirstChildOfClass("MeshPart")
                    .Position)
                if drop_onscreen then
                    dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                    dropesp.Text = drop.Name .. "'s " .. "Corpse"
                    dropesp.Visible = true
                else
                    dropesp.Visible = false
                end
            else
                dropesp.Visible = false
            end
        else
            dropesp.Visible = false
            dropesp:Remove()
            renderstepped:Disconnect()
        end
    end))
end

Library:Notify("Doge Hub V1.5")
Library:Notify(executorname33)
Library:Notify("Optimization Loaded")
wait(1)
Library:Notify("Loading Updates ")
wait(0.4)
Library:Notify("Loaded")

pdlt.AIespfun = function(drop)
    local dropesp = Drawing.new("Text")
    dropesp.Visible = false
    dropesp.Center = true
    dropesp.Outline = true
    dropesp.Font = varsglobal.visuals.font
    dropesp.Size = 13
    local renderstepped
    renderstepped = RunService.Stepped:Connect(LPH_JIT_MAX(function()
        dropesp.Font = varsglobal.visuals.font
        if pdlt.AIesp and drop then
            dropesp.Color = pdlt.AIcolor
            if drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChild("Head") and drop:FindFirstChildOfClass("Humanoid").Health > 0 then
                local drop_pos, drop_onscreen = camera:WorldToViewportPoint(drop:FindFirstChild("Head").Position)
                if drop_onscreen then
                    dropesp.Position = Vector2.new(drop_pos.X, drop_pos.Y)
                    dropesp.Text = drop.Name ..
                        "\n" ..
                        math.round(drop:FindFirstChildOfClass("Humanoid").Health) ..
                        "hp" ..
                        "\n" .. math.floor((camera.CFrame.p - drop:FindFirstChild("Head").Position).Magnitude * 0.28)
                    dropesp.Visible = true
                else
                    dropesp.Visible = false
                end
            else
                dropesp.Visible = false
            end
        else
            dropesp.Visible = false
            dropesp:Remove()
            renderstepped:Disconnect()
        end
    end))
end
aimtab:AddToggle('sil1e2nw22', {
    Text = 'corpse esp',
    Tooltip = 'Shows Corpses',
    Default = false,

    Callback = function(first)
        pdlt.corpseesp = first
        if first then
            for _, drop in next, workspace.DroppedItems:GetChildren() do
                if drop:FindFirstChildOfClass("Humanoid") then
                    pdlt.corpseespfun(drop)
                end
            end
            workspace.DroppedItems.ChildAdded:Connect(function(drop)
                if drop:FindFirstChildOfClass("Humanoid") then
                    pdlt.corpseespfun(drop)
                end
            end)
        end
    end
}):AddColorPicker('fovc1114olor', {
    Default = Color3.new(1, 1, 1),
    Title = 'esp color',
    Transparency = 0,
    Callback = function(Value)
        pdlt.corpsecolor = Value
    end
})
aimtab:AddToggle('sil21e2nw22', {
    Text = 'ai esp',
    Tooltip = 'AI Esp',
    Default = false,

    Callback = function(first)
        pdlt.AIesp = first
        if first then
            for _, drop in next, game:GetService("Workspace").AiZones:GetDescendants() do
                if drop:FindFirstChildOfClass("Humanoid") and drop:FindFirstChildOfClass("MeshPart") and drop:FindFirstChildOfClass("Humanoid").Health > 0 then
                    pdlt.AIespfun(drop)
                end
            end
            for _, folder in next, game:GetService("Workspace").AiZones:GetChildren() do
                folder.ChildAdded:Connect(function(drop)
                    if drop.Parent and drop.Parent:FindFirstChildOfClass("Humanoid") and drop.Parent:FindFirstChildOfClass("MeshPart") and drop:FindFirstChildOfClass("Humanoid").Health > 0 then
                        pdlt.AIespfun(drop.Parent)
                    end
                end)
            end
        end
    end
}):AddColorPicker('fo44vc1114olor', {
    Default = Color3.new(1, 1, 1),
    Title = 'ai color',
    Transparency = 0,
    Callback = function(Value)
        pdlt.AIcolor = Value
    end
})
local function IsTargetVisible(target)
    if not plr.Character then return false end
    if not target then return false end
    if not camera:FindFirstChildOfClass("Model") then return false end
    if not camera:FindFirstChildOfClass("Model"):FindFirstChild("AimPart") then return false end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = { plr.Character, camera, workspace.NoCollision }
    params.IgnoreWater = true
    params.CollisionGroup = "WeaponRay"
    local from = workspace.Camera.ViewModel:FindFirstChild("AimPart")
    local part, _ = workspace:Raycast(from.CFrame.p, (target.Position - from.CFrame.p).Unit * 6000, params)
    if part.Instance and part.Instance:IsDescendantOf(target.Parent) then
        local humanoid = target.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.Parent == target.Parent then
            return true
        end
    end
    return false
end
-- Services and Variables
-- Services and Variables
-- Services and Variables
-- Services and Variables
-- Required Services
-- Required Services
local camera = workspace.CurrentCamera
local userInputService = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()
local runService = game:GetService("RunService")

-- FOV Settings
local fovRadius = 180  -- Increased FOV for slightly better target tracking
local fovCircle
--settings
local minPrediction = 0.05        -- Slightly higher minimum for short-range prediction stability
local maxPrediction = 0.45        -- Reduced from 0.5 to prevent overshooting at long distances
local defaultPrediction = 0.15    -- Increased default for more reliable accuracy
local predictionAmount = defaultPrediction  -- Initial prediction value

local minDistance = 10            -- Lowered to capture very close targets
local maxDistance = 900           -- Slightly extended for longer mid-range engagements


-- Variables to track aiming state and debugging
local isAiming = false
local lockedCharacter = nil
local debugEnabled = true -- Toggle this to enable/disable debugging
local isSilentAimEnabled994 = false -- Toggle this to enable/disable silent aim
local fovSize = 90 -- Default FOV size

-- Function to create a visible FOV circle
local function createFovCircle()
    if fovCircle then
        fovCircle:Remove()  -- Remove existing circle if it exists
        if debugEnabled then
            print("Removed existing fovCircle.")
        end
    end
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.NumSides = 100
    fovCircle.Radius = fovSize
    fovCircle.Color = Color3.new(1, 1, 1) -- White color
    fovCircle.Filled = false
    fovCircle.Visible = true
    fovCircle.Transparency = 1
    if debugEnabled then
        print("Created new fovCircle.")
    end
end

-- Update FOV circle position
local function updateFovCircle994()
    if fovCircle then
        local mousePos = Vector2.new(mouse.X, mouse.Y)
        fovCircle.Position = mousePos
        fovCircle.Radius = fovSize -- Update FOV circle size
        if debugEnabled then
            print("FOV circle updated to position:", mousePos, "and size:", fovSize)
        end
    else
        if debugEnabled then
            print("FOV circle is not created or is nil.")
        end
    end
end

-- Function to find a target within the FOV
local function findTargetWithinFovCircle()
    local mousePos = Vector2.new(mouse.X, mouse.Y)
    local closestTarget = nil
    local shortestDistance = fovSize

    -- Iterate over all players to find a target within FOV
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= game.Players.LocalPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local head = targetPlayer.Character.Head
            local screenPos, onScreen = camera:WorldToScreenPoint(head.Position)

            if onScreen then
                local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
                local distance = (screenPoint - mousePos).Magnitude

                -- Check if the target is within the FOV and closer than previous targets
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestTarget = targetPlayer.Character
                end
            end
        end
    end

    return closestTarget
end

-- Function to predict target's future position
local function predictTargetPosition(target)
    local head = target:FindFirstChild("Head")
    if head then
        local velocity = head.Velocity
        local predictedPosition = head.Position + (velocity * predictionAmount)
        return predictedPosition
    end
    return head.Position
end

-- Function to dynamically adjust prediction based on distance
local function adjustPrediction(target)
    local head = target:FindFirstChild("Head")
    if head then
        local distance = (game.Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
        local scale = math.clamp((distance - minDistance) / (maxDistance - minDistance), 0, 1)
        predictionAmount = minPrediction + (maxPrediction - minPrediction) * scale
        return distance
    end
    return 0
end

-- Function to handle aiming logic
local function updateAiming()
    if isSilentAimEnabled994 then -- Check if Silent Aim is enabled
        if userInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            local characterUnderMouse = findTargetWithinFovCircle()
            if characterUnderMouse and characterUnderMouse ~= lockedCharacter then
                lockedCharacter = characterUnderMouse
                if debugEnabled then
                    print("Locked onto new character:", lockedCharacter.Name)
                end
            end

            if lockedCharacter and lockedCharacter:FindFirstChild("Head") and camera:FindFirstChild("ViewModel") then
                local head = lockedCharacter.Head
                local vm = camera.ViewModel
                local ap = vm:FindFirstChild("AimPart")
                local apc = vm:FindFirstChild("AimPartCanted")
                local fc = vm:FindFirstChild("FakeCamera")

                if ap and apc and fc then
                    -- Adjust prediction based on distance
                    adjustPrediction(lockedCharacter)
                    local aimPosition = predictTargetPosition(lockedCharacter)
                    local cameraPosition = camera.CFrame.Position

                    -- Update AimPart positions
                    ap.CFrame = CFrame.new(cameraPosition, aimPosition)
                    apc.CFrame = CFrame.new(cameraPosition, aimPosition)

                    -- Print debug information
                    if debugEnabled then
                        print("Aiming at position:", aimPosition)
                        print("Camera position:", cameraPosition)
                        print("Prediction factor:", predictionAmount)
                    end
                else
                    if debugEnabled then
                        print("One or more ViewModel parts are missing.")
                    end
                end
            end
        else
            if isAiming then
                if debugEnabled then
                    print("Right mouse button released. Unlocking.")
                end
            end
            lockedCharacter = nil
        end
    end
end

-- Call the updateAiming function continuously
runService.RenderStepped:Connect(function()
    updateFovCircle994()  -- Ensure this function is correctly implemented
    updateAiming()
end)

-- Create the FOV circle at the start
createFovCircle()

-- GUI Toggle for Silent Aim


aimtab:AddToggle('silentAim994', {
    Text = 'Silent Aim',
    Default = false,
    Callback = function(isEnabled)
        isSilentAimEnabled994 = isEnabled
        lockedCharacter = nil -- Reset locked character when toggling
        updateFovCircle994() -- Update the FOV circle when toggling
    end
}):AddKeyPicker('silentAimBind994', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Silent Aim Bind',
    NoUI = false,
    Callback = function(Value)
        -- Optionally handle key bindings here
    end,
})


aimtab:AddToggle('silen1w22', {
    Text = 'npc aim',
    Tooltip = 'Npc Aim (Cooked)',
    Default = false,

    Callback = function(first)
        pdlt.npcsilentaim = first
    end
}):AddKeyPicker('npcaimbind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'npc aim bind',
    NoUI = false,

    Callback = function(Value)
    end,
})
aimtab:AddToggle('si111123lenw22', {
    Text = 'wallcheck',
    Tooltip = 'Wallcheck',
    Default = false,

    Callback = function(first)
        pdlt.silentaimwall = first
    end
})
aimtab:AddDropdown('SilentAimHitPartjb', {
    Values = { 'HumanoidRootPart', 'Head' },
    Default = 1,
    Multi = false,

    Text = 'silent aim part',
    Tooltip = 'select part',

    Callback = function(Value)
        pdlt.silentaimpart = Value
    end
})

aimtab:AddToggle('fov11outline', {
    Text = 'Fov Outline',
    Default = false,
    Tooltip = 'Draw Outline',
    Callback = function(first)
        pdlt.fovoutline = first
    end
})


-- Add a slider for adjusting the FOV size
aimtab:AddSlider('aimfov', {
    Text = 'Aim FOV Size',
    Default = 60,
    Min = 0,
    Max = 360,
    Rounding = 0,
    Compact = false,
    Callback = function(size)
        fovSize = size
        -- Update the FOV circle size based on the slider value
        if fovCircle then
            fovCircle.Radius = fovSize
        end
        if debugEnabled then
            print("FOV size updated to:", fovSize)
        end
    end
})

-- Add a toggle for print debug
aimtab:AddToggle('printDebug', {
    Text = 'Print Debug',
    Default = true,
    Callback = function(isEnabled)
        debugEnabled = isEnabled
    end
})

-- Add a toggle for enabling/disabling the FOV display
aimtab:AddToggle('fovdisplay', {
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

aimtab:AddSlider('a1imfov', {
    Text = 'p2c fov sides',
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false,
}):OnChanged(function(State)
    pdlt.p2cmode = State
end)

aimtab:AddButton("remove foliage", function()
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
do
    local gamesetting = {
        killaura = false,
        killaurarange = 10,
        killauradelay = 0,
        speed = false,
        speedmode = 0, -- 0 = Basic speed, 1 = Bhop speed
        speedspeed = 1,
        jumpmode = 1,  -- 0 = Vanilla, 1 = Velocity
        jumpheight = 0.4,
        flight = false,
        flightmode = 0, -- 0 = Damageless mode, 1 = Damage mode
        flightspeed = 1,
        phase = false,
        noenvdmg = false,
        xrayores = false,
    }
    local userinput = game:GetService("UserInputService")
    local flycontrol = {
        space = false,
        shift = false,
        w = false,
        a = false,
        s = false,
        d = false,
    }

    userinput.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.W then
            flycontrol.w = true
        elseif input.KeyCode == Enum.KeyCode.A then
            flycontrol.a = true
        elseif input.KeyCode == Enum.KeyCode.S then
            flycontrol.s = true
        elseif input.KeyCode == Enum.KeyCode.D then
            flycontrol.d = true
        elseif input.KeyCode == Enum.KeyCode.Space then
            flycontrol.space = true
        elseif input.KeyCode == Enum.KeyCode.LeftShift then
            flycontrol.shift = true
        end
    end)
    userinput.InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.W then
            flycontrol.w = false
        elseif input.KeyCode == Enum.KeyCode.A then
            flycontrol.a = false
        elseif input.KeyCode == Enum.KeyCode.S then
            flycontrol.s = false
        elseif input.KeyCode == Enum.KeyCode.D then
            flycontrol.d = false
        elseif input.KeyCode == Enum.KeyCode.Space then
            flycontrol.space = false
        elseif input.KeyCode == Enum.KeyCode.LeftShift then
            flycontrol.shift = false
        end
    end)
    charactertab:AddToggle('flight', {
        Text = 'flight',
        Default = false,
        Callback = function(first)
            gamesetting.flight = first
        end
    }):AddKeyPicker('flight_key',
        {
            Default = 'nil',
            SyncToggleState = true,
            Mode = 'Toggle',
            Text = 'flight',
            NoUI = false,
            Callback = function(
                Value)
            end
        })
    charactertab:AddSlider('flightspeed',
        { Text = 'flight speed', Default = 5, Min = 0.1, Max = 59, Rounding = 1, Compact = true }):OnChanged(function(
        first)
        gamesetting.flightspeed = first
    end)
    RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(delta) -- physics
        if gamesetting.flight and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local s = gamesetting.flightspeed * 10 * delta
            local fc = flycontrol
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            local cf = hrp.CFrame
            hrp.CFrame = cf *
                CFrame.new((fc.d and s or 0) - (fc.a and s or 0), (fc.space and s or 0) - (fc.shift and s or 0),
                    (fc.s and s or 0) - (fc.w and s or 0))
            cf = cf *
                CFrame.new((fc.d and s or 0) - (fc.a and s or 0), (fc.space and s or 0) - (fc.shift and s or 0),
                    (fc.s and s or 0) - (fc.w and s or 0))
            wrap(function()
                for _, v in pairs(plr.Character:GetDescendants()) do
                    if v.IsA(v, "BasePart") then
                        v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
                    end
                end
            end)
        end
    end))
end
do
    local enabled = false
    local peek228 = false
    local speed = 1
    charactertab:AddToggle("spidor_toggle", {
        Text = "spider",
        Default = false,
        Callback = function(first)
            enabled = first
        end
    }):AddKeyPicker('spider_bind',
        { Default = 'None', SyncToggleState = true, Mode = 'Toggle', Text = 'spider bind', NoUI = false });
    charactertab:AddSlider('spidor_speed',
        { Text = 'spider speed', Default = 0, Min = 0, Max = 1, Rounding = 2, Compact = false }):OnChanged(function(abb)
        speed =
            abb * 5
    end)
    local function seewalls(pos, lookvector)
        if pos and lookvector then
            local ray = Ray.new(pos, (lookvector).Unit * 2)
            local part = workspace:FindPartOnRayWithIgnoreList(ray, { plr.Character, camera })

            if part then
                return true
            else
                return false
            end
        else
            return false
        end
    end
    RunService.Stepped:Connect(LPH_NO_VIRTUALIZE(function()
        local chr = plr.Character
        local delta = RunService.Heartbeat:Wait()
        if chr and chr:FindFirstChild("HumanoidRootPart") then
            local hrp = chr:FindFirstChild("HumanoidRootPart")
            local result
            --print(peek228)
            if peek228 then
                result = seewalls(hrp.CFrame.p, hrp.CFrame.LookVector)
            else
                local cframe = hrp.CFrame * CFrame.new(0, -2.5, 0)
                result = seewalls(cframe.p, cframe.LookVector)
            end
            if enabled and result then
                hrp.CFrame = hrp.CFrame * CFrame.new(0, speed * 10 * delta, 0)
                wrap(function()
                    for _, v in pairs(plr.Character:GetDescendants()) do
                        if v.IsA(v, "BasePart") then
                            v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
                        end
                    end
                end)
            end
        end
    end))
end
charactertab:AddToggle("gaysexvisor", { Text = "Remove Visors", Default = false }):OnChanged(function(aa)
    pdlt.novisor = aa
end)
charactertab:AddToggle("nigtard", { Text = "toggle chams", Default = false })
charactertab:AddToggle("localcham", { Text = "character chams", Default = false }):AddColorPicker('ccc',
    { Default = Color3.new(1, 1, 1), Title = 'character chams color' })
charactertab:AddToggle("ac", { Text = "arm chams", Default = false }):AddColorPicker('acc',
    { Default = Color3.new(1, 1, 1), Title = 'arm chams color' })
charactertab:AddToggle("gm", { Text = "gun chams", Default = false }):AddColorPicker('gcc',
    { Default = Color3.new(1, 1, 1), Title = 'gun chams color' })
charactertab:AddDropdown("ccm",
    { Text = "character chams material", Default = "SmoothPlastic", Values = { "ForceField", "Neon", "SmoothPlastic", "Glass" } })
charactertab:AddDropdown("acm",
    { Text = "arm chams material", Default = "SmoothPlastic", Values = { "ForceField", "Neon", "SmoothPlastic", "Glass" } })
charactertab:AddDropdown("gcm",
    { Text = "gun chams material", Default = "SmoothPlastic", Values = { "ForceField", "Neon", "SmoothPlastic", "Glass" } });
(function()
    charactertab:AddToggle('showmazafak', { Text = 'inventory viewer', Default = false, Callback = function(v) end })
    charactertab:AddSlider('mazafak_x', { Text = 'X', Default = 200, Min = 0, Max = 700, Rounding = 0, Compact = true })
    charactertab:AddSlider('mazafak_y', { Text = 'Y', Default = 200, Min = 0, Max = 700, Rounding = 0, Compact = true })
    charactertab:AddSlider('mazafak_d',
        { Text = 'Delay', Default = 0.25, Min = 0, Max = 1, Rounding = 2, Compact = true })
    charactertab:AddLabel("viewmodel offset")
    charactertab:AddSlider('view_x', { Text = 'X', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = true })
    charactertab:AddSlider('view_y', { Text = 'Y', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = true })
    charactertab:AddSlider('view_z', { Text = 'Z', Default = 0, Min = -5, Max = 5, Rounding = 2, Compact = true })
    local RunService = game:GetService("RunService")
    local inv_originalpos = Vector2.new(200, 200)

    local draw, inventory, objects = {}, { objs = {} }, {}
    function draw:new(type, props)
        local obj = Drawing.new(type)
        for i, v in pairs(props) do
            obj[i] = v
        end
        objects[#objects + 1] = obj
        return obj
    end

    function draw:removeall()
        for i, v in pairs(objects) do
            v:Remove()
        end
    end

    function draw:changevis(value)
        for i, v in pairs(objects) do
            v.Visible = value
        end
    end

    function inventory:add(_text, _size)
        local text = draw:new("Text", {
            Text = _text,
            Size = _size,
            Font = varsglobal.visuals.font,
            Outline = true,
            Center = false,
            Position = inv_originalpos + Vector2.new(0, (_size + 1) * #inventory.objs),
            Transparency = 1,
            Visible = true,
            Color = Color3.new(1, 1, 1),
            ZIndex = 1,
        })
        inventory.objs[#inventory.objs + 1] = text
    end

    function inventory:refresh()
        for i, v in pairs(inventory.objs) do
            v:Remove(); inventory.objs[i] = nil;
        end
    end

    function inventory:update(__name)
        local rplayers = game:GetService("ReplicatedStorage").Players
        local updateon
        for _, rplayer in next, rplayers:GetChildren() do
            if __name == rplayer.Name then
                updateon = rplayer
            end
        end
        if not updateon then return inventory:refresh() end
        inventory:add("" .. updateon.Name .. " Inventory", 13)
        inventory:add("[Hotbar]", 13)
        for _, item in next, updateon.Inventory:GetChildren() do
            inventory:add("    " .. item.Name, 13)
        end
        inventory:add("[Clothing]", 13)
        for _, item in next, updateon.Clothing:GetChildren() do
            inventory:add("    " .. item.Name, 13)
            if item:FindFirstChild("Inventory") and #item.Inventory:GetChildren() ~= 0 then
                for _, subitem in next, item.Inventory:GetChildren() do
                    if subitem.ItemProperties:GetAttribute("Amount") then
                        inventory:add("        " .. subitem.Name ..
                            " => x" .. subitem.ItemProperties:GetAttribute("Amount"), 13)
                    else
                        inventory:add("        " .. subitem.Name, 13)
                    end
                end
            end
        end
        inventory:add("[Equipment]", 13)
        for _, item in next, updateon.Equipment:GetChildren() do
            inventory:add("    " .. item.Name, 13)
        end
    end

    local FrameTimer = tick()
    local function pos(vm)
        repeat task.wait() until vm.Name == "ViewModel"
        local hrp = vm:FindFirstChild("HumanoidRootPart")
        local vec = Vector3.new(Options["view_x"].Value, Options["view_y"].Value, Options["view_z"].Value)
        local LUA_W = hrp:FindFirstChild("LeftUpperArm")
        local RUA_W = hrp:FindFirstChild("RightUpperArm")
        local IR_W = hrp:FindFirstChild("ItemRoot")
        if LUA_W and RUA_W and IR_W then
            LUA_W.C0 = LUA_W.C0 + vec
            RUA_W.C0 = RUA_W.C0 + vec
            IR_W.C0 = IR_W.C0 + vec
        end
    end
    local function chams()
        LPH_JIT_MAX(function()
            repeat task.wait() until camera:FindFirstChildOfClass("Model").Name == "ViewModel"
            local vm = camera:FindFirstChildOfClass("Model")
            local hrp = vm:FindFirstChild("HumanoidRootPart")
            if Toggles["nigtard"].Value then
                local ItemView = vm:FindFirstChild("Item")
                if Toggles.localcham.Value and plr.Character then -- body
                    for _, v in pairs(plr.Character:GetChildren()) do
                        if v.ClassName == "MeshPart" then
                            v.Material = (Options.ccm.Value) -- local player chams mat
                            v.Color = (Options.ccc.Value) -- local player chams color
                        end
                    end
                end
                if ItemView and Toggles.gm.Value then -- gun
                    for _, v in pairs(ItemView:GetDescendants()) do
                        if v.ClassName == "MeshPart" or v.ClassName == "Part" then
                            v.Material = (Options.gcm.Value) -- gun mat
                            v.Color = (Options.gcc.Value) -- gun color
                        end
                        if v:FindFirstChildOfClass("SurfaceAppearance") then
                            v:FindFirstChildOfClass("SurfaceAppearance"):Destroy()
                        end
                    end
                end
                if Toggles.ac.Value then
                    for _, vm_item in pairs(vm:GetChildren()) do
                        if vm_item.ClassName == "MeshPart" then
                            if vm_item.Name:find("Hand") or vm_item.Name:find("Arm") then
                                vm_item.Material = (Options.acm.Value) -- hands mat
                                vm_item.Color = (Options.acc.Value) -- hands color
                            end
                        end
                        if vm_item.ClassName == "Model" and (vm_item:FindFirstChild("LL") or vm_item:FindFirstChild("LH")) then
                            for _, shirt_item in pairs(vm_item:GetChildren()) do
                                if shirt_item:FindFirstChildOfClass("SurfaceAppearance") then
                                    shirt_item
                                        :FindFirstChildOfClass("SurfaceAppearance"):Destroy()
                                end
                                shirt_item.Material = (Options.acm.Value)
                                shirt_item.Color = (Options.acc.Value)
                            end
                        end
                    end
                end
            end
        end)
    end
    camera.DescendantAdded:Connect(chams)
    camera.ChildAdded:Connect(pos)
    RunService.Stepped:Connect(function()
        inv_originalpos = Vector2.new(Options.mazafak_x.Value, Options.mazafak_y.Value)
        if plr.PlayerGui:FindFirstChild("MainGui") then
            plr.PlayerGui.MainGui.MainFrame.ScreenEffects.Visor.Visible = not
                pdlt.novisor
        end
        if (tick() - FrameTimer) >= Options.mazafak_d.Value then
            FrameTimer = tick();
            inventory:refresh()
            if Toggles.showmazafak.Value then
                if Target then
                    local name = Target.Parent.Name
                    inventory:update(name)
                end
            end
        end;
    end)
end)();
local expargs = { Raycast = { ArgCountRequired = 3, Args = { "Vector3", "Vector3", "RaycastParams" } } }
local function valargs(Args, RayMethod)
    local Matches = 0
    if #Args < RayMethod.ArgCountRequired then
        return false
    end
    for Pos, Argument in next, Args do
        if typeof(Argument) == RayMethod.Args[Pos] then
            Matches = Matches + 1
        end
    end
    return Matches >= RayMethod.ArgCountRequired
end
local CHEAT_CLIENT = {}
function CHEAT_CLIENT:get_target()
    local current_target = nil
    local maximum_distance = pdlt.aimfov
    LPH_NO_VIRTUALIZE(function()
        
        for i, v in pairs(plrs:GetPlayers()) do
            if v ~= plr then
                if v.Character and v.Character:FindFirstChild(pdlt.silentaimpart) then
                    local position, on_screen = camera:WorldToViewportPoint(v.Character:FindFirstChild(pdlt
                        .silentaimpart)
                        .Position)
                    if on_screen then
                        local distance = (Vector2.new(position.X, position.Y - game.GuiService:GetGuiInset(game.GuiService).Y) - Vector2.new(mouse.X, mouse.Y))
                            .Magnitude
                        if distance < maximum_distance then
                            current_target = v.Character:FindFirstChild(pdlt.silentaimpart)
                            maximum_distance = distance
                        end
                    end
                end
            end
        end
        if pdlt.npcsilentaim then
            for _, __no in pairs(game:GetService("Workspace").AiZones:GetChildren()) do
                for _, v in pairs(__no:GetChildren()) do
                    if (v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild(pdlt.silentaimpart)) then
                        local Position, OnScreen = camera:WorldToScreenPoint(v:FindFirstChild(pdlt.silentaimpart)
                        .Position)
                        local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                        if (Distance < maximum_distance and OnScreen) then
                            maximum_distance = Distance
                            current_target = v:FindFirstChild(pdlt.silentaimpart)
                        end
                    end
                end
            end
        end
    end)()
    return current_target
end

local inset = game:service("GuiService"):GetGuiInset().Y
RunService.Stepped:Connect(LPH_JIT_MAX(function()
    CircleOutline.Position = (Vector2.new(mouse.X, mouse.Y + inset))
    CircleInline.Position = (Vector2.new(mouse.X, mouse.Y + inset))
    CircleInline.Radius = pdlt.aimfov
    CircleInline.Color = pdlt.fovcolor
    CircleInline.Visible = pdlt.drawfov
    CircleOutline.Radius = pdlt.aimfov
    CircleOutline.Visible = (pdlt.drawfov and pdlt.fovoutline)
    CircleOutline.NumSides = pdlt.p2cmode
    CircleInline.NumSides = pdlt.p2cmode
    Target = pdlt.silentaim and CHEAT_CLIENT:get_target() or nil
    if Target then
        for i, v in Target:GetChildren() do
            if v.ClassName == "WeldConstraint" and v.Part1 == Target.Parent.FaceHitBox then
                v.Enabled = false
                Target.Parent.FaceHitBox.Anchored = true
            end
        end
    end
    local vm = Target and camera:FindFirstChild("ViewModel") or nil
    local aimpart = vm and vm:FindFirstChild("AimPart") or nil
    local vis = pdlt.silentaimwall and IsTargetVisible(Target) or not pdlt.silentaimwall
    if (aimpart) and vis then
        if aimpart then
            Target.Parent.FaceHitBox.CFrame = aimpart.CFrame * CFrame.Angles(0, math.pi, 0) *
            CFrame.new(0, 0, 10)                                                                                   -- * CFrame.new(0, 0, -5)
        end
    end
end))
--[[local __index; __index = hookmetamethod(game, "__index", function(self, idx, val)
    if self == camera and idx == "CFrame" then
        if varsglobal.thirdperson then
            val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
        end
    end
    return __index(self, idx, val)
end)
]]
--[[local __newindex; __newindex = hookmetamethod(game, "__newindex", function(self, idx, val)
    if self == camera and idx == "CFrame" then
        if varsglobal.thirdperson then 
            val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
        end
    end
    return __newindex(self, idx, val)
end)
local rawmeta = getrawmetatable(game);
setreadonly(rawmeta, false)
local __namecall = rawmeta.__namecall
rawmeta.__namecall = function(self, ...)
    --local Method = (getnamecallmethod()):lower()
    local args = { ... }
    if pdlt.silentaim and valargs(args, expargs.Raycast) then
        local func_name = debug.getinfo(2).name
        if (func_name ~= "WallCollision" and func_name ~= "IsTargetVisible" and func_name ~= "update") and valargs(args, expargs.Raycast) then
        --print(debug.getinfo(3).name)
            local A_Origin = args[1]
            local HitPart = Target
            if HitPart then
                args[2] = (HitPart.Position - A_Origin).Unit * 6000
                return __namecall(self, unpack(args))
            end
        end
    end
    return __namecall(self, ...)
end]]
