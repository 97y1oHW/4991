local url = "https://raw.githubusercontent.com/97y1oHW/4991/main/v3/assetpng.png";

if not isfile("assetpng.png") then
	local response = game:HttpGet(url);
	writefile("assetpng.png", response);
end;

local assetId = getcustomasset("assetpng.png");

local screenGui = Instance.new("ScreenGui");
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui");

local imageLabel = Instance.new("ImageLabel");
imageLabel.Parent = screenGui;
imageLabel.BackgroundTransparency = 1;
imageLabel.Size = UDim2.new(0, 100, 0, 100);
imageLabel.Position = UDim2.new(0, 0, 0, 0);
imageLabel.Image = assetId;
imageLabel.ImageColor3 = Color3.fromRGB(148, 0, 211);

local TweenService = game:GetService("TweenService");
local tweenInfo = TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true);
local goal = {Position = UDim2.new(0, 0, 0, 10)};
local tween = TweenService:Create(imageLabel, tweenInfo, goal);
tween:Play();
