
local version = "0.30 B-X ALPHA"
warn("LIB VERSION: "  ..version)
--[[local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 50
blurEffect.Parent = game:GetService("Lighting")
]]
local mouseLockEnabled = false
local mouseLockConnection = nil
local library = {}
local pages = {}
local esppreviews = {}
local sections = {}
local multisections = {}
local mssections = {}
local toggles = {}
local buttons = {}
local sliders = {}
local dropdowns = {}
local multiboxs = {}
local buttonboxs = {}
local textboxs = {}
local keybinds = {}
local colorpickers = {}
local configloaders = {}
local watermarks = {}
local loaders = {}
local utility = {}

local check_exploit = (syn and "Synapse") or (KRNL_LOADED and "Krnl") or (isourclosure and "ScriptWare") or nil
local plrs = game:GetService("Players")
local cre = game:GetService("CoreGui")
local rs = game:GetService("RunService")
local ts = game:GetService("TweenService") 
local uis = game:GetService("UserInputService") 
local hs = game:GetService("HttpService")
local ws = game:GetService("Workspace")
local plr = plrs.LocalPlayer
local cam = ws.CurrentCamera

library.__index = library
pages.__index = pages
esppreviews.__index = esppreviews
sections.__index = sections
multisections.__index = multisections
mssections.__index = mssections
toggles.__index = toggles
buttons.__index = buttons
sliders.__index = sliders
dropdowns.__index = dropdowns
multiboxs.__index = multiboxs
buttonboxs.__index = buttonboxs
textboxs.__index = textboxs
keybinds.__index = keybinds
colorpickers.__index = colorpickers
configloaders.__index = configloaders
watermarks.__index = watermarks
loaders.__index = loaders

utility.new = function(instance,properties) 
	local ins = Instance.new(instance)
	for property,value in pairs(properties) do
		ins[property] = value
	end
	return ins
end

utility.dragify = function(ins,touse)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		touse:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.1,true)
	end

	ins.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = touse.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	ins.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

utility.tweenColor = function(object, property, color, duration)
    duration = duration or 0.2
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    ts:Create(object, tweenInfo, {[property] = color}):Play()
end

utility.tweenTransparency = function(object, duration, transparency)
    duration = duration or 0.5
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    game:GetService("TweenService"):Create(object, tweenInfo, {BackgroundTransparency = transparency, ImageTransparency = transparency, TextTransparency = transparency}):Play()
    for _, child in pairs(object:GetDescendants()) do
        if child:IsA("GuiObject") then
            game:GetService("TweenService"):Create(child, tweenInfo, {BackgroundTransparency = transparency, ImageTransparency = transparency, TextTransparency = transparency}):Play()
        end
    end
end

utility.getFullPath = function(folder)
    if folder:sub(-1) ~= "/" and folder:sub(-1) ~= "\\" then
        folder = folder .. "/"
    end
    return folder
end

utility.round = function(n,d)
	return tonumber(string.format("%."..(d or 0).."f",n))
end

utility.zigzag = function(X)
	return math.acos(math.cos(X*math.pi))/math.pi
end

utility.lockMouse = function(state)
    if state then
        if not mouseLockEnabled then
            mouseLockEnabled = true
            if mouseLockConnection then
                mouseLockConnection:Disconnect()
            end
            mouseLockConnection = game:GetService("RunService").RenderStepped:Connect(function()
                if mouseLockEnabled then
                    game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
                end
            end)
        end
    else
        if mouseLockEnabled then
            mouseLockEnabled = false
            if mouseLockConnection then
                mouseLockConnection:Disconnect()
                mouseLockConnection = nil
            end
            game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
        end
    end
end

utility.capatalize = function(s)
	if string.match(s, "^F%d+$") then
		return s
	end
	
	local l = ""
	for v in s:gmatch('%u') do
		l = l..v
	end
	return l
end

