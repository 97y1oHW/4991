wait(2)
local TweenService = game:GetService("TweenService")
local CoreGuiService = game:GetService("CoreGui")

local TweenTable = {
	Default = TweenInfo.new(0.17, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
}

local fonts = {}; do
            function Register_Font(Name, Weight, Style, Asset)
                if not isfile(Asset.Id) then
                    writefile(Asset.Id, Asset.Font)
                end

                if isfile(Name .. ".font") then
                    delfile(Name .. ".font")
                end

                local Data = {
                    name = Name,
                    faces = {
                        {
                            name = "Regular",
                            weight = Weight,
                            style = Style,
                            assetId = getcustomasset(Asset.Id),
                        },
                    },
                }

                writefile(Name .. ".font", game:GetService("HttpService"):JSONEncode(Data))

                return getcustomasset(Name .. ".font");
            end

            local ProggyTiny = Register_Font("ProggyTiny", 200, "Normal", {
                Id = "ProggyTiny.ttf",
                Font = game:HttpGet("https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/tahoma_bold.ttf"),
            })

            local ProggyClean = Register_Font("ProggyClean", 200, "normal", {
                Id = "ProggyClean.ttf",
                Font = game:HttpGet("https://github.com/97y1oHW/4991/raw/refs/heads/main/v3/Minecraftia-Regular.ttf")
            })

            fonts = {
                ["TahomaBold"] = Font.new(ProggyTiny, Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                ["ProggyClean"] = Font.new(ProggyClean, Enum.FontWeight.Regular, Enum.FontStyle.Normal);
            }
        end
print("downloaded fonts")

local CreateTween = function(name, speed, style, direction, loop, reverse, delay)
	speed = speed or 0.17
	style = style or Enum.EasingStyle.Sine
	direction = direction or Enum.EasingDirection.InOut
	loop = loop or 0
	reverse = reverse or false
	delay = delay or 0

	TweenTable[name] = TweenInfo.new(speed, style, direction, loop, reverse, delay)
end

CreateTween("xsxRotation", 0.17)

local introduction = Instance.new("ScreenGui")
local edge = Instance.new("Frame")
local edgeCorner = Instance.new("UICorner")
local background = Instance.new("Frame")
local backgroundGradient = Instance.new("UIGradient")
local backgroundCorner = Instance.new("UICorner")
local barFolder = Instance.new("Folder")
local bar = Instance.new("Frame")
local barCorner = Instance.new("UICorner")
local barLayout = Instance.new("UIListLayout")
local xsxLogo = Instance.new("ImageLabel")
local xsx = Instance.new("TextLabel")
local text = Instance.new("TextLabel")
local pageLayout = Instance.new("UIListLayout")
local n3TextLabel = Instance.new("TextLabel")

introduction.Name = "introduction"
introduction.Parent = CoreGuiService
introduction.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

edge.Name = "edge"
edge.Parent = introduction
edge.AnchorPoint = Vector2.new(0.5, 0.5)
edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
edge.BackgroundTransparency = 1
edge.Position = UDim2.new(0.511773348, 0, 0.5, 0)
edge.Size = UDim2.new(0, 300, 0, 308)

edgeCorner.CornerRadius = UDim.new(0, 2)
edgeCorner.Name = "edgeCorner"
edgeCorner.Parent = edge


local TweenService = game:GetService("TweenService");

local glow = Instance.new("ImageLabel", edge);
glow.Name = "GlowEffect";
glow.Image = "rbxassetid://18245826428";
glow.ScaleType = Enum.ScaleType.Slice;
glow.SliceCenter = Rect.new(10, 10, 60, 60);
glow.ImageColor3 = Color3.fromRGB(80, 60, 150);
glow.ImageTransparency = 0.3;
glow.BackgroundTransparency = 1;
glow.Size = UDim2.new(1, 40, 1, 40);
glow.Position = UDim2.new(0, -20, 0, -20);
glow.ZIndex = -1;

local function Pulse()
	local info = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true);
	local props = { ImageTransparency = 0.6 };
	local tween = TweenService:Create(glow, info, props);
	tween:Play();
end;

task.spawn(Pulse)



background.Name = "background"
background.Parent = edge
background.AnchorPoint = Vector2.new(0.5, 0.5)
background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
background.BackgroundTransparency = 1
background.ClipsDescendants = true
background.Position = UDim2.new(0.5, 0, 0.5, 0)
background.Size = UDim2.new(0, 298, 0, 306)

backgroundGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 34, 34)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(52, 42, 53))
}
backgroundGradient.Rotation = 90
backgroundGradient.Name = "backgroundGradient"
backgroundGradient.Parent = background

