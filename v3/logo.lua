local url = "https://raw.githubusercontent.com/97y1oHW/4991/main/v3/assetpng.png"
local response = game:HttpGet(url)

-- Resmi indiriyoruz ve kaydediyoruz
writefile("assetpng.png", response)

-- Custom Asset'i almak için getcustomasset kullanıyoruz
local assetId = getcustomasset("assetpng.png")

-- GUI'yi oluşturuyoruz
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local imageLabel = Instance.new("ImageLabel")
imageLabel.Parent = screenGui
imageLabel.BackgroundTransparency = 1
imageLabel.Size = UDim2.new(0, 100, 0, 100)  -- Boyut ayarlama
imageLabel.Position = UDim2.new(0, 0, 0, 0)  -- Sol üst köşe
imageLabel.Image = assetId  -- Custom asset'i buraya ekliyoruz

-- Soft mor ton
imageLabel.ImageColor3 = Color3.fromRGB(148, 0, 211)



-- Daha yavaş animasyon için tween
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)  -- 3 saniye, çok daha yavaş

local goal = {Position = UDim2.new(0, 0, 0, 10)}  -- Resmin aşağıya inmesi
local tween = TweenService:Create(imageLabel, tweenInfo, goal)

-- Animasyonu başlatıyoruz
tween:Play()

