--[[

░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░    ░░░░░   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ░░░░░░░░░░░
▒  ▒   ▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
▒   ▒   ▒▒   ▒▒▒▒   ▒▒▒▒▒   ▒▒▒   ▒▒▒▒▒    ▒  ▒▒   ▒▒▒   
▓   ▓▓   ▓   ▓▓  ▓▓▓   ▓▓▓▓  ▓   ▓▓   ▓▓▓   ▓▓▓▓▓   ▓   ▓
▓   ▓▓▓  ▓   ▓         ▓▓▓▓▓  ▓▓▓▓▓   ▓▓▓   ▓▓▓▓▓▓▓    ▓▓
▓   ▓▓▓▓  ▓  ▓  ▓▓▓▓▓▓▓▓▓▓  ▓▓   ▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓   ▓▓
█   ██████   ███     ████   ███   █   ███   ███████   ███
██████████████████████████████████████████████████   ████

NEXIFY V3.2
3.05.2025

24 december 💗

ADVANCADED VERSION TS:::



NEXIFY DEVELOPMENT TEAM

]]

xxx=[[ 

░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░    ░░░░░   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ░░░░░░░░░░░
▒  ▒   ▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒
▒   ▒   ▒▒   ▒▒▒▒   ▒▒▒▒▒   ▒▒▒   ▒▒▒▒▒    ▒  ▒▒   ▒▒▒   
▓   ▓▓   ▓   ▓▓  ▓▓▓   ▓▓▓▓  ▓   ▓▓   ▓▓▓   ▓▓▓▓▓   ▓   ▓
▓   ▓▓▓  ▓   ▓         ▓▓▓▓▓  ▓▓▓▓▓   ▓▓▓   ▓▓▓▓▓▓▓    ▓▓
▓   ▓▓▓▓  ▓  ▓  ▓▓▓▓▓▓▓▓▓▓  ▓▓   ▓▓   ▓▓▓   ▓▓▓▓▓▓▓▓   ▓▓
█   ██████   ███     ████   ███   █   ███   ███████   ███
██████████████████████████████████████████████████   ████
]]


print(xxx)




--if getgenv().nexifye == true then return end 
getgenv().nexifye = true
getgenv().SilentKeyy = 'q'
getgenv().PredictionAmmount = 0.137
loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/v3/loadingbar.lua"))()
wait(3)



--// Main Libarys \\--
local libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/main/v3/library.lua"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/main/v3/notifylibrary.lua"))()
local Notify = NotifyLibrary.Notify
--// Service Handler \\--
                Notify({
                    Title = "Loading",
                    Description = "Loading Nexify V3 For "..identifyexecutor(),
                    Duration = 3
                })

 plr = game:GetService("Players").LocalPlayer

if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then
                Notify({
                    Title = "Waiting For You",
                    Description = "Waiting for you to spawn",
                    Duration = 5
                })
                
    plr.CharacterAdded:Wait()
end

local GetService = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})
function anticheatbypass()
print("Anti cheat bypassed")
                                                Notify({
                    Title = "[ NEXIFY ]",
                    Description = "Bypassed Anti Cheat",
                    Duration = 3,
                })
                --[[
local old
game:GetService("RunService"):Connected(function()
old = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if getnamecallmethod() == "FireServer" and self == game.ReplicatedStorage.Remotes.UAC then
        warn("Blocked Anti Cheat \n call", unpack(args))
        return
    end
    return old(self, ...)
end)
end)
]]

local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldNamecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if method == "FireServer" and self.Name == "ProjectileInflict" then
        if debug.traceback():find("CharacterController") then
            return coroutine.yield()
        end
    end

    return oldNamecall(self, unpack(args))
end)

setreadonly(mt, true)

end

task.spawn(anticheatbypass)



--- ESP


local Workspace, RunService, Players, CoreGui, Lighting = cloneref(game:GetService("Workspace")), cloneref(game:GetService("RunService")), cloneref(game:GetService("Players")), game:GetService("CoreGui"), cloneref(game:GetService("Lighting"))

local ESP = {
    Enabled = false,
    TeamCheck = false,
    MaxDistance = 1200,
    FontSize = 11,
    FadeOut = {
        OnDistance = true,
        OnDeath = false,
        OnLeave = false,
    },
    Options = { 
        Teamcheck = false, TeamcheckRGB = Color3.fromRGB(0, 255, 0),
        Friendcheck = true, FriendcheckRGB = Color3.fromRGB(0, 255, 0),
        Highlight = false, HighlightRGB = Color3.fromRGB(255, 0, 0),
    },
    Drawing = {
        Chams = {
            Enabled  = false,
            Thermal = false,
            FillRGB = Color3.fromRGB(119, 120, 255),
            Fill_Transparency = 100,
            OutlineRGB = Color3.fromRGB(119, 120, 255),
            Outline_Transparency = 100,
            VisibleCheck = true,
        },
        Names = {
            Enabled = false,
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Flags = {
            Enabled = false,
        },
        Distances = {
            Enabled = false, 
            Position = "Text",
            RGB = Color3.fromRGB(255, 255, 255),
        },
        Weapons = {
            Enabled = false, WeaponTextRGB = Color3.fromRGB(119, 120, 255),
            Outlined = false,
            Gradient = false,
            GradientRGB1 = Color3.fromRGB(255, 255, 255), GradientRGB2 = Color3.fromRGB(119, 120, 255),
        },
        Healthbar = {
            Enabled = false,  
            HealthText = true, Lerp = false, HealthTextRGB = Color3.fromRGB(119, 120, 255),
            Width = 2.5,
            Gradient = true, GradientRGB1 = Color3.fromRGB(200, 0, 0), GradientRGB2 = Color3.fromRGB(225, 224, 17), GradientRGB3 = Color3.fromRGB(17, 255, 17), 
        },
        Boxes = {
            Animate = false,
            RotationSpeed = 300,
            Gradient = false, GradientRGB1 = Color3.fromRGB(119, 120, 255), GradientRGB2 = Color3.fromRGB(0, 0, 0), 
            GradientFill = false, GradientFillRGB1 = Color3.fromRGB(119, 120, 255), GradientFillRGB2 = Color3.fromRGB(0, 0, 0), 
            Filled = {
                Enabled = false,
                Transparency = 0.75,
                RGB = Color3.fromRGB(0, 0, 0),
            },
            Full = {
                Enabled = false,
                RGB = Color3.fromRGB(255, 255, 255),
            },
            Corner = {
                Enabled = false,
                RGB = Color3.fromRGB(255, 255, 255),
            },
        };
    };
    Connections = {
        RunService = RunService;
    };
    Fonts = {};
}

-- Def & Vars
local Euphoria = ESP.Connections;
local lplayer = Players.LocalPlayer;
local camera = game.Workspace.CurrentCamera;
local Cam = Workspace.CurrentCamera;
local RotationAngle, Tick = -45, tick();

-- Weapon Images
local Weapon_Icons = {
    ["Wooden Bow"] = "http://www.roblox.com/asset/?id=17677465400",
    ["Crossbow"] = "http://www.roblox.com/asset/?id=17677473017",
    ["Salvaged SMG"] = "http://www.roblox.com/asset/?id=17677463033",
    ["Salvaged AK47"] = "http://www.roblox.com/asset/?id=17677455113",
    ["Salvaged AK74u"] = "http://www.roblox.com/asset/?id=17677442346",
    ["Salvaged M14"] = "http://www.roblox.com/asset/?id=17677444642",
    ["Salvaged Python"] = "http://www.roblox.com/asset/?id=17677451737",
    ["Military PKM"] = "http://www.roblox.com/asset/?id=17677449448",
    ["Military M4A1"] = "http://www.roblox.com/asset/?id=17677479536",
    ["Bruno's M4A1"] = "http://www.roblox.com/asset/?id=17677471185",
    ["Military Barrett"] = "http://www.roblox.com/asset/?id=17677482998",
    ["Salvaged Skorpion"] = "http://www.roblox.com/asset/?id=17677459658",
    ["Salvaged Pump Action"] = "http://www.roblox.com/asset/?id=17677457186",
    ["Military AA12"] = "http://www.roblox.com/asset/?id=17677475227",
    ["Salvaged Break Action"] = "http://www.roblox.com/asset/?id=17677468751",
    ["Salvaged Pipe Rifle"] = "http://www.roblox.com/asset/?id=17677468751",
    ["Salvaged P250"] = "http://www.roblox.com/asset/?id=17677447257",
    ["Nail Gun"] = "http://www.roblox.com/asset/?id=17677484756"
};

-- Functions
local Functions = {}
do
    function Functions:Create(Class, Properties)
        local _Instance = typeof(Class) == 'string' and Instance.new(Class) or Class
        for Property, Value in pairs(Properties) do
            _Instance[Property] = Value
        end;
        return _Instance;
    end;
    --
    function Functions:FadeOutOnDist(element, distance)
        local transparency = math.clamp(1 - (distance / ESP.MaxDistance), 0.2, 1) -- Minimum transparency of 0.2
        if element:IsA("TextLabel") then
            element.TextTransparency = 1 - transparency
        elseif element:IsA("ImageLabel") then
            element.ImageTransparency = 1 - transparency
        elseif element:IsA("UIStroke") then
            element.Transparency = 1 - transparency
        elseif element:IsA("Frame") and (element == Healthbar or element == BehindHealthbar) then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Frame") then
            element.BackgroundTransparency = 1 - transparency
        elseif element:IsA("Highlight") then
            element.FillTransparency = 1 - transparency
            element.OutlineTransparency = 1 - transparency
        end;
    end;  
end;

do -- Initalize
    local ScreenGui = Functions:Create("ScreenGui", {
        Parent = CoreGui,
        Name = "ESPHolder",
    });

    local DupeCheck = function(plr)
        if ScreenGui:FindFirstChild(plr.Name) then
            ScreenGui[plr.Name]:Destroy()
        end;
    end;

    local ESP = function(plr)
        coroutine.wrap(DupeCheck)(plr) -- Dupecheck
        local Name = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, -11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Distance = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 11), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Weapon = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0), RichText = true})
        local Box = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0.75, BorderSizePixel = 0})
        local Gradient1 = Functions:Create("UIGradient", {Parent = Box, Enabled = ESP.Drawing.Boxes.GradientFill, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientFillRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientFillRGB2)}})
        local Outline = Functions:Create("UIStroke", {Parent = Box, Enabled = ESP.Drawing.Boxes.Gradient, Transparency = 0, Color = Color3.fromRGB(255, 255, 255), LineJoinMode = Enum.LineJoinMode.Miter})
        local Gradient2 = Functions:Create("UIGradient", {Parent = Outline, Enabled = ESP.Drawing.Boxes.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Boxes.GradientRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Boxes.GradientRGB2)}})
        local Healthbar = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0})
        local BehindHealthbar = Functions:Create("Frame", {Parent = ScreenGui, ZIndex = -1, BackgroundColor3 = Color3.fromRGB(0, 0, 0), BackgroundTransparency = 0})
        local HealthbarGradient = Functions:Create("UIGradient", {Parent = Healthbar, Enabled = ESP.Drawing.Healthbar.Gradient, Rotation = -90, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Healthbar.GradientRGB1), ColorSequenceKeypoint.new(0.5, ESP.Drawing.Healthbar.GradientRGB2), ColorSequenceKeypoint.new(1, ESP.Drawing.Healthbar.GradientRGB3)}})
        local HealthText = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(0.5, 0, 0, 31), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Chams = Functions:Create("Highlight", {Parent = ScreenGui, FillTransparency = 1, OutlineTransparency = 0, OutlineColor = Color3.fromRGB(119, 120, 255), DepthMode = "AlwaysOnTop"})
        local WeaponIcon = Functions:Create("ImageLabel", {Parent = ScreenGui, BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0, Size = UDim2.new(0, 40, 0, 40)})
        local Gradient3 = Functions:Create("UIGradient", {Parent = WeaponIcon, Rotation = -90, Enabled = ESP.Drawing.Weapons.Gradient, Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ESP.Drawing.Weapons.GradientRGB1), ColorSequenceKeypoint.new(1, ESP.Drawing.Weapons.GradientRGB2)}})
        local LeftTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local LeftSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightTop = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local RightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightSide = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local BottomRightDown = Functions:Create("Frame", {Parent = ScreenGui, BackgroundColor3 = ESP.Drawing.Boxes.Corner.RGB, Position = UDim2.new(0, 0, 0, 0)})
        local Flag1 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        local Flag2 = Functions:Create("TextLabel", {Parent = ScreenGui, Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 100, 0, 20), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --local DroppedItems = Functions:Create("TextLabel", {Parent = ScreenGui, AnchorPoint = Vector2.new(0.5, 0.5), BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(255, 255, 255), Font = Enum.Font.Code, TextSize = ESP.FontSize, TextStrokeTransparency = 0, TextStrokeColor3 = Color3.fromRGB(0, 0, 0)})
        --
        local Updater = function()
            local Connection;
            local function HideESP()
                Box.Visible = false;
                Name.Visible = false;
                Distance.Visible = false;
                Weapon.Visible = false;
                Healthbar.Visible = false;
                BehindHealthbar.Visible = false;
                HealthText.Visible = false;
                WeaponIcon.Visible = false;
                LeftTop.Visible = false;
                LeftSide.Visible = false;
                BottomSide.Visible = false;
                BottomDown.Visible = false;
                RightTop.Visible = false;
                RightSide.Visible = false;
                BottomRightSide.Visible = false;
                BottomRightDown.Visible = false;
                Flag1.Visible = false;
                Chams.Enabled = false;
                Flag2.Visible = false;
                if not plr then
                    ScreenGui:Destroy();
                    Connection:Disconnect();
                end;
            end;
            --
            Connection = Euphoria.RunService.RenderStepped:Connect(function()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local HRP = plr.Character.HumanoidRootPart
                    local Humanoid = plr.Character:WaitForChild("Humanoid");
                    local Pos, OnScreen = Cam:WorldToScreenPoint(HRP.Position)
                    local Dist = (Cam.CFrame.Position - HRP.Position).Magnitude / 3.5714285714
                    
                    if OnScreen and Dist <= ESP.MaxDistance then
                        local Size = HRP.Size.Y
                        local scaleFactor = (Size * Cam.ViewportSize.Y) / (Pos.Z * 2)
                        local w, h = 3 * scaleFactor, 4.5 * scaleFactor

                        -- Fade-out effect --
                        if ESP.FadeOut.OnDistance then
                            Functions:FadeOutOnDist(Box, Dist)
                            Functions:FadeOutOnDist(Outline, Dist)
                            Functions:FadeOutOnDist(Name, Dist)
                            Functions:FadeOutOnDist(Distance, Dist)
                            Functions:FadeOutOnDist(Weapon, Dist)
                            Functions:FadeOutOnDist(Healthbar, Dist)
                            Functions:FadeOutOnDist(BehindHealthbar, Dist)
                            Functions:FadeOutOnDist(HealthText, Dist)
                            Functions:FadeOutOnDist(WeaponIcon, Dist)
                            Functions:FadeOutOnDist(LeftTop, Dist)
                            Functions:FadeOutOnDist(LeftSide, Dist)
                            Functions:FadeOutOnDist(BottomSide, Dist)
                            Functions:FadeOutOnDist(BottomDown, Dist)
                            Functions:FadeOutOnDist(RightTop, Dist)
                            Functions:FadeOutOnDist(RightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightSide, Dist)
                            Functions:FadeOutOnDist(BottomRightDown, Dist)
                            Functions:FadeOutOnDist(Chams, Dist)
                            Functions:FadeOutOnDist(Flag1, Dist)
                            Functions:FadeOutOnDist(Flag2, Dist)
                        end;

                        -- Teamcheck
                        if ESP.TeamCheck and plr ~= lplayer and ((lplayer.Team ~= plr.Team and plr.Team) or (not lplayer.Team and not plr.Team)) and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") then

                            do -- Chams
                                Chams.Adornee = plr.Character
                                Chams.Enabled = ESP.Drawing.Chams.Enabled
                                Chams.FillColor = ESP.Drawing.Chams.FillRGB
                                Chams.OutlineColor = ESP.Drawing.Chams.OutlineRGB
                                do -- Breathe
                                    if ESP.Drawing.Chams.Thermal then
                                        local breathe_effect = math.atan(math.sin(tick() * 2)) * 2 / math.pi
                                        Chams.FillTransparency = ESP.Drawing.Chams.Fill_Transparency * breathe_effect * 0.01
                                        Chams.OutlineTransparency = ESP.Drawing.Chams.Outline_Transparency * breathe_effect * 0.01
                                    end;
                                end;
                                if ESP.Drawing.Chams.VisibleCheck then
                                    Chams.DepthMode = "Occluded"
                                else
                                    Chams.DepthMode = "AlwaysOnTop"
                                end;
                            end;

                            do -- Corner Boxes
                                LeftTop.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                LeftTop.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftTop.Size = UDim2.new(0, w / 5, 0, 1)
                                
                                LeftSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                LeftSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                LeftSide.Size = UDim2.new(0, 1, 0, h / 5)
                                
                                BottomSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomSide.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomSide.AnchorPoint = Vector2.new(0, 5)
                                
                                BottomDown.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomDown.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y + h / 2)
                                BottomDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomDown.AnchorPoint = Vector2.new(0, 1)
                                
                                RightTop.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                RightTop.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y - h / 2)
                                RightTop.Size = UDim2.new(0, w / 5, 0, 1)
                                RightTop.AnchorPoint = Vector2.new(1, 0)
                                
                                RightSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                RightSide.Position = UDim2.new(0, Pos.X + w / 2 - 1, 0, Pos.Y - h / 2)
                                RightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                RightSide.AnchorPoint = Vector2.new(0, 0)
                                
                                BottomRightSide.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightSide.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightSide.Size = UDim2.new(0, 1, 0, h / 5)
                                BottomRightSide.AnchorPoint = Vector2.new(1, 1)
                                
                                BottomRightDown.Visible = ESP.Drawing.Boxes.Corner.Enabled
                                BottomRightDown.Position = UDim2.new(0, Pos.X + w / 2, 0, Pos.Y + h / 2)
                                BottomRightDown.Size = UDim2.new(0, w / 5, 0, 1)
                                BottomRightDown.AnchorPoint = Vector2.new(1, 1)                                                            
                            end;

                            do -- Boxes
                                Box.Position = UDim2.new(0, Pos.X - w / 2, 0, Pos.Y - h / 2)
                                Box.Size = UDim2.new(0, w, 0, h)
                                Box.Visible = ESP.Drawing.Boxes.Full.Enabled;

                                -- Gradient
                                if ESP.Drawing.Boxes.Filled.Enabled then
                                    Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    if ESP.Drawing.Boxes.GradientFill then
                                        Box.BackgroundTransparency = ESP.Drawing.Boxes.Filled.Transparency;
                                    else
                                        Box.BackgroundTransparency = 1
                                    end;
                                    Box.BorderSizePixel = 1
                                else
                                    Box.BackgroundTransparency = 1
                                end;
                                -- Animation
                                RotationAngle = RotationAngle + (tick() - Tick) * ESP.Drawing.Boxes.RotationSpeed * math.cos(math.pi / 4 * tick() - math.pi / 2)
                                if ESP.Drawing.Boxes.Animate then
                                    Gradient1.Rotation = RotationAngle
                                    Gradient2.Rotation = RotationAngle
                                else
                                    Gradient1.Rotation = -45
                                    Gradient2.Rotation = -45
                                end;
                                Tick = tick()
                            end;

                            -- Healthbar
                            do  
                                local health = Humanoid.Health / Humanoid.MaxHealth;
                                Healthbar.Visible = ESP.Drawing.Healthbar.Enabled;
                                Healthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - health))  
                                Healthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h * health)  
                                --
                                BehindHealthbar.Visible = ESP.Drawing.Healthbar.Enabled;
                                BehindHealthbar.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2)  
                                BehindHealthbar.Size = UDim2.new(0, ESP.Drawing.Healthbar.Width, 0, h)
                                -- Health Text
                                do
                                    if ESP.Drawing.Healthbar.HealthText then
                                        local healthPercentage = math.floor(Humanoid.Health / Humanoid.MaxHealth * 100)
                                        HealthText.Position = UDim2.new(0, Pos.X - w / 2 - 6, 0, Pos.Y - h / 2 + h * (1 - healthPercentage / 100) + 3)
                                        HealthText.Text = tostring(healthPercentage)
                                        HealthText.Visible = Humanoid.Health < Humanoid.MaxHealth
                                        if ESP.Drawing.Healthbar.Lerp then
                                            local color = health >= 0.75 and Color3.fromRGB(0, 255, 0) or health >= 0.5 and Color3.fromRGB(255, 255, 0) or health >= 0.25 and Color3.fromRGB(255, 170, 0) or Color3.fromRGB(255, 0, 0)
                                            HealthText.TextColor3 = color
                                        else
                                            HealthText.TextColor3 = ESP.Drawing.Healthbar.HealthTextRGB
                                        end;
                                    end;                        
                                end;
                            end;

                            do -- Names
                                Name.Visible = ESP.Drawing.Names.Enabled
                                if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s', ESP.Options.FriendcheckRGB.R * 255, ESP.Options.FriendcheckRGB.G * 255, ESP.Options.FriendcheckRGB.B * 255, plr.Name)
                                else
                                    Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s', 255, 0, 0, plr.Name)
                                end;
                                Name.Position = UDim2.new(0, Pos.X, 0, Pos.Y - h / 2 - 9)
                            end;
                            
                            do -- Distance
                                if ESP.Drawing.Distances.Enabled then
                                    if ESP.Drawing.Distances.Position == "Bottom" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 18)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 15);
                                        Distance.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 7)
                                        Distance.Text = string.format("%d meters", math.floor(Dist))
                                        Distance.Visible = true
                                    elseif ESP.Drawing.Distances.Position == "Text" then
                                        Weapon.Position = UDim2.new(0, Pos.X, 0, Pos.Y + h / 2 + 8)
                                        WeaponIcon.Position = UDim2.new(0, Pos.X - 21, 0, Pos.Y + h / 2 + 5);
                                        Distance.Visible = false
                                        if ESP.Options.Friendcheck and lplayer:IsFriendsWith(plr.UserId) then
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]', ESP.Options.FriendcheckRGB.R * 255, ESP.Options.FriendcheckRGB.G * 255, ESP.Options.FriendcheckRGB.B * 255, plr.Name, math.floor(Dist))
                                        else
                                            Name.Text = string.format('(<font color="rgb(%d, %d, %d)">E</font>) %s [%d]', 255, 0, 0, plr.Name, math.floor(Dist))
                                        end;
                                        Name.Visible = ESP.Drawing.Names.Enabled
                                    end;
                                end;
                            end;

                            do -- Weapons
                                Weapon.Text = "error (7)"
                                Weapon.Visible = ESP.Drawing.Weapons.Enabled
                            end;                            
                        else
                           -- HideESP();
                        end;
                    else
                       HideESP();
                    end;
                else
                    HideESP();
                end;
            end);
        end;
        coroutine.wrap(Updater)();
    end;
    do -- Update ESP
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                coroutine.wrap(ESP)(v)
            end;      
        end;

        local function WaitForCharacterParts(character)
    while not character:FindFirstChild("HumanoidRootPart") or not character:FindFirstChild("Humanoid") do
        task.wait()
    end;