backgroundCorner.CornerRadius = UDim.new(0, 2)
backgroundCorner.Name = "backgroundCorner"
backgroundCorner.Parent = background

barFolder.Name = "barFolder"
barFolder.Parent = background

bar.Name = "bar"
bar.Parent = barFolder
bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
bar.BackgroundTransparency = 0.200
bar.Size = UDim2.new(0, 0, 0, 1)

barCorner.CornerRadius = UDim.new(0, 2)
barCorner.Name = "barCorner"
barCorner.Parent = bar

barLayout.Name = "barLayout"
barLayout.Parent = barFolder
barLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
barLayout.SortOrder = Enum.SortOrder.LayoutOrder

xsxLogo.Name = "xsxLogo"
xsxLogo.Parent = background
xsxLogo.AnchorPoint = Vector2.new(0.5, 0.5)
xsxLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xsxLogo.BackgroundTransparency = 1
xsxLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
xsxLogo.Size = UDim2.new(0, 448, 0, 150)
xsxLogo.Visible = true
xsxLogo.ImageColor3 = Color3.fromRGB(159, 115, 255)
xsxLogo.ImageTransparency = 1

xsx.Name = "xsx"
xsx.Parent = background
xsx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xsx.BackgroundTransparency = 1
xsx.Size = UDim2.new(0, 80, 0, 21)
xsx.FontFace = fonts["ProggyClean"]
xsx.Text = "XWARE V3"
xsx.TextColor3 = Color3.fromRGB(124, 124, 124)
xsx.TextSize = 10
xsx.TextTransparency = 1

text.Name = "text"
text.Parent = background
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundTransparency = 1
text.Position = UDim2.new(0.912751675, 0, 0, 0)
text.Size = UDim2.new(0, 26, 0, 21)
text.FontFace = fonts["ProggyClean"]
text.Text = "PD"
text.TextColor3 = Color3.fromRGB(124, 124, 124)
text.TextSize = 10
text.TextTransparency = 1
text.RichText = true

n3TextLabel.Name = "n3TextLabel"
n3TextLabel.Parent = background
n3TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
n3TextLabel.BackgroundTransparency = 1
n3TextLabel.Position = UDim2.new(0.16, 8, 0.24, -8)
n3TextLabel.Size = UDim2.new(0, 200, 0, 100)
n3TextLabel.FontFace = fonts["ProggyClean"]
n3TextLabel.Text = "<b><font size=\"60\">X</font><font color=\"rgb(159, 115, 255)\"><font size=\"60\">3</font></font></b>"
n3TextLabel.TextColor3 = Color3.fromRGB(124, 124, 124)
n3TextLabel.TextSize = 60
n3TextLabel.TextTransparency = 1
n3TextLabel.TextScaled = true
n3TextLabel.RichText = true

task.spawn(function()
	while true do
		pcall(function()
			task.wait(1);
			xsx.Text = 'XWare V3';
			task.wait(1);
			xsx.Text = 'XWare V3_';
		end);
	end;
end);

pageLayout.Name = "pageLayout"
pageLayout.Parent = introduction
pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
pageLayout.VerticalAlignment = Enum.VerticalAlignment.Center

