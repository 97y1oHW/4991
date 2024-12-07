local corpseEspLibrary = {
    corpseCache = {},
    options = {
        enabled = true,
        corpseColor = Color3.new(1, 0, 0), -- Red for the name text
        distanceColor = Color3.new(1, 1, 1), -- White for distance number
        bracketColor = Color3.new(1, 0.84, 0), -- Gold yellow for brackets
        textSize = 13,
        font = 3, -- Font style
        maxDistance = 500, -- Maximum distance to render corpses
        updateInterval = 0.2, -- Update corpses every 0.2 seconds
        limitDistance = true
    }
}

-- Utilities
local function createDrawing(type, properties)
    local drawing = Drawing.new(type)
    for property, value in pairs(properties or {}) do
        drawing[property] = value
    end
    return drawing
end

local function isCorpse(model)
    if model:IsA("Model") and model:FindFirstChild("Humanoid") then
        return model.Humanoid.Health <= 0
    end
    return false
end

function corpseEspLibrary.addCorpse(corpse)
    if corpseEspLibrary.corpseCache[corpse] then return end

    local esp = {
        nameText = createDrawing("Text", {
            Size = corpseEspLibrary.options.textSize,
            Center = true,
            Outline = true,
            Font = corpseEspLibrary.options.font,
            Color = corpseEspLibrary.options.corpseColor
        }),
        leftBracket = createDrawing("Text", {
            Size = corpseEspLibrary.options.textSize,
            Center = true,
            Outline = true,
            Font = corpseEspLibrary.options.font,
            Color = corpseEspLibrary.options.bracketColor
        }),
        distanceText = createDrawing("Text", {
            Size = corpseEspLibrary.options.textSize,
            Center = true,
            Outline = true,
            Font = corpseEspLibrary.options.font,
            Color = corpseEspLibrary.options.distanceColor
        }),
        rightBracket = createDrawing("Text", {
            Size = corpseEspLibrary.options.textSize,
            Center = true,
            Outline = true,
            Font = corpseEspLibrary.options.font,
            Color = corpseEspLibrary.options.bracketColor
        })
    }

    corpseEspLibrary.corpseCache[corpse] = esp
end

function corpseEspLibrary.removeCorpse(corpse)
    local esp = corpseEspLibrary.corpseCache[corpse]
    if esp then
        if esp.nameText then esp.nameText:Remove() end
        if esp.leftBracket then esp.leftBracket:Remove() end
        if esp.distanceText then esp.distanceText:Remove() end
        if esp.rightBracket then esp.rightBracket:Remove() end
        corpseEspLibrary.corpseCache[corpse] = nil
    end
end

function corpseEspLibrary.update()
    for corpse, esp in pairs(corpseEspLibrary.corpseCache) do
        if not corpse or not corpse.Parent then
            corpseEspLibrary.removeCorpse(corpse)
        else
            local rootPart = corpse:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(rootPart.Position)
                local distance = (workspace.CurrentCamera.CFrame.Position - rootPart.Position).Magnitude

                if onScreen and (not corpseEspLibrary.options.limitDistance or distance <= corpseEspLibrary.options.maxDistance) then
                    local yOffset = 0 -- Adjusts vertical spacing

                    -- Name Text
                    esp.nameText.Visible = true
                    esp.nameText.Text = corpse.Name
                    esp.nameText.Position = Vector2.new(screenPos.X, screenPos.Y + yOffset)
                    yOffset = yOffset + 15 -- Offset for the next line

                    -- Left Bracket
                    esp.leftBracket.Visible = true
                    esp.leftBracket.Text = "["
                    esp.leftBracket.Position = Vector2.new(screenPos.X - 50, screenPos.Y + yOffset)

                    -- Distance Text
                    esp.distanceText.Visible = true
                    esp.distanceText.Text = string.format("%d studs", math.floor(distance))
                    esp.distanceText.Position = Vector2.new(screenPos.X, screenPos.Y + yOffset)

                    -- Right Bracket
                    esp.rightBracket.Visible = true
                    esp.rightBracket.Text = "]"
                    esp.rightBracket.Position = Vector2.new(screenPos.X + 50, screenPos.Y + yOffset)
                else
                    -- Hide all ESP elements if not visible
                    esp.nameText.Visible = false
                    esp.leftBracket.Visible = false
                    esp.distanceText.Visible = false
                    esp.rightBracket.Visible = false
                end
            end
        end
    end
end

function corpseEspLibrary.scanForCorpses()
    for _, model in pairs(workspace:GetChildren()) do
        if isCorpse(model) and not corpseEspLibrary.corpseCache[model] then
            corpseEspLibrary.addCorpse(model)
        end
    end
end

-- Main Loop
local lastUpdate = 0
game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
    if corpseEspLibrary.options.enabled then
        lastUpdate = lastUpdate + deltaTime
        if lastUpdate >= corpseEspLibrary.options.updateInterval then
            lastUpdate = 0
            corpseEspLibrary.scanForCorpses()
        end
        corpseEspLibrary.update()
    end
end)

return corpseEspLibrary
