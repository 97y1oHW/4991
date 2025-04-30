local player = game:GetService("Players").LocalPlayer
local userInputService = game:GetService("UserInputService");

getgenv().thirdperson = true
getgenv().thirdpersondistance = 10

local function updateCamera()
    if getgenv().thirdperson then
        userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
        player.CameraMaxZoomDistance = getgenv().thirdpersondistance
        player.CameraMinZoomDistance = 10
        player.CameraMode = Enum.CameraMode.Classic
        --
        if player.Character and player.Character:FindFirstChildOfClass('Humanoid') then
            if player.Character:FindFirstChildOfClass('Humanoid').Health > 1e-5 then
                local root = player.Character:FindFirstChildOfClass('Humanoid').RootPart
                root.CFrame = CFrame.new(root.CFrame.Position) * CFrame.fromOrientation(0, ({workspace.CurrentCamera.CFrame:ToOrientation()})[2], 0) 
            end
        end
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    else
        player.CameraMaxZoomDistance = 0
        player.CameraMinZoomDistance = 0
        player.CameraMode = Enum.CameraMode.LockFirstPerson
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end
end
game:GetService("RunService").PreRender:Connect(updateCamera)
