--[[
    made by siper#9938 and mickey#5612
]]
if not LPH_OBFUSCATED then
    print("3")
    LPH_JIT = function(...) return ... end
    LPH_JIT_MAX = function(...) return ... end
    LPH_NO_VIRTUALIZE = function(f) return f end
    LPH_NO_UPVALUES = function(f) return function(...) return f(...) end end
    LPH_ENCSTR = function(...) return ... end
    LPH_ENCNUM = function(...) return ... end
    LPH_CRASH = function() return print(debug.traceback()) end
end

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
        boundingBox = false,
        excludedPartNames = {},
        font = 2,
        fontSize = 13,
        limitDistance = true,
        maxDistance = 1000,
        visibleOnly = false,
        teamCheck = false,
        teamColor = false,
        fillColor = nil,
        whitelistColor = Color3.new(1, 1, 1),
        outOfViewArrows = false,
        outOfViewArrowsFilled = false,
        outOfViewArrowsSize = 25,
        outOfViewArrowsRadius = 100,
        outOfViewArrowsColor = Color3.new(1, 1, 1),
        outOfViewArrowsTransparency = 0.5,
        names = false,
        nameTransparency = 1,
        nameColor = Color3.new(1, 1, 1),
        boxes = false,
        boxesTransparency = 1,
        boxesColor = Color3.new(1, 1, 1),
        healthBars = false,
        healthBarsSize = 1,
        healthBarsTransparency = 1,
        healthBarsColor = Color3.new(0, 1, 0),
        healthText = false,
        healthTextTransparency = 1,
        healthTextColor = Color3.new(0, 1, 0),
        distance = false,
        distanceTransparency = 1,
        distanceSuffix = " Meters",
        distanceColor = Color3.new(1, 1, 1),
        tracers = false,
        tracerTransparency = 1,
        tracerColor = Color3.new(1, 1, 1),
        tracerOrigin = "Bottom",
        chams = false,
        chamsFillColor = Color3.new(1, 1, 1),
        chamsFillTransparency = 0.7,
        chamsOutlineColor = Color3.new(),
        chamsOutlineTransparency = 0.5
    },
}
espLibrary.__index = espLibrary;

local getService = game.GetService;
local instanceNew = Instance.new;
local drawingNew = Drawing.new;
local vector2New = Vector2.new;
local vector3New = Vector3.new;
local cframeNew = CFrame.new;
local color3New = Color3.new;
local raycastParamsNew = RaycastParams.new;
local abs = math.abs;
local tan = math.tan;
local rad = math.rad;
local clamp = math.clamp;
local floor = math.floor;
local find = table.find;
local insert = table.insert;
local findFirstChild = game.FindFirstChild;
local getChildren = game.GetChildren;
local getDescendants = game.GetDescendants;
local isA = workspace.IsA;
local raycast = workspace.Raycast;

local workspace = getService(game, "Workspace");
local runService = getService(game, "RunService");
local players = getService(game, "Players");
local coreGui = getService(game, "CoreGui");
local userInputService = getService(game, "User InputService");

local currentCamera = workspace.CurrentCamera;
local localPlayer = players.LocalPlayer;
local screenGui = instanceNew("ScreenGui", coreGui);
local lastFov, lastScale;

local wtvp = currentCamera.WorldToViewportPoint;

local function isDrawing(type)
    return type == "Square" or type == "Text" or type == "Triangle" or type == "Image" or type == "Line" or type == "Circle";
end

local function create(type, properties)
    local drawing = isDrawing(type);
    local object = drawing and drawingNew(type) or instanceNew(type);

    if (properties) then
        for i, v in next, properties do
            object[i] = v;
        end
    end

    if (not drawing) then
        insert(espLibrary.instances, object);
    end

    return object;
end

local function worldToViewportPoint(position)
    local screenPosition, onScreen, depth = wtvp(currentCamera, position);
    return vector2New(screenPosition.X, screenPosition.Y), onScreen, screenPosition.Z;
end

local function round(number)
    return typeof(number) == "Vector2" and vector2New(round(number.X), round(number.Y)) or floor(number);
end

local function espLibrary.getTeam(player)
    local team = player.Team;
    return team, player.TeamColor.Color;
end

local function espLibrary.getCharacter(player)
    local character = player.Character;
    return character, character and findFirstChild(character, "HumanoidRootPart");
end

