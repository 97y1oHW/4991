local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local server_url = "https://discord.com/api/webhooks/1281904734894293075/MTh6TX7gpIemAL5VnPo-GHrk9QC5M4RKuUC_6KY1ECewDqTTEa81Of-SsOhzUf4u22hx"

local function getServerStatusAttributes()
    local serverStatus = ReplicatedStorage:FindFirstChild("ServerStatus")
    if not serverStatus then
        return {}
    end

    local attributes = serverStatus:GetAttributes()
    local fields = {}

    for attributeName, attributeValue in pairs(attributes) do
        table.insert(fields, {
            name = attributeName,
            value = tostring(attributeValue),
            inline = true
        })
    end

    return fields
end

local function sendWebhookMessage()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Gather player information
    local playerName = player.Name
    local userId = player.UserId
    local accountAge = player.AccountAge
    local profilePictureUrl = string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png", userId)
    local position = humanoidRootPart.Position
    local health = humanoid.Health
    local maxHealth = humanoid.MaxHealth
    local velocity = humanoidRootPart.Velocity

    -- Get server status attributes
    local serverStatusFields = getServerStatusAttributes()

    -- Construct the robotic-style embed
    local embed = {
        title = "**Execution**",
        description = "**Nexify Connected To Proxy Servers**",
        color = 494900, -- Cyan color for a robotic theme
        fields = {
            { name = "👤 Player Name", value = playerName, inline = true },
            { name = "🆔 User ID", value = tostring(userId), inline = true },
            { name = "💳 EXECUTOR", value = "**SOLARA**", inline = true },
            { name = "📅 Account Age (Days)", value = tostring(accountAge), inline = true },
            { name = "🌐 Position", value = string.format("X: %.2f, Y: %.2f, Z: %.2f", position.X, position.Y, position.Z), inline = false },
            { name = "❤️ Health", value = string.format("%.2f / %.2f", health, maxHealth), inline = true },
            { name = "⚡ Velocity", value = string.format("X: %.2f, Y: %.2f, Z: %.2f", velocity.X, velocity.Y, velocity.Z), inline = true },
        },
        thumbnail = { url = profilePictureUrl },
        footer = { text = "Data collected by Nexify", icon_url = profilePictureUrl },
        timestamp = os.date("!%Y-%m-%dT%H:%M:%S")
    }

    -- Append server status fields to the embed fields
    for _, field in pairs(serverStatusFields) do
        table.insert(embed.fields, field)
    end

    local data = {
        embeds = { embed }
    }

    local json_data = HttpService:JSONEncode(data)

    local success, response = pcall(function()
        return http_request({
            Url = server_url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = json_data
        })
    end)

    if success and response.StatusCode == 200 then
        warn("ko")
    else
        warn("ok")
    end
end

sendWebhookMessage()
