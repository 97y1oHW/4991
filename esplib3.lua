--[[ made by siper#9938 and mickey#5612 ]]

-- main module
local espLibrary = {
    instances = {},
    espCache = {},
    chamsCache = {},
    objectCache = {},
    conns = {},
    whitelist = {},
    blacklist = {},
    options = {
        enabled = false,
        minScaleFactorX = 1,
        maxScaleFactorX = 10,
        minScaleFactorY = 1,
        maxScaleFactorY = 10,
        scaleFactorX = 5,
        scaleFactorY = 6,
        boundingBox = false, -- Optimized: Set to false for performance
        limitDistance = true,
        maxDistance = 300, -- Optimized: Reduced max distance to 300
        visibleOnly = false,
        teamCheck = false,
        teamColor = false,
        fillColor = nil,
        names = true,
        boxes = true,
        tracers = false,
        healthBars = false,
        chams = false, -- Optimized: Disabled chams for performance
        outOfViewArrows = false,
    },
};
espLibrary.__index = espLibrary;

-- services
local getService = game.GetService;
local players = getService(game, "Players");
local workspace = getService(game, "Workspace");
local runService = getService(game, "RunService");
local currentCamera = workspace.CurrentCamera;
local localPlayer = players.LocalPlayer;
local userInputService = getService(game, "UserInputService");

-- Helper Functions
local function worldToViewportPoint(position)
    local screenPosition, onScreen = currentCamera:WorldToViewportPoint(position);
    return Vector2.new(screenPosition.X, screenPosition.Y), onScreen, screenPosition.Z;
end

-- Additional Helper Functions
local function create(type, properties)
    local object = Drawing.new(type)
    for i, v in pairs(properties) do
        object[i] = v
    end
    table.insert(espLibrary.instances, object)
    return object
end

-- ESP Component Functions
function espLibrary.addEsp(player)
    if player == localPlayer then return end

    espLibrary.espCache[player] = {
        box = create("Square", { Color = Color3.new(1, 1, 1), Thickness = 1, Filled = false }),
        name = create("Text", { Text = player.Name, Color = Color3.new(1, 1, 1), Size = 13 })
    };
end

function espLibrary.removeEsp(player)
    local espCache = espLibrary.espCache[player];
    if espCache then
        for _, object in pairs(espCache) do
            object:Remove();
        end
        espLibrary.espCache[player] = nil;
    end
end

function espLibrary.getCharacter(player)
    local character = player.Character;
    return character, character and character:FindFirstChild("HumanoidRootPart");
end

function espLibrary.getBoxData(position, size)
    local torsoPosition, onScreen, depth = worldToViewportPoint(position);
    local scaleFactor = 1 / (depth * 0.001);
    local size = Vector2.new(scaleFactor, scaleFactor);
    return onScreen, size, Vector2.new(torsoPosition.X - (size.X * 0.5), torsoPosition.Y - (size.Y * 0.5)), torsoPosition;
end

-- Unload function to disconnect and clear ESP
function espLibrary:Unload()
    for _, connection in pairs(self.conns) do
        connection:Disconnect();
    end
    for _, player in pairs(players:GetPlayers()) do
        self.removeEsp(player);
    end
    for _, object in pairs(self.instances) do
        object:Remove();
    end
    runService:UnbindFromRenderStep("esp_rendering");
end

-- Load function with reduced update frequency
function espLibrary:Load()
    local lastRender = 0
    local renderInterval = 0.1 -- Set update interval for better performance

    self.conns[#self.conns+1] = players.PlayerAdded:Connect(function(player)
        self.addEsp(player);
    end);

    self.conns[#self.conns+1] = players.PlayerRemoving:Connect(function(player)
        self.removeEsp(player);
    end);

    for _, player in pairs(players:GetPlayers()) do
        self.addEsp(player);
    end

    runService:BindToRenderStep("esp_rendering", Enum.RenderPriority.Last.Value, function()
        if not self.options.enabled then return end
        if tick() - lastRender < renderInterval then return end  -- Skip update if interval not reached
        lastRender = tick() -- Reset render timer

        for player, objects in pairs(self.espCache) do
            local character, torso = self.getCharacter(player);
            if character and torso then
                local onScreen, size, position = self.getBoxData(torso.Position, Vector3.new(5, 6));
                local distance = (currentCamera.CFrame.Position - torso.Position).Magnitude;

                local visible = onScreen and (distance <= self.options.maxDistance);
                objects.box.Visible = visible and self.options.boxes;
                objects.name.Visible = visible and self.options.names;

                if visible then
                    objects.box.Size = size;
                    objects.box.Position = position;
                    objects.box.Color = Color3.new(1, 1, 1);
                    objects.name.Position = position + Vector2.new(0, -15);
                    objects.name.Text = player.Name;
                    objects.name.Color = Color3.new(1, 1, 1);
                end
            else
                objects.box.Visible = false;
                objects.name.Visible = false;
            end
        end
    end);
end

return espLibrary;