end;
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
if not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") then
    plr.CharacterAdded:Wait()
    WaitForCharacterParts(plr.Character)
end;

        --
game:GetService("Players").PlayerAdded:Connect(function(v)
    v.CharacterAdded:Wait() -- Wait until the player's character loads
    coroutine.wrap(ESP)(v)
      end);
   end;
end;

                Notify({
                    Title = "[ ESP ]",
                    Description = "Loaded Esp Library ",
                    Duration = 5
                })

--- ESP END


--// Services \\--
local RunService = GetService.RunService
local Players = GetService.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera
local UserInputService = GetService.UserInputService
local Unpack = table.unpack
local GuiInset = GetService.GuiService:GetGuiInset()
local Insert = table.insert
local Network = GetService.NetworkClient
local StarterGui = GetService.StarterGui
local tweenService = GetService.TweenService
local ReplicatedStorage = GetService.ReplicatedStorage
local http = GetService.HttpService
local lighting = GetService.Lighting
makefolder("nexifyv3")

--// Start \\--
local PuppySettings = {
    SilentAim = {
        Enabled = false,
        UseFOV = false,
        ShowFOV = false,
        FOVColor = Color3.new(0.603921, 0.011764, 1),
  DOTColor = Color3.fromRGB(0, 71, 212),
        WallCheck = false,
        KnockedCheck = false,
  PingPred1 = false,
  PingPred2 = false,
        GrabbedCheck = false,
        ShowHitbox = false,
        NotificationMode = false,
        AirShotMode = false,
        UseNearestDistance = false,
  RandomHitbox = false,
        Hitboxes = "HumanoidRootPart",
  Selected = nil
    },
    SilentAimSettings = {
        MovementPrediction = false,
        MovementPredictionAmount = getgenv().PredictionAmmount,
        HitChance = false,
        HitChanceAmount = {
            HitPercent = 100,
            NotHitPercent = 0
        }
    },
 Aimbot = {
  Enabled = false,
  Prediction = false,
  Hitboxes = "HumanoidRootPart"
 },
    AimbotSettings = {
  Mode = "Camera",
  Smoothness = false,
  SmoothnessAmmount = 0.0334,
  PredictionVelocity = 10
    },
 AntiAim = {
  Enabled = false,
  Desync = false,
  Legit = false,
  FPSUnlocked = false,
  LegitAAKey = Enum.KeyCode.Z,
  DesyncValues = {
   Velocity = -100,
   CFrame = -100
  }
 },
 BackTracking = {
  Enabled = false
 },
 AutoPeak = {
  Enabled = false,
  APKey = Enum.KeyCode.N,
 },
 AutoClicker = {
  Enabled = false,
  Keybind = Enum.KeyCode.B
 },
 Misc = {
 CFrameSpeed = {
  Enabled = false,
  Bhop = false,
  Keybind = Enum.KeyCode.V,
  Speed = 1,
 },
 Strafe = false,
 Antislow = false,
 },
    FOV = {
        FOVFilled = false,
        Transparency = 9,
        SilentAimSize = 100,
        Thickness = 2
    },
 Esp = {
  Enabled = false,
  Bones = false,
 },
 TriggerBot = {
        Enabled = false,
  DelayAmount = 0
    },
    TargetGui = {
        Enabled = false
    },
    Whitelist = {
        Players = {},
        Friends = {},
        Holder = "",
        Enabled = false,
        CrewEnabled = false,
        FriendsWhitelist = false
    },
}
local PuppyStorage = {
    GetStrafeAngle = 0,
    BHoping = false,
    Side = "Right",
    StoredRange = 10,
    HeldSpace = false,
    GetPrediction = 0.165,
    Instance = {},
    Equipable = false,
    FPSBeat = 0,
    GetTime = 0,
    Macro = false
}
local PuppyModule = {
    Instance = {}
}


--SILENT AIM

Snapline = Drawing.new("Line")
Snapline.Visible = false
Snapline.Thickness = 1
Snapline.Color = Color3.fromRGB(255, 255, 255) 


config = {
    snapline_enabled = false, 
    snapline_color = Color3.fromRGB(255, 255, 255), 
    fovRadius = 150, 
}
function findTargetWithinFovCircle()
    local mousePos = Vector2.new(Mouse.X, Mouse.Y)
    local closestTarget = nil
    local shortestDistance = config.fovRadius

    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if targetPlayer ~= Players.LocalPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local head = targetPlayer.Character.Head
            local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(head.Position)

            if onScreen then
                local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
                local distance = (screenPoint - mousePos).Magnitude

                if distance < shortestDistance then
                    shortestDistance = distance
                    closestTarget = targetPlayer.Character
                end
            end
        end
    end

    return closestTarget
end


 GuiService = game:GetService("GuiService")

local inset = game:service("GuiService"):GetGuiInset()
game:GetService("RunService").RenderStepped:Connect(function()
    if config.snapline_enabled then
        local targetCharacter = findTargetWithinFovCircle()

        if targetCharacter then
            local targetPos, onScreen = game.workspace.Camera:WorldToViewportPoint(targetCharacter.PrimaryPart.Position)

            local mousePos = Vector2.new(
                Mouse.X,
                Mouse.Y + GuiService:GetGuiInset().Y
            )

            
            Snapline.From = mousePos
            Snapline.To = Vector2.new(targetPos.X, targetPos.Y)
            Snapline.Visible = onScreen 
        else
            Snapline.Visible = false 
        end;
    else
        Snapline.Visible = false
    end;
end);

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
collorofui = Color3.fromRGB(150, 13, 242)
----

local tabnxxame = 'NEXIFY | PD | V3.2 | ' ..identifyexecutor()
local Window = libary:new({name = tabnxxame, accent =collorofui, textsize = 13})
local AimingTab = Window:page({name = "Combat"})
local RageTab = Window:page({name = "Rage"})
local VisualTab = Window:page({name = "Visauls"})
local MiscTab = Window:page({name = "Misc"})
local UISettings = Window:page({name = "UI"})
local SAimSection = AimingTab:section({name = "Silent Aim", side = "left",size = 190})
local fovsettingsss = AimingTab:section({name = "Fov Settings", side = "left",size = 215})
local uiSettings1 = UISettings:section({name = " UI Settings 1", side = "left",size = 100})
local uiSettings2 = UISettings:section({name = " UI Settings 2", side = "right",size = 100})
local Envioromental = AimingTab:section({name = "Environmental", side = "left",size = 90})
local WaterTab = AimingTab:section({name = "Water", side = "right",size = 60})
local AAMainSection = RageTab:section({name = "Main", side = "left", size = 250})
local PlayerInfof = RageTab:section({name = "Player Info", side = "left", size = 50})
local AASettings = RageTab:section({name = "Settings", side = "right", size = 220})
local VisualMainSection = VisualTab:section({name = "Normal Esp",side = "left", size = 200})
local VisualMainSection2 = VisualTab:section({name = "Normal Esp 2",side = "right", size = 210})
local CorpseEsp = VisualTab:section({name = "Corpse Esp",side = "left", size = 100})
local BotEsp = VisualTab:section({name = "Bot Esp", side = "right",size = 100})
local MiscMoveSettings = MiscTab:section({name = "Movement Cheats",side = "left", size = 210})
local MiscCharSettings = MiscTab:section({name = "Character Cheats",side = "left", size = 60})
local MiscNorSettings = MiscTab:section({name = "Normal Cheats",side = "left", size = 145})
local VisorSettings = MiscTab:section({name = "Visor Settings",side = "left", size = 60})
local MiscCamSettings = MiscTab:section({name = "Camera Settings",side = "right", size = 120})
local HitSoundsTab = MiscTab:section({name = "Hit Sounds Settings",side = "right", size = 88})
local Bulletset = RageTab:section({name = "Bullet Settings", side = "right",size = 150})
local ConfigSection = MiscTab:section({name = "Config",side = "right", size = 260})
local ItemWeight = MiscTab:section({name = "Item Weight",side = "right", size = 40})
local ConfigLoader = ConfigSection:configloader({folder = "nexifyv3"})
local GunMods = AimingTab:section({name = "Gun Mods", side = "right",size = 200})
SAimSection:toggle({name = "Silent Aim", def = false, callback = function(Value)
    silent_aim.enabled = not silent_aim.enabled
end})

 PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

 function createModDetectorGUI(enabled)
    -- Check if the UI exists and remove it if it's disabled
    local modDetector = PlayerGui:FindFirstChild("moddetector")
    
    if enabled then
        if modDetector then
            return -- If the GUI already exists, do nothing
        end

        -- GUI Setup
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "moddetector"
        ScreenGui.Parent = PlayerGui
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        local Frame = Instance.new("Frame")
        Frame.Parent = ScreenGui
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.Position = UDim2.new(0.005, 0, 0.276, 0)
        Frame.Size = UDim2.new(0, 256, 0, 302)

        local UIGradient = Instance.new("UIGradient")
        UIGradient.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), 
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 31, 31))
        }
        UIGradient.Parent = Frame

        local UICorner = Instance.new("UICorner")
        UICorner.Parent = Frame

        local TitleLabel = Instance.new("TextLabel")
        TitleLabel.Parent = Frame
        TitleLabel.BackgroundTransparency = 1
        TitleLabel.Position = UDim2.new(0.131, 0, 0, 0)
        TitleLabel.Size = UDim2.new(0, 200, 0, 50)
        TitleLabel.Font = Enum.Font.RobotoMono
        TitleLabel.Text = "INGAME STAFFS"
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextSize = 14

        local PlayerLabels = {}
        for i = 1, 3 do
            local PlayerLabel = Instance.new("TextLabel")
            PlayerLabel.Name = "Player" .. i
            PlayerLabel.Parent = Frame
            PlayerLabel.BackgroundTransparency = 1
            PlayerLabel.Position = UDim2.new(-0.153, 0, 0.12 * i, 0)
            PlayerLabel.Size = UDim2.new(0, 200, 0, 50)
            PlayerLabel.Font = Enum.Font.RobotoMono
            PlayerLabel.Text = ""
            PlayerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            PlayerLabel.TextSize = 14
            PlayerLabels[i] = PlayerLabel
        end

        local function checkTransparency()
            while true do
                local detectedPlayers = {}

                for _, player in pairs(Players:GetPlayers()) do
                    if player.Character then
                        local head = player.Character:FindFirstChild("Head")
                        if head and head:IsA("BasePart") and head.Transparency > 0.5 then
                            table.insert(detectedPlayers, player.Name)
                        end
                    end
                end

                for i, label in ipairs(PlayerLabels) do
                    if detectedPlayers[i] then
                        label.Text = detectedPlayers[i] .. " ( ! )"
                    else
                        label.Text = ""
                    end
                end
                wait(1)
                for i, label in ipairs(PlayerLabels) do
                    if detectedPlayers[i] then
                        label.Text = detectedPlayers[i] .. " (  )"
                    end
                end
                wait(1)
            end
        end
        task.spawn(checkTransparency)

        -- Script for making the GUI draggable
        local function makeDraggable(frame)
            local UIS = game:GetService("UserInputService")
            local dragging, dragStart, startPos

            frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true
                    dragStart = input.Position
                    startPos = frame.Position
                end
            end)

            frame.InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local delta = input.Position - dragStart
                    frame.Position = UDim2.new(
                        startPos.X.Scale, startPos.X.Offset + delta.X,
                        startPos.Y.Scale, startPos.Y.Offset + delta.Y
                    )
                end
            end)

            frame.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                end
            end)
        end

        makeDraggable(Frame)
    else
        -- If disabled, remove the UI if it exists
        if modDetector then
            modDetector:Destroy()
        end
    end