utility.splitenum = function(enum)
	local s = tostring(enum):split(".")
	return s[#s]
end

utility.from_hex = function(h)
	local r,g,b = string.match(h,"^#?(%w%w)(%w%w)(%w%w)$")
	return Color3.fromRGB(tonumber(r,16), tonumber(g,16), tonumber(b,16))
end

utility.to_hex = function(c)
	return string.format("#%02X%02X%02X",c.R *255,c.G *255,c.B *255)
end

utility.removespaces = function(s)
   return s:gsub(" ","")
end

function library:new(props)
	local textsize = props.textsize or props.TextSize or props.textSize or props.Textsize or 12
	local font = props.font or props.Font or "RobotoMono"
	local name = props.name or props.Name or props.UiName or props.Uiname or props.uiName or props.username or props.Username or props.UserName or props.userName or "new ui"
	local color = props.color or props.Color or props.mainColor or props.maincolor or props.MainColor or props.Maincolor or props.Accent or props.accent or Color3.fromRGB(225, 58, 81)
	
	local window = {}
	
	local screen = utility.new(
		"ScreenGui",
		{
			Name = tostring(math.random(0,999999))..tostring(math.random(0,999999)),
			DisplayOrder = 9999,
			ResetOnSpawn = false,
			ZIndexBehavior = "Global",
			Parent = cre
		}
	)
	
        if (check_exploit == "Synapse" and syn.request) then
	syn.protect_gui(screen)
        end
	
	local outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = color,
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderSizePixel = 1,
			Size = UDim2.new(0,650,0,706),

			Position = UDim2.new(0.5,0,0.5,0),
			Parent = screen
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderSizePixel = 1,
			Size = UDim2.new(1,-4,1,-4),
			Position = UDim2.new(0.5,0,0.5,0),
			Parent = outline
		}
	)
	
	local indent = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0.5,0,0.5,0),
			Parent = outline2
		}
	)
	
	local main = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,1),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,-10,1,-25),
			Position = UDim2.new(0.5,0,1,-5),
			Parent = outline2
		}
	)
	
	local title = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0.5,0,0,0),
			Parent = outline2
		}
	)
	
	local outline3 = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0.5,0,0.5,0),
			Parent = main
		}
	)
	
	local titletext = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,1,0),
			Position = UDim2.new(0.5,0,0,0),
			Font = font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextXAlignment = "Left",
			TextSize = textsize,
			TextStrokeTransparency = 0,
			Parent = title
		}
	)
	
	local holder = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-6,1,-6),
			Position = UDim2.new(0.5,0,0.5,0),
			Parent = main
		}
	)
	
	local holder = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-6,1,-6),
			Position = UDim2.new(0.5,0,0.5,0),
			Parent = main
		}
	)
	
	local tabs = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,1),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,-20),
			Position = UDim2.new(0.5,0,1,0),
			Parent = holder
		}
	)
	
	local tabsbuttons = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,21),
			Position = UDim2.new(0.5,0,0,0),
			ZIndex = 2,
			Parent = holder
		}
	)
	
	local outline4 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = tabs
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Horizontal",
			Padding = UDim.new(0,2),
			Parent = tabsbuttons
		}
	)
	
	utility.dragify(title,outline)
	
	window = {
		["screen"] = screen,
		["holder"] = holder,
		["labels"] = {},
		["tabs"] = outline4,
		["tabsbuttons"] = tabsbuttons,
		["outline"] = outline,
		["pages"] = {},
		["pointers"] = {},
		["dropdowns"] = {},
		["multiboxes"] = {},
		["buttonboxs"] = {},
		["colorpickers"] = {},
		["x"] = true,
		["y"] = true,
		["key"] = Enum.KeyCode.RightShift,
		["textsize"] = textsize,
		["font"] = font,
		["theme"] = {
			["accent"] = color
		},
		["themeitems"] = {
			["accent"] = {
				["BackgroundColor3"] = {},
				["BorderColor3"] = {},
				["TextColor3"] = {}
			}
		}
	}
	
	table.insert(window.themeitems["accent"]["BackgroundColor3"],outline)
	
	local toggled = true
	local cooldown = false
	local saved = UDim2.new(0,0,0,0)
	
	uis.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.Keyboard then
			if Input.KeyCode == window.key then
				if cooldown == false then
					if toggled then
						cooldown = true
						toggled = not toggled
						saved = outline.Position
						local xx,yy = 0,0
						local xxx,yyy = 0,0
						
						if (outline.AbsolutePosition.X+(outline.AbsoluteSize.X/2)) < (cam.ViewportSize.X/2) then
							xx = -3
						else
							xx = 3
						end
						
						if window.y then
							if (outline.AbsolutePosition.Y+(outline.AbsoluteSize.Y/2)) < (cam.ViewportSize.Y/2) then
								yy = -3
							else
								yy = 3
							end
						else
							yy = saved.Y.Scale
							yyy = saved.Y.Offset
						end
					
						if window.x == false and window.y == false then
							screen.Enabled = false
								utility.lockMouse(true)
								--blurEffect.Size = 0
						else
								--blurEffect.Size = 0
								utility.lockMouse(true) 
								
							ts:Create(outline, TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.In), {Position = UDim2.new(xx,xxx,yy,yyy)}):Play()
						end
						wait(0.5)
						cooldown = false
					else
						cooldown = true
						toggled = not toggled
						if window.x == false and window.y == false then
							screen.Enabled = true
								utility.lockMouse(false)
								--blurEffect.Size = 50
						else
							utility.lockMouse(false) 
								--blurEffect.Size = 50
								ts:Create(outline, TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out), {Position = saved}):Play()
						end
						wait(0.5)
						cooldown = false
					end
				end
			end
		end
	end)
	
	window.labels[#window.labels+1] = titletext
	
	setmetatable(window, library)
	return window
end

local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

local fpsUpdateInterval = 0.5 
local lastFpsUpdate = 0
local frameCount = 0
local currentFps = 0

local pingUpdateInterval = 1.0 
local lastPingUpdate = 0
local currentPing = 0

function library:watermark(props)
	local props = props or {}
	local showFps = props.fps or props.Fps or props.FPS or props.showFps or props.ShowFps or props.showFPS or false
	local showPing = props.ping or props.Ping or props.PING or props.showPing or props.ShowPing or props.showPING or false
	local side = props.side or props.Side or props.position or props.Position or "topright"
	local visible = props.visible or props.Visible or props.show or props.Show or false
	local content = props.content or props.Content or props.data or props.Data or {}
	
	local watermark = {}
	
	local outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderSizePixel = 0,
			Size = UDim2.new(0,300,0,26),
			Position = UDim2.new(1,-10,0,10),
			ZIndex = 9900,
			Visible = visible,
			Parent = self.screen
		}
	)
	
	local gradient = utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 60, 60))
			}),
			Rotation = 45,
			Parent = outline
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(10, 10, 10),
			BorderColor3 = self.theme.accent, 
			BorderSizePixel = 1,
			Size = UDim2.new(1,-4,1,-4),
			Position = UDim2.new(0.5,0,0.5,0),
			ZIndex = 9901,
			Parent = outline
		}
	)
	
	table.insert(self.themeitems["accent"]["BorderColor3"], outline2)
	
	local scanline = utility.new(
		"Frame",
		{
			BackgroundColor3 = self.theme.accent,
			BackgroundTransparency = 0.95,
			Size = UDim2.new(1,0,0,1),
			Position = UDim2.new(0,0,0,0),
			ZIndex = 9902,
			Parent = outline2
		}
	)
	
	table.insert(self.themeitems["accent"]["BackgroundColor3"], scanline)
	
	local title = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,1,0),
			Position = UDim2.new(0.5,0,0,0),
			Font = Enum.Font.Code,
			Text = "",
			TextColor3 = self.theme.accent,
			TextXAlignment = "Left",
			TextSize = self.textsize,
			TextStrokeTransparency = 0.8,
			ZIndex = 9903,
			Parent = outline2
		}
	)
	
	table.insert(self.themeitems["accent"]["TextColor3"], title)
	
	local cursor = utility.new(
		"Frame",
		{
			BackgroundColor3 = self.theme.accent, 
			Size = UDim2.new(0,2,0,14),
			Position = UDim2.new(0,0,0.5,-7),
			ZIndex = 9904,
			Parent = title
		}
	)
	
	table.insert(self.themeitems["accent"]["BackgroundColor3"], cursor)
	
	local t = 0
	local connection = RunService.RenderStepped:Connect(function(dt)
		t = t + dt
		gradient.Offset = Vector2.new(math.sin(t * 0.5) * 0.5, 0)
		
		local pulse = (math.sin(t * 2) + 1) / 2
		outline2.BorderColor3 = Color3.new(
			self.theme.accent.R * (0.5 + 0.5 * pulse),
			self.theme.accent.G * (0.5 + 0.5 * pulse),
			self.theme.accent.B * (0.5 + 0.5 * pulse)
		)
		
		cursor.Visible = math.floor(t * 2) % 2 == 0
		
		scanline.Position = UDim2.new(0, 0, math.sin(t * 0.3) * 0.5 + 0.5, 0)
	end)
	
	local textConnection
	textConnection = title:GetPropertyChangedSignal("TextBounds"):Connect(function()
		outline.Size = UDim2.new(0, title.TextBounds.X + 30, 0, 26)
		cursor.Position = UDim2.new(0, title.TextBounds.X + 5, 0.5, -7)
	end)
	
	watermark = {
		["library"] = self,
		["outline"] = outline,
		["outline2"] = outline2,
		["gradient"] = gradient,
		["scanline"] = scanline,
		
		["title"] = title,
		["cursor"] = cursor,
		["connection"] = connection,
		["textConnection"] = textConnection,
		["autoUpdateFps"] = false,
		["autoUpdatePing"] = false,
		["content"] = content,
		["updateConnection"] = nil
	}
	
	self.labels[#self.labels+1] = title
	setmetatable(watermark, watermarks)
	
	if side then
		watermark:updateside(side)
	end
	
	if next(content) then
		watermark:update(content)
	end
	
	if showFps then
		watermark:enableFpsCounter(true)
	end
	
	if showPing then
		watermark:enablePingCounter(true)
	end
	
	return watermark
end

local function calculateFps()
	frameCount = frameCount + 1
	local currentTime = tick()
	local elapsed = currentTime - lastFpsUpdate
	
	if elapsed >= fpsUpdateInterval then
		currentFps = math.floor(frameCount / elapsed)
		frameCount = 0
		lastFpsUpdate = currentTime
	end
	
	return currentFps
end

local function getPing()
	local currentTime = tick()
	local elapsed = currentTime - lastPingUpdate
	
	if elapsed >= pingUpdateInterval then
		currentPing = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
		lastPingUpdate = currentTime
	end
	
	return currentPing
end

function watermarks:update(content)
	local content = content or {}
	local watermark = self
	
	watermark.content = content
	
	local text = "> "
	for i,v in pairs(content) do
		text = text..i..": "..v.."  "
	end
	text = text:sub(0, -3)
	
	watermark.title.Text = text
end

function watermarks:updateside(side)
	side = utility.removespaces(tostring(side):lower())
	
	local sides = {
		topright = {
			AnchorPoint = Vector2.new(1,0),
			Position = UDim2.new(1,-10,0,10)
		},
		topleft = {
			AnchorPoint = Vector2.new(0,0),
			Position = UDim2.new(0,10,0,10)
		},
		bottomright = {
			AnchorPoint = Vector2.new(1,1),
			Position = UDim2.new(1,-10,1,-10)
		},
		bottomleft = {
			AnchorPoint = Vector2.new(0,1),
			Position = UDim2.new(0,10,1,-10)
		}
	}
	
	if sides[side] then
		self.outline.AnchorPoint = sides[side].AnchorPoint
		self.outline.Position = sides[side].Position
	end
end

function watermarks:enableFpsCounter(state)
	self.autoUpdateFps = state == true
	self:setupAutoUpdate()
end

function watermarks:enablePingCounter(state)
	self.autoUpdatePing = state == true
	self:setupAutoUpdate()
end

function watermarks:setupAutoUpdate()
	if self.updateConnection then
		self.updateConnection:Disconnect()
		self.updateConnection = nil
	end
	
	if self.autoUpdateFps or self.autoUpdatePing then
		self.updateConnection = RunService.RenderStepped:Connect(function()
			local content = {}
			
			for i, v in pairs(self.content) do
				content[i] = v
			end
			
			if self.autoUpdateFps then
				content["FPS"] = tostring(calculateFps())
			end
			
			if self.autoUpdatePing then
				content["Ping"] = tostring(getPing()) .. "ms"
			end
			
			local text = "> "
			for i, v in pairs(content) do
				text = text .. i .. ": " .. v .. "  "
			end
			text = text:sub(0, -3)
			
			self.title.Text = text
		end)
	end
end

function watermarks:toggle(state)
	if state ~= nil then
		self.outline.Visible = state
	else
		self.outline.Visible = not self.outline.Visible
	end
	return self
end

function library:loader(props)
	local name = props.name or props.Name or props.LoaderName or props.Loadername or props.loaderName or props.loadername or "Loader"
	local scriptname = props.scriptname or props.Scriptname or props.ScriptName or props.scriptName or "Universal"
	local closed = props.close or props.Close or props.closecallback or props.Closecallback or props.CloseCallback or props.closeCallback or function()end
	local logedin = props.login or props.Login or props.logincallback or props.Logincallback or props.LoginCallback or props.loginCallback or function()end
	local loader = {}
	local screen = utility.new(
		"ScreenGui",
		{
			Name = tostring(math.random(0,999999))..tostring(math.random(0,999999)),
			DisplayOrder = 9999,
			ResetOnSpawn = false,
			ZIndexBehavior = "Global",
			Parent = cre
		}
	)
        if (check_exploit == "Synapse" and syn.request) then
	syn.protect_gui(screen)
		end

	local outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(168, 52, 235),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderSizePixel = 1,
			Size = UDim2.new(0,300,0,90),
			Position = UDim2.new(0.5,0,0.5,0),
			ZIndex = 9900,
			Visible = false,
			Parent = screen
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderSizePixel = 1,
			Size = UDim2.new(1,-4,1,-4),
			Position = UDim2.new(0.5,0,0.5,0),
			ZIndex = 9901,
			Parent = outline
		}
	)
	
	local indent = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0.5,0,0.5,0),
			ZIndex = 9902,
			Parent = outline2
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,0,20),
			Position = UDim2.new(0.5,0,0,0),
			Font = "RobotoMono",
			Text = name,
			TextColor3 = Color3.fromRGB(168, 52, 235),
			TextXAlignment = "Center",
			TextSize = 12,
			TextStrokeTransparency = 0,
			ZIndex = 9903,
			Parent = indent
		}
	)
	
	local scripttitle = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,0,20),
			Position = UDim2.new(0.5,0,0,20),
			Font = "RobotoMono",
			Text = "Script: "..scriptname,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextXAlignment = "Center",
			TextSize = 12,
			TextStrokeTransparency = 0,
			ZIndex = 9903,
			Parent = indent
		}
	)
	
	local makebutton = function(name,parent)
		local button_holder = utility.new(
			"Frame",
			{
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 9904,
				Parent = parent
			}
		)
		
		local button_outline = utility.new(
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(24, 24, 24),
				BorderColor3 = Color3.fromRGB(12, 12, 12),
				BorderMode = "Inset",
				BorderSizePixel = 1,
				Position = UDim2.new(0,0,0,0),
				Size = UDim2.new(1,0,1,0),
				ZIndex = 9905,
				Parent = button_holder
			}
		)
		
		local button_outline2 = utility.new(
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(24, 24, 24),
				BorderColor3 = Color3.fromRGB(56, 56, 56),
				BorderMode = "Inset",
				BorderSizePixel = 1,
				Position = UDim2.new(0,0,0,0),
				Size = UDim2.new(1,0,1,0),
				ZIndex = 9906,
				Parent = button_outline
			}
		)
	
		local button_color = utility.new(
			"Frame",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundColor3 = Color3.fromRGB(30, 30, 30),
				BorderSizePixel = 0,
				Size = UDim2.new(1,0,0,0),
				Position = UDim2.new(0,0,0,0),
				ZIndex = 9907,
				Parent = button_outline2
			}
		)
		
		utility.new(
			"UIGradient",
			{
				Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
				Rotation = 90,
				Parent = button_color
			}
		)
	
		local button_button = utility.new(
			"TextButton",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,0,1,0),
				Position = UDim2.new(0,0,0,0),
				Text = name,
				TextColor3 = Color3.fromRGB(255,255,255),
				TextSize = 12,
				TextStrokeTransparency = 0,
				Font = "RobotoMono",
				ZIndex = 9908,
				Parent = button_holder
			}
		)
	
		return {button_holder,button_outline,button_button}
	end
	
	local close = makebutton("close",indent)
	local login = makebutton("login",indent)
	
	close[1].AnchorPoint = Vector2.new(0.5,0)
	close[1].Size = UDim2.new(0.5,0,0,20)
	close[1].Position = UDim2.new(0.5,0,0,40)

	login[1].AnchorPoint = Vector2.new(0.5,0)
	login[1].Size = UDim2.new(0.5,0,0,20)
	login[1].Position = UDim2.new(0.5,0,0,62)
	
	close[3].MouseButton1Down:Connect(function()
		close[2].BorderColor3 = Color3.fromRGB(168, 52, 235)
		outline:TweenPosition(UDim2.new(-1.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.75,true)
		closed()
		wait(0.05)
		close[2].BorderColor3 = Color3.fromRGB(12,12,12)
		wait(0.7)
		screen:Remove()
	end)
	
	login[3].MouseButton1Down:Connect(function()
		login[2].BorderColor3 = Color3.fromRGB(168, 52, 235)
		outline:TweenPosition(UDim2.new(1.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.75,true)
		logedin()
		wait(0.05)
		login[2].BorderColor3 = Color3.fromRGB(12,12,12)
		wait(0.7)
		screen:Remove()
	end)
	
	loader = {
		["outline"] = outline,
		["outline2"] = outline2,
		["indent"] = indent,
		["title"] = title
	}
	
	setmetatable(loader,loaders)
	return loader
end

function loaders:toggle()
	self.outline.Visible = true
end

function library:graphcheck()
	local graphFrame = Instance.new("Frame")
	graphFrame.Size = UDim2.new(0, 200, 0, 100)
	graphFrame.Position = UDim2.new(0, 10, 0, 10)
	graphFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	graphFrame.BorderColor3 = Color3.fromRGB(12, 12, 12)
	graphFrame.Parent = self.screen
	graphFrame.ZIndex = 9990

	local fpsLine = Instance.new("Frame", graphFrame)
	fpsLine.BackgroundColor3 = Color3.fromRGB(225, 58, 81)
	fpsLine.BorderSizePixel = 0
	fpsLine.Size = UDim2.new(0, 1, 1, 0)
	fpsLine.Position = UDim2.new(1, -1, 0, 0)
	fpsLine.AnchorPoint = Vector2.new(1, 0)

	local pingLine = fpsLine:Clone()
	pingLine.BackgroundColor3 = Color3.fromRGB(58, 181, 225)
	pingLine.Parent = graphFrame

	local fpsData = {}
	local pingData = {}

	local function push(t, v)
		table.insert(t, v)
		if #t > 200 then
			table.remove(t, 1)
		end
	end

	local function updateGraph()
		local fps = math.floor(1 / rs.RenderStepped:Wait())
		local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()

		push(fpsData, fps)
		push(pingData, ping)

		local w = graphFrame.AbsoluteSize.X
		graphFrame:ClearAllChildren()

		for i = 1, #fpsData do
			local fBar = Instance.new("Frame")
			fBar.Size = UDim2.new(0, 1, 0, math.clamp(fpsData[i] * 2, 1, 100))
			fBar.Position = UDim2.new(0, i, 1, -fBar.Size.Y.Offset)
			fBar.BackgroundColor3 = Color3.fromRGB(225, 58, 81)
			fBar.BorderSizePixel = 0
			fBar.ZIndex = 9991
			fBar.Parent = graphFrame

			local pBar = fBar:Clone()
			pBar.Size = UDim2.new(0, 1, 0, math.clamp(pingData[i] * 0.4, 1, 100))
			pBar.Position = UDim2.new(0, i, 1, -pBar.Size.Y.Offset)
			pBar.BackgroundColor3 = Color3.fromRGB(58, 181, 225)
			pBar.Parent = graphFrame
		end
	end

	task.spawn(function()
		while true do
			updateGraph()
			task.wait(0.2)
		end
	end)
end


function library:saveconfig()
    local cfg = {}
    local processedTables = {} 
    
    local function recursivelyGetValues(tbl, depth)
        if depth > 10 then return {} end
        
        if processedTables[tbl] then return {} end
        processedTables[tbl] = true
        
        local result = {}
        for k, v in pairs(tbl) do
            if type(v) == "table" then
                if v.current ~= nil then
                    if typeof(v.current) == "Color3" then
                        result[k] = {v.current.R, v.current.G, v.current.B}
                    elseif typeof(v.current) == "table" and v.current[1] and v.current[2] then
                        result[k] = v.current
                    else
                        result[k] = v.current
                    end
                elseif v.pointers and not processedTables[v.pointers] then
                    local nested = recursivelyGetValues(v.pointers, depth + 1)
                    if next(nested) ~= nil then
                        result[k] = nested
                    end
                elseif not processedTables[v] then
                    local nested = recursivelyGetValues(v, depth + 1)
                    if next(nested) ~= nil then
                        result[k] = nested
                    end
                end
            end
        end
        return result
    end
    
    for pointer_name, pointer_value in pairs(self.pointers) do
        if type(pointer_value) == "table" then
            if pointer_value.current ~= nil then
                if typeof(pointer_value.current) == "Color3" then
                    cfg[pointer_name] = {pointer_value.current.R, pointer_value.current.G, pointer_value.current.B}
                elseif typeof(pointer_value.current) == "table" and pointer_value.current[1] and pointer_value.current[2] then
                    cfg[pointer_name] = pointer_value.current
                else
                    cfg[pointer_name] = pointer_value.current
                end
            else
                processedTables = {} 
                local nestedValues = recursivelyGetValues(pointer_value, 1)
                if next(nestedValues) ~= nil then
                    cfg[pointer_name] = nestedValues
                end
            end
        end
    end
    
    local json_data = hs:JSONEncode(cfg)
    if json_data == "{}" or json_data == "[]" then
        warn("No configuration data to save: cfg table is empty")
    end
    
    return json_data
end

function library:loadconfig(cfg)
	local success, configData = pcall(function()
		return hs:JSONDecode(readfile(cfg))
	end)
	
	if not success then
		warn("Failed to load config: " .. tostring(configData))
		return false
	end
	
	local function getTableKeys(tbl)
		local keys = {}
		for k, _ in pairs(tbl) do
			table.insert(keys, k)
		end
		return keys
	end
	
	warn("Loading config with " .. tostring(#getTableKeys(configData)) .. " root entries")
	
	local processedTables = {}
	
	local function recursivelySetValues(tbl, config, depth)
		
		if depth > 10 then return end
		
		if processedTables[tbl] then return end
		processedTables[tbl] = true
		
		for element_name, element_value in pairs(config) do
			if type(element_value) == "table" then
				local isContainer = false
				for k, _ in pairs(element_value) do
					if type(k) == "string" then
						isContainer = true
						break
					end
				end
				
				if not isContainer then
					if tbl[element_name] and tbl[element_name].set then
						pcall(function() 
							tbl[element_name]:set(element_value)
						end)
					end
				else
					if tbl[element_name] then
						if tbl[element_name].pointers and not processedTables[tbl[element_name].pointers] then
							recursivelySetValues(tbl[element_name].pointers, element_value, depth + 1)
						elseif not processedTables[tbl[element_name]] then
							recursivelySetValues(tbl[element_name], element_value, depth + 1)
						end
					end
				end
			else
				if tbl[element_name] and tbl[element_name].set then
					pcall(function() 
						tbl[element_name]:set(element_value)
					end)
				end
			end
		end
	end
	
	for pointer_name, value in pairs(configData) do
		if self.pointers[pointer_name] == nil then
			warn("Pointer not found: " .. tostring(pointer_name))
			continue
		end
		
		if type(value) == "table" then
			local isContainer = false
			for k, _ in pairs(value) do
				if type(k) == "string" then
					isContainer = true
					break
				end
			end
			
			if isContainer then
				processedTables = {} 
				recursivelySetValues(self.pointers[pointer_name], value, 1)
			else
				if self.pointers[pointer_name].set then
					pcall(function() 
						self.pointers[pointer_name]:set(value)
					end)
				else
					warn("Pointer has no set method: " .. tostring(pointer_name))
				end
			end
		else
			if self.pointers[pointer_name].set then
				pcall(function() 
					self.pointers[pointer_name]:set(value)
				end)
			else
				warn("Pointer has no set method: " .. tostring(pointer_name))
			end
		end
	end
	
	return true
end

function pages:section(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local side = props.side or props.Side or props.sectionside or props.Sectionside or props.SectionSide or props.sectionSide or "left"
	local size = props.size or props.Size or props.yaxis or props.yAxis or props.YAxis or props.Yaxis or 200
	side = side:lower()
	local section = {}
	local sectionholder = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,size),
			Parent = self[side]
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = sectionholder
		}
	)

	local color = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundColor3 = self.library.theme.accent,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-2,0,1),
			Position = UDim2.new(0.5,0,0,0),
			Parent = outline
		}
	)
	
	table.insert(self.library.themeitems["accent"]["BackgroundColor3"],color)

	local content = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-12,1,-25),
			Position = UDim2.new(0.5,0,1,-5),
			Parent = outline
		}
	)

	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-5,0,20),
			Position = UDim2.new(0,5,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = outline
		}
	)

	local listLayout = utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Padding = UDim.new(0,5),
			Parent = content
		}
	)

	local listLayoutConnection
	listLayoutConnection = listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		local contentSize = listLayout.AbsoluteContentSize.Y
		local paddingSize = 30 
		local newSize = math.max(size, contentSize + paddingSize)
		sectionholder.Size = UDim2.new(1, 0, 0, newSize)
	end)

	local function updateSectionSize()
		local contentSize = listLayout.AbsoluteContentSize.Y
		local paddingSize = 30 
		local newSize = math.max(size, contentSize + paddingSize)
		sectionholder.Size = UDim2.new(1, 0, 0, newSize)
	end

	section = {
		["library"] = self.library,
		["sectionholder"] = sectionholder,
		["color"] = color,
		["content"] = content,
		["listLayout"] = listLayout,
		["listLayoutConnection"] = listLayoutConnection,
		["updateSectionSize"] = updateSectionSize,
		["pointers"] = {}
	}
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		warn("Registering section pointer: " .. tostring(pointer))
		if self.pointers then
			self.pointers[tostring(pointer)] = section.pointers
			warn("  Registered at: self.pointers[" .. tostring(pointer) .. "]")
		else
			warn("  No pointers table in page!")
			self.pointers = {}
			self.pointers[tostring(pointer)] = section.pointers
			warn("  Created pointers table and registered at: self.pointers[" .. tostring(pointer) .. "]")
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	setmetatable(section, sections)
	return section