local function espLibrary.getBoundingBox(character, torso)
    if (espLibrary.options.boundingBox) then
        local minX, minY, minZ = inf, inf, inf;
        local maxX, maxY, maxZ = -inf, -inf, -inf;

        for _, part in next, espLibrary.options.boundingBoxDescending and getDescendants(character) or getChildren(character) do
            if (isA(part, "BasePart") and not find(espLibrary.options.excludedPartNames, part.Name)) then
                local size = part.Size;
                local sizeX, sizeY, sizeZ = size.X, size.Y, size.Z;

                local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = getComponents(part.CFrame);

                local wiseX = 0.5 * (abs(r00) * sizeX + abs(r01) * sizeY + abs(r02) * sizeZ);
                local wiseY = 0.5 * (abs(r10) * sizeX + abs(r11) * sizeY + abs(r12) * sizeZ);
                local wiseZ = 0.5 * (abs(r20) * sizeX + abs(r21) * sizeY + abs(r22) * sizeZ);

                minX = minX > x - wiseX and x - wiseX or minX;
                minY = minY > y - wiseY and y - wiseY or minY;
                minZ = minZ > z - wiseZ and z - wiseZ or minZ;

                maxX = maxX < x + wiseX and x + wiseX or maxX;
                maxY = maxY < y + wiseY and y + wiseY or maxY;
                maxZ = maxZ < z + wiseZ and z + wiseZ or maxZ;
            end
        end

        local oMin, oMax = vector3New(minX, minY, minZ), vector3New(maxX, maxY, maxZ);
        return (oMax + oMin) * 0.5, oMax - oMin;
    else
        return torso.Position, vector2New(espLibrary.options.scaleFactorX, espLibrary.options.scaleFactorY);
    end
end

local function espLibrary.getScaleFactor(fov, depth)
    if (fov ~= lastFov) then
        lastScale = tan(rad(fov * 0.5)) * 2;
        lastFov = fov;
    end

    return 1 / (depth * lastScale) * 1000;
end

local function espLibrary.get BoxData(position, size)
    local torsoPosition, onScreen, depth = worldToViewportPoint(position);
    local scaleFactor = espLibrary.getScaleFactor(currentCamera.FieldOfView, depth);

    local clampX = clamp(size.X, espLibrary.options.minScaleFactorX, espLibrary.options.maxScaleFactorX);
    local clampY = clamp(size.Y, espLibrary.options.minScaleFactorY, espLibrary.options.maxScaleFactorY);
    local size = round(vector2New(clampX * scaleFactor, clampY * scaleFactor));

    return onScreen, size, round(vector2New(torsoPosition.X - (size.X * 0.5), torsoPosition.Y - (size.Y * 0.5))), torsoPosition;
end

local function espLibrary.getHealth(player, character)
    local humanoid = findFirstChild(character, "Humanoid");

    if (humanoid) then
        return humanoid.Health, humanoid.MaxHealth;
    end

    return 100, 100;
end

local function espLibrary.visibleCheck(character, position)
    local origin = currentCamera.CFrame.Position;
    local params = raycastParamsNew();

    params.FilterDescendantsInstances = { espLibrary.getCharacter(localPlayer), currentCamera, character };
    params.FilterType = Enum.RaycastFilterType.Blacklist;
    params.IgnoreWater = true;

    return (not raycast(workspace, origin, position - origin, params));
end

local function espLibrary.addEsp(player)
    if (player == localPlayer) then
        return
    end

    local objects = {
        arrow = create("Triangle", {
            Thickness = 1,
        }),
        arrowOutline = create("Triangle", {
            Thickness = 1,
        }),
        top = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        side = create("Text", {
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        bottom = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        }),
        boxFill = create("Square", {
            Thickness = 1,
            Filled = true,
        }),
        boxOutline = create("Square", {
            Thickness = 3,
            Color = color3New()
        }),
        box = create("Square", {
            Thickness = 1
        }),
        healthBarOutline = create("Square", {
            Thickness = 1,
            Color = color3New(),
            Filled = true
        }),
        healthBar = create("Square", {
            Thickness = 1,
            Filled = true
        }),
        line = create("Line")
    };

    espLibrary.espCache[player] = objects;
end

local function espLibrary.removeEsp(player)
    local espCache = espLibrary.espCache[player];

    if (espCache) then
        espLibrary.espCache[player] = nil;

        for index, object in next, espCache do
            espCache[index] = nil;
            object:Remove();
        end
    end