end

-- Watermark GUI with multiple labels across the screen
local screenGuiwatermark= Instance.new("ScreenGui")
screenGuiwatermark.Name = "WatermarkGUI"
screenGuiwatermark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGuiwatermark.Enabled = false
-- Create the frame (fully transparent)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1
frame.Parent = screenGuiwatermark

-- Function to create a watermark label with transparency and slight tilt
local function createWatermarkLabel(text, position, rotation)
    local label = Instance.new("TextLabel")
    label.Text = text
    label.Font = Enum.Font.GothamBold
    label.TextSize = 40
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 0.8  -- Set background transparency to 0.8
    label.Position = position
    label.Rotation = rotation  -- Apply rotation to tilt the text
    label.TextTransparency = 0.7
    label.Parent = frame
end

-- Create labels across the screen to cover it entirely
local labelCountX = 15  -- More labels horizontally
local labelCountY = 10  -- More labels vertically

local screenWidth = workspace.CurrentCamera.ViewportSize.X
local screenHeight = workspace.CurrentCamera.ViewportSize.Y

 labelWidth = screenWidth / labelCountX
 labelHeight = screenHeight / labelCountY

for i = 0, labelCountX - 1 do
    for j = 0, labelCountY - 1 do
        local posX = i * labelWidth / screenWidth
        local posY = j * labelHeight / screenHeight
        local rotation = math.random(-15, 15)  -- Random tilt between -15 and 15 degrees
        createWatermarkLabel("NEXIFY", UDim2.new(posX, 0, posY, 0), rotation)
    end
end


uiSettings2:toggle({name = "Watermark", pointer = "watermarktext", def = false, callback = function(Value)
    screenGuiwatermark.Enabled = Value
end})

uiSettings2:dropdown({name = "Executor Name Manuplator", def = "", max = 7, options = {"Swift","Solara","Wave","Synapse","Celery","Xeno","Argon","NX","AWP","Velocity","Delta","Krnl","JJSploit","Sentinel","Nezur",""}, callback = function(executor)
print('Current Executor: ' ..identifyexecutor())
local execeutornametomanup = executor
    getgenv().identifyexecutor = function(...) return executor end
    

pcall(
    function()
        getgenv().identifyexecutor = function()
            return execeutornametomanup
        end
    end
)
pcall(
    function()
        identifyexecutor = function()
            return execeutornametomanup
        end
    end
)
pcall(
    function()
        if identifyexecutor and hookfunction then
            hookfunction(
                identifyexecutor,
                function()
                    return execeutornametomanup
                end
            )
        end
    end
)
pcall(
    function()
        for _, f in pairs(getgc(true)) do
            if typeof(f) == "function" and islclosure(f) then
                local i = debug.getinfo(f)
                if i.name == "identifyexecutor" then
                    hookfunction(
                        f,
                        function()
                            return execeutornametomanup
                        end
                    )
                end
            end
        end
    end
)
pcall(
    function()
        local mt = getrawmetatable(game)
        setreadonly(mt, false)
        local o = mt.__index
        mt.__index = function(t, k)
            if k == "IdentifyExecutor" then
                return function()
                    return execeutornametomanup
                end
            end
            return o(t, k)
        end
    end
)



    print('Manuplated Executor: ' ..identifyexecutor())
end})

SAimSection:dropdown({name = "Silent Aim Part", def = "Head", max = 3, options = {"Head","UpperTorso","HumanoidRootPart"}, callback = function(part)
    silent_aim.part = part
end})

local newFireRate = 0.001  -- Set the fire rate to a faster value
local originalFireRate = 0.1  -- Assuming this is the original fire rate

-- Function to change fire rate for all items in the local player's inventory
local localplayernameee = game.Players.LocalPlayer.Name

local function setFireRateForAllItems(rate)
    -- Get the Inventory folder
    local inventory = game.ReplicatedStorage.Players[localplayernameee].Inventory

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

GunMods:toggle({name = "Rapid Fire", def = false , pointer = "rapidfire", callback = function(state)
     if state then
            -- Enable rapid fire
            setFireRateForAllItems(newFireRate)  -- Set to desired rapid fire rate
            print("Rapid Fire enabled.")
        else
            -- Disable rapid fire, reset to original fire rate
            setFireRateForAllItems(originalFireRate)  -- Reset to original fire rate
            print("Rapid Fire disabled.")
        end
end})


        GunMods:toggle({name = "Instant Aim", def = false, pointer = "instaaim", callback = function(state)
            -- Iterate through each weapon in the local player's inventory
        local inventory = game.ReplicatedStorage.Players[localplayernameee].Inventory:GetChildren()
        
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
end})
GunMods:toggle({name = "Instant Equip", def = false, callback = function(Value)

 workspace.Camera.ChildAdded:Connect(function(child)
            if child:IsA("Model") then
                task.wait(0.015)
                local animator = child:FindFirstChild("Humanoid") and child.Humanoid:FindFirstChild("Animator")
                if animator then
                    for _, anim in ipairs(animator:GetPlayingAnimationTracks()) do
                        if anim.Animation and anim.Animation.Name == "Equip" then
                            anim.TimePosition = anim.Length - 0.01
                        end
                    end
                end
            end
        end)
end
})
        GunMods:toggle({name = "Instant Reload", def = false, callback = function(Value)


-- Instant Reload for Project Delta
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

-- Hook the reload function
local function hookReload()
    for _, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "updateClient") then
            local originalUpdate = v.updateClient
            v.updateClient = function(self, ...)
                if self.clientAnimationTracks then
                    for _, anim in next, self.clientAnimationTracks do
                        if anim.Name:find("Reload") then
                            anim:AdjustSpeed(100) -- Extreme speed for instant reload
                        end
                    end
                end
                return originalUpdate(self, ...)
            end
        end
    end
end

-- Hook packet-based reload
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() and getnamecallmethod() == "InvokeServer" then
        if self.Name == "Reload" then
            local args = {...}
            args[2] = 0/0 -- Force instant reload
            args[3] = nil -- Remove delay
            return oldNamecall(self, unpack(args))
        end
    end
    return oldNamecall(self, ...)
end)

-- Initialize
task.spawn(function()
    hookReload()
    
    -- Notification
    for _, v in getconnections(ReplicatedStorage.Remotes.NotificationMessage.OnClientEvent) do
        if v.Function then
           -- v.Function("INSTANT RELOAD ENABLED", 3, 1)
        end
    end
end)

-- Rehook when character respawns
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1) -- Wait for systems to initialize
    hookReload()
end)

end})
       
        local player = game.Players.LocalPlayer
-- Path to the ReplicatedStorage and Player's inventory
 replicatedStorage = game:GetService("ReplicatedStorage")

 playerInventoryPath = replicatedStorage.Players:WaitForChild(player.Name, 5) -- 10 saniye bekler

-- Table to keep track of processed items
 processedItems = {}
 inventoryChecking = false -- Başlangıçta kontrol işlemi durdurulmuş durumda

-- Function to unlock and change fire modes for a specific weapon
 function unlockFireModes(weapon)
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
 function checkInventoryForNewItems()
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


 GunMods:toggle({name = "Unlock Fire Modes", def = false, callback = function(Value)

startInventoryCheck()
end})
GunMods:toggle({name = "No Gun Collision", def = false, callback = function(Value)
	local plr = game:GetService("Players").LocalPlayer
	local rs = game:GetService("ReplicatedStorage")
	local inv = rs.Players:FindFirstChild(plr.Name).Inventory

	for _, item in pairs(inv:GetChildren()) do
		local settingsModule = item:FindFirstChild("SettingsModule")
		if settingsModule and settingsModule:IsA("ModuleScript") then
			local settings = require(settingsModule)
			if Value then
				settings.ItemLength = 0
			else
				settings.ItemLength = math.random(3,5)
			end
		end
	end
end})

GunMods:toggle({name = "No Sway", def = false, callback = function(Value)
	local plr = game:GetService("Players").LocalPlayer
	local rs = game:GetService("ReplicatedStorage")
	local inv = rs.Players:FindFirstChild(plr.Name).Inventory

	for _, item in pairs(inv:GetChildren()) do
		local settingsModule = item:FindFirstChild("SettingsModule")
		if settingsModule and settingsModule:IsA("ModuleScript") then
			local settings = require(settingsModule)
			if Value then
				settings.swayMult = 0
				settings.IdleSwayModifier = 0
				settings.WalkSwayModifier = 0
			else
				settings.swayMult = 1
				settings.IdleSwayModifier = 8
				settings.WalkSwayModifier = 5
			end
		end
	end
end})


local ammo = game.ReplicatedStorage.AmmoTypes

GunMods:slider({name = "Recoil Slider", def = 230, max = 583, min = 0, rounding = true, callback = function(State)

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



end})
local FOVConfig = {
    Size = 276,
    Color = Color3.new(1, 1, 1),
    Thickness = 1,
    Visible = false,
    InternalFOV = false,
    InternalColor = Color3.fromRGB(255, 255, 255),
    RotationSpeed = 1,
    ShowNameTag = false
}

local plr = game:GetService("Players").LocalPlayer
local cam = workspace.CurrentCamera
local mouse = plr:GetMouse()
local gui = plr:FindFirstChildOfClass("PlayerGui"):FindFirstChild("ScreenGui") or Instance.new("ScreenGui", plr:FindFirstChildOfClass("PlayerGui"))

local fovCircle = Instance.new("Frame")
fovCircle.Name = "FOVCircle"
gui.DisplayOrder = 99999
fovCircle.Size = UDim2.new(0, FOVConfig.Size, 0, FOVConfig.Size)
fovCircle.Position = UDim2.new(0.5, -FOVConfig.Size/2, 0.5, -FOVConfig.Size/2)
fovCircle.BackgroundTransparency = 1
fovCircle.BorderSizePixel = 0
fovCircle.Visible = FOVConfig.Visible
fovCircle.Parent = gui

local circle = Instance.new("UICorner")
circle.CornerRadius = UDim.new(1, 0)
circle.Parent = fovCircle

local stroke = Instance.new("UIStroke")
stroke.Thickness = FOVConfig.Thickness
stroke.Color = FOVConfig.Color
stroke.Parent = fovCircle

local filler = Instance.new("Frame")
filler.Name = "InternalFOV"
filler.Size = UDim2.new(1, 0, 1, 0)
filler.BackgroundColor3 = FOVConfig.InternalColor
filler.BackgroundTransparency = 0.8
filler.BorderSizePixel = 0
filler.Visible = false
filler.ClipsDescendants = true
filler.ZIndex = -1
filler.Parent = fovCircle

local fillerCorner = Instance.new("UICorner")
fillerCorner.CornerRadius = UDim.new(1, 0)
fillerCorner.Parent = filler

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 128, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
gradient.Rotation = 0
gradient.Parent = filler

local nearestLabel = Instance.new("TextLabel")
nearestLabel.Size = UDim2.new(0, 200, 0, 60)
nearestLabel.Position = UDim2.new(0.5, -100, 0.5, FOVConfig.Size/2 + 5)
nearestLabel.BackgroundTransparency = 1
nearestLabel.TextStrokeTransparency = 0
nearestLabel.Font = Enum.Font.SourceSansBold
nearestLabel.TextSize = 16
nearestLabel.TextYAlignment = Enum.TextYAlignment.Top
nearestLabel.Visible = false
nearestLabel.RichText = true
nearestLabel.Text = ""
nearestLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nearestLabel.Parent = gui

local lockedPlayer = nil

game:GetService("RunService").RenderStepped:Connect(function()
    if filler.Visible then
        gradient.Rotation = (gradient.Rotation + (FOVConfig.RotationSpeed or 1)) % 360
    end

    local closestDist = math.huge
    local closestPlayer = nil

    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= plr and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
            local pos, onScreen = cam:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                if dist < FOVConfig.Size/2 and dist < closestDist then
                    closestDist = dist
                    closestPlayer = v
                end
            end
        end
    end

    lockedPlayer = closestPlayer

    if FOVConfig.ShowNameTag and lockedPlayer then
        local char = lockedPlayer.Character
        local hp = math.floor(char.Humanoid.Health)
        local maxhp = math.floor(char.Humanoid.MaxHealth)
        local hpColor = "rgb(255,255,255)"

        if hp >= 80 then
            hpColor = "rgb(0,255,0)"
        elseif hp >= 50 then
            hpColor = "rgb(255,255,0)"
        elseif hp >= 30 then
            hpColor = "rgb(255,165,0)"
        else
            hpColor = "rgb(255,0,0)"
        end

        local isMod = char:FindFirstChild("Head") and char.Head.Transparency >= 1
        local modColor = isMod and "rgb(255,0,0)" or "rgb(0,255,0)"
        local modText = isMod and "true" or "false"

        nearestLabel.Text = "Locked To: " .. lockedPlayer.Name ..
            "\nHealth: " .. maxhp .. "/<font color=\""..hpColor.."\">" .. hp .. "</font>" ..
            "\nModerator: <font color=\""..modColor.."\">" .. modText .. "</font>"

        nearestLabel.Visible = FOVConfig.Visible
    else
        nearestLabel.Text = ""
        nearestLabel.Visible = false
        lockedPlayer = nil
    end
end)

fovsettingsss:toggle({name = "Show FOV", def = false, callback = function(bool)
    FOVConfig.Visible = bool
    fovCircle.Visible = bool
end})

fovsettingsss:slider({name = "FOV Size", def = 276, max = 276, min = 270, rounding = true, callback = function(val)
    FOVConfig.Size = val
    fovCircle.Size = UDim2.new(0, val, 0, val)
    fovCircle.Position = UDim2.new(0.5, -val/2, 0.5, -val/2)
    nearestLabel.Position = UDim2.new(0.5, -100, 0.5, val/2 + 5)
end})

fovsettingsss:slider({name = "FOV Thickness", def = 1, max = 3, min = 1, rounding = true, callback = function(val)
    FOVConfig.Thickness = val
    stroke.Thickness = val
end})

fovsettingsss:colorpicker({name = "FOV Color", def = Color3.new(1, 1, 1), callback = function(col)
    FOVConfig.Color = col
    stroke.Color = col
end})

fovsettingsss:toggle({name = "Internal FOV", def = false, callback = function(bool)
    FOVConfig.InternalFOV = bool
    filler.Visible = bool
end})