end

function pages:multisection(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local side = props.side or props.Side or props.sectionside or props.Sectionside or props.SectionSide or props.sectionSide or "left"
	local size = props.size or props.Size or props.yaxis or props.yAxis or props.YAxis or props.Yaxis or 200
	side = side:lower()
	local multisection = {}
	local sectionholder = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,size),
			Parent = self[side]
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = sectionholder
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundColor3 = self.library.theme.accent,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-2,0,1),
			Position = UDim2.new(0.5,0,0,0),
			Parent = outline
		}
	)
	
	table.insert(self.library.themeitems["accent"]["BackgroundColor3"],color)
	
	local tabsholder = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0,1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,-15),
			Position = UDim2.new(0,0,1,0),
			Parent = outline
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-5,0,20),
			Position = UDim2.new(0,5,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = outline
		}
	)
	
	local buttons = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-6,0,20),
			Position = UDim2.new(0.5,0,0,5),
			Parent = tabsholder
		}
	)
	
	local tabs = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,1),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,-6,1,-27),
			Position = UDim2.new(0.5,0,1,-3),
			Parent = tabsholder
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Horizontal",
			Padding = UDim.new(0,2),
			Parent = buttons
		}
	)
	
	local tabs_outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = tabs
		}
	)
	
	multisection = {
		["library"] = self.library,
		["sectionholder"] = sectionholder,
		["color"] = color,
		["tabsholder"] = tabsholder,
		["mssections"] = {},
		["buttons"] = buttons,
		["tabs"] = tabs,
		["tabs_outline"] = tabs_outline,
		["pointers"] = {}
	}
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = multisection.pointers
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	setmetatable(multisection,multisections)
	return multisection
end
	