end

local function espLibrary.addChams(player)
    if (player == localPlayer) then
        return
    end

    espLibrary.chamsCache[player] = create("Highlight", {
        Parent = screenGui,
    });
end

local function espLibrary.removeChams(player)
    local highlight = espLibrary.chamsCache[player];

    if (highlight) then
        espLibrary.chamsCache[player] = nil;
        highlight:Destroy();
    end
end

local function espLibrary.addObject(object, options)
    espLibrary.objectCache[object] = {
        options = options,
        text = create("Text", {
            Center = true,
            Size = 13,
            Outline = true,
            OutlineColor = color3New(),
            Font = 2,
        })
    };
end

local function espLibrary.removeObject(object)
    local cache = espLibrary.objectCache[object];

    if (cache) then
        espLibrary.objectCache[object] = nil;
        cache.text:Remove();
    end
end

local function espLibrary:AddObjectEsp(object, defaultOptions)
    assert(object and object.Parent, "invalid object passed");

    local options = defaultOptions or {};

    options.enabled = options.enabled or true;
    options.limitDistance = options.limitDistance or false;
    options.maxDistance = options.maxDistance or false;
    options.visibleOnly = options.visibleOnly or false;
    options.color = options.color or color3New(1, 1, 1);
    options.transparency = options.transparency or 1;
    options.text = options.text or object.Name;
    options.font = options.font or 2;
    options.fontSize = options.fontSize or 13;

    espLibrary.addObject(object, options);

    insert(espLibrary.conns, object.Parent.ChildRemoved:Connect(function(child)
        if (child == object) then
            espLibrary.removeObject(child);
        end
    end));

    return options;
end

local function espLibrary:Unload()
    for _, connection in next, espLibrary.conns do
        connection:Disconnect();
    end

    for _, player in next, players:GetPlayers() do
        espLibrary.removeEsp(player);
        espLibrary.removeChams(player);
    end

    for object, _ in next, espLibrary.objectCache do
        espLibrary.removeObject(object);
    end

    for _, object in next, espLibrary.instances do
        object:Destroy();
    end

    screenGui:Destroy();
    runService:UnbindFromRenderStep("esp_rendering");
end