fovsettingsss:colorpicker({name = "Inner FOV Color", def = Color3.fromRGB(255, 255, 255), callback = function(col)
    FOVConfig.InternalColor = col
    filler.BackgroundColor3 = col
end})

fovsettingsss:slider({name = "Rotation Speed", def = 1, max = 10, min = 0, rounding = true, callback = function(val)
    FOVConfig.RotationSpeed = val
end})

fovsettingsss:toggle({name = "Show Player Info", def = false, callback = function(bool)
    FOVConfig.ShowNameTag = bool
end})



SAimSection:toggle({name = "Wall Check", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.WallCheck = Boolean
end})


SAimSection:toggle({name = "Notification Mode", def = false, callback = function(Boolean)
    PuppySettings.SilentAim.NotificationMode = Boolean
end})

Lighting = game:GetService("Lighting") 
 fullBrightActive = false 
 oldSettings = {} 

 function enableFullBright()
    
    if not oldSettings.Ambient then
        oldSettings.Ambient = Lighting.Ambient
        oldSettings.Brightness = Lighting.Brightness
        oldSettings.ShadowSoftness = Lighting.ShadowSoftness
        oldSettings.GlobalShadows = Lighting.GlobalShadows
    end;

    
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 2 
    Lighting.GlobalShadows = false 
    Lighting.ShadowSoftness = 0 
end;

local function disableFullBright()
    
    Lighting.Ambient = oldSettings.Ambient or Lighting.Ambient
    Lighting.Brightness = oldSettings.Brightness or Lighting.Brightness
    Lighting.GlobalShadows = oldSettings.GlobalShadows ~= nil and oldSettings.GlobalShadows or Lighting.GlobalShadows
    Lighting.ShadowSoftness = oldSettings.ShadowSoftness or Lighting.ShadowSoftness
end;



SAimSection:toggle({name = "Full Bright", def = false, callback = function(state)
            fullBrightActive = state
        if fullBrightActive then
            enableFullBright() 
        else
            disableFullBright() 
        end;
end})
visorprotc = Instance.new("ScreenGui")
 Frame = Instance.new("Frame")
 Frame_2 = Instance.new("Frame")
 UIGradient = Instance.new("UIGradient")
 TextLabel = Instance.new("TextLabel")
 UIGradient_2 = Instance.new("UIGradient")

--Properties:

visorprotc.Name = "visorprotc"
visorprotc.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
visorprotc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
visorprotc.DisplayOrder = 10
visorprotc.Enabled = false

Frame.Parent = visorprotc
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0182246994, 0, 0.46418637, 0)
Frame.Size = UDim2.new(0, 181, 0, 27)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0331491716, 0, 0.148148149, 0)
Frame_2.Size = UDim2.new(0, 168, 0, 18)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(29, 29, 29)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(62, 62, 62))}
UIGradient.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.136904761, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 147, 0, 18)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "VISOR: "
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 85)
TextLabel.TextSize = 14.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(45, 45, 45))}
UIGradient_2.Parent = Frame

-- Scripts:

 function EEXR_fake_script() -- TextLabel.Script 
	local script = Instance.new('Script', TextLabel)

	local player = game.Players.LocalPlayer
	local playerName = player.Name
	local replicatedStorage = game.ReplicatedStorage
	local runService = game:GetService("RunService")
	
	local function updateVisorStatus()
		local playerData = replicatedStorage.Players:FindFirstChild(playerName)
		if not playerData then return end
	
		local clothing = playerData:FindFirstChild("Clothing")
		if not clothing then return end
	
		local altyn = clothing:FindFirstChild("Altyn")
		if not altyn then return end
	
		local attachments = altyn:FindFirstChild("Attachments")
		if not attachments then return end
	
		local visor = attachments:FindFirstChild("Visor")
		if not visor then return end
	
		local visorDown = false
		local altynVisor = visor:FindFirstChild("AltynVisor")
		local maskaVisor = visor:FindFirstChild("MaskaVisor")
	
		if altynVisor then
			local itemProps = altynVisor:FindFirstChild("ItemProperties")
			if itemProps then
				local clothingAttachment = itemProps:FindFirstChild("ClothingAttachment")
				if clothingAttachment then
					visorDown = clothingAttachment:GetAttribute("VisorDown") or false
				end
			end
		end
	
		if maskaVisor then
			local itemProps = maskaVisor:FindFirstChild("ItemProperties")
			if itemProps then
				local clothingAttachment = itemProps:FindFirstChild("ClothingAttachment")
				if clothingAttachment then
					visorDown = visorDown or clothingAttachment:GetAttribute("VisorDown") or false
				end
			end
		end
	
		
		if script.Parent:IsA("TextLabel") then
			if visorDown then
				script.Parent.Text = "VISOR: DOWN"
				script.Parent.TextColor3 = Color3.new(0, 1, 0.0666667)
			else
				script.Parent.Text = "VISOR: UP"
				script.Parent.TextColor3 = Color3.new(1, 0, 0)
			end
		end
	end
	
	
	runService.RenderStepped:Connect(updateVisorStatus)
	
end
coroutine.wrap(EEXR_fake_script)()


VisorSettings:toggle({name = "Visor Checker", def = false, callback = function(state)


visorprotc.Enabled = state

end})
VisorSettings:toggle({name = "Remove Visor", def = false, callback = function(state)


        if state then
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = false
        else
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = true
        end;

end})



-- Silent FOV Section --
local AimbotFOVSection = AimingTab:section({name = "Snapline", side = "right",size = 60})

AimbotFOVSection:toggle({name = "Snapline Enabled", def = false, callback = function(Boolean)
    config.snapline_enabled = Boolean
end})

AimbotFOVSection:colorpicker({name = "Snapline Color", cpname = "", def = Color3.new(255, 255, 255), callback = function(color)
   
   config.snapline_color = color
end})



local LC = Game.Players.LocalPlayer  
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
    ["DV-2"] = "Cutlass",
    ["DV-2 Knife"] = "Cutlass",
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
  

-- Aimbot Settings Section --






 player = game.Players.LocalPlayer
 screengui42f = Instance.new("ScreenGui")
screengui42f.Parent = player.PlayerGui

 frame231 = Instance.new("Frame")
frame231.Parent = screengui42f
frame231.Size = UDim2.new(0, 400, 0, 400)  -- Adjusted size for clarity
frame231.Position = UDim2.new(0, 10, 0, 10)
frame231.BackgroundTransparency = 0.4
frame231.BorderSizePixel = 0
frame231.Visible = false
-- UI Gradient for the frame
 gradientxx_upval = Instance.new("UIGradient")
gradientxx_upval.Parent = frame231
gradientxx_upval.Enabled = false
gradientxx_upval.Color = ColorSequence.new(
    Color3.fromRGB(0, 0, 0),
    Color3.fromRGB(255, 182, 193)
)

-- UI Stroke for the frame
 strokesdade = Instance.new("UIStroke")
strokesdade.Parent = frame231
strokesdade.Color = Color3.fromRGB(255, 255, 255)

-- Inventory label
 inventoryLabel = Instance.new("TextLabel")
inventoryLabel.BackgroundTransparency = 1
inventoryLabel.Parent = frame231
inventoryLabel.Size = UDim2.new(1, 0, 1, 0)
inventoryLabel.RichText = true
inventoryLabel.Position = UDim2.new(0, 0, 0, 0)
inventoryLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
inventoryLabel.TextSize = 12
inventoryLabel.TextWrapped = true
inventoryLabel.Font = Enum.Font.Code
inventoryLabel.Text = "==INVENTORY==\nLoading..."

-- Toggle for animation
 animatexxx = false

-- Function to update inventory
 function updateInventory(targetPlayer)
    local hotbarPath = game.ReplicatedStorage.Players[targetPlayer.Name].Inventory
    local clothingPath = game.ReplicatedStorage.Players[targetPlayer.Name].Clothing
    local equipmentPath = game.ReplicatedStorage.Players[targetPlayer.Name].Equipment

    local hotbarItems, clothingItems, equipmentItems = {}, {}, {}

    -- Get item names
    for _, item in pairs(hotbarPath:GetChildren()) do
        table.insert(hotbarItems, item.Name)
    end
    for _, item in pairs(clothingPath:GetChildren()) do
        table.insert(clothingItems, item.Name)
    end
    for _, item in pairs(equipmentPath:GetChildren()) do
        table.insert(equipmentItems, item.Name)
    end

    -- Format the inventory display text
    local inventoryText = "==INVENTORY==\n" .. targetPlayer.Name .. "'s Inventory:\n\n"
    inventoryText = inventoryText .. "[Hotbar]:\n\n" .. table.concat(hotbarItems, "\n") .. "\n\n"
    inventoryText = inventoryText .. "[Clothing]:\n\n" .. table.concat(clothingItems, "\n") .. "\n\n"
    inventoryText = inventoryText .. "[Equipment]:\n\n" .. table.concat(equipmentItems, "\n") .. "\n"

    -- Update the text label
    inventoryLabel.Text = inventoryText
end

-- Check if a player is within 160-degree FOV
 function getPlayerAngle(targetPlayer)
    local camera = workspace.CurrentCamera
    local playerChar = targetPlayer.Character
    if playerChar and playerChar:FindFirstChild("HumanoidRootPart") then
        local playerPosition = playerChar.HumanoidRootPart.Position
        local direction = (playerPosition - camera.CFrame.Position).unit
        local dotProduct = camera.CFrame.LookVector:Dot(direction)
        local angle = math.deg(math.acos(dotProduct))
        return angle
    end
    return math.huge  -- Return large angle if player is invalid
end

-- Update inventory based on closest player in FOV
game:GetService("RunService").Heartbeat:Connect(function()
    local closestPlayer = nil
    local smallestAngle = math.huge

    -- Loop through all players
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player then
            local angle = getPlayerAngle(targetPlayer)
            if angle < smallestAngle and angle <= 80 then
                smallestAngle = angle
                closestPlayer = targetPlayer
            end
        end
    end

    -- Update inventory for the closest player in FOV
    if closestPlayer then
        updateInventory(closestPlayer)
    else
        inventoryLabel.Text = "==INVENTORY==\nNo players in view."
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    -- Ensure gradientxx_upval exists before accessing it
    if gradientxx_upval then
        if animatexxx then
            -- Smoothly rotate the gradient
            gradientxx_upval.Rotation = gradientxx_upval.Rotation + math.random(-1, 9)
        else
            -- Reset rotation when animation is off
            gradientxx_upval.Rotation = 45
        end
    end
end)

-- Silent Aim Settings Section --
local SilentAimSettings = AimingTab:section({name = "Inventory Viewer", side = "right",size = 120})

SilentAimSettings:toggle({name = "Inventory Viewer Toggle", def = false, callback = function(Boolean)
    frame231.Visible = Boolean
end})

SilentAimSettings:toggle({name = "Gradiant Animation", def = false, callback = function(Boolean)
    animatexxx = Boolean  -- Use this to toggle the gradient animation
end})
local statussssssss = false
PlayerInfof:toggle({name = "Player Info UI", def = false, callback = function(Boolean)
    statussssssss = Boolean
if Boolean == true then

 PlayerInfo = Instance.new("ScreenGui")



 Frame = Instance.new("Frame")
 UIGradient = Instance.new("UIGradient")
 Frame_2 = Instance.new("Frame")
 UIGradient_2 = Instance.new("UIGradient")
 Frame_3 = Instance.new("Frame")
 UIGradient_3 = Instance.new("UIGradient")
 TextLabel = Instance.new("TextLabel")
 ImageLabel = Instance.new("ImageLabel")
 UICorner = Instance.new("UICorner")
 PlayerName = Instance.new("TextLabel")
 Dictator = Instance.new("Frame")
 KDR = Instance.new("TextLabel")
 PlayTime = Instance.new("TextLabel")
 Values = Instance.new("Folder")
 KDR_2 = Instance.new("TextLabel")
 PlayTime_2 = Instance.new("TextLabel")
 IntValues = Instance.new("Folder")
 Dictator2 = Instance.new("Frame")

-- Properties:

PlayerInfo.Name = "PlayerInfo"
PlayerInfo.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PlayerInfo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
PlayerInfo.DisplayOrder = 3

Frame.Parent = PlayerInfo
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0189753324, 0, 0.449532062, 0)
Frame.Size = UDim2.new(0, 295, 0, 137)
local Frame1 = Instance.new("UIStroke")
Frame1.Parent = Frame
Frame1.Name = 'UIStroke'
Frame1.Color = Color3.new(0.172549, 0.164706, 0.141176)
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
UIGradient.Parent = Frame

Frame_2.Parent = PlayerInfo
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0284629986, 0, 0.459558815, 0)
Frame_2.Size = UDim2.new(0, 278, 0, 122)
local Frame2 = Instance.new("UIStroke")
Frame2.Parent = Frame_2
Frame2.Name = 'UIStroke'
Frame2.Color = Color3.new(0.172549, 0.164706, 0.141176)
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
UIGradient_2.Parent = Frame_2

Frame_3.Parent = PlayerInfo
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0367647037, 0, 0.471256673, 0)
Frame_3.Size = UDim2.new(0, 263, 0, 108)
local Frame3 = Instance.new("UIStroke")
Frame3.Parent = Frame_3
Frame3.Name = 'UIStroke'
Frame3.Color = Color3.new(0.172549, 0.164706, 0.141176)
UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
UIGradient_3.Parent = Frame_3

TextLabel.Parent = Frame_3
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.384030432, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 61, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Player Info"
TextLabel.TextColor3 = Color3.fromRGB(229, 229, 229)
TextLabel.TextSize = 15.000

ImageLabel.Parent = Frame_3
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.052813689, 0, -0.11592597, 60)
ImageLabel.Size = UDim2.new(0, 30, 0, 30)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.Parent = ImageLabel

PlayerName.Name = "PlayerName"
PlayerName.Parent = Frame_3
PlayerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.BackgroundTransparency = 1.000
PlayerName.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0.258555144, 0, 0.25, 0)
PlayerName.Size = UDim2.new(0, 61, 0, 25)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.Text = "PlayerName123"
PlayerName.TextColor3 = Color3.fromRGB(229, 229, 229)
PlayerName.TextSize = 15.000

Dictator.Name = "Dictator"
Dictator.Parent = Frame_3
Dictator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dictator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dictator.BorderSizePixel = 0
Dictator.Position = UDim2.new(0, 0, 0.231481478, 0)
Dictator.Size = UDim2.new(0, 263, 0, 0)
local dicatator1uistroke = Instance.new("UIStroke")
dicatator1uistroke.Parent = Dictator
dicatator1uistroke.Name = 'UIStroke'

KDR.Name = "KDR"
KDR.Parent = Frame_3
KDR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KDR.BackgroundTransparency = 1.000
KDR.BorderColor3 = Color3.fromRGB(0, 0, 0)
KDR.BorderSizePixel = 0
KDR.Position = UDim2.new(0.15209125, 0, 0.42592594, 0)
KDR.Size = UDim2.new(0, 61, 0, 25)
KDR.Font = Enum.Font.SourceSans
KDR.Text = "KDR:"
KDR.TextColor3 = Color3.fromRGB(229, 229, 229)
KDR.TextSize = 15.000

PlayTime.Name = "PlayTime"
PlayTime.Parent = Frame_3
PlayTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayTime.BackgroundTransparency = 1.000
PlayTime.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayTime.BorderSizePixel = 0
PlayTime.Position = UDim2.new(0.205323189, 0, 0.657407403, 0)
PlayTime.Size = UDim2.new(0, 61, 0, 25)
PlayTime.Font = Enum.Font.SourceSans
PlayTime.Text = "PLAY TIME:"
PlayTime.TextColor3 = Color3.fromRGB(229, 229, 229)
PlayTime.TextSize = 15.000

Values.Name = "Values"
Values.Parent = Frame_3

KDR_2.Name = "KDR"
KDR_2.Parent = Values
KDR_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KDR_2.BackgroundTransparency = 1.000
KDR_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
KDR_2.BorderSizePixel = 0
KDR_2.Position = UDim2.new(0.756653965, 0, 0.42592594, 0)
KDR_2.Size = UDim2.new(0, 61, 0, 25)
KDR_2.Font = Enum.Font.SourceSans
KDR_2.Text = "0.75"
KDR_2.TextColor3 = Color3.fromRGB(229, 229, 229)
KDR_2.TextSize = 15.000