function multisections:section(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local mssection = {}
	local tabbutton = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0,60,0,20),
			Parent = self.buttons
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = tabbutton
		}
	)
	
	local button = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			Parent = tabbutton
		}
	)
	
	local r_line = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderSizePixel = 0,
			Size = UDim2.new(0,1,0,1),
			Position = UDim2.new(1,0,1,1),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local l_line = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderSizePixel = 0,
			Size = UDim2.new(0,1,0,1),
			Position = UDim2.new(0,0,1,1),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local line = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,0,2),
			Position = UDim2.new(0,0,1,0),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local label = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Parent = outline
		}
	)
	
	local underline = utility.new(
		"Frame",
		{
				AnchorPoint = Vector2.new(0.5, 1),
				BackgroundColor3 = self.library.theme.accent,
				BorderSizePixel = 0,
				Size = UDim2.new(0.8, 0, 0, 1),
				Position = UDim2.new(0.5, 0, 0.9, 0),
				Visible = false,
				ZIndex = 3,
				Parent = label
			}
		)
	
	table.insert(self.library.themeitems["accent"]["BackgroundColor3"], underline)
	
	local function updateTabWidth()
		local textWidth = label.TextBounds.X
		local padding = 16 
		tabbutton.Size = UDim2.new(0, textWidth + padding, 0, 20)
	end
	
	label:GetPropertyChangedSignal("TextBounds"):Connect(updateTabWidth)
	updateTabWidth() 
	
	local content = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-6,1,-27),
			Position = UDim2.new(0.5,0,1,-3),
			Visible = false, 
			Parent = self.tabs_outline
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Padding = UDim.new(0,5),
			Parent = content
		}
	)
	mssection = {
		["library"] = self.library,
		["outline"] = outline,
		["r_line"] = r_line,
		["l_line"] = l_line,
		["line"] = line,
		["content"] = content,
		["open"] = false,
		["underline"] = underline,
		["pointers"] = {}
	}
	
	table.insert(self.mssections,mssection)
	mssection.selectTab = function()
		for i,v in pairs(self.mssections) do
			if v ~= mssection then
				if v.open then
					v.content.Visible = false
					v.open = false
					v.outline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					v.line.Size = UDim2.new(1,0,0,2)
					v.line.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					v.underline.Visible = false
				end
			end
		end
		
		mssection.library:closewindows()
		
		mssection.content.Visible = true
		mssection.open = true
		mssection.outline.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		mssection.line.Size = UDim2.new(1,0,0,3)
		mssection.line.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		mssection.underline.Visible = true
	end
	
	button.MouseButton1Down:Connect(function()
		if mssection.open == false then
			mssection.selectTab()
		end
	end)
	
	if #self.mssections == 1 then
		mssection.selectTab()
	end
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = mssection.pointers
		end
	end
	
	self.library.labels[#self.library.labels+1] = label

	function mssection:toggle(props)
		return sections.toggle(self, props)
	end

	function mssection:button(props)
		return sections.button(self, props)
	end

	function mssection:slider(props)
		return sections.slider(self, props)
	end

	function mssection:dropdown(props)
		return sections.dropdown(self, props)
	end

	function mssection:multibox(props)
		return sections.multibox(self, props)
	end

	function mssection:buttonbox(props)
		return sections.buttonbox(self, props)
	end

	function mssection:textbox(props)
		return sections.textbox(self, props)
	end

	function mssection:keybind(props)
		return sections.keybind(self, props)
	end

	function mssection:colorpicker(props)
		return sections.colorpicker(self, props)
	end

	function mssection:configloader(props)
		return sections.configloader(self, props)
	end

	function mssection:esppreview(props)
		return sections.esppreview(self, props)
	end

	setmetatable(mssection, mssections)
	return mssection
end

function multisections:selectTabIndex(index)
	if self.mssections and self.mssections[index] then
		self.mssections[index].selectTab()
		return true
	end
	return false
end

function sections:toggle(props)
    local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
    local def = props.def or props.Def or props.default or props.Default or props.toggle or props.Toggle or props.toggled or props.Toggled or false
    local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
    local toggle = {}
    local toggleholder = utility.new(
        "Frame",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,0,15),
            Parent = self.content
        }
    )
    
    local outline = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(0,15,0,15),
            Parent = toggleholder
        }
    )

    local button = utility.new(
        "TextButton",
        {
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            Text = "",
            Parent = toggleholder
        }
    )
    
    local title = utility.new(
        "TextLabel",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1,-20,1,0),
            Position = UDim2.new(0,20,0,0),
            Font = self.library.font,
            Text = name,
            TextColor3 = Color3.fromRGB(255,255,255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Left",
            Parent = toggleholder
        }
    )
    
    local color = utility.new(
        "Frame",
        {
            BackgroundColor3 = def and self.library.theme.accent or Color3.fromRGB(20, 20, 20),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1,0,1,0),
            Parent = outline
        }
    )
    
    utility.new(
        "UIGradient",
        {
            Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
            Rotation = 90,
            Parent = color
        }
    )
    
    toggle = {
        ["library"] = self.library,
        ["toggleholder"] = toggleholder,
        ["title"] = title,
        ["color"] = color,
        ["callback"] = callback,
        ["current"] = def
    }
    
    if def then
        table.insert(self.library.themeitems["accent"]["BackgroundColor3"],color)
    end
    
    button.MouseButton1Down:Connect(function()
        if toggle.current then
            toggle.callback(false)
            utility.tweenColor(toggle.color, "BackgroundColor3", Color3.fromRGB(20, 20, 20))
            local find = table.find(self.library.themeitems["accent"]["BackgroundColor3"],toggle.color)
            if find then
                table.remove(self.library.themeitems["accent"]["BackgroundColor3"],find)
            end
            toggle.current = false
        else
            toggle.callback(true)
            utility.tweenColor(toggle.color, "BackgroundColor3", self.library.theme.accent)
            table.insert(self.library.themeitems["accent"]["BackgroundColor3"],toggle.color)
            toggle.current = true
        end
    end)
    
    local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
    
    if pointer then
        warn("Registering toggle pointer: " .. tostring(pointer))
        if self.pointers then
            self.pointers[tostring(pointer)] = toggle
            warn("  Registered at: self.pointers[" .. tostring(pointer) .. "]")
        else
            warn("  No pointers table in section!")
        end
    end
    
    self.library.labels[#self.library.labels+1] = title
    setmetatable(toggle, toggles)
    return toggle
end

function toggles:set(bool)
    if bool ~= nil then
        local toggle = self
        toggle.callback(bool)
        toggle.current = bool
        if bool then
            utility.tweenColor(toggle.color, "BackgroundColor3", self.library.theme.accent)
            table.insert(self.library.themeitems["accent"]["BackgroundColor3"],toggle.color)
        else
            utility.tweenColor(toggle.color, "BackgroundColor3", Color3.fromRGB(20, 20, 20))
            local find = table.find(self.library.themeitems["accent"]["BackgroundColor3"],toggle.color)
            if find then
                table.remove(self.library.themeitems["accent"]["BackgroundColor3"],find)
            end
        end
    end
end

function sections:button(props)
	local name = props.name or props.Name or "new button"
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	local button = {}
	local buttonholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,15),
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = buttonholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = outline
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Parent = outline2
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = color
		}
	)
	
	local buttonb = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Font = self.library.font,
			Parent = buttonholder
		}
	)

	button = {
		["library"] = self.library,
		["outline"] = outline,
		["callback"] = callback
	}
	
	buttonb.MouseButton1Down:Connect(function()
		utility.tweenColor(outline, "BorderColor3", self.library.theme.accent, 0.15)
		callback()
		wait(0.05)
		utility.tweenColor(outline, "BorderColor3", Color3.fromRGB(12,12,12), 0.15)
	end)
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = button
		end
	end
	
	self.library.labels[#self.library.labels+1] = buttonb
	setmetatable(button, buttons)
	return button
end

function sections:slider(props)
	local name = props.name or props.Name or "new ui"
	local def = props.def or props.default or 0
	local max = props.max or 100
	local min = props.min or 0
	local rounding = props.rounding or false
	local roundingvalue = props.roundingvalue or 0.01
	local ticking = props.tick or false
	local measurement = props.measurement or ""
	local callback = props.callback or function() end
	def = math.clamp(def, min, max)

	local slider = {}

	local sliderholder = utility.new("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 25),
		Parent = self.content
	})

	local outline = utility.new("Frame", {
		BackgroundColor3 = Color3.fromRGB(24, 24, 24),
		BorderColor3 = Color3.fromRGB(12, 12, 12),
		BorderMode = "Inset",
		BorderSizePixel = 1,
		Size = UDim2.new(1, 0, 0, 12),
		Position = UDim2.new(0, 0, 0, 15),
		Parent = sliderholder
	})

	local outline2 = utility.new("Frame", {
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.fromRGB(56, 56, 56),
		BorderMode = "Inset",
		BorderSizePixel = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Parent = outline
	})

	local value = utility.new("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 2),
		Position = UDim2.new(0, 0, 0.5, 0),
		Font = self.library.font,
		Text = def .. measurement .. "/" .. max .. measurement,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = self.library.textsize,
		TextStrokeTransparency = 0,
		ZIndex = 3,
		Parent = outline
	})

	local color = utility.new("Frame", {
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Parent = outline2
	})

	utility.new("UIGradient", {
		Color = ColorSequence.new {
			ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)),
			ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
		},
		Rotation = 90,
		Parent = color
	})

	local slide = utility.new("Frame", {
		BackgroundColor3 = self.library.theme.accent,
		BorderSizePixel = 0,
		Size = UDim2.new((1 / color.AbsoluteSize.X) * (color.AbsoluteSize.X / (max - min) * (def - min)), 0, 1, 0),
		ZIndex = 2,
		Parent = outline
	})
	table.insert(self.library.themeitems["accent"]["BackgroundColor3"], slide)

	utility.new("UIGradient", {
		Color = ColorSequence.new {
			ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)),
			ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))
		},
		Rotation = 90,
		Parent = slide
	})

	local sliderbutton = utility.new("TextButton", {
		AnchorPoint = Vector2.new(0, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Text = "",
		Parent = sliderholder
	})

	local title = utility.new("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 15),
		Position = UDim2.new(0, 0, 0, 0),
		Font = self.library.font,
		Text = name,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = self.library.textsize,
		TextStrokeTransparency = 0,
		TextXAlignment = "Left",
		Parent = sliderholder
	})

	slider = {
		["library"] = self.library,
		["outline"] = outline,
		["sliderbutton"] = sliderbutton,
		["title"] = title,
		["value"] = value,
		["slide"] = slide,
		["color"] = color,
		["max"] = max,
		["min"] = min,
		["current"] = def,
		["measurement"] = measurement,
		["tick"] = ticking,
		["rounding"] = rounding,
		["callback"] = callback,
		["roundingvalue"] = roundingvalue 
	}

	local function slide()
		local size = math.clamp(plr:GetMouse().X - slider.color.AbsolutePosition.X, 0, slider.color.AbsoluteSize.X)
		local result = (slider.max - slider.min) / slider.color.AbsoluteSize.X * size + slider.min

		local newres
		if slider.rounding then
			newres = math.floor(result)
		else
			newres = math.floor(result / slider.roundingvalue + 0.5) * slider.roundingvalue
		end

		newres = math.clamp(newres, slider.min, slider.max)

		value.Text = newres .. slider.measurement .. "/" .. slider.max .. slider.measurement
		slider.current = newres
		slider.callback(newres)

		if slider.tick then
			slider.slide:TweenSize(UDim2.new((1 / slider.color.AbsoluteSize.X) * (slider.color.AbsoluteSize.X / (slider.max - slider.min) * (newres - slider.min)), 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
		else
			slider.slide:TweenSize(UDim2.new((1 / slider.color.AbsoluteSize.X) * size, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
		end
	end

	sliderbutton.MouseButton1Down:Connect(function()
		slider.holding = true
		slide()
		table.insert(self.library.themeitems["accent"]["BorderColor3"], outline)
		outline.BorderColor3 = self.library.theme.accent
	end)

	uis.InputChanged:Connect(function()
		if slider.holding then
			slide()
		end
	end)

	uis.InputEnded:Connect(function(Input)
		if Input.UserInputType.Name == 'MouseButton1' and slider.holding then
			slider.holding = false
			outline.BorderColor3 = Color3.fromRGB(12, 12, 12)
			local find = table.find(self.library.themeitems["accent"]["BorderColor3"], outline)
			if find then
				table.remove(self.library.themeitems["accent"]["BorderColor3"], find)
			end
		end
	end)

	local pointer = props.pointer or nil
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = slider
		end
	end

	self.library.labels[#self.library.labels + 1] = title
	self.library.labels[#self.library.labels + 1] = value

	setmetatable(slider, sliders)
	return slider
end

function sliders:set(value)
	if value == nil then return self end
	
	local slider = self
	value = math.clamp(value, slider.min, slider.max)
	
	local size = (slider.color.AbsoluteSize.X / (slider.max - slider.min) * (value - slider.min))
	
	local newres
	if slider.rounding then
		newres = math.floor(value)
	else
		newres = math.floor(value / slider.roundingvalue + 0.5) * slider.roundingvalue
	end
	
	newres = math.clamp(newres, slider.min, slider.max)
	
	slider.value.Text = newres .. slider.measurement .. "/" .. slider.max .. slider.measurement
	
	slider.current = newres
	
	if slider.tick then
		slider.slide:TweenSize(
			UDim2.new((1 / slider.color.AbsoluteSize.X) * (slider.color.AbsoluteSize.X / (slider.max - slider.min) * (newres - slider.min)), 0, 1, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quad,
			0.15,
			true
		)
	else
		slider.slide:TweenSize(
			UDim2.new((1 / slider.color.AbsoluteSize.X) * size, 0, 1, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quad,
			0.15,
			true
		)
	end
	
	slider.callback(newres)
	
	return self
end

function library:closewindows(ignore)
	local window = self
	for i,v in pairs(window.dropdowns) do
		if v ~= ignore then
			if v.open then
				v.optionsholder.Visible = false
				v.indicator.Text = "-"
				v.open = false
			end
		end
	end
	for i,v in pairs(window.multiboxes) do
		if v ~= ignore then
			if v.open then
				v.optionsholder.Visible = false
				v.indicator.Text = "-"
				v.open = false
			end
		end
	end
	for i,v in pairs(window.buttonboxs) do
		if v ~= ignore then
			if v.open then
				v.optionsholder.Visible = false
				v.indicator.Text = "-"
				v.open = false
			end
		end
	end
	for i,v in pairs(window.colorpickers) do
		if v ~= ignore then
			if v.open then
				v.cpholder.Visible = false
				v.open = false
			end
		end
	end
end

function sections:esppreview(props)
    local name = props.name or props.Name or "ESP Preview"
    local esp_color = props.color or props.Color or Color3.fromRGB(225, 58, 81)
    local esppreview = {}
    local previewholder = utility.new(
        "Frame",
        {
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(0, 200, 0, 300),
            Position = UDim2.new(1, 10, 0.5, 0),
            ZIndex = 10000,
            Visible = false,
            Parent = self.library.screen
        }
    )
    
    local outline = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Parent = previewholder
        }
    )
    
    local title = utility.new(
        "TextLabel",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, -10, 0, 20),
            Position = UDim2.new(0, 5, 0, 0),
            Font = self.library.font,
            Text = name,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Left",
            ZIndex = 10001,
            Parent = outline
        }
    )
    
    local viewport = utility.new(
        "ViewportFrame",
        {
            AnchorPoint = Vector2.new(0.5, 1),
            BackgroundColor3 = Color3.fromRGB(20, 20, 20),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderSizePixel = 1,
            Size = UDim2.new(1, -10, 1, -30),
            Position = UDim2.new(0.5, 0, 1, -5),
            ZIndex = 10002,
            Ambient = Color3.fromRGB(255, 255, 255),
            LightColor = Color3.fromRGB(255, 255, 255),
            LightDirection = Vector3.new(-1, -1, -1),
            Parent = outline
        }
    )
    
    local dummy = Instance.new("Model")
    local humanoid = Instance.new("Humanoid")
    local rootPart = Instance.new("Part")
    rootPart.Size = Vector3.new(2, 4, 1)
    rootPart.Position = Vector3.new(0, 2, 0)
    rootPart.Anchored = true
    rootPart.CanCollide = false
    rootPart.Parent = dummy
    humanoid.Parent = dummy
    dummy.PrimaryPart = rootPart
    dummy.Parent = viewport
    
    local highlight = Instance.new("Highlight")
    highlight.FillColor = esp_color
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    highlight.Adornee = dummy
    highlight.Parent = dummy
    
    local camera = Instance.new("Camera")
    camera.CFrame = CFrame.new(Vector3.new(5, 2, 5), rootPart.Position)
    viewport.CurrentCamera = camera
    
    self.library.esppreviews = self.library.esppreviews or {}
    table.insert(self.library.esppreviews, esppreview)
    
    self.page.esppreview = esppreview
    
    esppreview = {
        ["library"] = self.library,
        ["previewholder"] = previewholder,
        ["viewport"] = viewport,
        ["dummy"] = dummy,
        ["highlight"] = highlight
    }
    
    self.library.labels[#self.library.labels + 1] = title
    setmetatable(esppreview, esppreviews)
    return esppreview
end


function sections:dropdown(props)
    local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
    local def = props.def or props.Def or props.default or props.Default or ""
    local max = props.max or props.Max or props.maximum or props.Maximum or 4
    local options = props.options or props.Options or props.Settings or props.settings or {}
    local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
    local dropdown = {}
    local dropdownholder = utility.new(
        "Frame",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,0,35),
            ZIndex = 2,
            Parent = self.content
        }
    )
    
    local outline = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1,0,0,20),
            Position = UDim2.new(0,0,0,15),
            Parent = dropdownholder
        }
    )
    
    local outline2 = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            Parent = outline
        }
    )
    
    local color = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(30, 30, 30),
            BorderSizePixel = 0,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            Parent = outline2
        }
    )
    
    utility.new(
        "UIGradient",
        {
            Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
            Rotation = 90,
            Parent = color
        }
    )
    
    local value = utility.new(
        "TextLabel",
        {
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            Size = UDim2.new(1,-20,1,0),
            Position = UDim2.new(0,5,0,0),
            Font = self.library.font,
            Text = def,
            TextColor3 = Color3.fromRGB(255,255,255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Left",
            ClipsDescendants = true,
            Parent = outline
        }
    )
    
    local indicator = utility.new(
        "TextLabel",
        {
            AnchorPoint = Vector2.new(0.5,0),
            BackgroundTransparency = 1,
            Size = UDim2.new(1,-10,1,0),
            Position = UDim2.new(0.5,0,0,0),
            Font = self.library.font,
            Text = "+",
            TextColor3 = Color3.fromRGB(255,255,255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Right",
            ClipsDescendants = true,
            Parent = outline
        }
    )
    
    local title = utility.new(
        "TextLabel",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,0,15),
            Position = UDim2.new(0,0,0,0),
            Font = self.library.font,
            Text = name,
            TextColor3 = Color3.fromRGB(255,255,255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Left",
            Parent = dropdownholder
        }
    )
    
    local dropdownbutton = utility.new(
        "TextButton",
        {
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            Text = "",
            Parent = dropdownholder
        }
    )
    
    local optionsholder = utility.new(
        "Frame",
        {
            BackgroundTransparency = 1,
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1,0,0,20),
            Position = UDim2.new(0,0,0,34),
            Visible = false,
            Parent = dropdownholder
        }
    )
    
    local size = #options
    
    size = math.clamp(size,1,max)
    
    local optionsoutline = utility.new(
        "ScrollingFrame",
        {
            BackgroundColor3 = Color3.fromRGB(56, 56, 56),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1,0,0,0), 
            Position = UDim2.new(0,0,0,0),
            ClipsDescendants = true,
            CanvasSize = UDim2.new(0,0,0,18*#options),
            ScrollBarImageTransparency = 0.25,
            ScrollBarImageColor3 = Color3.fromRGB(0,0,0),
            ScrollBarThickness = 5,
            VerticalScrollBarInset = "ScrollBar",
            VerticalScrollBarPosition = "Right",
            ZIndex = 5,
            Parent = optionsholder
        }
    )
    
    utility.new(
        "UIListLayout",
        {
            FillDirection = "Vertical",
            Parent = optionsoutline
        }
    )
    
    dropdown = {
        ["library"] = self.library,
        ["optionsholder"] = optionsholder,
        ["indicator"] = indicator,
        ["options"] = options,
        ["title"] = title,
        ["value"] = value,
        ["open"] = false,
        ["titles"] = {},
        ["current"] = def,
        ["callback"] = callback,
        ["optionsoutline"] = optionsoutline
    }
    
    table.insert(dropdown.library.dropdowns,dropdown)
    
    for i,v in pairs(options) do
        local ddoptionbutton = utility.new(
            "TextButton",
            {
                AnchorPoint = Vector2.new(0,0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1,0,0,18),
                Text = "",
                ZIndex = 6,
                Parent = optionsoutline
            }
        )
        
        local ddoptiontitle = utility.new(
            "TextLabel",
            {
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1,-10,1,0),
                Position = UDim2.new(0.5,0,0,0),
                Font = self.library.font,
                Text = v,
                TextColor3 = Color3.fromRGB(255,255,255),
                TextSize = self.library.textsize,
                TextStrokeTransparency = 0,
                TextXAlignment = "Left",
                ClipsDescendants = true,
                ZIndex = 6,
                Parent = ddoptionbutton
            }
        )
        
        self.library.labels[#self.library.labels+1] = ddoptiontitle
        
        table.insert(dropdown.titles,ddoptiontitle)
        
        if v == dropdown.current then ddoptiontitle.TextColor3 = self.library.theme.accent end
        
        ddoptionbutton.MouseButton1Down:Connect(function()
            ts:Create(optionsoutline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            
            wait(0.2) 
            optionsholder.Visible = false
            dropdown.open = false
            indicator.Text = "+"
            for z,x in pairs(dropdown.titles) do
                if x.TextColor3 == self.library.theme.accent then
                    x.TextColor3 = Color3.fromRGB(255,255,255)
                end
            end
            dropdown.current = v
            dropdown.value.Text = v
            ddoptiontitle.TextColor3 = self.library.theme.accent
            table.insert(self.library.themeitems["accent"]["TextColor3"],ddoptiontitle)
            dropdown.callback(v)
        end)
    end
    
    dropdownbutton.MouseButton1Down:Connect(function()
        dropdown.library:closewindows(dropdown)
        for i,v in pairs(dropdown.titles) do
            if v.Text == dropdown.current then
                v.TextColor3 = dropdown.library.theme.accent
            else
                v.TextColor3 = Color3.fromRGB(255,255,255)
            end
        end
        
        if dropdown.open then
            ts:Create(optionsoutline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            
            wait(0.2) 
            optionsholder.Visible = false
            indicator.Text = "+"
        else
            optionsholder.Visible = true
            optionsoutline.Size = UDim2.new(1, 0, 0, 0) 
            ts:Create(optionsoutline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, size, 2)
            }):Play()
            indicator.Text = "-"
        end
        
        dropdown.open = not dropdown.open
    end)
    
    local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
    
    if pointer then
        if self.pointers then
            self.pointers[tostring(pointer)] = dropdown
        end
    end
    
    self.library.labels[#self.library.labels+1] = title
    self.library.labels[#self.library.labels+1] = value
    setmetatable(dropdown, dropdowns)
    return dropdown
end

function sections:buttonbox(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local def = props.def or props.Def or props.default or props.Default or ""
	local max = props.max or props.Max or props.maximum or props.Maximum or 4
	local options = props.options or props.Options or props.Settings or props.settings or {}
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	local buttonbox = {}
	local buttonboxholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,35),
			ZIndex = 2,
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,15),
			Parent = buttonboxholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline2
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = color
		}
	)
	
	local indicator = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,1,0),
			Position = UDim2.new(0.5,0,0,0),
			Font = self.library.font,
			Text = "+",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Right",
			ClipsDescendants = true,
			Parent = outline
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,15),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = buttonboxholder
		}
	)
	
	local buttonboxbutton = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			Parent = buttonboxholder
		}
	)
	
	local optionsholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,34),
			Visible = false,
			Parent = buttonboxholder
		}
	)
	
	local size = #options
	size = math.clamp(size,1,max)
	local optionsoutline = utility.new(
		"ScrollingFrame",
		{
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,size,2),
			Position = UDim2.new(0,0,0,0),
			ClipsDescendants = true,
			CanvasSize = UDim2.new(0,0,0,18*#options),
			ScrollBarImageTransparency = 0.25,
			ScrollBarImageColor3 = Color3.fromRGB(0,0,0),
			ScrollBarThickness = 5,
			VerticalScrollBarInset = "ScrollBar",
			VerticalScrollBarPosition = "Right",
			ZIndex = 5,
			Parent = optionsholder
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Parent = optionsoutline
		}
	)
	buttonbox = {
		["library"] = self.library,
		["optionsholder"] = optionsholder,
		["indicator"] = indicator,
		["options"] = options,
		["title"] = title,
		["open"] = false,
		["titles"] = {},
		["current"] = def,
		["callback"] = callback
	}
	
	table.insert(buttonbox.library.buttonboxs,buttonbox)
	
	for i,v in pairs(options) do
		local bboptionbutton = utility.new(
			"TextButton",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,0,0,18),
				Text = "",
				ZIndex = 6,
				Parent = optionsoutline
			}
		)
		
		local bboptiontitle = utility.new(
			"TextLabel",
			{
				AnchorPoint = Vector2.new(0.5,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,-10,1,0),
				Position = UDim2.new(0.5,0,0,0),
				Font = self.library.font,
				Text = v,
				TextColor3 = Color3.fromRGB(255,255,255),
				TextSize = self.library.textsize,
				TextStrokeTransparency = 0,
				TextXAlignment = "Left",
				ClipsDescendants = true,
				ZIndex = 6,
				Parent = bboptionbutton
			}
		)
		
		self.library.labels[#self.library.labels+1] = bboptiontitle
		
		table.insert(buttonbox.titles,bboptiontitle)
		
		bboptionbutton.MouseButton1Down:Connect(function()
			optionsholder.Visible = false
			buttonbox.open = false
			indicator.Text = "+"
			buttonbox.current = v
			buttonbox.callback(v)
		end)
	end
	buttonboxbutton.MouseButton1Down:Connect(function()
		buttonbox.library:closewindows(buttonbox)
		optionsholder.Visible = not buttonbox.open
		buttonbox.open = not buttonbox.open
		if buttonbox.open then
			indicator.Text = "-"
		else
			indicator.Text = "+"
		end
	end)

	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil

	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = buttonbox
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	setmetatable(buttonbox, buttonboxs)
	return buttonbox
end

function dropdowns:set(value)
	if value == nil then return self end
	
	local dropdown = self
	if not table.find(dropdown.options, value) then return self end
	
	dropdown.current = value
	dropdown.value.Text = value
	
	for _, title in pairs(dropdown.titles) do
		if title.TextColor3 == dropdown.library.theme.accent then
			title.TextColor3 = Color3.fromRGB(255, 255, 255)
			local index = table.find(dropdown.library.themeitems["accent"]["TextColor3"], title)
			if index then
				table.remove(dropdown.library.themeitems["accent"]["TextColor3"], index)
			end
		end
		
		if title.Text == value then
			title.TextColor3 = dropdown.library.theme.accent
			table.insert(dropdown.library.themeitems["accent"]["TextColor3"], title)
		end
	end
	
	if dropdown.open then
		dropdown.optionsholder.Visible = false
		dropdown.indicator.Text = "+"
		dropdown.open = false
	end
	
	dropdown.callback(value)
	
	return self
end

function sections:multibox(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local def = props.def or props.Def or props.default or props.Default or {}
	local max = props.max or props.Max or props.maximum or props.Maximum or 4
	local options = props.options or props.Options or props.Settings or props.settings or {}
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	local defstr = ""
	if #def > 1 then
		for i,v in pairs(def) do
			if i == #def then
				defstr = defstr..v
			else
				defstr = defstr..v..", "
			end
		end
	else
		for i,v in pairs(def) do
			defstr = defstr..v
		end
	end
	local multibox = {}
	local multiboxholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,35),
			ZIndex = 2,
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,15),
			Parent = multiboxholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline2
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = color
		}
	)
	
	local value = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-20,1,0),
			Position = UDim2.new(0,5,0,0),
			Font = self.library.font,
			Text = defstr,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			ClipsDescendants = true,
			Parent = outline
		}
	)
	
	local indicator = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,1,0),
			Position = UDim2.new(0.5,0,0,0),
			Font = self.library.font,
			Text = "+",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Right",
			ClipsDescendants = true,
			Parent = outline
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,15),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = multiboxholder
		}
	)
	
	local dropdownbutton = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			Parent = multiboxholder
		}
	)
	
	local optionsholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,34),
			Visible = false,
			Parent = multiboxholder
		}
	)
	
	local size = #options
	
	size = math.clamp(size,1,max)
	
	local optionsoutline = utility.new(
		"ScrollingFrame",
		{
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,size,2),
			Position = UDim2.new(0,0,0,0),
			ClipsDescendants = true,
			CanvasSize = UDim2.new(0,0,0,18*#options),
			ScrollBarImageTransparency = 0.25,
			ScrollBarImageColor3 = Color3.fromRGB(0,0,0),
			ScrollBarThickness = 5,
			VerticalScrollBarInset = "ScrollBar",
			VerticalScrollBarPosition = "Right",
			ZIndex = 5,
			Parent = optionsholder
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Parent = optionsoutline
		}
	)
	
	multibox = {
		["library"] = self.library,
		["indicator"] = indicator,
		["optionsholder"] = optionsholder,
		["options"] = options,
		["value"] = value,
		["open"] = false,
		["titles"] = {},
		["current"] = def,
		["callback"] = callback
	}
	
	table.insert(multibox.library.multiboxes,multibox)
	
	for i,v in pairs(options) do
		local ddoptionbutton = utility.new(
			"TextButton",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,0,0,18),
				Text = "",
				ZIndex = 6,
				Parent = optionsoutline
			}
		)
		
		local ddoptiontitle = utility.new(
			"TextLabel",
			{
				AnchorPoint = Vector2.new(0.5,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,-10,1,0),
				Position = UDim2.new(0.5,0,0,0),
				Font = self.library.font,
				Text = v,
				TextColor3 = Color3.fromRGB(255,255,255),
				TextSize = self.library.textsize,
				TextStrokeTransparency = 0,
				TextXAlignment = "Left",
				ClipsDescendants = true,
				ZIndex = 6,
				Parent = ddoptionbutton
			}
		)
		
		self.library.labels[#self.library.labels+1] = ddoptiontitle
		
		table.insert(multibox.titles,ddoptiontitle)
		
		for c,b in pairs(def) do if v == b then ddoptiontitle.TextColor3 = self.library.theme.accent end end
		
		ddoptionbutton.MouseButton1Down:Connect(function()
			local find = table.find(multibox.current,v)
			if find == nil then
				table.insert(multibox.current,v)
				local str = ""
				if #multibox.current > 1 then
					for i,v in pairs(multibox.current) do
						if i == #multibox.current then
							str = str..v
						else
							str = str..v..", "
						end
					end
				else
					for i,v in pairs(multibox.current) do
						str = str..v
					end
				end
				value.Text = str
				ddoptiontitle.TextColor3 = self.library.theme.accent
				table.insert(self.library.themeitems["accent"]["TextColor3"],ddoptiontitle)
				multibox.callback(multibox.current)
			else
				table.remove(multibox.current,find)
				local str = ""
				if #multibox.current > 1 then
					for i,v in pairs(multibox.current) do
						if i == #multibox.current then
							str = str..v
						else
							str = str..v..", "
						end
					end
				else
					for i,v in pairs(multibox.current) do
						str = str..v
					end
				end
				value.Text = str
				ddoptiontitle.TextColor3 = Color3.fromRGB(255,255,255)
				multibox.callback(multibox.current)
			end
		end)
	end
	
	dropdownbutton.MouseButton1Down:Connect(function()
		multibox.library:closewindows(multibox)
		for i,v in pairs(multibox.titles) do
			if v.TextColor3 ~= Color3.fromRGB(255,255,255) then
				v.TextColor3 = self.library.theme.accent
			end
		end
		optionsholder.Visible = not multibox.open
		multibox.open = not multibox.open
		if multibox.open then
			indicator.Text = "-"
		else
			indicator.Text = "+"
		end
	end)
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = multibox
		end
	end
	
	self.library.labels[#self.library.labels+1] = value
	self.library.labels[#self.library.labels+1] = title
	setmetatable(multibox, multiboxs)
	return multibox
end

function buttonboxs:set(value)
	if value == nil then return self end
	
	local buttonbox = self
	if not table.find(buttonbox.options, value) then return self end
	
	buttonbox.current = value
	
	if buttonbox.open then
		buttonbox.optionsholder.Visible = false
		buttonbox.indicator.Text = "+"
		buttonbox.open = false
	end
	
	buttonbox.callback(value)
	
	return self
end

function multiboxs:set(tbl)
	if tbl == nil then return self end
	
	local multibox = self
	if typeof(tbl) ~= "table" then return self end
	
	multibox.current = {}
	
	for i, v in pairs(multibox.titles) do
		v.TextColor3 = Color3.fromRGB(255, 255, 255)
		
		local find = table.find(multibox.library.themeitems["accent"]["TextColor3"], v)
		if find then
			table.remove(multibox.library.themeitems["accent"]["TextColor3"], find)
		end
	end
	
	if #tbl == 0 then
		if multibox.value then
			multibox.value.Text = ""
		end
		
		multibox.callback(multibox.current)
		return self
	end
	
	for i, v in pairs(tbl) do
		if table.find(multibox.options, v) then
			table.insert(multibox.current, v)
		end
	end
	
	for i, v in pairs(multibox.titles) do
		if table.find(multibox.current, v.Text) then
			v.TextColor3 = multibox.library.theme.accent
			table.insert(multibox.library.themeitems["accent"]["TextColor3"], v)
		end
	end
	
	local displayText = ""
	if #multibox.current > 1 then
		for i, v in pairs(multibox.current) do
			if i == #multibox.current then
				displayText = displayText .. v
			else
				displayText = displayText .. v .. ", "
			end
		end
	elseif #multibox.current == 1 then
		displayText = multibox.current[1]
	end
	
	if multibox.value then
		multibox.value.Text = displayText
	end
	
	multibox.callback(multibox.current)
	
	return self
end

function sections:textbox(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local def = props.def or props.Def or props.default or props.Default or ""
	local placeholder = props.placeholder or props.Placeholder or props.placeHolder or props.PlaceHolder or props.placeholdertext or props.PlaceHolderText or props.PlaceHoldertext or props.placeHolderText or props.placeHoldertext or props.Placeholdertext or props.PlaceholderText or props.placeholderText or ""
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	local textbox = {}
	local textboxholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,35),
			ZIndex = 2,
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,15),
			Parent = textboxholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = outline
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Parent = outline2
		}
	)
	
	local gradient = utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = color
		}
	)
	
	local button = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Font = self.library.font,
			Parent = textboxholder
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,15),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = textboxholder
		}
	)
	
	local tbox = utility.new(
		"TextBox",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,0,20),
			Position = UDim2.new(0.5,0,0,15),
			PlaceholderText = placeholder,
			Text = def,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextTruncate = "AtEnd",
			Font = self.library.font,
			Parent = textboxholder
		}
	)
	textbox = {
		["library"] = self.library,
		["tbox"] = tbox,
		["current"] = def,
		["callback"] = callback
	}
	
	button.MouseButton1Down:Connect(function()
		tbox:CaptureFocus()
	end)
	
	tbox.Focused:Connect(function()
		outline.BorderColor3 = self.library.theme.accent
		table.insert(self.library.themeitems["accent"]["BorderColor3"],outline)
	end)
	
	tbox.FocusLost:Connect(function(enterPressed)
		textbox.current = tbox.Text
		callback(tbox.Text)
		outline.BorderColor3 = Color3.fromRGB(12, 12, 12)
		local find = table.find(self.library.themeitems["accent"]["BorderColor3"],outline)
		if find then
			table.remove(self.library.themeitems["accent"]["BorderColor3"],find)
		end
	end)
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = textbox
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	self.library.labels[#self.library.labels+1] = tbox
	setmetatable(textbox, textboxs)
	return textbox
end

function textboxs:set(value)
	if value == nil then return self end
	
	local textbox = self
	
	textbox.tbox.Text = tostring(value)
	textbox.current = tostring(value)
	
	textbox.callback(tostring(value))
	
	return self
end

function sections:keybind(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local def = props.def or props.Def or props.default or props.Default or nil
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	local allowed = props.allowed or props.Allowed or 1
	
	local default = ".."
	local typeis = nil
	
	if typeof(def) == "EnumItem" then
		if def == Enum.UserInputType.MouseButton1 then
			if allowed == 1 then
				default = "MB1"
				typeis = "UserInputType"
			end
		elseif def == Enum.UserInputType.MouseButton2 then
			if allowed == 1 then
				default = "MB2"
				typeis = "UserInputType"
			end
		elseif def == Enum.UserInputType.MouseButton3 then
			if allowed == 1 then
				default = "MB3"
				typeis = "UserInputType"
			end
		else
			local capd = utility.capatalize(def.Name)
			if #capd > 1 then
				default = capd
			else
				default = def.Name
			end
			typeis = "KeyCode"
		end
	end
	local keybind = {}
	local keybindholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,17),
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0,40,1,0),
			Position = UDim2.new(1,0,0,0),
			Parent = keybindholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline
		}
	)
	
	local value = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = default,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Center",
			Parent = outline
		}
	)
	
	outline.Size = UDim2.new(0,value.TextBounds.X+20,1,0)
	
	local color = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(30, 30, 30),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = outline2
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = color
		}
	)
	
	local button = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Font = self.library.font,
			Parent = keybindholder
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = keybindholder
		}
	)

	keybind = {
		["library"] = self.library,
		["down"] = false,
		["outline"] = outline,
		["value"] = value,
		["allowed"] = allowed,
		["current"] = {typeis,utility.splitenum(def)},
		["pressed"] = false,
		["callback"] = callback
	}
	
	button.MouseButton1Down:Connect(function()
		if keybind.down == false then
			outline.BorderColor3 = self.library.theme.accent
			table.insert(self.library.themeitems["accent"]["BorderColor3"],outline)
			wait()
			keybind.down = true
		end
	end)
	
	button.MouseButton2Down:Connect(function()
		keybind.down = false
		keybind.current = {nil,nil}
		outline.BorderColor3 = Color3.fromRGB(12, 12, 12)
		local find = table.find(self.library.themeitems["accent"]["BorderColor3"],outline)
		if find then
			table.remove(self.library.themeitems["accent"]["BorderColor3"],find)
		end
		value.Text = ".."
		outline.Size = UDim2.new(0,value.TextBounds.X+20,1,0)
	end)
	
	local function turn(typeis,current)
		outline.Size = UDim2.new(0,value.TextBounds.X+20,1,0)
		keybind.down = false
		keybind.current = {typeis,utility.splitenum(current)}
		outline.BorderColor3 = Color3.fromRGB(12, 12, 12)
		local find = table.find(self.library.themeitems["accent"]["BorderColor3"],outline)
		if find then
			table.remove(self.library.themeitems["accent"]["BorderColor3"],find)
		end
	end
	
	uis.InputBegan:Connect(function(Input)
		if keybind.down then
			if Input.UserInputType == Enum.UserInputType.Keyboard then
				local capd = utility.capatalize(Input.KeyCode.Name)
				if #capd > 1 then
					value.Text = capd
				else
					value.Text = Input.KeyCode.Name
				end
				turn("KeyCode",Input.KeyCode)
				callback(Input.KeyCode)
			end
			if allowed == 1 then
				if Input.UserInputType == Enum.UserInputType.MouseButton1 then
					value.Text = "MB1"
					turn("UserInputType",Input)
					callback(Input)
				elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
					value.Text = "MB2"
					turn("UserInputType",Input)
					callback(Input)
				elseif Input.UserInputType == Enum.UserInputType.MouseButton3 then
					value.Text = "MB3"
					turn("UserInputType",Input)
					callback(Input)
				end
			end
		end
	end)
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = keybind
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	self.library.labels[#self.library.labels+1] = value
	setmetatable(keybind, keybinds)
	return keybind
end

function keybinds:set(key)
	if key == nil then return self end
	
	local keybind = self
	
	keybind.down = false
	
	if typeof(key) == "table" and #key >= 2 then
		local typeis = key[1]
		local keyName = key[2]
		
		keybind.outline.BorderColor3 = Color3.fromRGB(12, 12, 12)
		local find = table.find(self.library.themeitems["accent"]["BorderColor3"], keybind.outline)
		if find then
			table.remove(self.library.themeitems["accent"]["BorderColor3"], find)
		end
		
		if typeis == "KeyCode" then
			if string.match(keyName, "^F%d+$") then
				keybind.value.Text = keyName
			else
				local displayText = keyName
				if #keyName > 1 then
					displayText = utility.capatalize(keyName)
				end
				keybind.value.Text = displayText
			end
			keybind.current = {typeis, keyName}
		elseif typeis == "UserInputType" then
			if keyName == "MouseButton1" then
				keybind.value.Text = "MB1"
			elseif keyName == "MouseButton2" then
				keybind.value.Text = "MB2"
			elseif keyName == "MouseButton3" then
				keybind.value.Text = "MB3"
			else
				keybind.value.Text = keyName
			end
			keybind.current = {typeis, keyName}
		else
			keybind.value.Text = ".."
			keybind.current = {nil, nil}
		end
		
		keybind.outline.Size = UDim2.new(0, keybind.value.TextBounds.X + 20, 1, 0)
		
		pcall(function()
			if typeis ~= nil and keyName ~= nil then
				local enumValue
				if typeis == "KeyCode" then
					enumValue = Enum.KeyCode[keyName]
				elseif typeis == "UserInputType" then
					enumValue = Enum.UserInputType[keyName]
				end
				
				if enumValue then
					keybind.callback(enumValue)
				end
			end
		end)
		
		return self
	end
	
	if typeof(key) == "EnumItem" then
		local typeis = ""
		local default = ".."
		
		if key.EnumType == Enum.KeyCode then
			if string.match(key.Name, "^F%d+$") then
				default = key.Name
			else
				local capd = utility.capatalize(key.Name)
				if #capd > 1 then
					default = capd
				else
					default = key.Name
				end
			end
			typeis = "KeyCode"
		elseif key.EnumType == Enum.UserInputType then
			if key == Enum.UserInputType.MouseButton1 and keybind.allowed == 1 then
				default = "MB1"
				typeis = "UserInputType"
			elseif key == Enum.UserInputType.MouseButton2 and keybind.allowed == 1 then
				default = "MB2"
				typeis = "UserInputType"
			elseif key == Enum.UserInputType.MouseButton3 and keybind.allowed == 1 then
				default = "MB3"
				typeis = "UserInputType"
			end
		end
		
		if typeis ~= "" then
			keybind.value.Text = default
			keybind.current = {typeis, key.Name}
			keybind.callback(key)
			keybind.outline.Size = UDim2.new(0, keybind.value.TextBounds.X + 20, 1, 0)
		end
	end
	
	return self
end

function sections:colorpicker(props)
	local name = props.name or props.Name or "new colorpicker"
	local cpname = props.cpname or props.Cpname or props.CPname or props.CPName or props.cPname or props.cpName or props.colorpickername or nil
	local def = props.def or props.Def or props.default or props.Default or Color3.fromRGB(255,255,255)
	local callback = props.callback or props.callBack or props.CallBack or props.Callback or function()end
	
	local h,s,v = def:ToHSV()
	local colorpicker = {}
	local colorpickerholder = utility.new(
		"Frame",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,15),
			ZIndex = 2,
			Parent = self.content
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0,30,1,0),
			Position = UDim2.new(1,0,0,0),
			Parent = colorpickerholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Parent = outline
		}
	)
	
	local cpcolor = utility.new(
		"Frame",
		{
			BackgroundColor3 = def,
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			Parent = outline2
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
			Rotation = 90,
			Parent = cpcolor
		}
	)
	
	local title = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Font = self.library.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			Parent = colorpickerholder
		}
	)
	
	local button = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Font = self.library.font,
			Parent = colorpickerholder
		}
	)
	
	local cpholder = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,0,230),
			Position = UDim2.new(0,0,1,5),
			Visible = false,
			ZIndex = 5,
			Parent = colorpickerholder
		}
	)
	
	local outline2 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			ZIndex = 5,
			Parent = cpholder
		}
	)
	
	local color = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundColor3 = self.library.theme.accent,
			BorderSizePixel = 0,
			Size = UDim2.new(1,-2,0,1),
			Position = UDim2.new(0.5,0,0,0),
			ZIndex = 5,
			Parent = outline2
		}
	)
	
	table.insert(self.library.themeitems["accent"]["BackgroundColor3"],color)
	
	local cptitle = utility.new(
		"TextLabel",
		{
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-10,0,20),
			Position = UDim2.new(0.5,0,0,0),
			Font = self.library.font,
			Text = cpname or name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			TextXAlignment = "Left",
			ZIndex = 5,
			Parent = outline2
		}
	)
	
	local cpholder2 = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0.875,0,0,150),
			Position = UDim2.new(0,5,0,20),
			ZIndex = 5,
			Parent = outline2
		}
	)
	
	local outline3 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromHSV(h,1,1),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			ZIndex = 5,
			Parent = cpholder2
		}
	)
	
	local cpimage = utility.new(
		"ImageButton",
		{
			AutoButtonColor = false,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,1,0),
			ZIndex = 5,
			Image = "rbxassetid://7074305282",
			Parent = outline3
		}
	)
	
	local cpcursor = utility.new(
		"ImageLabel",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0,6,0,6),
			Position = UDim2.new(s,0,1-v,0),
			ZIndex = 5,
			Image = "rbxassetid://7074391319",
			Parent = cpimage
		}
	)
	
	local huepicker = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0.05,0,0,150),
			Position = UDim2.new(1,-5,0,20),
			ZIndex = 5,
			Parent = outline2
		}
	)
	
	local outline4 = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			ZIndex = 5,
			Parent = huepicker
		}
	)
	
	local huebutton = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.library.textsize,
			TextStrokeTransparency = 0,
			Font = self.library.font,
			ZIndex = 5,
			Parent = huepicker
		}
	)
	
	utility.new(
		"UIGradient",
		{
			Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 153, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(209, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(55, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 102)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 102, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(51, 0, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(204, 0, 255)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 153)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))},
			Rotation = 90,
			Parent = outline4
		}
	)
	
	local huecursor = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0,12,0,6),
			Position = UDim2.new(0.5,0,h,0),
			ZIndex = 5,
			Parent = outline4
		}
	)
	
	local huecursor_inline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromHSV(h,1,1),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			ZIndex = 5,
			Parent = huecursor
		}
	)
	
	local function textbox(parent,size,position)
		local textbox_holder = utility.new(
			"Frame",
			{
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = position,
				Size = size,
				ZIndex = 5,
				Parent = parent
			}
		)
		
		local outline5 = utility.new(
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(24, 24, 24),
				BorderColor3 = Color3.fromRGB(12, 12, 12),
				BorderMode = "Inset",
				BorderSizePixel = 1,
				Position = UDim2.new(0,0,0,0),
				Size = UDim2.new(1,0,1,0),
				ZIndex = 5,
				Parent = textbox_holder
			}
		)
		
		local outline6 = utility.new(
			"Frame",
			{
				BackgroundColor3 = Color3.fromRGB(24, 24, 24),
				BorderColor3 = Color3.fromRGB(56, 56, 56),
				BorderMode = "Inset",
				BorderSizePixel = 1,
				Position = UDim2.new(0,0,0,0),
				Size = UDim2.new(1,0,1,0),
				ZIndex = 5,
				Parent = outline5
			}
		)
		
		local color2 = utility.new(
			"Frame",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundColor3 = Color3.fromRGB(30, 30, 30),
				BorderSizePixel = 0,
				Size = UDim2.new(1,0,0,0),
				Position = UDim2.new(0,0,0,0),
				ZIndex = 5,
				Parent = outline6
			}
		)
		
		utility.new(
			"UIGradient",
			{
				Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
				Rotation = 90,
				Parent = color2
			}
		)
		
		local tbox = utility.new(
			"TextBox",
			{
				AnchorPoint = Vector2.new(0.5,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,0,1,0),
				Position = UDim2.new(0.5,0,0,0),
				PlaceholderColor3 = Color3.fromRGB(255,255,255),
				PlaceholderText = "",
				Text = "",
				TextColor3 = Color3.fromRGB(255,255,255),
				TextSize = self.library.textsize,
				TextStrokeTransparency = 0,
				Font = self.library.font,
				ZIndex = 5,
				Parent = textbox_holder
			}
		)
		
		local tbox_button = utility.new(
			"TextButton",
			{
				AnchorPoint = Vector2.new(0,0),
				BackgroundTransparency = 1,
				Size = UDim2.new(1,0,1,0),
				Position = UDim2.new(0,0,0,0),
				Text = "",
				TextColor3 = Color3.fromRGB(255,255,255),
				TextSize = self.library.textsize,
				TextStrokeTransparency = 0,
				Font = self.library.font,
				ZIndex = 5,
				Parent = textbox_holder
			}
		)
		
		tbox_button.MouseButton1Down:Connect(function()
			tbox:CaptureFocus()
		end)
		return {textbox_holder,tbox,outline5}
	end
	local red = textbox(outline2,UDim2.new(0,62,0,20),UDim2.new(0,5,0,175))
	local green = textbox(outline2,UDim2.new(0,62,0,20),UDim2.new(0,5,0,175))
	green[1].AnchorPoint = Vector2.new(0.5,0)
	green[1].Position = UDim2.new(0.5,0,0,175)
	local blue = textbox(outline2,UDim2.new(0,62,0,20),UDim2.new(0,5,0,175))
	blue[1].AnchorPoint = Vector2.new(1,0)
	blue[1].Position = UDim2.new(1,-5,0,175)
	local hex = textbox(outline2,UDim2.new(1,-10,0,20),UDim2.new(0,5,0,200))
	hex[2].Size = UDim2.new(1,-12,1,0)
	hex[2].TextXAlignment = "Left"
	colorpicker = {
		["library"] = self.library,
		["cpholder"] = cpholder,
		["cpcolor"] = cpcolor,
		["huecursor"] = huecursor,
		["outline3"] = outline3,
		["huecursor_inline"] = huecursor_inline,
		["cpcursor"] = cpcursor,
		["current"] = def,
		["open"] = false,
		["cp"] = false,
		["hue"] = false,
		["hsv"] = {h,s,v},
		["red"] = red[2],
		["green"] = green[2],
		["blue"] = blue[2],
		["hex"] = hex[2],
		["callback"] = callback
	}
	
	table.insert(self.library.colorpickers,colorpicker)
	
	local function updateboxes()
		colorpicker.red.PlaceholderText = "R: "..tostring(math.floor(colorpicker.current.R*255))
		colorpicker.green.PlaceholderText = "G: "..tostring(math.floor(colorpicker.current.G*255))
		colorpicker.blue.PlaceholderText = "B: "..tostring(math.floor(colorpicker.current.B*255))
		colorpicker.hex.PlaceholderText = "Hex: "..utility.to_hex(colorpicker.current)
	end
	
	updateboxes()
	
	local function movehue()
		local posy = math.clamp(plr:GetMouse().Y-outline3.AbsolutePosition.Y,0,outline3.AbsoluteSize.Y)
		local resy = (1/outline3.AbsoluteSize.Y)*posy
		outline3.BackgroundColor3 = Color3.fromHSV(resy,1,1)
		huecursor_inline.BackgroundColor3 = Color3.fromHSV(resy,1,1)
		colorpicker.hsv[1] = resy
		colorpicker.current = Color3.fromHSV(colorpicker.hsv[1],colorpicker.hsv[2],colorpicker.hsv[3])
		cpcolor.BackgroundColor3 = colorpicker.current
		updateboxes()
		colorpicker.callback(colorpicker.current)
		huecursor:TweenPosition(UDim2.new(0.5,0,resy,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.15,true)
	end
	
	local function movecp()
		local posx,posy = math.clamp(plr:GetMouse().X-outline3.AbsolutePosition.X,0,outline3.AbsoluteSize.X),math.clamp(plr:GetMouse().Y-outline3.AbsolutePosition.Y,0,outline3.AbsoluteSize.Y)
		local resx,resy = (1/outline3.AbsoluteSize.X)*posx,(1/outline3.AbsoluteSize.Y)*posy
		colorpicker.hsv[2] = resx
		colorpicker.hsv[3] = 1-resy
		colorpicker.current = Color3.fromHSV(colorpicker.hsv[1],colorpicker.hsv[2],colorpicker.hsv[3])
		cpcolor.BackgroundColor3 = colorpicker.current
		updateboxes()
		colorpicker.callback(colorpicker.current)
		cpcursor:TweenPosition(UDim2.new(resx,0,resy,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.15,true)
	end
	
	button.MouseButton1Down:Connect(function()
		self.library:closewindows(colorpicker)
		cpholder.Visible = not colorpicker.open
		colorpicker.open = not colorpicker.open
	end)
	
	huebutton.MouseButton1Down:Connect(function()
		colorpicker.hue = true
		movehue()
	end)
	
	cpimage.MouseButton1Down:Connect(function()
		colorpicker.cp = true
		movecp()
	end)
	
	uis.InputChanged:Connect(function()
		if colorpicker.cp then
			movecp()
		end
		if colorpicker.hue then
			movehue()
		end
	end)
	
	uis.InputEnded:Connect(function(Input)
		if Input.UserInputType.Name == 'MouseButton1'  then
			if colorpicker.cp then
				colorpicker.cp = false
			end
			if colorpicker.hue then
				colorpicker.hue = false
			end
		end
	end)
	
	red[2].Focused:Connect(function()
		red[3].BorderColor3 = self.library.theme.accent
	end)
	
	red[2].FocusLost:Connect(function()
		local saved = red[2].Text
		local num = tonumber(saved)
		if num then
			saved = tostring(math.clamp(tonumber(saved),0,255))
			red[2].Text = ""
			if saved then
				if #saved >= 1 and #saved <= 3 then
					red[2].PlaceholderText = "R: "..tostring(saved)
				end
				colorpicker:set(Color3.fromRGB(tonumber(saved),colorpicker.current.G*255,colorpicker.current.B*255))
				red[3].BorderColor3 = Color3.fromRGB(12,12,12)
			else
				red[3].BorderColor3 = Color3.fromRGB(12,12,12)
			end
		else
			red[2].Text = ""
			red[3].BorderColor3 = Color3.fromRGB(12,12,12)
		end
	end)
	
	green[2].Focused:Connect(function()
		green[3].BorderColor3 = self.library.theme.accent
	end)
	
	green[2].FocusLost:Connect(function()
		local saved = green[2].Text
		local num = tonumber(saved)
		if num then
			saved = tostring(math.clamp(tonumber(saved),0,255))
			green[2].Text = ""
			if saved then
				if #saved >= 1 and #saved <= 3 then
					green[2].PlaceholderText = "G: "..tostring(saved)
				end
				colorpicker:set(Color3.fromRGB(colorpicker.current.R*255,tonumber(saved),colorpicker.current.B*255))
				green[3].BorderColor3 = Color3.fromRGB(12,12,12)
			else
				green[3].BorderColor3 = Color3.fromRGB(12,12,12)
			end
		else
			green[2].Text = ""
			green[3].BorderColor3 = Color3.fromRGB(12,12,12)
		end
	end)
	
	blue[2].Focused:Connect(function()
		blue[3].BorderColor3 = self.library.theme.accent
	end)
	
	blue[2].FocusLost:Connect(function()
		local saved = blue[2].Text
		local num = tonumber(saved)
		if num then
			saved = tostring(math.clamp(tonumber(saved),0,255))
			blue[2].Text = ""
			if saved then
				if #saved >= 1 and #saved <= 3 then
					blue[2].PlaceholderText = "B: "..tostring(saved)
				end
				colorpicker:set(Color3.fromRGB(colorpicker.current.R*255,colorpicker.current.G*255,tonumber(saved)))
				blue[3].BorderColor3 = Color3.fromRGB(12,12,12)
			else
				blue[3].BorderColor3 = Color3.fromRGB(12,12,12)
			end
		else
			blue[2].Text = ""
			blue[3].BorderColor3 = Color3.fromRGB(12,12,12)
		end
	end)
	
	hex[2].Focused:Connect(function()
		hex[3].BorderColor3 = self.library.theme.accent
	end)
	
	hex[2].FocusLost:Connect(function()
		local saved = hex[2].Text
		if #saved >= 6 and #saved <= 7 then
			local e,s = pcall(function()
				utility.from_hex(saved)
			end)
			if e == true then
				local hexcolor = utility.from_hex(saved)
				if hexcolor then
					colorpicker:set(hexcolor)
					hex[2].Text = ""
					hex[3].BorderColor3 = Color3.fromRGB(12,12,12)
				else
					hex[2].Text = ""
					hex[3].BorderColor3 = Color3.fromRGB(12,12,12)
				end
			else
				hex[2].Text = ""
				hex[3].BorderColor3 = Color3.fromRGB(12,12,12)
			end
		else
			hex[2].Text = ""
			hex[3].BorderColor3 = Color3.fromRGB(12,12,12)
		end
	end)
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		if self.pointers then
			self.pointers[tostring(pointer)] = colorpicker
		end
	end
	
	self.library.labels[#self.library.labels+1] = title
	self.library.labels[#self.library.labels+1] = hex[2]
	self.library.labels[#self.library.labels+1] = red[2]
	self.library.labels[#self.library.labels+1] = green[2]
	self.library.labels[#self.library.labels+1] = blue[2]
	self.library.labels[#self.library.labels+1] = cptitle
	setmetatable(colorpicker, colorpickers)
	return colorpicker
end

function colorpickers:set(color)
	if color == nil then return self end
	
	local colorpicker = self
	
	if typeof(color) == "table" and #color >= 3 then
		color = Color3.fromRGB(color[1]*255, color[2]*255, color[3]*255)
	end
	
	if typeof(color) ~= "Color3" then return self end
	
	colorpicker.current = color
	
	local h, s, v = color:ToHSV()
	colorpicker.hsv = {h, s, v}
	
	colorpicker.cpcolor.BackgroundColor3 = color
	
	if colorpicker.huecursor then
		colorpicker.outline3.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
		colorpicker.huecursor_inline.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
		colorpicker.huecursor.Position = UDim2.new(0.5, 0, h, 0)
	end
	
	if colorpicker.cpcursor then
		colorpicker.cpcursor.Position = UDim2.new(s, 0, 1-v, 0)
	end
	
	if colorpicker.red then
		colorpicker.red.PlaceholderText = "R: " .. tostring(math.floor(color.R * 255))
	end
	
	if colorpicker.green then
		colorpicker.green.PlaceholderText = "G: " .. tostring(math.floor(color.G * 255))
	end
	
	if colorpicker.blue then
		colorpicker.blue.PlaceholderText = "B: " .. tostring(math.floor(color.B * 255))
	end
	
	if colorpicker.hex then
		colorpicker.hex.PlaceholderText = "Hex: " .. utility.to_hex(color)
	end
	
	colorpicker.callback(color)
	
	return self
end

function sections:configloader(props)
    local folder = props.folder or props.Folder or "nexifyv3" 
    local configloader = {}
    local clholder = utility.new(
        "Frame",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 222),
            Parent = self.content
        }
    )
    
    local outline = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Parent = clholder
        }
    )
    
    local outline2 = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Parent = outline
        }
    )
    
    local title = utility.new(
        "TextLabel",
        {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 15),
            Position = UDim2.new(0, 0, 0, 3),
            Font = self.library.font,
            Text = "configs",
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextSize = self.library.textsize,
            TextStrokeTransparency = 0,
            TextXAlignment = "Center",
            Parent = outline
        }
    )
    
    self.library.labels[#self.library.labels + 1] = title
    
    local color = utility.new(
        "Frame",
        {
            AnchorPoint = Vector2.new(0.5, 0),
            BackgroundColor3 = self.library.theme.accent,
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, -6, 0, 1),
            Position = UDim2.new(0.5, 0, 0, 19),
            Parent = outline
        }
    )
    
    table.insert(self.library.themeitems["accent"]["BackgroundColor3"], color)
    
    local buttonsholder = utility.new(
        "Frame",
        {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.new(1, 0, 0, 64),
            Position = UDim2.new(0, 0, 0, 150),
            Parent = outline
        }
    )
    
    local configsholder = utility.new(
        "Frame",
        {
            AnchorPoint = Vector2.new(0.5, 0),
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(12, 12, 12),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, -10, 0, 120),
            Position = UDim2.new(0.5, 0, 0, 25),
            Parent = outline
        }
    )
    
    local outline3 = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
            BorderColor3 = Color3.fromRGB(56, 56, 56),
            BorderMode = "Inset",
            BorderSizePixel = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            Parent = configsholder
        }
    )
    
    local outline4 = utility.new(
        "ScrollingFrame",
        {
            BackgroundColor3 = Color3.fromRGB(56, 56, 56),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            ClipsDescendants = true,
            AutomaticCanvasSize = "Y",
            CanvasSize = UDim2.new(0, 0, 0, 0),
            ScrollBarImageTransparency = 0.25,
            ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
            ScrollBarThickness = 5,
            VerticalScrollBarInset = "ScrollBar",
            VerticalScrollBarPosition = "Right",
            Parent = outline3
        }
    )
    
    utility.new(
        "UIListLayout",
        {
            FillDirection = "Vertical",
            Padding = UDim.new(0, 0),
            Parent = outline4
        }
    )
    
    local createdbuttons = {}
    local selected
    local makebutton = function(name, toggled)
        local createdbutton = utility.new(
            "TextButton",
            {
                AnchorPoint = Vector2.new(0, 0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 18),
                Position = UDim2.new(0, 0, 0, 0),
                Text = "",
                Parent = outline4
            }
        )
        
        local grey = utility.new(
            "Frame",
            {
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundColor3 = Color3.fromRGB(125, 125, 125),
                BackgroundTransparency = 0.9,
                BorderSizePixel = 0,
                Size = UDim2.new(1, -4, 1, 0),
                Position = UDim2.new(0.5, 0, 0, 0),
                Visible = false,
                Parent = createdbutton
            }
        )
        
        local createdtitle = utility.new(
            "TextLabel",
            {
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -10, 1, 0),
                Position = UDim2.new(0.5, 0, 0, 0),
                Font = self.library.font,
                Text = name,
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = self.library.textsize,
                TextStrokeTransparency = 0,
                TextXAlignment = "Left",
                Parent = createdbutton
            }
        )
        
        self.library.labels[#self.library.labels + 1] = createdtitle
        
        local createdb = {
            ["button"] = createdbutton,
            ["grey"] = grey,
            ["title"] = createdtitle,
            ["name"] = name
        }
        
        table.insert(createdbuttons, createdb)
        
        if toggled then
            createdb.grey.Visible = true
            createdb.title.TextColor3 = self.library.theme.accent
            table.insert(self.library.themeitems["accent"]["TextColor3"], createdb.title)
            selected = createdb
        end
    
        createdbutton.MouseButton1Down:Connect(function()
            for i, v in pairs(createdbuttons) do
                if v ~= createdb then
                    v.grey.Visible = false
                    v.title.TextColor3 = Color3.fromRGB(255, 255, 255)
                    local find = table.find(self.library.themeitems["accent"]["TextColor3"], v.title)
                    if find then
                        table.remove(self.library.themeitems["accent"]["TextColor3"], find)
                    end
                end
            end
            
            createdb.grey.Visible = true
            createdb.title.TextColor3 = self.library.theme.accent
            table.insert(self.library.themeitems["accent"]["TextColor3"], createdb.title)
            selected = createdb
        end)
    end
    
    local newbutton = function(parent, name)
        local button_holder = utility.new(
            "Frame",
            {
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                ZIndex = 5,
                Parent = parent
            }
        )
        
        local button_outline = utility.new(
            "Frame",
            {
                BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                BorderColor3 = Color3.fromRGB(12, 12, 12),
                BorderMode = "Inset",
                BorderSizePixel = 1,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                ZIndex = 5,
                Parent = button_holder
            }
        )
        
        local button_outline2 = utility.new(
            "Frame",
            {
                BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                BorderColor3 = Color3.fromRGB(56, 56, 56),
                BorderMode = "Inset",
                BorderSizePixel = 1,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                ZIndex = 5,
                Parent = button_outline
            }
        )
        
        local button_color = utility.new(
            "Frame",
            {
                AnchorPoint = Vector2.new(0, 0),
                BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                BorderSizePixel = 0,
                Size = UDim2.new(1, 0, 0, 0),
                Position = UDim2.new(0, 0, 0, 0),
                ZIndex = 5,
                Parent = button_outline2
            }
        )
        
        utility.new(
            "UIGradient",
            {
                Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
                Rotation = 90,
                Parent = button_color
            }
        )
        
        local button_button = utility.new(
            "TextButton",
            {
                AnchorPoint = Vector2.new(0, 0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                Text = name,
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = self.library.textsize,
                TextStrokeTransparency = 0,
                Font = self.library.font,
                ZIndex = 5,
                Parent = button_holder
            }
        )
        
        self.library.labels[#self.library.labels + 1] = button_button
        
        return {button_holder, button_outline, button_button}
    end
    
    local function textbox(parent)
        local textbox_holder = utility.new(
            "Frame",
            {
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                ZIndex = 5,
                Parent = parent
            }
        )
        
        local outline5 = utility.new(
            "Frame",
            {
                BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                BorderColor3 = Color3.fromRGB(12, 12, 12),
                BorderMode = "Inset",
                BorderSizePixel = 1,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                ZIndex = 5,
                Parent = textbox_holder
            }
        )
        
        local outline6 = utility.new(
            "Frame",
            {
                BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                BorderColor3 = Color3.fromRGB(56, 56, 56),
                BorderMode = "Inset",
                BorderSizePixel = 1,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                ZIndex = 5,
                Parent = outline5
            }
        )
        
        local color2 = utility.new(
            "Frame",
            {
                AnchorPoint = Vector2.new(0, 0),
                BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                BorderSizePixel = 0,
                Size = UDim2.new(1, 0, 0, 0),
                Position = UDim2.new(0, 0, 0, 0),
                ZIndex = 5,
                Parent = outline6
            }
        )
        
        utility.new(
            "UIGradient",
            {
                Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(199, 191, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))},
                Rotation = 90,
                Parent = color2
            }
        )
        
        local tbox = utility.new(
            "TextBox",
            {
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0.5, 0, 0, 0),
                PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
                PlaceholderText = "",
                Text = "",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = self.library.textsize,
                TextStrokeTransparency = 0,
                Font = self.library.font,
                ZIndex = 5,
                Parent = textbox_holder
            }
        )
        
        local tbox_button = utility.new(
            "TextButton",
            {
                AnchorPoint = Vector2.new(0, 0),
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                Text = "",
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = self.library.textsize,
                TextStrokeTransparency = 0,
                Font = self.library.font,
                ZIndex = 5,
                Parent = textbox_holder
            }
        )
        
        tbox_button.MouseButton1Down:Connect(function()
            tbox:CaptureFocus()
        end)
        
        return {textbox_holder, tbox, outline5}
    end
    
    local function refresh()
        for i, v in pairs(createdbuttons) do
            v.button:Remove()
            v.grey:Remove()
            v.title:Remove()
        end
        createdbuttons = {}
        if not isfolder(folder) then
            makefolder(folder)
        end
        local files = listfiles(folder)
        for i, v in pairs(files) do
            if v:sub(-4) == ".cfg" then
                local cfgname = v:sub(#tostring(folder) + 2, -5)
                if i == 1 then
                    makebutton(cfgname, true)
                else
                    makebutton(cfgname, false)
                end
            end
        end
    end
    
    refresh()
    
    local name = textbox(buttonsholder)
    local load = newbutton(buttonsholder, "Load")
    local delete = newbutton(buttonsholder, "Delete")
    local save = newbutton(buttonsholder, "Save")
    local create = newbutton(buttonsholder, "Create")
    
    name[1].Size = UDim2.new(1, -10, 0, 20)
    load[1].Size = UDim2.new(0.5, -6, 0, 20)
    delete[1].Size = UDim2.new(0.5, -6, 0, 20)
    save[1].Size = UDim2.new(0.5, -6, 0, 20)
    create[1].Size = UDim2.new(0.5, -6, 0, 20)
    
    name[1].Position = UDim2.new(0.5, 0, 0, 0)
    name[1].AnchorPoint = Vector2.new(0.5, 0)
    
    load[1].Position = UDim2.new(0, 5, 0, 22)
    load[1].AnchorPoint = Vector2.new(0, 0)
    
    delete[1].Position = UDim2.new(1, -5, 0, 22)
    delete[1].AnchorPoint = Vector2.new(1, 0)
    
    save[1].Position = UDim2.new(0, 5, 0, 44)
    save[1].AnchorPoint = Vector2.new(0, 0)
    
    create[1].Position = UDim2.new(1, -5, 0, 44)
    create[1].AnchorPoint = Vector2.new(1, 0)
    
    name[2].PlaceholderText = "Name"
    
    local currentname = nil
    
    name[2].Focused:Connect(function()
        name[3].BorderColor3 = self.library.theme.accent
    end)
    
    name[2].FocusLost:Connect(function()
        local saved = name[2].Text
        if #saved >= 3 and #saved <= 15 then
            currentname = saved
        else
            name[2].Text = ""
            currentname = nil
        end
        name[3].BorderColor3 = Color3.fromRGB(12, 12, 12)
    end)
    
    load[3].MouseButton1Down:Connect(function()
        if selected then
            local filepath = folder .. "/" .. selected.name .. ".cfg"
            if isfile(filepath) then
                self.library:loadconfig(filepath)
                load[2].BorderColor3 = self.library.theme.accent
                wait(0.05)
                load[2].BorderColor3 = Color3.fromRGB(12, 12, 12)
            end
        end
    end)
    
    delete[3].MouseButton1Down:Connect(function()
        if selected then
            local filepath = folder .. "/" .. selected.name .. ".cfg"
            if isfile(filepath) then
                delfile(filepath)
                delete[2].BorderColor3 = self.library.theme.accent
                wait(0.05)
                delete[2].BorderColor3 = Color3.fromRGB(12, 12, 12)
                wait()
                refresh()
            end
        end
    end)
    
    save[3].MouseButton1Down:Connect(function()
        if selected then
            local filepath = folder .. "/" .. selected.name .. ".cfg"
            local config_data = self.library:saveconfig()
            if config_data and config_data ~= "{}" then
                writefile(filepath, config_data)
                save[2].BorderColor3 = self.library.theme.accent
                wait(0.05)
                save[2].BorderColor3 = Color3.fromRGB(12, 12, 12)
                wait()
                refresh()
            else
                warn("Failed to save config: No configuration data available")
            end
        end
    end)
    
    create[3].MouseButton1Down:Connect(function()
        if currentname then
            local filepath = folder .. "/" .. currentname .. ".cfg"
            local config_data = self.library:saveconfig()
            if config_data and config_data ~= "{}" then
                writefile(filepath, config_data)
                create[2].BorderColor3 = self.library.theme.accent
                wait(0.05)
                create[2].BorderColor3 = Color3.fromRGB(12, 12, 12)
                wait()
                refresh()
            else
                warn("Failed to create config: No configuration data available")
            end
        end
    end)
    configloader = {
        ["library"] = self.library
    }
    setmetatable(configloader, configloaders)
    return configloader
end

function library:debugpointers()
    local function serializeTable(tbl, indent)
        if not indent then indent = 0 end
        local result = ""
        for k, v in pairs(tbl) do
            local formatting = string.rep("  ", indent) .. tostring(k) .. ": "
            if type(v) == "table" then
                if k == "library" or k == "titles" or k == "themeitems" then
                    result = result .. formatting .. "[table: circular reference]\n"
                else
                    result = result .. formatting .. "\n" .. serializeTable(v, indent + 1)
                end
            elseif type(v) == "function" then
                result = result .. formatting .. "[function]\n"
            elseif type(v) == "userdata" then
                result = result .. formatting .. "[userdata]\n"
            else
                result = result .. formatting .. tostring(v) .. "\n"
            end
        end
        return result
    end

    warn("\n--- POINTER STRUCTURE DEBUG ---\n")
    warn(serializeTable(self.pointers))
    warn("\n--- END POINTER STRUCTURE ---\n")
end

function library:settheme(theme, color)
	local window = self
	
	if not window.theme then
		warn("Theme table not found")
		return self
	end
	
	if not window.theme[theme] then
		warn("Theme '" .. tostring(theme) .. "' not found")
		return self
	end
	
	window.theme[theme] = color
	
	if window.themeitems and window.themeitems[theme] then
		for property, elements in pairs(window.themeitems[theme]) do
			for _, element in pairs(elements) do
				if element and element[property] then
					utility.tweenColor(element, property, color)
				end
			end
		end
	end
	
	return self
end

function library:setaccentcolor(color)
	if typeof(color) ~= "Color3" then 
		warn("Accent color must be a Color3 value")
		return self
	end
	
	return self:settheme("accent", color)
end

function library:setuptheme(options)
	local options = options or {}
	local accent = options.accent or options.Accent or options.accentColor or options.AccentColor or self.theme.accent
	
	self:setaccentcolor(accent)
	
	
	return self
end

function library:setkey(key)
	if typeof(key) == "EnumItem" then
		local window = self
		window.key = key
	end
	return self
end

function library:settoggle(side,bool)
	if side == "x" then
		self.x = bool
	else
		self.y = bool
	end
	return self
end

function library:setfont(font)
	if font ~= nil then
		local window = self
		for i,v in pairs(window.labels) do
			if v ~= nil then
				v.Font = font
			end
		end
	end
	return self
end

function library:settextsize(size)
	if size ~= nil then
		local window = self
		for i,v in pairs(window.labels) do
			if v ~= nil then
				v.TextSize = size
			end
		end
	end
	return self
end

function library:page(props)
	local name = props.name or props.Name or props.page or props.Page or props.pagename or props.Pagename or props.PageName or props.pageName or "new ui"
	local page = {}
	local tabbutton = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderColor3 = Color3.fromRGB(12, 12, 12),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(0,75,1,0), 
			Parent = self.tabsbuttons
		}
	)
	
	local outline = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderColor3 = Color3.fromRGB(56, 56, 56),
			BorderMode = "Inset",
			BorderSizePixel = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Parent = tabbutton
		}
	)
	
	local button = utility.new(
		"TextButton",
		{
			AnchorPoint = Vector2.new(0,0),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,1,0),
			Position = UDim2.new(0,0,0,0),
			Text = "",
			Parent = tabbutton
		}
	)
	
	local r_line = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderSizePixel = 0,
			Size = UDim2.new(0,1,0,1),
			Position = UDim2.new(1,0,1,1),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local l_line = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundColor3 = Color3.fromRGB(56, 56, 56),
			BorderSizePixel = 0,
			Size = UDim2.new(0,1,0,1),
			Position = UDim2.new(0,0,1,1),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local line = utility.new(
		"Frame",
		{
			BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			BorderSizePixel = 0,
			Size = UDim2.new(1,0,0,2),
			Position = UDim2.new(0,0,1,0),
			ZIndex = 2,
			Parent = outline
		}
	)
	
	local label = utility.new(
		"TextLabel",
		{
			BackgroundTransparency = 1,
			Size = UDim2.new(1,0,0,20),
			Position = UDim2.new(0,0,0,0),
			Font = self.font,
			Text = name,
			TextColor3 = Color3.fromRGB(255,255,255),
			TextSize = self.textsize,
			TextStrokeTransparency = 0,
			Parent = outline
		}
	)

	local underline = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5, 1),
			BackgroundColor3 = self.theme.accent,
			BorderSizePixel = 0,
			Size = UDim2.new(0.8, 0, 0, 1),
			Position = UDim2.new(0.5, 0, 0.9, 0),
			Visible = false,
			ZIndex = 3,
			Parent = label
		}
	)

	table.insert(self.themeitems["accent"]["BackgroundColor3"], underline)

	local function updateTabWidth()
		local textWidth = label.TextBounds.X
		local padding = 24 
		tabbutton.Size = UDim2.new(0, textWidth + padding, 1, 0)
	end

	label:GetPropertyChangedSignal("TextBounds"):Connect(updateTabWidth)
	updateTabWidth() 

	local pageholder = utility.new(
		"Frame",
		{
			AnchorPoint = Vector2.new(0.5,0.5),
			BackgroundTransparency = 1,
			Size = UDim2.new(1,-20,1,-20),
			Position = UDim2.new(0.5,0,0.5,0),
			Visible = false,
			Parent = self.tabs
		}
	)
	
	local left = utility.new(
		"ScrollingFrame",
		{
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0.5,-5,1,0),
			Position = UDim2.new(0,0,0,0),
			AutomaticCanvasSize = "Y",
			CanvasSize = UDim2.new(0,0,0,0),
			ScrollBarImageTransparency = 1,
			ScrollBarImageColor3 = Color3.fromRGB(0,0,0),
			ScrollBarThickness = 0,
			ClipsDescendants = false,
			VerticalScrollBarInset = "None",
			VerticalScrollBarPosition = "Right",
			Parent = pageholder
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Padding = UDim.new(0,10),
			Parent = left
		}
	)
	
	local right = utility.new(
		"ScrollingFrame",
		{
			AnchorPoint = Vector2.new(1,0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0.5,-5,1,0),
			Position = UDim2.new(1,0,0,0),
			AutomaticCanvasSize = "Y",
			CanvasSize = UDim2.new(0,0,0,0),
			ScrollBarImageTransparency = 1,
			ScrollBarImageColor3 = Color3.fromRGB(0,0,0),
			ScrollBarThickness = 0,
			ClipsDescendants = false,
			VerticalScrollBarInset = "None",
			VerticalScrollBarPosition = "Right",
			Parent = pageholder
		}
	)
	
	utility.new(
		"UIListLayout",
		{
			FillDirection = "Vertical",
			Padding = UDim.new(0,10),
			Parent = right
		}
	)
	
	page = {
		["library"] = self,
		["outline"] = outline,
		["r_line"] = r_line,
		["l_line"] = l_line,
		["line"] = line,
		["page"] = pageholder,
		["left"] = left,
		["right"] = right,
		["open"] = false,
		["underline"] = underline,
		["pointers"] = {}
	}
	
	table.insert(self.pages,page)
	
	button.MouseButton1Down:Connect(function()
		
		if page.open == false then
			for i,v in pairs(self.pages) do
				if v ~= page then
					if v.open then
						v.page.Visible = false
						v.open = false
						v.outline.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						v.line.Size = UDim2.new(1,0,0,2)
						v.line.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						v.underline.Visible = false
					end
				end
			end
			
			self:closewindows()
			
			page.page.Visible = true
			page.open = true
			page.outline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			page.line.Size = UDim2.new(1,0,0,3)
			page.line.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			page.underline.Visible = true

			for _, esppreview in pairs(self.esppreviews or {}) do
				utility.tweenTransparency(esppreview.previewholder, 0.5, 1)
				esppreview.previewholder.Visible = false
			end
			if page.esppreview then
				utility.tweenTransparency(page.esppreview.previewholder, 0.5, 0)
				page.esppreview.previewholder.Visible = true
			end

		end
	end)

	page.openpage = function()
		if page.open == false then
			for i,v in pairs(page.library.pages) do
				if v ~= page then
					if v.open then
						v.page.Visible = false
						v.open = false
						v.outline.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						v.line.Size = UDim2.new(1,0,0,2)
						v.line.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						v.underline.Visible = false
					end
				end
			end
			
			page.page.Visible = true
			page.open = true
			page.outline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			page.line.Size = UDim2.new(1,0,0,3)
			page.line.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			page.underline.Visible = true
			
			for _, esppreview in pairs(page.library.esppreviews or {}) do
				utility.tweenTransparency(esppreview.previewholder, 0.5, 1)
				esppreview.previewholder.Visible = false
			end
			if page.esppreview then
				utility.tweenTransparency(page.esppreview.previewholder, 0.5, 0)
				page.esppreview.previewholder.Visible = true
			end
		end
	end
	
	if #self.pages == 1 then
		task.defer(function()
			page.openpage()
		end)
	end
	
	local pointer = props.pointer or props.Pointer or props.pointername or props.Pointername or props.PointerName or props.pointerName or nil
	
	if pointer then
		self.pointers[tostring(pointer)] = page.pointers
	end
	
	self.labels[#self.labels+1] = label
	setmetatable(page, pages)
	return page
end

function library:selectPageIndex(index)
	if self.pages and self.pages[index] then
		self.pages[index].openpage()
		return true
	end
	return false
end


function library:settingspage(props)
    local props = props or {}
    local name = props.name or props.Name or "Settings"
    local config_folder = props.folder or props.Folder or props.config_folder or "nexify/settings"
    local custom_settings = props.settings or props.Settings or props.custom_settings or props.Custom_Settings or {}
    
    local settings_page = self:page({
        name = name,
        pointer = "settingsPage"
    })
    
    local theme_section = settings_page:section({
        name = "Theme",
        side = "left",
        pointer = "themeSection"
    })
    
    local current_accent = self.theme.accent
    theme_section:colorpicker({
        name = "Accent Color",
        def = current_accent,
        pointer = "accentColor",
        callback = function(color)
            self:setaccentcolor(color)
        end
    })
    
    local ui_section = settings_page:section({
        name = "UI Settings",
        side = "left",
        pointer = "uiSection"
    })
    
    ui_section:keybind({
        name = "UI Toggle Key",
        def = self.key,
        pointer = "uiToggleKey",
        callback = function(key)
            self:setkey(key)
        end
    })
    
    ui_section:toggle({
        name = "X Axis Animation",
        def = self.x,
        pointer = "xAxisToggle",
        callback = function(state)
            self:settoggle("x", state)
        end
    })
    
    ui_section:toggle({
        name = "Y Axis Animation",
        def = self.y,
        pointer = "yAxisToggle",
        callback = function(state)
            self:settoggle("y", state)
        end
    })
    
    if type(custom_settings) == "table" and #custom_settings > 0 then
        local custom_section = settings_page:section({
            name = "Custom Settings",
            side = props.custom_side or "left",
            pointer = "customSettingsSection"
        })
        
        for _, setting in ipairs(custom_settings) do
            local element_type = setting.type or "toggle"
            local setting_props = {}
            
            for k, v in pairs(setting) do
                if k ~= "type" then
                    setting_props[k] = v
                end
            end
            
            if element_type == "toggle" then
                custom_section:toggle(setting_props)
            elseif element_type == "slider" then
                custom_section:slider(setting_props)
            elseif element_type == "dropdown" then
                custom_section:dropdown(setting_props)
            elseif element_type == "colorpicker" then
                custom_section:colorpicker(setting_props)
            elseif element_type == "keybind" then
                custom_section:keybind(setting_props)
            elseif element_type == "button" then
                custom_section:button(setting_props)
            elseif element_type == "textbox" then
                custom_section:textbox(setting_props)
            end
        end
    end
    
    local config_section = settings_page:section({
        name = "Configuration",
        side = "right",
        pointer = "configSection"
    })
    
    local configs = config_section:configloader({
        folder = config_folder,
        pointer = "configLoader"
    })
    
    local info_section = settings_page:section({
        name = "Information",
        side = "right",
        pointer = "infoSection"
    })
    
    local function createInfoLabel(title, value)
        local holder = utility.new(
            "Frame",
            {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 20),
                Parent = info_section.content
            }
        )
        
        local titleLabel = utility.new(
            "TextLabel",
            {
                BackgroundTransparency = 1,
                Size = UDim2.new(0.4, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                Font = self.font,
                Text = title,
                TextColor3 = Color3.fromRGB(255, 255, 255),
                TextSize = self.textsize,
                TextStrokeTransparency = 0,
                TextXAlignment = "Left",
                Parent = holder
            }
        )
        
        local valueLabel = utility.new(
            "TextLabel",
            {
                BackgroundTransparency = 1,
                Size = UDim2.new(0.6, 0, 1, 0),
                Position = UDim2.new(0.4, 0, 0, 0),
                Font = self.font,
                Text = value,
                TextColor3 = self.theme.accent,
                TextSize = self.textsize,
                TextStrokeTransparency = 0,
                TextXAlignment = "Left",
                Parent = holder
            }
        )
        
        table.insert(self.labels, titleLabel)
        table.insert(self.labels, valueLabel)
        table.insert(self.themeitems["accent"]["TextColor3"], valueLabel)
        
        return holder
    end
    
    createInfoLabel("Library", "XWare | V3")
    createInfoLabel("Version", version)
    createInfoLabel("Developed by", "Gabr1")
    createInfoLabel("Edited by", "NexusScripts")
    
    local separator = utility.new(
        "Frame",
        {
            BackgroundColor3 = Color3.fromRGB(40, 40, 40),
            BorderSizePixel = 0,
            Size = UDim2.new(1, -10, 0, 1),
            Position = UDim2.new(0, 5, 0, 85),
            Parent = info_section.content
        }
    )
    
    return settings_page

end

return library
