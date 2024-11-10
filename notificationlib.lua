  ---// Variables
 local Camera = game:GetService("Workspace").Camera
 local RunService = game:GetService("RunService")
 local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
 local InputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 
 
  local library = {
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
  -- Menu/UI Creation
 local menu = game:GetObjects("rbxassetid://17090554797")[1] 
 local tabholder = menu.bg.bg.bg.bg.bg.bg.main.group
 local tabviewer = menu.bg.bg.bg.bg.bg.bg.tabbuttons
 
     function library:Create(Class, Properties)
 if library.Enabled == false then return end;
 local _Instance = Class;
 if type(Class) == 'string' then _Instance = Instance.new(Class); end;
 for Property, Value in next, Properties do _Instance[Property] = Value; end;
 return _Instance;
 end;
  local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end)
 local ScreenGui = Instance.new('ScreenGui')
 ProtectGui(ScreenGui)
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
 ScreenGui.Parent = game.CoreGui
 ScreenGui.Name = "huh_menu"
 menu.bg.pre.Text = ""
 menu.bg.Position = UDim2.new(0.5,-menu.bg.Size.X.Offset/2,0.5,-menu.bg.Size.Y.Offset/2)


 local keynames = {
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
    local Idx = #library.Registry + 3
    local Data = {Instance = Instance;Properties = Properties;Idx = Idx}
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
--library:Notify("Hello From Nexify", 10)