PlayTime_2.Name = "PlayTime"
PlayTime_2.Parent = Values
PlayTime_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayTime_2.BackgroundTransparency = 1.000
PlayTime_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayTime_2.BorderSizePixel = 0
PlayTime_2.Position = UDim2.new(0.756653965, 0, 0.657407403, 0)
PlayTime_2.Size = UDim2.new(0, 61, 0, 25)
PlayTime_2.Font = Enum.Font.SourceSans
PlayTime_2.Text = "135H"
PlayTime_2.TextColor3 = Color3.fromRGB(229, 229, 229)
PlayTime_2.TextSize = 15.000

IntValues.Name = "IntValues"
IntValues.Parent = Frame_3

Dictator2.Name = "Dictator2"
Dictator2.Parent = Frame_3
Dictator2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dictator2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dictator2.BorderSizePixel = 0
Dictator2.Position = UDim2.new(0, 0, 0.888888896, 0)
Dictator2.Size = UDim2.new(0, 263, 0, 0)
local dicatator2uistroke = Instance.new("UIStroke")
dicatator2uistroke.Parent = Dictator2
dicatator2uistroke.Name = 'UIStroke'

local intvaluesaccentcolor = Instance.new("Color3Value")
intvaluesaccentcolor.Parent = IntValues
intvaluesaccentcolor.Name = "AccentColor"

task.wait(0.5)
intvaluesaccentcolor.Value = Color3.new(0.886275, 0.47451, 0.00784314)

-- Scripts:

local function BQIGBQK_fake_script() -- Frame_3.ColorHandler
	local script = Instance.new('LocalScript', Frame_3)
	local IntValues = script.Parent.IntValues
	local accentcolor = IntValues.AccentColor
	
	accentcolor.Changed:Connect(function()
		script.Parent.Dictator.UIStroke.Color = accentcolor.Value
		script.Parent.Dictator2.UIStroke.Color = accentcolor.Value
	end)
end
coroutine.wrap(BQIGBQK_fake_script)()

local function FOV_PLAYER_SELECTOR_script() -- Frame_3.FOVPlayerSelector
	local script = Instance.new('LocalScript', Frame_3)
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local localPlayer = Players.LocalPlayer
	local camera = workspace.CurrentCamera
	local fovAngle = 170 -- 170 degrees FOV
	local playerNameLabel = script.Parent.PlayerName
	local imageLabel = script.Parent.ImageLabel
	local kdrValueLabel = script.Parent.Values.KDR
	local playTimeValueLabel = script.Parent.Values.PlayTime

	local function getPlayersInFOV()
		local playersInFOV = {}
		local cameraCFrame = camera.CFrame
		local cameraPos = cameraCFrame.Position
		local cameraLookVector = cameraCFrame.LookVector

		for _, player in pairs(Players:GetPlayers()) do
			if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = player.Character.HumanoidRootPart
				local playerPos = humanoidRootPart.Position
				local vectorToPlayer = (playerPos - cameraPos).Unit
				local angle = math.deg(math.acos(vectorToPlayer:Dot(cameraLookVector)))
				
				if angle <= fovAngle / 2 then
					playersInFOV[#playersInFOV + 1] = {Player = player, Position = playerPos}
				end
			end
		end
		return playersInFOV
	end

	local function getClosestPlayerToMouse(playersInFOV)
		if #playersInFOV == 0 then return nil end
		if #playersInFOV == 1 then return playersInFOV[1].Player end

		local mouse = UserInputService:GetMouseLocation()
		local closestPlayer = nil
		local minDistance = math.huge

		for _, data in pairs(playersInFOV) do
			local player = data.Player
			local position = data.Position
			local screenPoint, onScreen = camera:WorldToScreenPoint(position)
			if onScreen then
				local screenPos = Vector2.new(screenPoint.X, screenPoint.Y)
				local distance = (screenPos - mouse).Magnitude
				if distance < minDistance then
					minDistance = distance
					closestPlayer = player
				end
			end
		end
		return closestPlayer
	end

	local function formatPlayTime(seconds)
		local hours = math.floor(seconds / 3600)
		local minutes = math.floor((seconds % 3600) / 60)
		return string.format("%dH %dM", hours, minutes)
	end

	local function getPlayerStats(player)
		local statsFolder = ReplicatedStorage:FindFirstChild("Players") and
			ReplicatedStorage.Players:FindFirstChild(player.Name) and
			ReplicatedStorage.Players[player.Name]:FindFirstChild("Status") and
			ReplicatedStorage.Players[player.Name].Status:FindFirstChild("Journey") and
			ReplicatedStorage.Players[player.Name].Status.Journey:FindFirstChild("Statistics")
		
		if not statsFolder then
			return nil, nil
		end

		local kills = statsFolder:GetAttribute("Kills") or 0
		local deaths = statsFolder:GetAttribute("Deaths") or 0
		local playTime = statsFolder:GetAttribute("TimePlayed") or 0

		local kdr = deaths > 0 and string.format("%.2f", kills / deaths) or (kills > 0 and "∞" or "0.00")
		local formattedPlayTime = formatPlayTime(playTime)

		return kdr, formattedPlayTime
	end

	local function updateUI()
		local playersInFOV = getPlayersInFOV()
		local selectedPlayer = getClosestPlayerToMouse(playersInFOV)
		
		if selectedPlayer then
			playerNameLabel.Text = selectedPlayer.Name
			local userId = selectedPlayer.UserId
			imageLabel.Image = "rbxthumb://type=AvatarHeadShot&id=" .. userId .. "&w=150&h=150"
			local kdr, playTime = getPlayerStats(selectedPlayer)
			kdrValueLabel.Text = kdr or "N/A"
			playTimeValueLabel.Text = playTime or "N/A"
		else
			playerNameLabel.Text = "No Player"
			imageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			kdrValueLabel.Text = "N/A"
			playTimeValueLabel.Text = "N/A"
		end
	end

local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos
local frames = {Frame, Frame_2, Frame_3}

local function update(input)
	local delta = input.Position - dragStart
	for _, frame in pairs(frames) do
		frame.Position = UDim2.new(startPos[frame].X.Scale, startPos[frame].X.Offset + delta.X,
			startPos[frame].Y.Scale, startPos[frame].Y.Offset + delta.Y)
	end
end

for _, frame in pairs(frames) do
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = {}
			for _, f in pairs(frames) do
				startPos[f] = {X = f.Position.X, Y = f.Position.Y}
			end

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
end

UIS.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

    

	game:GetService("RunService").RenderStepped:Connect(updateUI)



end
coroutine.wrap(FOV_PLAYER_SELECTOR_script)()
intvaluesaccentcolor.Value = Color3.new(0.886274, 0.47451, 0.00784314)
end

    
     if Boolean == false then PlayerInfo:Destroy() end
end})
--[[
PlayerInfof:colorpicker({name = "UI Accent Color Picker", cpname = "", def = Color3.new(0.886274, 0.47451, 0.00784314), callback = function(color)
    
if statussssssss == true then
local directui = game.Players.LocalPlayer.PlayerGui:WaitForChild("PlayerInfo")
directui.Frame.IntValues.AccentColor = color
end

end})
--]]

SilentAimSettings:toggle({name = "Gradiant Toggle", def = false, callback = function(Boolean)
    gradientxx_upval.Enabled = Boolean
end})

SilentAimSettings:slider({name = "Gradiant Transparency", def = 1, max = 1.3, min = 0, rounding = 3, callback = function(Value)
 frame231.BackgroundTransparency = Value
end})

-- Trigger Bot Section -- 
local TriggerbotSection = AimingTab:section({name = "Trigger Bot", side = "left",size = 100})
local BobbingSection = AimingTab:section({name = "Bobbing", side = "right",size = 40})


TriggerbotSection:toggle({name = "Trigger Bot", def = false, callback = function(Boolean)
 PuppySettings.TriggerBot.Enabled = Boolean
end})

local BobEnabled = false
local applied = false
local originalUpdates = {}

BobbingSection:toggle({
    name = "No Bob",
    def = false,
    callback = function(state)
        BobEnabled = state

        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        -- No Bob uygulayıcı
        local function applyNoBob()
            if applied then return end
            applied = true

            -- SpringV2 hook
            local success, springModule = pcall(function()
                return require(game:GetService("ReplicatedStorage").Modules.SpringV2)
            end)

            if success and springModule and springModule.create then
                local originalCreate = springModule.create
                springModule.create = function(...)

                    local spring = originalCreate(...)

                    if spring and spring.update then
                        local originalUpdate = spring.update
                        originalUpdates[spring] = originalUpdate

                        spring.update = function(...)
                            if not BobEnabled then
                                -- Bob kapalı ise eski fonksiyonu geri çağır
                                originalUpdates[spring](...)
                            end
                            local result = originalUpdate(...)
                            if typeof(result) == "Vector3" and math.abs(result.Y) < 0.2 then
                                return Vector3.zero
                            end
                            return result
                        end
                    end
                    return spring
                end
            end

            -- getgc hook
            if getgc then
                for _, v in next, getgc(true) do
                    if type(v) == "table" and rawget(v, "update") and typeof(v.update) == "function" then
                        local original = v.update
                        originalUpdates[v] = original

                        v.update = function(...)
                            if not BobEnabled then
                                -- Bob kapalı ise eski fonksiyonu geri çağır
                                return original(...)
                            end
                            local result = original(...)
                            if typeof(result) == "Vector3" and math.abs(result.Y) < 0.2 then
                                return Vector3.zero
                            end
                            return result
                        end
                    end
                end
            end
        end

        applyNoBob()

        Players.LocalPlayer.CharacterAdded:Connect(function()
            applyNoBob()
        end)

        -- Bildirim
        if getconnections then
            for _, v in getconnections(game.ReplicatedStorage.Remotes.NotificationMessage.OnClientEvent) do
                if v.Function then
                    --v.Function(BobEnabled and "NO BOB AÇILDI" or "NO BOB KAPANDI", 3, 1)
                end
            end
        end
    end
})


TriggerbotSection:slider({name = "Delay (Ammount)", def = 0, max = 60, min = 0, rounding = true, callback = function(Value)
 PuppySettings.TriggerBot.DelayAmount = Value
end})

Bulletset:slider({name = "Bullet Speed", def = 2145, max = 3000, min = 10, rounding = true, callback = function(Value)
     local ammoTypesFolder = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammoTypesFolder then
            for _, item in ipairs(ammoTypesFolder:GetChildren()) do
                if item:IsA("Instance") then
                    item:SetAttribute("MuzzleVelocity", Value)
                end;
            end;
        else
            warn("AmmoTypes folder not found in ReplicatedStorage")
        end;
end})




Bulletset:toggle({name = "No Projectile Drop", def = false, callback = function(isEnabled)
        local ammoTypesFolder = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammoTypesFolder then
            for _, item in ipairs(ammoTypesFolder:GetChildren()) do
                if item:IsA("Instance") then
                    item:SetAttribute("ProjectileDrop", 0)
                end;
            end;
        else
            warn("AmmoTypes folder not found in ReplicatedStorage")
        end;

end})

Bulletset:toggle({name = "No Projectile Drag", def = false, callback = function(isEnabled)
        local ammoTypesFolder = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammoTypesFolder then
            for _, item in ipairs(ammoTypesFolder:GetChildren()) do
                if item:IsA("Instance") then
                    item:SetAttribute("Drag", 0)
                end;
            end;
        else
            warn("AmmoTypes folder not found in ReplicatedStorage")
        end;

end})

Bulletset:toggle({name = "Force Tracer", def = false, callback = function(isEnabled)
 local ammoTypesFolder = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammoTypesFolder then
            for _, item in ipairs(ammoTypesFolder:GetChildren()) do
                if item:IsA("Instance") then
                    item:SetAttribute("Tracer", isEnabled)
                end;
            end;
        else
            warn("AmmoTypes folder not found in ReplicatedStorage")
        end;

end})



-- Anti Aim Section --
--[[ AMainSection:toggle({name = "Anti Aim Enabled", def = false, callback = function(Boolean)
    PuppySettings.AntiAim.Enabled = Boolean
end})

AAMainSection:toggle({name = "Desync AA Enabled", def = false, callback = function(Boolean)
    PuppySettings.AntiAim.Desync = Boolean
end})



AAMainSection:toggle({name = "Legit AA Enabled", def = false, callback = function(Boolean)
    PuppySettings.AntiAim.Legit = Boolean
end})
]]

 plrs = game.Players
localplayer = plrs.LocalPlayer

methodsresolver = {
    velocity = true,
    animations = true,
    slope = true,
    angles = true,
    breaker = true,
    position = true, --requires breaker
}

settingsxxx = {
    enabled = false,
    debug = false
}

resolvecache = {}

game:GetService("RunService").RenderStepped:Connect(function()
    if not settingsxxx.enabled then return end

    for _, v in pairs(plrs:GetPlayers()) do
        if v ~= localplayer and v.Character then
            local char = v.Character
            local humanoid = char:FindFirstChild("Humanoid")
            local hrp = char:FindFirstChild("HumanoidRootPart")

            if methodsresolver.angles then
                local waist = char:FindFirstChild("UpperTorso") and char.UpperTorso:FindFirstChild("Waist")
                if waist then waist.C0 = CFrame.new() end

                local root = char:FindFirstChild("LowerTorso") and char.LowerTorso:FindFirstChild("Root")
                if root then root.C0 = CFrame.new() end
            end

            if humanoid and methodsresolver.slope then
                humanoid.MaxSlopeAngle = 89
            end

            if hrp and methodsresolver.velocity then
                hrp.Velocity = Vector3.zero
                if humanoid then humanoid.AutoRotate = true end
            end

            if hrp and humanoid and methodsresolver.breaker then
                for _, anim in pairs(humanoid:GetPlayingAnimationTracks()) do
                    local id = v.UserId .. "_" .. tostring(anim.Animation)
                    if not resolvecache[id] then
                        resolvecache[id] = {
                            lasttime = anim.TimePosition,
                            stuckframes = 0
                        }
                    else
                        local cache = resolvecache[id]
                        if math.abs(anim.TimePosition - cache.lasttime) < 0.001 then
                            cache.stuckframes += 1
                        else
                            cache.stuckframes = 0
                        end
                        cache.lasttime = anim.TimePosition

                        if cache.stuckframes > 10 then
                        --    warn("[Resolver] Detected desync on", v.Name)
                            anim:Stop()

                            hrp.CFrame = CFrame.new(hrp.Position)
                            if methodsresolver.position then
                                hrp.CFrame = hrp.CFrame + Vector3.new(0,0.035,0)
                            end
                            resolvecache[id] = nil

                            -- Debug Mode: Notify desync detected
                            if settingsxxx.debug then
                                library:Notify("Desync detected: " .. v.Name, 15)
                            end
                        end
                    end
                end
            end

            if humanoid and methodsresolver.animations then
                for _, f in pairs(humanoid:GetPlayingAnimationTracks()) do
                    f:Stop()
                end
            end
        end
    end
end)



AAMainSection:toggle({name = "BackTracking", def = false, callback = function(Boolean)
    PuppySettings.BackTracking.Enabled = Boolean
end})

AAMainSection:toggle({name = "Auto Peak", def = false, callback = function(Boolean)
    PuppySettings.AutoPeak.Enabled = Boolean
end})

AASettings:slider({name = "Desync Velocity", def = 500, max = 1000, min = 0, rounding = true, callback = function(Value)
 PuppySettings.AntiAim.DesyncValues.Velocity = tonumber(Value)
end})

AASettings:slider({name = "Desync CFrame", def = 500, max = 1000, min = 0, rounding = true, callback = function(Value)
 PuppySettings.AntiAim.DesyncValues.CFrame = tonumber(Value)
end})

AASettings:keybind({name = "Legit AA Keybind", def = Enum.KeyCode.Z, callback = function(Key)
 PuppySettings.AntiAim.LegitAAKey = Key
end})

AASettings:keybind({name = "Auto Peak Keybind", def = Enum.KeyCode.N, callback = function(Key)
 PuppySettings.AutoPeak.APKey = Key
end})
local teleportHeight = 60 -- Change this value to adjust how high you want to teleport (in meters)

