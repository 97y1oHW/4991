wait(0.5)
 
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
 
 
local function teleportPlayer()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local targetPosition = humanoidRootPart.Position + Vector3.new(-999000, 0, 0) 
    humanoidRootPart.CFrame = CFrame.new(targetPosition)
end
 
 
teleportPlayer()