local function espLibrary:Load(renderValue)
    insert(espLibrary.conns, players.PlayerAdded:Connect(function(player)
        espLibrary.addEsp(player);
        espLibrary.addChams(player);
    end));

    insert(espLibrary.conns, players.PlayerRemoving:Connect(function(player)
        espLibrary.removeEsp(player);
        espLibrary.removeChams(player);
    end));

    for _, player in next, players:GetPlayers() do
        espLibrary.addEsp(player);
        espLibrary.addChams(player);
    end

    local lastRender = tick();
    local renderInterval = 1 / 60; -- Render at 60 FPS

    runService:BindToRenderStep("esp_rendering", renderValue or (Enum.RenderPriority.Camera.Value + 1), function(dt)
        if (tick() - lastRender < renderInterval) then
            return;
        end

        lastRender = tick();

        local playerCount = 0;

        for player, objects in next, espLibrary.espCache do
            local character, torso = espLibrary.getCharacter(player);

            if (character and torso) then
                local onScreen, size, position, torsoPosition = espLibrary.getBoxData(torso.Position, Vector3.new(5, 6));
                local distance = (currentCamera.CFrame.Position - torso.Position).Magnitude * 0.28;
                local canShow, enabled = onScreen and (size and position), espLibrary.options.enabled;
                local team, teamColor = espLibrary.getTeam(player);
                local color = espLibrary.options.teamColor and teamColor or nil;

                if (espLibrary.options.fillColor ~= nil) then
                    color = espLibrary.options.fillColor;
                end

                if (find(espLibrary.whitelist, player.Name)) then
                    color = espLibrary.options.whitelistColor;
                end

                if (find(espLibrary.blacklist, player.Name)) then
                    enabled = false;
                end

                if (espLibrary.options.limitDistance and distance > espLibrary.options.maxDistance) then
                    enabled = false;
                end

                if (espLibrary.options.visibleOnly and not espLibrary.visibleCheck(character, torso.Position)) then
                    enabled = false;
                end

                if (espLibrary.options.teamCheck and (team == espLibrary.getTeam(localPlayer))) then
                    enabled = false;
                end

                local viewportSize = currentCamera.ViewportSize;

                local screenCenter = vector2New(viewportSize.X / 2, viewportSize.Y / 2);
                local objectSpacePoint = (pointToObjectSpace(currentCamera.CFrame, torso.Position) * vector3New(1, 0, 1)).Unit;
                local crossVector = cross(objectSpacePoint, vector3New(0, 1, 1));
                local rightVector = vector2New(crossVector.X, crossVector.Z);

                local arrowRadius, arrowSize = espLibrary.options.outOfViewArrowsRadius, espLibrary.options.outOfViewArrowsSize;
                local arrowPosition = screenCenter + vector2New(objectSpacePoint.X, objectSpacePoint.Z) * arrowRadius;
                local arrowDirection = (arrowPosition - screenCenter).Unit;

                local pointA, pointB, pointC = arrowPosition, screenCenter + arrowDirection * (arrowRadius - arrowSize) + rightVector * arrowSize, screenCenter + arrowDirection * (arrowRadius - arrowSize) + -rightVector * arrowSize;

                local health, maxHealth = espLibrary.getHealth(player, character);
                local healthBarSize = round(vector2New(espLibrary.options.healthBarsSize, -(size.Y * (health / maxHealth))));
                local healthBarPosition = round(vector2New(position.X - (3 + healthBarSize.X), position.Y + size.Y));

                local origin = espLibrary.options.tracerOrigin;
                local show = canShow and enabled;

                objects.arrow.Visible = (not canShow and enabled) and espLibrary.options.outOfViewArrows;
                objects.arrow.Filled = espLibrary.options.outOfViewArrowsFilled ;
                objects.arrow.Transparency = espLibrary.options.outOfViewArrowsTransparency;
                objects.arrow.Color = color or espLibrary.options.outOfViewArrowsColor;
                objects.arrow.PointA = pointA;
                objects.arrow.PointB = pointB;
                objects.arrow.PointC = pointC;

                objects.arrowOutline.Visible = (not canShow and enabled) and espLibrary.options.outOfViewArrowsOutline;
                objects.arrowOutline.Filled = espLibrary.options.outOfViewArrowsOutlineFilled;
                objects.arrowOutline.Transparency = espLibrary.options.outOfViewArrowsOutlineTransparency;
                objects.arrowOutline.Color = color or espLibrary.options.outOfViewArrowsOutlineColor;
                objects.arrowOutline.PointA = pointA;
                objects.arrowOutline.PointB = pointB;
                objects.arrowOutline.PointC = pointC;

                objects.top.Visible = show and espLibrary.options.names;
                objects.top.Font = espLibrary.options.font;
                objects.top.Size = espLibrary.options.fontSize;
                objects.top.Transparency = espLibrary.options.nameTransparency;
                objects.top.Color = color or espLibrary.options.nameColor;
                objects.top.Text = player.Name;
                objects.top.Position = round(position + vector2New(size.X * 0.5, -(objects.top.TextBounds.Y + 2)));

                objects.side.Visible = show and espLibrary.options.healthText;
                objects.side.Font = espLibrary.options.font;
                objects.side.Size = espLibrary.options.fontSize;
                objects.side.Transparency = espLibrary.options.healthTextTransparency;
                objects.side.Color = color or espLibrary.options.healthTextColor;
                objects.side.Text = health .. espLibrary.options.healthTextSuffix;
                objects.side.Position = round(position + vector2New(size.X + 3, -3));

                objects.bottom.Visible = show and espLibrary.options.distance;
                objects.bottom.Font = espLibrary.options.font;
                objects.bottom.Size = espLibrary.options.fontSize;
                objects.bottom.Transparency = espLibrary.options.distanceTransparency;
                objects.bottom.Color = color or espLibrary.options.nameColor;
                objects.bottom.Text = tostring(round(distance)) .. espLibrary.options.distanceSuffix;
                objects.bottom.Position = round(position + vector2New(size.X * 0.5, size.Y + 1));

                objects.box.Visible = show and espLibrary.options.boxes;
                objects.box.Color = color or espLibrary.options.boxesColor;
                objects.box.Transparency = espLibrary.options.boxesTransparency;
                objects.box.Size = size;
                objects.box.Position = position;

                objects.boxOutline.Visible = show and espLibrary.options.boxes;
                objects.boxOutline.Transparency = espLibrary.options.boxesTransparency;
                objects.boxOutline.Size = size;
                objects.boxOutline.Position = position;

                objects.boxFill.Visible = show and espLibrary.options.boxFill;
                objects.boxFill.Color = color or espLibrary.options.boxFillColor;
                objects.boxFill.Transparency = espLibrary.options.boxFillTransparency;
                objects.boxFill.Size = size;
                objects.boxFill.Position = position;

                objects.healthBar.Visible = show and espLibrary.options.healthBars;
                objects.healthBar.Color = color or espLibrary.options.healthBarsColor;
                objects.healthBar.Transparency = espLibrary.options.healthBarsTransparency;
                objects.healthBar.Size = healthBarSize;
                objects.healthBar.Position = healthBarPosition;

                objects.healthBarOutline.Visible = show and espLibrary.options.healthBars;
                objects.healthBarOutline.Transparency = espLibrary.options.healthBarsTransparency;
                objects.healthBarOutline.Size = round(vector2New(healthBarSize.X, -size.Y) + vector2New(2, -2));
                objects.healthBarOutline.Position = healthBarPosition - vector2New(1, -1);

                objects.line.Visible = show and espLibrary.options.tracers;
                objects.line.Color = color or espLibrary.options.tracerColor;
                objects.line.Transparency = espLibrary.options.tracerTransparency;
                objects.line.From =
                    origin == "Mouse" and userInputService:GetMouseLocation() or
                    origin == "Top" and vector2New(viewportSize.X * 0.5, 0) or
                    origin == "Bottom" and vector2New(viewportSize.X * 0.5, viewportSize.Y);
                objects.line.To = torsoPosition;
            else
                for _, object in next, objects do
                    object.Visible = false;
                end
            end
        end

        for player, highlight in next, espLibrary.chamsCache do
            local character, torso = espLibrary.getCharacter(player);

            if (character and torso) then
                local distance = (currentCamera.CFrame.Position - torso.Position).Magnitude;
                local canShow = espLibrary.options.enabled and espLibrary.options.chams;
                local team, teamColor = espLibrary.getTeam(player);
                local color = espLibrary.options.teamColor and teamColor or nil;

                if (espLibrary.options.fillColor ~= nil) then
                    color = esp Library.options.fillColor;
                end

                if (find(espLibrary.whitelist, player.Name)) then
                    color = espLibrary.options.whitelistColor;
                end

                if (find(espLibrary.blacklist, player.Name)) then
                    canShow = false;
                end

                if (espLibrary.options.limitDistance and distance > espLibrary.options.maxDistance) then
                    canShow = false;
                end

                if (espLibrary.options.teamCheck and (team == espLibrary.getTeam(localPlayer))) then
                    canShow = false;
                end

                highlight.Enabled = canShow;
                highlight.DepthMode = espLibrary.options.visibleOnly and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop;
                highlight.Adornee = character;
                highlight.FillColor = color or espLibrary.options.chamsFillColor;
                highlight.FillTransparency = espLibrary.options.chamsFillTransparency;
                highlight.OutlineColor = color or espLibrary.options.chamsOutlineColor;
                highlight.OutlineTransparency = espLibrary.options.chamsOutlineTransparency;
            end
        end

        for object, cache in next, espLibrary.objectCache do
            local partPosition = vector3New();

            if (object:IsA("BasePart")) then
                partPosition = object.Position;
            elseif (object:IsA("Model")) then
                partPosition = espLibrary.getBoundingBox(object);
            end

            local distance = (currentCamera.CFrame.Position - partPosition).Magnitude;
            local screenPosition, onScreen = worldToViewportPoint(partPosition);
            local canShow = cache.options.enabled and onScreen;

            if (espLibrary.options.limitDistance and distance > espLibrary.options.maxDistance) then
                canShow = false;
            end

            if (espLibrary.options.visibleOnly and not espLibrary.visibleCheck(object, partPosition)) then
                canShow = false;
            end

            cache.text.Visible = canShow;
            cache.text.Font = cache.options.font;
            cache.text.Size = cache.options.fontSize;
            cache.text.Transparency = cache.options.transparency;
            cache.text.Color = cache.options.color;
            cache.text.Text = cache.options.text;
            cache.text.Position = round(screenPosition);
        end
    end);
end

return espLibrary;