AASettings:keybind({name = "Teleport Kill Keybind", def = Enum.KeyCode.X, callback = function(Key)
    print("Key pressed: " .. Key.Name)  -- Keybind tetiklendi mi kontrol et

    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    function createFlyingVehicleSeat()
        local seat = Instance.new("VehicleSeat")
        seat.Name = "TempSeat_"..tick()
        seat.CanCollide = false
        seat.Size = Vector3.new(3, 1, 3)
        seat.Transparency = 1
        seat.Massless = true
        seat.Anchored = true
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            seat.CFrame = hrp.CFrame * CFrame.new(0, teleportHeight, -2)
        else
            seat.CFrame = CFrame.new(0, teleportHeight, 0)
        end
        
        seat.Parent = workspace
        local localplayer = game.Players.LocalPlayer
        task.spawn(function()
            task.wait(1)
            if seat and seat.Parent then
                seat:Destroy()
                humanoid.Sit = false
                wait(0.4)
                localplayer.Character.Humanoid.PlatformStand = false
                task.wait(1)
                localplayer.Character.Humanoid.PlatformStand = false
            end
        end)
        
        return seat
    end

    function sitInSeat(seat)
        repeat task.wait() until seat and seat.Parent
        
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = seat.CFrame * CFrame.new(0, -1, 0)
            task.wait(0.1)
            
            humanoid.Sit = true
            task.wait(0.1)
            humanoid.Sit = true
            
            if humanoid.SeatPart == seat then
                hrp.CFrame = seat.CFrame * CFrame.new(0, -0.5, 0)
            end
        end
    end

    local seat = createFlyingVehicleSeat()
    sitInSeat(seat)
    wait(3.5)
end})


AASettings:toggle({name = "Underground Resolver", def = false, callback = function(Boolean)
    settingsxxx.enabled = Boolean
end})



AASettings:slider({name = "Teleport Kill Height Slider", def = 60, max = 200, min = 10, rounding = true, callback = function(Value)
teleportHeight = value
end})


AAMainSection:toggle({name = "Fps Unlocker", def = false, callback = function(Boolean)
    setfpscap(99999999)
end})


AAMainSection:toggle({name = "Server Info", def = true, callback = function(value)
            local player = game.Players.LocalPlayer 
        if player and player:FindFirstChild("PlayerGui") then 
            local serverInfo = player.PlayerGui:FindFirstChild("ServerInfo") 
            if serverInfo then
                serverInfo.Enabled = value 
            else
                warn("ServerInfo GUI not found in PlayerGui") 
            end;
        else
            warn("PlayerGui not found for LocalPlayer") 
        end;
end})


AAMainSection:toggle({name = "Menu Blur", def = true, callback = function(value)
game.Lighting.InventoryBlur.Enabled = value

end})

getgenv().animpos = 2.3
getgenv().underground = -2.6

local enabled = false
local runserv = game:GetService("RunService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local lplr = game:GetService("Players").LocalPlayer
local mouse = lplr:GetMouse()
local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/asset/?id=15609995579"
local danceTrack
local dysenc = {}
local temp = 1
runserv.Heartbeat:Connect(function()
    temp = temp + 1
    if enabled and lplr.Character and lplr.Character.HumanoidRootPart then
        danceTrack.TimePosition = animpos
        dysenc[1] = lplr.Character.HumanoidRootPart.CFrame
        dysenc[2] = lplr.Character.HumanoidRootPart.AssemblyLinearVelocity
        local SpoofThis = lplr.Character.HumanoidRootPart.CFrame
        SpoofThis = SpoofThis * CFrame.Angles(math.rad(97.4), math.rad(-0.8), math.rad(99.0))
        SpoofThis = SpoofThis + Vector3.new(0, getgenv().underground, 0)
        lplr.Character.HumanoidRootPart.CFrame = SpoofThis
        runserv.RenderStepped:Wait()
        if lplr.Character and lplr.Character.HumanoidRootPart then
            lplr.Character.HumanoidRootPart.CFrame = dysenc[1]
            lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = dysenc[2]
        end
    end
end)


AAMainSection:toggle({name = "Moderator Detector UI", def = false, callback = function(value)
createModDetectorGUI(value)

end})
AAMainSection:toggle({name = "Underground", def = false, callback = function(value)

 pcall(function()
            if enabled == false then
                enabled = true
                danceTrack = lplr.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
                danceTrack.Looped = false
                danceTrack:Play(.1, 1, 0)
                replicatedStorage.Remotes.UpdateTilt:FireServer(0/0 or 0)
            elseif enabled then
                enabled = false
                danceTrack:Stop()
                danceTrack:Destroy()
                replicatedStorage.Remotes.UpdateTilt:FireServer(false and 0/0 or 0)
            end
        end)

end})

AAMainSection:toggle({name = "Remove Fall Damage", def = false, callback = function(value)

if value == true then
game.workspace.Gravity = math.huge
else
game.workspace.Gravity = 90
end

end})

--// Visual Sections
VisualMainSection:toggle({name = "ESP Masterswitch", def = false, callback = function(enabled)
     ESP.Enabled = enabled
    ESP.TeamCheck = enabled
end})


VisualMainSection:toggle({name = "Fade Out On Distance", def = false, callback = function(enabled)
 ESP.FadeOut.OnDistance = enabled
end})

VisualMainSection:toggle({name = "Friend Check", def = false, callback = function(enabled)
 ESP.Options.Friendcheck = enabled
end})

VisualMainSection:toggle({name = "Chams", def = false, callback = function(enabled)
ESP.Drawing.Chams.Enabled = enabled
end})



VisualMainSection:toggle({name = "Pulsing Chams", def = false, callback = function(enabled)
ESP.Drawing.Chams.Thermal = enabled
end})

VisualMainSection:toggle({name = "Name ESP", def = false, callback = function(enabled)
 ESP.Drawing.Names.Enabled = enabled
end})

VisualMainSection:toggle({name = "Flags ESP", def = false, callback = function(enabled)
 ESP.Drawing.Flags.Enabled = enabled
end})

VisualMainSection:toggle({name = "Distance ESP", def = false, callback = function(enabled)
ESP.Drawing.Distances.Enabled = enabled
end})
terrain = game:GetService("Workspace").Terrain
originalGrassColor = terrain:GetMaterialColor(Enum.Material.Grass)


SAimSection:dropdown({name = "Silent Aim Part", def = "Head", max = 2, options = {"Head","UpperTorso","HumanoidRootPart"}, callback = function(part)
    silent_aim.part = part
end})

Envioromental:colorpicker({name = "Ambient Color Picker", cpname = "", def = game.Lighting.Ambient, callback = function(color)
    game.Lighting.Ambient = color
end})

terrain = game:GetService("Workspace").Terrain
originalGrassColor = terrain:GetMaterialColor(Enum.Material.Grass)

Envioromental:colorpicker({name = "Grass Color Picker", cpname = "", def = originalGrassColor, callback = function(Value)
        local grassColor = Value

        
        terrain:SetMaterialColor(Enum.Material.Grass, grassColor)

        
        sethiddenproperty(terrain, "Decoration", true) 
end})

Envioromental:colorpicker({
    name = "Bullet Color Picker",
    cpname = "",
    def = Color3.new(144, 175, 127),
    callback = function(color)
        local function changeAllProjectileColorsGradually(selectedColor)
            local delayPerChange = 0.04 -- saniye, istersen 0.005 yap ama abartma

            for _, instance in ipairs(game:GetDescendants()) do
                if instance:GetAttribute("ProjectileColor") then
                    instance:SetAttribute("ProjectileColor", selectedColor)
                    task.wait(delayPerChange) -- keko sistemi kasmıyo artık
                end
            end

            print("Changing Ammo Color: ", selectedColor, " E84F1")
        end

        task.spawn(function()
            changeAllProjectileColorsGradually(color)
        end)
    end
})





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
                    end;
                    highlight.FillColor = ViewModelSettings.Color 
                    highlight.OutlineColor = Color3.new(1, 1, 1) 
                    highlight.OutlineTransparency = ViewModelSettings.HighlightTransparency 
                elseif highlight then
                    highlight:Destroy() 
                end;
            end;
            
            
            if part:IsA("MeshPart") then
                local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
                if surfaceAppearance then
                    surfaceAppearance:Destroy() 
                end;
            end;
        end;
    end;
end;


function customizeArms(viewModel)
    if not viewModel then return end;
    
    
    local wastelandShirt = viewModel:FindFirstChild("WastelandShirt")
    if wastelandShirt then
        wastelandShirt:Destroy()
    end;
    
    
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
            end;
            highlight.FillColor = ViewModelSettings.Color 
            highlight.OutlineColor = Color3.new(1, 1, 1) 
            highlight.OutlineTransparency = 0.5 
        end;
    end;
end;




VisualMainSection2:toggle({name = "Weapons ESP", def = false, callback = function(enabled)
ESP.Drawing.Weapons.Enabled = enabled
end})

VisualMainSection2:toggle({name = "Health Bar ESP", def = false, callback = function(enabled)
 ESP.Drawing.Healthbar.Enabled = enabled
end})

VisualMainSection2:toggle({name = "Boxes ESP", def = false, callback = function(enabled)
ESP.Drawing.Boxes.Full.Enabled = enabled
        ESP.Drawing.Boxes.Corner.Enabled = enabled
end})
--[[
VisualMainSection2:toggle({name = "Boxes Customization", def = false, callback = function(enabled)
    ESP.Drawing.Boxes.Animate = enabled
    ESP.Drawing.Boxes.Gradient = enabled
    ESP.Drawing.Boxes.GradientFill = enabled
    ESP.Drawing.Boxes.Filled.Enabled = enabled
    ESP.Drawing.Boxes.Gradient = enabled
    ESP.Drawing.Boxes.GradientFill = enabled
end})


VisualMainSection2:toggle({name = "Animated Box ESP", def = false, callback = function(enabled)
 ESP.Drawing.Boxes.Animate = enabled
end})
]]
VisualMainSection2:slider({name = "Max Distance Slider", def = 5, max = 1200, min = 1, rounding = true, callback = function(Value)
ESP.MaxDistance = Value
end})

VisualMainSection2:slider({name = "Esp Transparency Slider", def = 50, max = 120, min = 20, rounding = true, callback = function(Value)
ESP.MaxDistance = Value
end})

VisualMainSection2:slider({name = "Rotation Speed Slider", def = 50, max = 500, min = 1, rounding = true, callback = function(Value)
ESP.Drawing.Boxes.RotationSpeed = Value
end})


--corpse esp

local Settingsofhiglight = {
    HighlightColor = Color3.fromRGB(255, 165, 0),
    HighlightTransparency = 0.5,
    enabledCorpseHighlight = false,
    enableDebug = false,
    requiredHumanoid = true,
    enabledHighlightToggle = false
}

function AddHighlight(model)
    if not Settingsofhiglight.enabledHighlightToggle or not Settingsofhiglight.enabledCorpseHighlight then
        if Settingsofhiglight.enableDebug then
            warn("[CorpseESP] Highlight kapalı: " .. model.Name)
        end
        return
    end

    if not model.PrimaryPart then
        model:WaitForChild("Head", 1)
        model.PrimaryPart = model:FindFirstChild("Head") or model:FindFirstChild("Torso")
        if not model.PrimaryPart then
            if Settingsofhiglight.enableDebug then
                warn("[CorpseESP] PrimaryPart yok: " .. model.Name)
            end
            return
        end
    end

    local old = model:FindFirstChildOfClass("Highlight")
    if old then old:Destroy() end

    local highlight = Instance.new("Highlight")
    highlight.Name = "CORPSEEESSSP"
    highlight.Adornee = model.PrimaryPart
    highlight.FillColor = Settingsofhiglight.HighlightColor
    highlight.FillTransparency = Settingsofhiglight.HighlightTransparency
    highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
    highlight.OutlineTransparency = 0.8
    highlight.Parent = model

    if Settingsofhiglight.enableDebug then
        print("[CorpseESP] Highlight eklendi: " .. model.Name)
    end
end

function SetupExistingCorpseHighlights()
    local droppedItems = game.Workspace:WaitForChild("DroppedItems")
    for _, item in ipairs(droppedItems:GetChildren()) do
        if item:IsA("Model") then
            local humanoid = item:FindFirstChildOfClass("Humanoid")
            local hasHumanoid = humanoid ~= nil

            if Settingsofhiglight.requiredHumanoid and hasHumanoid then
                AddHighlight(item)
            elseif not Settingsofhiglight.requiredHumanoid and not hasHumanoid then
                AddHighlight(item)
            end
        end
    end
end

function SetupCorpseListener()
    local droppedItems = game.Workspace:WaitForChild("DroppedItems")
    droppedItems.ChildAdded:Connect(function(child)
        wait(0.1)
        if child:IsA("Model") then
            local humanoid = child:FindFirstChildOfClass("Humanoid")
            local hasHumanoid = humanoid ~= nil

            if Settingsofhiglight.requiredHumanoid and hasHumanoid then
                AddHighlight(child)
            elseif not Settingsofhiglight.requiredHumanoid and not hasHumanoid then
                AddHighlight(child)
            end
        end
    end)
end

task.spawn(function()
    while not game:IsLoaded() do wait() end
    if game.Workspace:FindFirstChild("DroppedItems") then
        SetupExistingCorpseHighlights()
        SetupCorpseListener()
    else
        repeat wait(1) until game.Workspace:FindFirstChild("DroppedItems")
        SetupExistingCorpseHighlights()
        SetupCorpseListener()
    end
end)

-- UI Bağlantıları
CorpseEsp:toggle({
    name = "Corpse Esp",
    def = false,
    callback = function(value)
        Settingsofhiglight.enabledHighlightToggle = value
        Settingsofhiglight.enabledCorpseHighlight = value
    end
})

CorpseEsp:slider({
    name = "Corpse ESP Highlight Transparency",
    def = 0.5,
    min = 0,
    max = 1,
    rounding = true,
    callback = function(val)
        Settingsofhiglight.HighlightTransparency = val
    end
})

CorpseEsp:colorpicker({
    name = "Corpse Esp Color",
    cpname = "",
    def = Settingsofhiglight.HighlightColor,
    callback = function(color)
        Settingsofhiglight.HighlightColor = color
    end
})


players = game:GetService("Players")
player = players.LocalPlayer
camera = workspace.CurrentCamera
botesplegacy = false
updateCoroutine = nil -- Reference for the coroutine

function isNPC(model)
    return model:FindFirstChild("Humanoid") 
       and model:FindFirstChild("HumanoidRootPart") 
       and not players:GetPlayerFromCharacter(model)
end;

fontforbotesp = Enum.Font.Arcade

function createLabel(npc)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "NPCLabel"
    billboardGui.Parent = npc:FindFirstChild("HumanoidRootPart") or npc.PrimaryPart
    billboardGui.Size = UDim2.new(0, 100, 0, 25)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = billboardGui
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Font = fontforbotesp
    textLabel.TextScaled = true
    textLabel.TextStrokeTransparency = 0

    return textLabel
end;

function updateLabel(npc, textLabel)
    local distance = (npc.PrimaryPart.Position - player.Character.PrimaryPart.Position).Magnitude
    textLabel.Text = string.format("%s\n%.1f meters", npc.Name, distance)
end;

function updateNPCLabels()
    for _, npc in ipairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and isNPC(npc) then
            local label = npc:FindFirstChild("HumanoidRootPart"):FindFirstChild("NPCLabel")
            if not label then
                local textLabel = createLabel(npc)
                updateLabel(npc, textLabel)
            else
                updateLabel(npc, label.TextLabel)
            end;
        end;
    end;
end;

function removeNPCLabels()
    for _, npc in ipairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and isNPC(npc) then
            local label = npc:FindFirstChild("HumanoidRootPart"):FindFirstChild("NPCLabel")
            if label then
                label:Destroy() -- Destroy the label
            end;
        end;
    end;
end;

waittimeforbotesp = 1

function toggleNPCLabels()
    botesplegacy = not botesplegacy
    if botesplegacy then
        -- Start the coroutine
        updateCoroutine = coroutine.wrap(function()
            while botesplegacy do
                updateNPCLabels()
task.wait(waittimeforbotesp)  -- Update every 0.5 seconds instead of 0.1 seconds

            end;
        end);
        wait(0.6)
        updateCoroutine() -- Start the coroutine immediately
    else
        -- Stop the coroutine and remove the labels
        removeNPCLabels() -- Clean up the labels
    end;
end;






local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local Camera = game.Workspace.CurrentCamera

local zoomKey = Enum.KeyCode.Z
local isZoomedIn = false
local normalFOV = Camera.FieldOfView
local zoomedFOV = 10
local zoomTweenSpeed = 0.2

local zoomTweenInfo = TweenInfo.new(zoomTweenSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function createZoomTween(fov)
    return TweenService:Create(Camera, zoomTweenInfo, {FieldOfView = fov})
end

UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        local targetFOV = isZoomedIn and normalFOV or zoomedFOV
        createZoomTween(targetFOV):Play()
        isZoomedIn = not isZoomedIn
    end
end)

MiscCamSettings:slider({
    name = "Zoom Slider",
    def = 10,
    min = 1,
    max = 50,
    rounding = true,
    callback = function(val)
        zoomedFOV = val
        if isZoomedIn then
            createZoomTween(zoomedFOV):Play()
        end
    end
})

MiscCamSettings:keybind({
    name = "Zoom Keybind",
    def = Enum.KeyCode.Z,
    callback = function(Key)
        zoomKey = Key
        print('[cb] Keybind clicked!', Key)
    end,
    ChangedCallback = function(newKey)
        zoomKey = newKey
        print('[cb] Keybind changed!', newKey)
    end
})


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

MiscCamSettings:dropdown({name = "Camera Mode", def = "Custom", max = 7, options = {"Attach","Custom","Fixed","Follow","Orbital","Scriptable","Track","Watch"}, callback = function(part)
     game.workspace.Camera.CameraType = part
end})

HitSoundsTab:dropdown({name = "Custom Hit Sounds Sound", def = "Gamesense", max = 9, options = { 'TF2', 'Gamesense', 'Rust', 'Neverlose', 'Bubble', 'Quake', 'Among-Us', 'Ding', 'Minecraft', 'Blackout', 'Osu!' }, callback = function(state)
    local globalhitsounds = HitmarkerSounds[state]
        
        
        if globalhitsounds then
            local SFXDIRECTORY = game.ReplicatedStorage.SFX

            
            SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Helmet.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Headshot.SoundId = globalhitsounds
				
	    SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.Volume = math.huge
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.Volume = math.huge
            SFXDIRECTORY.Hits.HitMarkers.Helmet.Volume = math.huge
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.Volume = math.huge
            SFXDIRECTORY.Hits.HitMarkers.Headshot.Volume = math.huge
        else
            warn("Selected hit sound is not available!")
        end;
end})

HitSoundsTab:toggle({name = "No Gun Sounds", def = false, callback = function(value)
game.ReplicatedStorage.Temp:Destroy()
end})




ItemWeight:toggle({name = "Remove Item Weight", def = false, callback = function(value)
 local localplayer = game.Players.LocalPlayer
local character = localplayer.Character or localplayer.CharacterAdded:Wait()
local rootPart = character and character:FindFirstChild("HumanoidRootPart")

if rootPart then
    rootPart:SetAttribute("MovementModifier", -0.1) -- Change `true` to whatever value you need
end
end})



_____ = "?"





local jesusEnabled = false
local jesusFolder = workspace:FindFirstChild("JesusFolder") or Instance.new("Folder", workspace)
jesusFolder.Name = "JesusFolder"

local function onJesusToggle(enabled)
    jesusEnabled = enabled

    
    if not jesusEnabled then
        for _, v in pairs(jesusFolder:GetChildren()) do
            v:Destroy()
        end;
        return
    end;

    
    while jesusEnabled do
        task.wait(0.1)

        local player = game.Players.LocalPlayer
        local character = player.Character

        if not character then
            continue
        end;

        local head = character:FindFirstChild("Head")
        if not head then continue end;

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
            platform.Position = rayResult.Position + Vector3.new(0, 0.3, 0) 
            platform.Material = Enum.Material.ForceField
            platform.Parent = jesusFolder
        end;
    end;
end;

WaterTab:toggle({name = "Walk On Water", def = false, callback = function(value)

onJesusToggle(value)

end})

WaterTab:colorpicker({name = "Water Color", cpname = "", def =game:GetService("Workspace").Terrain.WaterColor, callback = function(color)
    game:GetService("Workspace").Terrain.WaterColor = color
end})



BotEsp:toggle({name = "Bot Esp", def = false, callback = function(value)
    if _____ == "?" then

        toggleNPCLabels()

    end;
end})

BotEsp:slider({
    name = "Bot Esp Renew Value",
    def = 10,
    min = 2,
    max = 10,
    rounding = true,
    callback = function(val)
        waittimeforbotesp = val
    end
})
----


--// Misc Sections
local TimeTick
TimeTick = hookfunction(wait, function(JumpCooldown)
 if JumpCooldown == 1.5 and (PuppySettings.Misc.CFrameSpeed.Bhop and PuppySettings.Misc.CFrameSpeed.Enabled) or PuppySettings.Misc.Strafe then 
  return TimeTick()
    end
    return TimeTick(JumpCooldown)
end)

local isEnabled883 = false  
local LC = game.Players.LocalPlayer

local function toggleBunnyHop()
    isEnabled883 = not isEnabled883
    print("Bunny Hop is now", isEnabled883 and "enabled" or "disabled")
end;

game:GetService("RunService").RenderStepped:Connect(function()
    if isEnabled883 then
        LC.Character.Humanoid:SetAttribute("JumpCooldown", 0)
    end;
end);

MiscMoveSettings:toggle({name = "Bhop", def = false, callback = function(first)



toggleBunnyHop()


end})

MiscMoveSettings:keybind({name = "CFrame Keybind", def = Enum.KeyCode.V, callback = function(Key)
 PuppySettings.Misc.CFrameSpeed.Keybind = Key
end})

local speedconfig = {
    speedhackEnabled = false,
    speedValue = 19
}

MiscMoveSettings:toggle({
    name = "SpeedHack",
    def = speedconfig.speedhackEnabled,
    callback = function(state)
        speedconfig.speedhackEnabled = state
    end
})

MiscMoveSettings:slider({
    name = "SpeedHack Value",
    def = speedconfig.speedValue,
    min = 1,
    max = 19,
    rounding = true,
    callback = function(val)
        speedconfig.speedValue = val
    end
})

game:GetService("RunService").Heartbeat:Connect(function()
    if speedconfig.speedhackEnabled then
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
            if char.Humanoid.MoveDirection.Magnitude > 0 then
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + (char.Humanoid.MoveDirection * (speedconfig.speedValue/100))
            end
        end
    end
end)
local timeValue = 12 


local function changeTimeOfDay(value)
    Lighting.ClockTime = value
end;



MiscMoveSettings:slider({
    name = "Time Changer",
    def = game.Lighting.ClockTime,
    min = 0,
    max = 24,
    rounding = true,
    callback = function(val)
            timeValue = val 
    changeTimeOfDay(timeValue) 
    end
})
----
game:GetService("RunService").Stepped:Connect(function()
    if Lighting.ClockTime ~= timeValue then
        changeTimeOfDay(timeValue) 
    end;
end);

getgenv().Fly3 = false
getgenv().speed3 = 26


game:GetService("RunService").RenderStepped:Connect(function(dt)
    
    local rootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    rootPart.Velocity = rootPart.Velocity 
    local travelDirection3 = Vector3.new(0, 0, 0)

    if getgenv().Fly3 then
        
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, 1)
        end;
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, -1)
        end;
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            travelDirection3 = travelDirection3 + Vector3.new(-1, 0, 0)
        end;
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            travelDirection3 = travelDirection3 + Vector3.new(1, 0, 0)
        end;
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 1, 0)
        end;
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
            travelDirection3 = travelDirection3 + Vector3.new(0, -1, 0)
        end;

        
        if travelDirection3.Magnitude > 0 then
            
            travelDirection3 = (
                workspace.CurrentCamera.CFrame.LookVector * travelDirection3.z +
                workspace.CurrentCamera.CFrame.RightVector * travelDirection3.x +
                workspace.CurrentCamera.CFrame.UpVector * travelDirection3.y
            ).unit

            
            rootPart.Velocity = travelDirection3 * getgenv().speed3
        end;
    end;