-- Terminal frame & text layout
local terminalTextFrame = Instance.new("Frame")
terminalTextFrame.Name = "terminalTextFrame"
terminalTextFrame.Parent = background
terminalTextFrame.BackgroundTransparency = 1
terminalTextFrame.Position = UDim2.new(0.5, -120, 0.65, 0)
terminalTextFrame.Size = UDim2.new(0, 240, 0, 60)

local terminalTextLayout = Instance.new("UIListLayout")
terminalTextLayout.Name = "terminalTextLayout"
terminalTextLayout.Parent = terminalTextFrame
terminalTextLayout.SortOrder = Enum.SortOrder.LayoutOrder
terminalTextLayout.Padding = UDim.new(0, 2)

local function addTerminalLine(textContent)
	local newText = Instance.new("TextLabel")
	newText.Parent = terminalTextFrame
	newText.BackgroundTransparency = 1
	newText.FontFace = fonts["ProggyClean"]
	newText.Text = textContent
	newText.TextColor3 = Color3.fromRGB(124, 124, 124)
	newText.TextSize = 12
	newText.TextTransparency = 1
	newText.Size = UDim2.new(1, 0, 0, 12)
	TweenService:Create(newText, TweenTable["xsxRotation"], {TextTransparency = 0}):Play()

	coroutine.wrap(function()
		wait(1.73) -- erken sil baba
		TweenService:Create(newText, TweenTable["xsxRotation"], {TextTransparency = 1}):Play()
		wait(5)
		newText:Destroy()
	end)()
end

local terminalLines = {
	"     [ X ] > INITIALIZING LIBRARY.....",
	"[ X ] > CATCHING IMAGES.....",
    "  [ X ] > READING CONFIG FILES..",
	"   [ X ] > LOADING UI MODULES.....",
	"[ X ] > BOOTING X3.........."
}

coroutine.wrap(function()
	for _, line in ipairs(terminalLines) do
		addTerminalLine(line)
		wait(0.4)
	end
end)()

local MinusAmount = -15
coroutine.wrap(function()
	while true do
		MinusAmount = MinusAmount + 0.4
		TweenService:Create(xsxLogo, TweenTable["xsxRotation"], {Rotation = xsxLogo.Rotation - MinusAmount}):Play()
		wait()
	end
end)()

TweenService:Create(edge, TweenTable["xsxRotation"], {BackgroundTransparency = 0}):Play()
TweenService:Create(background, TweenTable["xsxRotation"], {BackgroundTransparency = 0}):Play()
wait(0.2)
TweenService:Create(bar, TweenTable["xsxRotation"], {Size = UDim2.new(0, 298, 0, 1)}):Play()
wait(0.2)
TweenService:Create(xsx, TweenTable["xsxRotation"], {TextTransparency = 0}):Play()
TweenService:Create(text, TweenTable["xsxRotation"], {TextTransparency = 0}):Play()
TweenService:Create(n3TextLabel, TweenTable["xsxRotation"], {TextTransparency = 0}):Play()
wait(0.3)
TweenService:Create(xsxLogo, TweenTable["xsxRotation"], {ImageTransparency = 0}):Play()
wait(math.random(3,9))
TweenService:Create(xsxLogo, TweenTable["xsxRotation"], {ImageTransparency = 1}):Play()
wait(0.2)
TweenService:Create(n3TextLabel, TweenTable["xsxRotation"], {TextTransparency = 1}):Play()
wait(0.1)
TweenService:Create(text, TweenTable["xsxRotation"], {TextTransparency = 1}):Play()
wait(0.1)
TweenService:Create(xsx, TweenTable["xsxRotation"], {TextTransparency = 1}):Play()
wait(0.1)
TweenService:Create(bar, TweenTable["xsxRotation"], {Size = UDim2.new(0, 0, 0, 1)}):Play()
wait(0.1)
TweenService:Create(background, TweenTable["xsxRotation"], {BackgroundTransparency = 1}):Play()
TweenService:Create(edge, TweenTable["xsxRotation"], {BackgroundTransparency = 1}):Play()
wait(0.2)
introduction:Destroy()