end);

MiscMoveSettings:toggle({name = "Fly", def = false, callback = function(state3)
getgenv().Fly3 = state3
end})
MiscMoveSettings:slider({name = "Fly Speed", def = 30, max = 35, min = -35, rounding = true, callback = function(first)
   getgenv().speed3 = first
end})



MiscMoveSettings:toggle({name = "Antislow", def = false, callback = function(Boolean)
 PuppySettings.Misc.Antislow = Boolean 
end})

-- MiscToolSettings

-- Misc Char
--[[
MiscCharSettings:button({name = "Nil Char", callback = function()
 NilBody()
end})
--]]

MiscCharSettings:toggle({name = "Third Person", def = false, callback = function(isEnabled)
 if isEnabled then
            print("called")
            
            loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/thirdpe.lua"))()
        else
        print("called2")
            
            loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/thirdsianle.lua"))()
        end;
end})

MiscCharSettings:toggle({name = "Instant Respawn", def = false, callback = function(isEnabled)



end})


MiscNorSettings:toggle({name = "AutoClicker", def = false, callback = function(Boolean)
 PuppySettings.AutoClicker.Enabled = Boolean 
end})




MiscNorSettings:keybind({name = "AutoClicker Keybind", def = Enum.KeyCode.B, callback = function(Key)
 PuppySettings.AutoClicker.Keybind = Key
end})

MiscNorSettings:toggle({name = "No Grass", def = false, callback = function(first)
 sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
end})

MiscNorSettings:toggle({name = "Remove Trees", def = false, callback = function(first)
for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
        if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
            v:Destroy()
        end;
    end;
    workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
        if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
            inst:Destroy()
        end;
    end);
end})


MiscNorSettings:button({name = "No Fog", callback = function()

    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
 end;

end})

MiscNorSettings:toggle({name = "Remove Clouds", def = false, callback = function(isEnabled)

        terrain = game:GetService("Workspace").Terrain

        
        if isEnabled and terrain and terrain.Clouds then
            terrain.Clouds.Density = 0
        else
            
            terrain.Clouds.Density = 1
        end;

end})

AimingTab:openpage()

-- Init --

--// Lock Normal
getgenv().AimlockKey = "q"
getgenv().AimRadius = 30 
getgenv().ThirdPerson = true 
getgenv().FirstPerson = true
getgenv().PredictionVelocity = 11

local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
local MousePressed, CanNotify = false, false;
local AimlockTarget;
local OldPre;

getgenv().GetNearestTarget = function()
    local players = {}
    local PLAYER_HOLD  = {}
    local DISTANCES = {}
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= Client then
            table.insert(players, v)
        end
    end
    for i, v in pairs(players) do
        if v.Character ~= nil then
            local AIM = v.Character:FindFirstChild("Head")
                local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                local DIFF = math.floor((POS - AIM.Position).magnitude)
                PLAYER_HOLD[v.Name .. i] = {}
                PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                PLAYER_HOLD[v.Name .. i].plr = v
                PLAYER_HOLD[v.Name .. i].diff = DIFF
                table.insert(DISTANCES, DIFF)
        end
    end
    
    if unpack(DISTANCES) == nil then
        return nil
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > getgenv().AimRadius then
        return nil
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return nil
end

Mouse.KeyDown:Connect(function(a)
    if not (Uis:GetFocusedTextBox()) then 
        if a == AimlockKey and AimlockTarget == nil then
            pcall(function()
                if MousePressed ~= true then MousePressed = true end 
                local Target;Target = GetNearestTarget()
                if Target ~= nil then 
                    AimlockTarget = Target
                end
            end)
        elseif a == AimlockKey and AimlockTarget ~= nil then
            if AimlockTarget ~= nil then AimlockTarget = nil end
            if MousePressed ~= false then 
                MousePressed = false 
            end
        end
    end
end)

RService.RenderStepped:Connect(function()
 if PuppySettings.Aimbot.Enabled then
    if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
        if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
            CanNotify = true 
        else 
            CanNotify = false 
        end
    end
    if PuppySettings.Aimbot.Enabled == true and MousePressed == true then 
        if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(PuppySettings.Aimbot.Hitboxes) then 
            if getgenv().FirstPerson == true then
                if CanNotify == true then
                    if PuppySettings.Aimbot.Prediction == true then
                        if PuppySettings.AimbotSettings.Smoothness == true then
                            --// The part we're going to lerp/smoothen \\--
                            local Main = CF(Camera.CFrame.p, AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Position + AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Velocity/PuppySettings.AimbotSettings.PredictionVelocity)
                            
                            --// Making it work \\--
                            Camera.CFrame = Camera.CFrame:Lerp(Main, PuppySettings.AimbotSettings.SmoothnessAmmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                        else
                            Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Position + AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Velocity/PuppySettings.AimbotSettings.PredictionVelocity)
                        end
                    elseif PuppySettings.Aimbot.Prediction == false then 
                        if PuppySettings.AimbotSettings.Smoothness == true then
                            local Main = CF(Camera.CFrame.p, AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Position)
                            Camera.CFrame = Camera.CFrame:Lerp(Main,  PuppySettings.AimbotSettings.SmoothnessAmmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                        else
                            Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[PuppySettings.Aimbot.Hitboxes].Position)
                        end
                    end
                end
            end
        end
    end
end 
end)








uiSettings1:toggle({name = "Performance Saver", def = true, callback = function(Boolean)
  
end})

uiSettings1:colorpicker({name = "Accent Color", cpname = "", def = Color3.RGB, callback = function(color)
    collorofui = color
end})

function NoSpace(Data)
    return Data:gsub("%s+", "") or Data
end

--// Auto Peak
local APEF = Instance.new("Folder")
APEF.Parent = game.Workspace
APEF.Name = "APEF"
getgenv().oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
getgenv().APE = false
game:service('UserInputService').InputBegan:connect(function(Key, IsChat)
 if IsChat then return end
 if Key.KeyCode == PuppySettings.AutoPeak.APKey and PuppySettings.AutoPeak.Enabled == true then
  if getgenv().APE == false then
   getgenv().APE = true
   local APEPart = Instance.new("Part")
   APEPart.Parent = APEF
   APEPart.Name = "backTP"
   APEPart.Anchored = true
   APEPart.CanCollide = false
   APEPart.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
   APEPart.Orientation = game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation
   APEPart.Size = Vector3.new(1, 1, 1)
   APEPart.Transparency = 0.7
   APEPart.BrickColor = BrickColor.new("Institutional white")
   APEPart.Material = "SmoothPlastic"
   getgenv().oldc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  elseif getgenv().APE == true then
   getgenv().APE = false
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().oldc
   game.Workspace.APEF.backTP:Destroy()
  end
 end
end)

--// Esp Bones

--// BackTrack
local BTF = Instance.new("Folder")
BTF.Parent = game.Workspace
BTF.Name = "BTF"

--//SFOV
local SilentAimFOV = Drawing.new("Circle")
SilentAimFOV.Thickness = 2

--//Auto Clicker
getgenv().Clicking = false
game:service('UserInputService').InputBegan:connect(function(Key, IsChat)
 if IsChat then return end 
 if Key.KeyCode == PuppySettings.AutoClicker.Keybind and PuppySettings.AutoClicker.Enabled == true then
  getgenv().Clicking = not getgenv().Clicking
 end
end)

--// Legit AA
getgenv().LegitAA = false
getgenv().CFSpeed = false

game:service('UserInputService').InputBegan:connect(function(Key, IsChat)
 if IsChat then return end
 if Key.KeyCode == PuppySettings.AntiAim.LegitAAKey and PuppySettings.AntiAim.Legit == true and PuppySettings.AntiAim.Enabled == true then
  getgenv().LegitAA = not getgenv().LegitAA
 end
end)

game:service('UserInputService').InputBegan:connect(function(Key, IsChat)
 if IsChat then return end
 if Key.KeyCode == PuppySettings.Misc.CFrameSpeed.Keybind and PuppySettings.Misc.CFrameSpeed.Enabled == true then
  getgenv().CFSpeed = not getgenv().CFSpeed
 end
end)
    
function Find(Data)
   getgenv().Target = nil
    for i, v in next, Players:GetPlayers() do
        if v.Name ~= LocalPlayer.Name and v.Name:lower():match('^'.. NoSpace(Data):lower()) then
            getgenv().Target = v.Name
        end
    end
    
    return getgenv().Target
end

function IsNetwork(GetPlayer)
 return GetPlayer and GetPlayer.Character and GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and GetPlayer.Character:FindFirstChild("Head") ~= nil and true or false
end

function Knocked(GetPlayer)
    if IsNetwork(GetPlayer) then
        return GetPlayer.Character.BodyEffects["K.O"].Value and true or false
    end
    return false
end

function Grabbing(GetPlayer)
    if IsNetwork(GetPlayer) then
        return GetPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") and true or false
    end
    return false
end

function Alive(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end

function CameraCheck(GetPosition, IgnoredList)
    if IsNetwork(LocalPlayer) then
        return #CurrentCamera:GetPartsObscuringTarget({LocalPlayer.Character.Head.Position, GetPosition}, IgnoredList) == 0 and true or false
    end
end

function WallCheck(OriginPart, Part)
    if IsNetwork(LocalPlayer) then
        local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
        local Parts = CurrentCamera:GetPartsObscuringTarget(
            {
                OriginPart.Position, 
                Part.Position
            },
            IgnoreList
        )
    
        for i, v in pairs(Parts) do
            if v.Transparency >= 0.3 then
                PuppyStorage.Instance[#PuppyStorage.Instance + 1] = v
            end
    
            if v.Material == Enum.Material.Glass then
                PuppyStorage.Instance[#PuppyStorage.Instance + 1] = v
            end
        end
    
        return #Parts == 0
    end
    return true
end

function NilBody()
    if Alive(LocalPlayer) then
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
                if v.Name ~= "HumanoidRootPart" then
                    v:Destroy()
                end
            end
        end
    end
end

function NearestDistance()
    local Target = nil
    local Distance = math.huge
    for i, v in next, Players:GetPlayers() do
        if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
            local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > DistanceFromPlayer then
                if (not PuppySettings.Whitelist.FriendsWhitelist or not table.find(PuppySettings.Whitelist.Friends, v.Name)) and (not PuppySettings.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not PuppySettings.Whitelist.Enabled or not table.find(PuppySettings.Whitelist.Players, v.Name)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(v.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                    Target = v
                    Distance = DistanceFromPlayer
                end
            end
        end
    end

    return Target, Distance
end

function NearestMouse()
    local Target = nil
    local Distance = math.huge
    for i, v in next, Players:GetPlayers() do
        if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
            local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            if RootVisible and Distance > DistanceFromMouse then
                if (not PuppySettings.Whitelist.FriendsWhitelist or not table.find(PuppySettings.Whitelist.Friends, v.Name)) and (not PuppySettings.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not PuppySettings.Whitelist.Enabled or not table.find(PuppySettings.Whitelist.Players, v.Name)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(v.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                    Target = v
                    Distance = DistanceFromMouse
                end
            end
        end
    end

    return Target, Distance
end

function NearestType(Type)
    if Type == "Distance" then
        return NearestDistance()
    elseif Type == "Mouse" then
        return NearestMouse()
    end
end

function ChanceTable(Table)
    local Chance = 0
    for i, v in pairs(Table) do
        Chance = Chance + v
    end
    Chance = math.random(0, Chance)
    for i, v in pairs(Table) do
        Chance = Chance - v
        if Chance <= 0 then
            return i
        end
    end 
end

function RandomTable(Table)
    local Values = 0
    for i, v in pairs(Table) do
        Values = i
    end
    
    return Table[math.random(1, Values)]
end

local Plr
local Pos
local enabled = false
local placemarker = Instance.new("Part", game.Workspace)

function makemarker(Parent, Adornee, Color, Size, Size2)
    local e = Instance.new("BillboardGui", Parent)
    e.Name = "PP"
    e.Adornee = Adornee
    e.Size = UDim2.new(Size, Size2, Size, Size2)
    e.AlwaysOnTop = true
    local a = Instance.new("Frame", e)
    a.Size = UDim2.new(1, 0, 1, 0)
    a.Transparency = 0
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color
    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 50)
    return(e)
end

spawn(function()
    placemarker.Anchored = true
    placemarker.CanCollide = false
    placemarker.Size = Vector3.new(8, 8, 8)
    placemarker.Transparency = 0.79
    makemarker(placemarker, placemarker, PuppySettings.SilentAim.DOTColor, 0.40, 0)
end)    

getgenv().islocked = false
Mouse.KeyDown:connect(function(key)
    if key:lower() == getgenv().SilentKeyy then 
        if getgenv().islocked == false and PuppySettings.SilentAim.Enabled and PuppySettings.SilentAim.UseFOV == false then
            if enabled == true then
            else
                enabled = true
            end
            getgenv().islocked = true
            if PuppySettings.SilentAim.UseNearestDistance then
    local NearestTarget, NearestPos = NearestDistance()
    if NearestTarget and (not PuppySettings.SilentAim.UseFOV or PuppySettings.FOV.SilentAimSize > NearestPos) and (not PuppySettings.SilentAim.KnockedCheck or not Knocked(NearestTarget)) and (not PuppySettings.SilentAim.grabbedCheck or not Grabbed(NearestTarget)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                Plr = NearestDistance()
                Pos = NearestPos
    end
            else
    local NearestTarget, NearestPos = NearestMouse()
    if NearestTarget and (not PuppySettings.SilentAim.UseFOV or PuppySettings.FOV.SilentAimSize > NearestPos) and (not PuppySettings.SilentAim.KnockedCheck or not Knocked(NearestTarget)) and (not PuppySettings.SilentAim.grabbedCheck or not Grabbed(NearestTarget)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                Plr = NearestMouse()
                Pos = NearestPos
    end
            end
            if PuppySettings.SilentAim.NotificationMode and Plr ~= game.Players.LocalPlayer then
                Notify({
                    Title = "Puppyware",
                    Description = "Locked Onto: "..Plr.DisplayName,
                    Duration = 3
                })
            end
        elseif getgenv().islocked == true and PuppySettings.SilentAim.Enabled then
            getgenv().islocked = false
            enabled = false
   Plr = game.Players.LocalPlayer
            if PuppySettings.SilentAim.NotificationMode then
                Notify({
                    Title = "Puppyware",
                    Description = "Unlocked",
                    Duration = 3
                })
            end
        end
    end
end)

--Window:graphcheck()

--//Random Hitbox
local PuppyHitboxes = {
 "Head","UpperTorso","LowerTorso"
}

game:GetService("RunService").Heartbeat:Connect(function()
 if PuppySettings.AntiAim.Enabled == true and PuppySettings.AntiAim.Desync == true then
  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * PuppySettings.AntiAim.DesyncValues.Velocity
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(PuppySettings.AntiAim.DesyncValues.CFrame), 0)
 end -- Anti Aim Desync
 if PuppySettings.Misc.Antislow then
     getgenv().DeletePart = game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or player.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or player.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
  if getgenv().DeletePart then getgenv().DeletePart:Destroy() end
  if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false end
 end -- Anti Slow
 if PuppySettings.Misc.CFrameSpeed.Bhop and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall then
  LocalPlayer.Character.Humanoid:ChangeState("Jumping")
 end -- Bhop
 if PuppySettings.Misc.Strafe then
  if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
   LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection / 3.1)
  end
 end -- Strafe
 if PuppySettings.SilentAimSettings.PingPred1 and PuppySettings.SilentAim.Enabled then
  getgenv().ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
  getgenv().Value = tostring(getgenv().ping)
  getgenv().pingValue = getgenv().Value:split(" ")
  local PingNumber = getgenv().pingValue[1]
  getgenv().PredictionAmmount = PingNumber / 1000 + getgenv().Prediction
  print(getgenv().PredictionAmmount)
 end -- Ping Prediction 1
 if PuppySettings.SilentAimSettings.PingPred2 and not PuppySettings.SilentAimSettings.PingPred1 and PuppySettings.SilentAim.Enabled then
  pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
  split = string.split(pingvalue,'(')
  ping = tonumber(split[1])
    if ping < 130 then
     PredictionValue = 0.151
    elseif ping < 125 then
     PredictionValue = 0.149
    elseif ping < 110 then
     PredictionValue = 0.146
    elseif ping < 105 then
     PredictionValue = 0.138
    elseif ping < 90 then
     PredictionValue = 0.136
    elseif ping < 80 then
     PredictionValue = 0.134
    elseif ping < 70 then
     PredictionValue = 0.131
    elseif ping < 60 then
     PredictionValue = 0.1229
    elseif ping < 50 then
     PredictionValue = 0.1225
    elseif ping < 40 then
     PredictionValue = 0.1256
    end
 end -- Ping Prediction 2
 if PuppySettings.SilentAim.ShowFOV then
  SilentAimFOV.Visible = true
        SilentAimFOV.Radius = PuppySettings.FOV.SilentAimSize
        SilentAimFOV.Filled = PuppySettings.FOV.FOVFilled
        SilentAimFOV.Transparency = PuppySettings.FOV.Transparency
        SilentAimFOV.NumSides = 100
        SilentAimFOV.Thickness = PuppySettings.FOV.Thickness
        SilentAimFOV.Color = PuppySettings.SilentAim.FOVColor
        SilentAimFOV.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
    else
        SilentAimFOV.Visible = false
    end -- fov
 if PuppySettings.TriggerBot.Enabled then
  for i, v in next, Players:GetPlayers() do 
   if Alive(v) then 
    if Mouse.Target:IsDescendantOf(v.Character) and PuppySettings.TriggerBot.Enabled == true then 
     mouse1press()
     wait()
     mouse1release()
     wait(PuppySettings.TriggerBot.DelayAmount)
    end 
   end
  end
 end -- tb
    if PuppySettings.SilentAim.UseFOV == true and PuppySettings.SilentAim.Enabled then
        wait()
        enabled = true
        if PuppySettings.SilentAim.UseNearestDistance then
            local NearestTarget, NearestPos = NearestDistance()
            if NearestTarget and (not PuppySettings.SilentAim.UseFOV or PuppySettings.FOV.SilentAimSize > NearestPos) and (not PuppySettings.SilentAim.KnockedCheck or not Knocked(NearestTarget)) and (not PuppySettings.SilentAim.grabbedCheck or not Grabbed(NearestTarget)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                Plr = NearestDistance()
                Pos = NearestPos
            end
        else
            local NearestTarget, NearestPos = NearestMouse()
            if NearestTarget and (not PuppySettings.SilentAim.UseFOV or PuppySettings.FOV.SilentAimSize > NearestPos) and (not PuppySettings.SilentAim.KnockedCheck or not Knocked(NearestTarget)) and (not PuppySettings.SilentAim.grabbedCheck or not Grabbed(NearestTarget)) and (not PuppySettings.SilentAim.WallCheck or WallCheck(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                Plr = NearestMouse()
                Pos = NearestPos
            end
        end
    end -- use fov 
    if PuppySettings.SilentAim.Enabled and enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") and Plr ~= game.Players.LocalPlayer and PuppySettings.SilentAim.ShowHitbox then
        if PuppySettings.SilentAim.RandomHitbox then
            placemarker.CFrame = CFrame.new(Plr.Character[RandomTable(PuppyHitboxes)].Position + (Plr.Character[RandomTable(PuppyHitboxes)].Velocity * PuppySettings.SilentAimSettings.MovementPredictionAmount))
  else
            placemarker.CFrame = CFrame.new(Plr.Character[PuppySettings.SilentAim.Hitboxes].Position + (Plr.Character[PuppySettings.SilentAim.Hitboxes].Velocity * PuppySettings.SilentAimSettings.MovementPredictionAmount))
  end
    else
        placemarker.CFrame = CFrame.new(0, 9999, 0)
    end -- hitbox / dot
    if getgenv().LegitAA then
        if PuppySettings.AntiAim.FPSUnlocked == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * -0.3
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * -0.5
        end
    end -- legit aa
    if getgenv().CFSpeed then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * PuppySettings.Misc.CFrameSpeed.Speed
    end -- cfspeed
    if getgenv().Clicking then
        mouse1click() 
        wait(0.001)
    end -- auto clciker
end)

--==[ NEXIFY SECURE CORE ]==--
local FOLDER_ID = "Nexifyfunctions"
local NEXIFY = Instance.new("Folder")
NEXIFY.Name = FOLDER_ID
NEXIFY.Parent = workspace

local assets = {
	_A1 = Instance.new("RemoteEvent"),
	_B2 = Instance.new("RemoteEvent"),
	_C3 = Instance.new("RemoteFunction"),
	_D4 = Instance.new("RemoteFunction"),
	_E5 = Instance.new("Script"),
	_F6 = Instance.new("BoolValue"),
	_G7 = Instance.new("Folder"),
}

assets._A1.Name = " ? YQ    \18 Q   "
assets._B2.Name = "!5 YQ   \18 5Q    Q  "
assets._C3.Name = "CallbackType"
assets._D4.Name = "XCallback"
assets._E5.Name = "System.Driver"
assets._F6.Name = "!!DONT TOUCH ANYTHING HERE!!"
assets._G7.Name = "DV-1"

local sourceofscripttt=[[

    return require(game.ReplicatedStorage.Modules.FPS)



        --27.43
  --      DR-A

    --    NEXIFY V3
 --       DEV - 4551E
   --     TYPECHECK=pass

    --    NEXIFY DEVELOPMENT TEAM


]]

--==[ ASSET DEPLOYMENT ]==--
assets._A1.Parent = NEXIFY
assets._B2.Parent = NEXIFY
assets._C3.Parent = NEXIFY
assets._F6.Parent = NEXIFY
assets._D4.Parent = assets._G7
assets._E5.Parent = assets._G7
assets._G7.Parent = NEXIFY

--==[ INTEGRITY WATCHDOG ]==--
task.spawn(function()
	while true do
		task.wait(0.27 + math.random() * 0.05)

		if math.random() > 0.75 then
			assets._A1.Name = " ? YQ    \18 Q   "
			assets._B2.Name = "!5 YQ   \18 5Q    Q  "
			assets._F6.Name = "!DONT TOUCH ANYTHING HERE!"
		else
			assets._A1.Name = "!5 YQ   \18 5Q    Q  "
			assets._B2.Name = " ? YQ  \18  \18 Q   "
			assets._F6.Name = "!!!DONT TOUCH ANYTHING HERE!!!"
		end

		if not NEXIFY:IsDescendantOf(workspace) or not assets._A1:IsDescendantOf(NEXIFY) or not assets._B2:IsDescendantOf(NEXIFY) then
			local plr = game:GetService("Players").LocalPlayer
			if plr then
				setfpscap(1)
				task.wait(2.2)
				plr:Kick("Nexify Function Tampering Detected")
				setfpscap(999999)
			end
			break
		end
	end
end)





                Notify({
                    Title = "Loaded",
                    Description = "Loaded Nexify V3 For "..identifyexecutor(),
                    Duration = 3
                })

                task.wait(3)
       --         coroutine.wrap(changeRemoteNames)
                                Notify({
                    Title = "[ NEXIFY FUNCTIONS ]",
                    Description = "Created Nexify Functions In Workspace. \n Do Not Attempt To Remove Them!",
                    Duration = math.random(7,13)
                })
                task.wait(3.5)
                 statusFolder = game.ReplicatedStorage:WaitForChild("ServerStatus")
local versionAttr = statusFolder:GetAttribute("Version")

function createfakesys()
local folderName = "nexifyv3"
if not isfolder(folderName) then
    makefolder(folderName)
end
local filePath = folderName .. "/nexify.cfg"
local textss = [[
nexify.sys

[INFO]
Version=3.2.1
Author=Unkown
Date=2025-05-02

[CONFIG]
EnableDebug=true
MaxConnections=100

[KEYS]
EncryptionKey=4e7f4f3c9b2d1f034c6f5b087a7f1d8c

[LOG]
LastAction=Executed on 2025-05-02
Status=Active
]]
writefile(filePath, textss)
end

if versionAttr then
	statusFolder:SetAttribute("Version", versionAttr .. " | Injected Nexify ✅")
else
	statusFolder:SetAttribute("Version", "Injected Nexify ✅")
end
--[[
wm:update({"Nexify V3.2 | "..identifyexecutor().." | Advancaded Version"})
wm:updateside("topright")
wm:toggle(true)
wait(1)
]]
                                Notify({
                    Title = "[ NEXIFY ]",
                    Description = "Injected Nexify",
                    Duration = math.random(10,15)
                })
                createfakesys()
loadstring(game:HttpGet("https://pastebin.com/raw/KQt4Xque"))()
wait(1)
                                Notify({
                    Title = "[ NEXIFY ]",
                    Description = "Attempt To Start Watermark Core",
                    Duration = math.random(1)
                })


                                            Notify({
                    Title = "[ NEXIFY ]",
                    Description = identifyexecutor(),
                    Duration = math.random(2)
                })


        
