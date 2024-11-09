
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/esplib3.lua'), true))()
originalLoadstring = loadstring
--[[
 license_key = "BYPASSED LIC KEY"
 executor_name = "Should Be Solara Lol"
 server_url = "https://85e1-146-70-246-140.ngrok-free.app/authenticate"

 data = {
    license_key = license_key,
    executor_name = executor_name
}

 json_data = game:GetService("HttpService"):JSONEncode(data)


 response = http_request({
    Url = server_url,
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = json_data
})

if response.StatusCode == 200 then
    local result = game:GetService("HttpService"):JSONDecode(response.Body)
    if result.status == "success" then

print("succ")
    else
        print("error")
    end
else
    print("Error:", response.StatusCode, response.Body)
end
--]]

function checkLoadstring()
    if loadstring ~= originalLoadstring then
        game.Players.LocalPlayer:Kick("Nexify Says: Not That Easy Kid :)")
        print("Well you cant read the developer log too!!")
        return
    end
end

spawn(function()
    while true do
        checkLoadstring()
        wait(0.1)
    end
end)
--[[


             _nnnn_                      
        dGGGGMMb     ,"""""""""""""""""".
       @p~qp~~qMb    | its not chatgpt  |
       M|@||@) M|   _;..................'
       @,----.JM| -'
      JS^\__/  qKL
     dZP        qKRb
    dZP          qKKb
   fZP            SMMb
   HZM            MMMM
   FqM            MMMM
 __| ".        |\dS"qML
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMM|   .'
     `-'       `--' 
--]]



--ibet opti bimbambu

if not LPH_OBFUSCATED then
    -- Define a series of functions that serve as placeholders when obfuscation is not active.
    
    -- Simple passthrough function for just-in-time (JIT) operations.
    LPH_JIT = function(...) 
        return ... 
    end
    
    -- Passthrough function for maximum JIT operations.
    LPH_JIT_MAX = function(...) 
        return ... 
    end
    
    -- Function to disable virtualization, simply returns the input function.
    LPH_NO_VIRTUALIZE = function(f) 
        return f 
    end
    
    -- Function to remove upvalues, returns a new function that calls the original with the same arguments.
    LPH_NO_UPVALUES = function(f) 
        return function(...) 
            return f(...) 
        end 
    end
    
    -- Placeholder for string encryption, returns the input string.
    LPH_ENCSTR = function(...) 
        return ... 
    end
    
    -- Placeholder for number encryption, returns the input number.
    LPH_ENCNUM = function(...) 
        return ... 
    end
    
    -- Function intended to cause a crash, in this case, it prints the traceback.
    LPH_CRASH = function() 
        return print(debug.traceback()) 
    end
end

                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECKING MAIN THIS CAN LAG YOUR GAME."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 4, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(4)

huge4 = math.huge


        setfpscap(3)
        wait(2)
         setfpscap(0)
         wait(5)
          setfpscap(30)
          wait(2)
           setfpscap(999999999)

-- File path for the version file
local filePath = "verschck/version.txt"

-- Check if the file exists, if not, create the folder and file with a default version
if not isfile(filePath) then
    makefolder("verschck")
    writefile(filePath, "starterpack1,3v1,v2,v3,v4,v5,v6,v7...v24")  -- Create file with initial version (v17)
end
local updatenote = "ambient things"
-- Read the content of the file (current version stored in the file)
local versionInFile = readfile(filePath)

-- Local variable for the current version (you change this manually to simulate updates)
local version = "v27"  -- You can set this to the version you want to check

-- Check if the version in the file matches the local version
if versionInFile == version then
    print("Version is up to date: " .. versionInFile)
                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "VERSION IS UP TO DATE."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 6, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
else
    warn("New update available! Updating version from " .. versionInFile .. " to " .. version)
                Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "DETECTED NEW UPDATE.DOWNLOADING..."},
            {OutlineColor = Color3.fromRGB(246, 159, 10), Time = 4, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
        wait(7)
    -- Update the version in the file to the new version
    writefile(filePath, version)
    print("Version file updated to: " .. version)
    print("Update Log: " ..updatenote)
            Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "UPDATED TO LATEST VERSION.CHECK DEVELOPER LOG FOR THE UPDATE NOTE."},
            {OutlineColor = Color3.fromRGB(10, 246, 33), Time = 8, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
end

wait(2)

-- Check if the script is already running
if _G.ScriptAlreadyOpened then
    warn("Blocked Multiple Instances.")
    return -- Stop the script from ruMultiple inning again
end

local Players = game.Players
-- Mark the script as opened
_G.ScriptAlreadyOpened = true
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK-1"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )

print("CHECK-1")


wait(5) 




local doge

if doge then
print("multiple open secured succ")
return


end


local CoreGui = game:GetService("CoreGui")
local audioFileName = "nexifysecretmp3.mp3" 


if not isfile(audioFileName) then

    local audioFileId = "1ZzPp2yzuOSIpLW5VIkYxt_h40q7lSB8J"  
    local audioUrl = "https://drive.google.com/uc?export=download&id=" .. audioFileId

    
    writefile(audioFileName, game:HttpGet(audioUrl))
end

-- Check if the audio has already been played
if not isfile("nexify_played.txt") then
    -- Audio file exists, play the audio
    local soundInstance = Instance.new('Sound', CoreGui)
    soundInstance.SoundId = getcustomasset(audioFileName)
    soundInstance.PlaybackSpeed = 0.5
    soundInstance.Volume = 1  -- Adjust to a reasonable volume (0 to 1)
    soundInstance:Play()

    -- Mark that the audio has been played by creating a file as a flag
    writefile("nexify_played.txt", "true")

    -- Remove the sound instance after it finishes playing
    soundInstance.Ended:Connect(function()
        soundInstance:Destroy()
    end)
end



--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU 999999mmm0000
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU
--IF YOU LEAKED YOU ARE ASS BITCH NIGGA FUCK YOU

-- Initialize
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local level = "1.5"
local function securitylayerchecks()

warn("Started")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "MAIN CHECK STARTED"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 2, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(1)
print("CHECK 1")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 1"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(0.7)
print("CHECK 2")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 2"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(0.1)
print("CHECK 3")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 3"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(2)
print("CHECK 4")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "CHECK 4"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
wait(2)
print("Verification Level: " .. level .."")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "Verification Level: " ..level..""},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 1, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
warn("CONTINUE")



end

securitylayerchecks()

local hwid = "A0c92155d3650ec09ae39fcc016ca3cff4dd912cc63aca3043513ba9617d2ed16d800f8a209c6b899cd4200dd25aa8981"


local hwids = {
    "dadfa35227e615d81abe69b1c03037390bb6d1221087d499f78110f0201697be627ea3e34379fe768021a27fdd852acc",

"68ee4e3dca91ace520cf83af8a714c2668c0e9b07d33c24ccd5759aefb270e3c52797d4a0392d0a65401e0d694136c66",

"31303537623231366434653236383139396464653533373934643335313134346562386133303838616231333639376164643563626266356637653239663636",

"869251a11bc79716dc5a691fc03c6bf24839ae1bcf552b16632a3d4cc48573f459911320417c61dc94d03d9f7849efc2",

"35386438336163373763353962316330316331336433616234366237313165316136626336643737323563306661373730363636326634626339656437653735",

"61303363333937303039666235656461663930363337396434636630356364666231653831373465656137343138376234666265373562636463386135376164",

"36363037336361333937623336386663386666646236613066626638383166353830616663653330613464343034353731306236666561623862333738373964",

"65326566396235633062396663636438333765613663343262393832663666366564353662356363633766363139393866636437393536353933643234353738",
    "0c92155d3650ec09ae39fcc016ca3cff4dd912cc63aca3043513ba9617d2ed16d800f8a209c6b899cd4200dd25aa8981",
    "5b70929f45ad9f417dfd7d990785f2e94b61230c5f4d53",
    "another_hwid_example_2"
}



local function checkForSameScript(hwid)
    for _, id in ipairs(hwids) do
        if id == hwid then
            print("Player with HWID " .. hwid .. " is using the same script.")
            return
        end
    end
    print("Player with HWID " .. hwid .. " is not using the same script.")
end


checkForSameScript(hwid)





local continueexecution = true


if continueexecution == true then

print("Value True")
print("1")

else
wait(5)
print("Server Did Not Responded.")
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "SERVER DID NOT RESPONDED"},
            {OutlineColor = Color3.fromRGB(240, 8, 8), Time = 15, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
return

end


print("2")

print("Connected")
local camera = workspace.CurrentCamera

local function checksystem()

warn("Check System Started")
wait(1)
print("Able To Connect Web Socket: ❌")
	wait(0.2)
	print("Able To Connect Proxy Server: ❌")
	wait(0.1)
	print("Able To Send Messages To Webhook: ❌")
	wait(0.1)
	
warn("System Disconnected With 0% Success Rate.")

end

-- Pastebin URL
local pastebinUrl = "https://pastebin.com/raw/SLtzK1Vp"

-- Function to fetch and loadstring the pastebin code
local success, response = pcall(function()
    return loadstring(game:HttpGet(pastebinUrl))()
end)

-- Check the response
if success and response == "bypassed" then
    -- Pastebin returned "active", so continue running the main script
    print("A-C SYSTEM RESULT: BYPASS")

    -- Place your main script logic here
    -- Example: your main exploit code or game feature

else
    -- Pastebin returned nil or there's an error, script won't run
    print("Anti-Crack System Trigered!")
    return
end

		-- Create a function to apply ForceField to all parts in the game and remove SurfaceAppearance
local function applyForceFieldAndRemoveSurfaceAppearance()
    -- Get all parts in the game
    for _, part in pairs(workspace:GetDescendants()) do
        -- Check if the part is a BasePart (like Part, MeshPart, etc.)
        if part:IsA("BasePart") then
            -- Destroy any SurfaceAppearance attached to the part
            local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
            if surfaceAppearance then
                surfaceAppearance:Destroy()
            end
            
            -- Check if the part already has a ForceField
            if not part:FindFirstChildOfClass("ForceField") then
                -- Create a new ForceField
                local forceField = Instance.new("ForceField")
                -- Set the parent of the ForceField to the part
                forceField.Parent = part
            end
        end
    end
end


local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local grassVisible = true
local predictionEnabled = false
local adjustPredictionEnabled = false -- Default to enabled
local executorname33 = "Unknown"
local predictionFactor = { value = 0.118 } -- Adjust this value based on desired prediction (higher means more prediction)
local aimbotEnabled = false
local plrs = game:GetService("Players")
local virtualInput = game:GetService("VirtualInputManager")
print(".")
print("DIRECTED.")
local ammo = game.ReplicatedStorage.AmmoTypes
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local isAiming = false
local headSizeMultiplier = 5 -- Multiplier for head size
local transparencyValue = 0.3 -- Transparency for the head
local targetHead = nil
local targetPart = "Head" -- Default target part
local isEnabled = false -- State to track if the effect is on or off
local aimingTarget = nil

-- Function to print the loading bar with percentage and hash marks
local function printLoadingBar(percentage)
    local totalLength = 35
    local hashMarks = math.floor(percentage / 3.6)  -- Number of hash marks
    local dashes = totalLength - hashMarks          -- Remaining dashes
    
    local loadingBar = string.rep("#", hashMarks) .. string.rep("-", dashes)
    warn(string.format("Loading Nexify V1.8 %%%-3d %s", percentage, loadingBar))
end

-- Function to simulate the loading process
local function simulateLoading()
    for percentage = 0, 100, 1 do
        printLoadingBar(percentage)
        wait(0.02)  -- Adjust the wait time to make the loading appear slower or faster
    end
end
        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "LOADING SCRIPT"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 17.5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )


-- Run the simulation
simulateLoading()

print("If script ui not appears try spawning and waiting for 2 min")
wait(1)
warn("Started Check")
print("Checking Executor......")
wait(2)

        Notification:Notify(
            {Title = "Nexify | SOLARA", Description = "A-C"},
            {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 17.5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
        )



-- Wait for the character to be added to the player
local character = player.Character or player.CharacterAdded:Wait()

-- Wait for the humanoid to be present in the character
local humanoid = character:WaitForChild("Humanoid")

-- Function to toggle the swimming state
local function toggleSwimmingState()
    -- Check the current swimming state
    local isSwimmingEnabled = humanoid:GetStateEnabled(Enum.HumanoidStateType.Swimming)
    
    -- Toggle the swimming state
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, not isSwimmingEnabled)
end

-- Example usage
  -- This will toggle the swimming state (enable if currently disabled, disable if currently enabled)







-- Call the function to apply the change


local function detectExecutor()
    -- Check if identifyexecutor exists and what it returns
    if type(identifyexecutor) == "function" then
        local executorName = identifyexecutor()
        
        -- Check for known executors
        if executorName == "Solara" then
            return "Solara"
        elseif executorName == "Synapse" then
            return "Wave"
        elseif executorName == "JJSploit" then
            return "Solara"
        elseif executorName == "Synapse X" then
            return "Wave"
        elseif executorName == "Nezur" then
            return "Nezur"   
        elseif executorName == "Scythex" then
            return "Wave"
        elseif executorName == "MacSploit" then
            return "Wave"   
        elseif executorName == "Manti" then
            return "Manti"
        elseif executorName == "Wave" then
            return "Wave"
        elseif executorName == "Macsploit" then
            return "Wave"
        elseif executorName == "Celery" then
            return "Celery"
        end
    end
    
    -- If no known executor is detected
    return "Unknown Executor"
end

-- Main script execution
local executor = detectExecutor()

if executor == "Solara" then
    print("This script is running in Solara Executor.")
    executorname33 = "Solara"
elseif executor == "Wave" or executor == "Wave 5.0" then
    print("This script is running in Wave Executor (Called Loadstring!).")
    -- New example script written by wally
-- You can suggest changes with a pull request or something

local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/97y1oHW/4991/refs/heads/main/esplib3.lua'),true))()
local Library = loadstring(game:HttpGet(repo .. 'lib.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()
    return -- Stop the script from executing further

elseif executor == "Manti" then
    print("This script is running in Manti Executor (Not allowed)")
    plrs.LocalPlayer:Kick("\n🤥Fuck Manti Nigga")
    return
elseif executor == "MacSploit" then
    print("This script is running in MacSploit")
elseif executor == "Nezur" then
    warn("This script is running in Nezur Executor (This Executor Is Not Stable)")
elseif executor == "Celery" then
    plrs.LocalPlayer:Kick("\n🤥Fuck Celery")
    print("This script is running in Celery Executor.")
	return
else
    print("Unknown executor detected.")
end
-- Your actual script logic here


-- Function to apply head effect to a single player
local function applyHeadEffect(player)
    if player ~= localPlayer and player.Character then
        local head = player.Character:FindFirstChild("Head")
        if head then
            if isEnabled then
                -- Increase head size and adjust transparency
                head.Size = Vector3.new(headSizeMultiplier, headSizeMultiplier, headSizeMultiplier)
                head.Transparency = transparencyValue
            else
                -- Reset head size and transparency
                head.Size = Vector3.new(1, 1, 1) -- Reset to normal size
                head.Transparency = 0
            end
        end
    end
end

-- Function to toggle head size and transparency for all players
local function toggleHeadEffect()
    isEnabled = not isEnabled -- Toggle the state
    
    for _, player in pairs(players:GetPlayers()) do
        applyHeadEffect(player)
    end
end

-- Function to continuously check for new players and apply the effect if needed
local function checkForNewPlayers()
    while true do
        wait(10) -- Wait 10 seconds before checking again
        if isEnabled then
            for _, player in pairs(players:GetPlayers()) do
                applyHeadEffect(player)
            end
        end
    end
end

-- Start the player check loop in a separate thread
spawn(checkForNewPlayers)

-- Create a ScreenGui
--local screenGui = Instance.new("ScreenGui")
--screenGui.Name = "VideoGui"
--screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a VideoFrame
--local videoFrame = Instance.new("VideoFrame")
--videoFrame.Name = "IntroVideo"
--videoFrame.Size = UDim2.new(1, 0, 1, 0)  -- Full screen
--videoFrame.Position = UDim2.new(0, 0, 0, 0)
--videoFrame.Parent = screenGui

-- Set the video asset ID (replace with your video asset ID)
--videoFrame.Video = "rbxassetid://5608412605"
-- Start playing the video
--videoFrame:Play()
--wait(12)
--videoFrame:Destroy()


-- Optional: Connect to the video end event
--videoFrame.Ended:Connect(function()
    -- Hide or remove the video frame after it finishes playing
--    videoFrame:Destroy()
--end)
-- Create a function for ban detection


-- Function to toggle the aimbot
-- Function to toggle the aimbot
-- Function to toggle the aimbot
-- Function to toggle the aimbot
function toggleAimbot()
    aimbotEnabled = not aimbotEnabled -- Toggle the state

    if not aimbotEnabled then
        isAiming = false -- Reset aiming when disabling
        targetHead = nil -- Clear target head
    end
end

-- Function to toggle prediction
function togglePrediction()
    predictionEnabled = not predictionEnabled -- Toggle the prediction state
    print("Prediction Enabled: ", predictionEnabled)
end

-- Function to toggle adjust prediction feature
function toggleAdjustPrediction()
    adjustPredictionEnabled = not adjustPredictionEnabled -- Toggle the adjust prediction state
    if not adjustPredictionEnabled then
        predictionFactor = 0.118 -- Reset to default prediction factor
    end
    print("Adjust Prediction Enabled: ", adjustPredictionEnabled)
    print("Current Prediction Factor: ", predictionFactor)
end

-- Function to adjust prediction factor based on distance
local function adjustPredictionFactor(distance)
    if adjustPredictionEnabled then
        if distance >= 400 then
            predictionFactor = 0.200
        elseif distance >= 300 then
            predictionFactor = 0.180
        elseif distance >= 230 then
            predictionFactor = 0.160
        elseif distance >= 100 then
            predictionFactor = 0.140
        else
            predictionFactor = 0.115 -- Default if under 100 meters
        end
        print("Current Prediction Factor: ", predictionFactor)
    end
end

-- Function to predict future position based on velocity
local function predictTargetPosition(target)
    if not predictionEnabled then
        return target.Position -- Return the current position if prediction is disabled
    end

    local targetCharacter = target.Parent
    local humanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local velocity = humanoidRootPart.AssemblyLinearVelocity
        local currentPosition = target.Position
        
        -- Assume distance is provided externally
        adjustPredictionFactor(distance)  -- Update prediction factor based on distance

        -- Calculate the predicted position
        local predictedPosition = currentPosition + velocity * predictionFactor
        return predictedPosition
    end
    return target.Position
end

-- Function to lock the aim on the head with prediction
function updateAimbot()
    if aimbotEnabled and isAiming then
        local target = mouse.Target -- Get the object the mouse is currently over

        -- Check if the target is an NPC character
        if target and target.Parent then
            local npcModel = target.Parent
            if npcModel:FindFirstChild("Humanoid") and npcModel:FindFirstChild("Head") then
                targetHead = npcModel.Head -- Set target to the NPC's head
            end
        end

        -- Aim at the head with prediction if it exists
        if targetHead then
            local targetPosition = predictTargetPosition(targetHead)

            -- Smoothly aim at the predicted head position
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, targetPosition)
        end
    end
end

-- Input handling for right mouse button
mouse.Button2Down:Connect(function()
    if aimbotEnabled then
        isAiming = true -- Start aiming when right mouse button is held down
    end
end)

mouse.Button2Up:Connect(function()
    isAiming = false -- Stop aiming when right mouse button is released
    targetHead = nil -- Unlock the target when the right mouse button is released
end)

-- Heartbeat connection to update aimbot
game:GetService("RunService").Heartbeat:Connect(updateAimbot)

-- Example input to toggle prediction and adjust prediction features (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()` and `toggleAdjustPrediction()`

-- Example input to toggle prediction and adjust prediction features (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()` and `toggleAdjustPrediction()`

-- Example input to toggle prediction (you can change the input method as needed)
-- For example, use a keybind or button to toggle `togglePrediction()`

-- Function to get the ping
local function getPing()
    local stats = game:GetService("Stats")
    local networkStats = stats.Network.ServerStatsItem["Data Ping"]
    return math.floor(networkStats:GetValue())
end

-- Function to get the FPS
local function getFPS()
    local fps = workspace:GetRealPhysicsFPS()
    return math.floor(fps)
end

-- Function to update the info text
local function updateInfo()
    while true do
        infoLabel.Text = string.format("FPS: %d  Ping: %dms", getFPS(), getPing())
        wait(1)
    end
end

-- Function to toggle grass visibility
function toggleGrass()
    grassVisible = not grassVisible

    -- Loop through all terrain decoration instances
    for _, terrain in ipairs(workspace:GetDescendants()) do
        if terrain:IsA("Terrain") then
            for _, decoration in ipairs(terrain:GetChildren()) do
                if decoration:IsA("Decoration") and decoration.Name:lower():find("grass") then
                    decoration.Transparency = grassVisible and 0 or 1
                end
            end
        end
    end
end

-- Function to smoothly change the RGB color of the title label's tex

-- Start the info update and RGB animation
--spawn(updateInfo)




local counter = 0
print("loading Nexify")
print('load_' .. tostring(counter))

-- Load external script (make sure this is the intended use)
loadstring(game:HttpGet("https://pastebin.com/raw/RyZeKZiy"))()
counter = counter + 1
do

print("repo ok")
local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
print("repo ok2")
print("esplib ok")
print("1")
local Library = loadstring(game:HttpGet(repo .. 'lib.lua'))()
print("1")
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
print("1")
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()
print("1")

end
print('sucker_' .. tostring(counter))
counter = counter + 1
local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = '                                     Nexify / Solara PD',
    Center = true,
    AutoShow = true,
    TabPadding = 7.9,
    MenuFadeTime = 0.3
})
local Tabs = {
    Main = Window:AddTab('combat ⚔️'),
    Visuals = Window:AddTab('esp 👤'),
    Misc = Window:AddTab('Misc 🔅'),
    Lua = Window:AddTab('Other 🛠️'),
    Settings = Window:AddTab('Settings 🎚️'),
}


--CYqXb6TX
loadstring(game:HttpGet("https://pastebin.com/raw/CYqXb6TX"))()

local autoFireEnabled = false -- Initially disabled
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local RunService = game:GetService("RunService")


local Lighting = game:GetService("Lighting")

local Visuals = Tabs.Visuals:AddRightTabbox()
local TabEsp = Tabs.Visuals:AddLeftTabbox()
local EnemyEspTab = TabEsp:AddTab('esp')

print('load_' .. tostring(counter))
counter = counter + 1



-- Table to store tracers for all players
local tracers = {}

-- Function to toggle the tracer for a specific player
local function toggleTracer(player)
    -- If the tracer is already enabled for the player, disable it
    if tracers[player] then
        tracers[player]:Destroy()  -- Remove the tracer part
        tracers[player] = nil
    else
        -- Otherwise, create and enable the tracer
        local head = player.Character and player.Character:FindFirstChild("Head")
        if head then
            -- Create a new part for the tracer
            local tracerPart = Instance.new("Part")
            tracerPart.Size = Vector3.new(0.2, 0.2, 2)  -- Thin and short
            tracerPart.Anchored = true
            tracerPart.CanCollide = false
            tracerPart.Transparency = 0.5  -- Set transparency
            tracerPart.Material = Enum.Material.Neon  -- Use ForceField material to make it visible through walls
            tracerPart.Color = Color3.fromRGB(255, 255, 255)  -- White color
            tracerPart.Parent = workspace

            -- Store the tracer part in the table
            tracers[player] = tracerPart

            -- Update the tracer's position and orientation every frame
            local connection
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                if not tracers[player] or not player.Character or not player.Character:FindFirstChild("Head") then
                    connection:Disconnect()  -- Stop updating if the tracer is disabled or player disappears
                    return
                end

                -- Get the player's Head position and look direction
                local headPosition = player.Character.Head.Position
                local lookDirection = player.Character.Head.CFrame.LookVector

                -- Set the position and orientation of the tracer part
                tracers[player].CFrame = CFrame.new(headPosition, headPosition + lookDirection) * CFrame.new(0, 0, -1)
            end)
        end
    end
end

-- Example: Toggling the tracer for all players except the local player
local function toggleTracersForAllPlayersExceptLocal(localPlayer)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            toggleTracer(player)
        end
    end
end

-- Connect to PlayerAdded to allow new players to toggle tracers
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        -- Delay the toggle to ensure the character is fully loaded
        wait(1)
        local localPlayer = game.Players.LocalPlayer
        if player ~= localPlayer then
            toggleTracer(player)  -- Automatically toggle tracer for new players, except local player
        end
    end)
end)

local localPlayer = players.LocalPlayer
local workspace = game:GetService("Workspace")


-- Toggle variables
local espEnabled = false
local chamsEnabled = false
local espObjects = {}
local healthBillboards = {}

-- Custom distance factor (adjust for your game)
local customFactor = 0.29

-- Function to create a 2D box for ESP
local function create2DBox()
    local box = {}
    box.topLeft = Drawing.new("Line")
    box.topRight = Drawing.new("Line")
    box.bottomLeft = Drawing.new("Line")
    box.bottomRight = Drawing.new("Line")

    for _, line in pairs(box) do
        line.Color = Color3.new(1, 1, 1) -- White color
        line.Thickness = 1
        line.Transparency = 1
    end

    return box
end

-- Function to update 2D box positions
local function update2DBox(box, character)
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end

    local corners = {
        rootPart.Position + Vector3.new(-2, 3, -1),
        rootPart.Position + Vector3.new(2, 3, -1),
        rootPart.Position + Vector3.new(-2, -3, -1),
        rootPart.Position + Vector3.new(2, -3, -1)
    }

    local screenCorners = {}
    for i, corner in ipairs(corners) do
        local screenPos, onScreen = camera:WorldToViewportPoint(corner)
        if onScreen then
            screenCorners[i] = Vector2.new(screenPos.X, screenPos.Y)
        else
            for _, line in pairs(box) do
                line.Visible = false
            end
            return
        end
    end

    box.topLeft.From = screenCorners[1]
    box.topLeft.To = screenCorners[2]
    box.bottomLeft.From = screenCorners[3]
    box.bottomLeft.To = screenCorners[4]
    box.topRight.From = screenCorners[1]
    box.topRight.To = screenCorners[3]
    box.bottomRight.From = screenCorners[2]
    box.bottomRight.To = screenCorners[4]

    for _, line in pairs(box) do
        line.Visible = true
    end
end

-- Function to remove 2D box
local function remove2DBox(box)
    for _, line in pairs(box) do
        line:Remove()
    end
end

-- Function to create or update ESP for a player
local function createOrUpdateESP(player)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    if not espObjects[player] then
        local boxESP = create2DBox()

        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = character.HumanoidRootPart
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = character.HumanoidRootPart

        local nameHealthLabel = Instance.new("TextLabel", billboard)
        nameHealthLabel.BackgroundTransparency = 1
        nameHealthLabel.Size = UDim2.new(0, 200, 0, 11)
        nameHealthLabel.Font = Enum.Font.Code
        nameHealthLabel.TextSize = 11
        nameHealthLabel.TextColor3 = Color3.new(1, 1, 1)
        nameHealthLabel.TextStrokeTransparency = 0.8

        local healthBar = Instance.new("Frame", billboard)
        healthBar.BackgroundColor3 = Color3.new(0.121569, 0.945098, 0.011765) -- Green color
        healthBar.Size = UDim2.new(0, 20, 0, 50)
        healthBar.Position = UDim2.new(0, 210, 0, 0)
        healthBar.BorderSizePixel = 0
        healthBar.BackgroundTransparency = 0.5

        local distanceBillboard = Instance.new("BillboardGui")
        distanceBillboard.Adornee = character.HumanoidRootPart
        distanceBillboard.Size = UDim2.new(0, 200, 0, 11)
        distanceBillboard.StudsOffset = Vector3.new(0, -2, 0)
        distanceBillboard.AlwaysOnTop = true
        distanceBillboard.Parent = character.HumanoidRootPart

        local distanceLabel = Instance.new("TextLabel", distanceBillboard)
        distanceLabel.BackgroundTransparency = 1
        distanceLabel.Size = UDim2.new(0, 200, 0, 11)
        distanceLabel.Font = Enum.Font.Code
        distanceLabel.TextSize = 11
        distanceLabel.TextColor3 = Color3.new(1, 1, 1)
        distanceLabel.TextStrokeTransparency = 0.8

        espObjects[player] = {
            boxESP = boxESP,
            nameHealthLabel = nameHealthLabel,
            healthBar = healthBar,
            distanceLabel = distanceLabel
        }
    end

    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        local health = humanoid.Health
        local maxHealth = humanoid.MaxHealth
        espObjects[player].nameHealthLabel.Text = string.format("%s | %d/%d", player.Name, health, maxHealth)

        local healthBar = espObjects[player].healthBar
        healthBar.Size = UDim2.new(0, 20, 0, 50 * (health / maxHealth))

        local distance = (character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).Magnitude * customFactor
        espObjects[player].distanceLabel.Text = string.format("%.2f m", distance)

        update2DBox(espObjects[player].boxESP, character)
    end
end

-- Function to remove ESP for a player
local function removeESP(player)
    if espObjects[player] then
        remove2DBox(espObjects[player].boxESP)
        espObjects[player].nameHealthLabel:Destroy()
        espObjects[player].healthBar:Destroy()
        espObjects[player].distanceLabel:Destroy()
        espObjects[player] = nil
    end
end

-- Function to check for nearby players
local function checkNearbyPlayers()
    while espEnabled do
        local localCharacter = localPlayer.Character
        if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer then
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        createOrUpdateESP(player)
                    else
                        removeESP(player)
                    end
                end
            end
        end
        wait(0.00001) -- Update every 0.1 seconds
    end
end

-- Highlight functions (Chams)
local function applyHighlight(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        if not character:FindFirstChild("HighlightEffect") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "HighlightEffect"
            highlight.Adornee = character
            highlight.FillColor = Color3.fromRGB(255, 255, 255)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.Parent = character
        end
    end
end

local function removeHighlight(player)
    local character = player.Character
    if character and character:FindFirstChild("HighlightEffect") then
        character.HighlightEffect:Destroy()
    end
end

local function toggleChams()
    chamsEnabled = not chamsEnabled
    for _, player in pairs(players:GetPlayers()) do
        if chamsEnabled then
            applyHighlight(player)
        else
            removeHighlight(player)
        end
    end
end

-- ESP toggle
local function toggleESP()
    espEnabled = not espEnabled
    if espEnabled then
        coroutine.wrap(checkNearbyPlayers)()
    else
        for _, player in pairs(players:GetPlayers()) do
            removeESP(player)
        end
    end
end

-- Function to clean up stuck boxes
local function cleanUpBoxes()
    while true do
        wait(10) -- Wait for 10 seconds
        for _, espData in pairs(espObjects) do
            if espData.boxESP then
                remove2DBox(espData.boxESP)
                espData.boxESP = create2DBox() -- Recreate the box to avoid being stuck
            end
        end
    end
end

-- Start the box cleanup coroutine
coroutine.wrap(cleanUpBoxes)()









alreadyinit=false
function firstloadesplib()

if alreadyinit==false then
alreadyinit=true
wait(0.1)
espLib:Load()
end

end

-- UI toggles
EnemyEspTab:AddToggle('EspSwitch', {
    Text = 'Enable ESP',
    Default = false,
    Callback = function(enabled)
    firstloadesplib()
        espLib.options.enabled = enabled
    end
})

EnemyEspTab:AddToggle('boxswitch', {
    Text = 'Boxes',
    Default = false,
    Callback = function(enabled)
        espLib.options.boxes = enabled
    end
})

EnemyEspTab:AddToggle('visiblecheck', {
    Text = 'Visible Check',
    Default = false,
    Callback = function(enabled)
        espLib.options.visibleOnly = enabled
    end
})

EnemyEspTab:AddToggle('chamswwt', {
    Text = 'Chams',
    Default = false,
    Callback = function(enabled)
        espLib.options.chams = enabled
    end
})

EnemyEspTab:AddToggle('distance', {
    Text = 'Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.distance = enabled
    end
})

EnemyEspTab:AddToggle('healthtext', {
    Text = 'Health Text',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthText = enabled
    end
})

EnemyEspTab:AddToggle('healthbar', {
    Text = 'Health Bar',
    Default = false,
    Callback = function(enabled)
        espLib.options.healthBars = enabled
    end
})

EnemyEspTab:AddToggle('names', {
    Text = 'Names',
    Default = false,
    Callback = function(enabled)
        espLib.options.names = enabled
    end
})



EnemyEspTab:AddToggle('limitdistance', {
    Text = 'Limit Distance',
    Default = false,
    Callback = function(enabled)
        espLib.options.limitDistance = enabled
    end
})

EnemyEspTab:AddSlider('distancelimit', {
    Text = 'Distance Limit',
    Default = 900,
    Min = 10,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        espLib.options.maxDistance = Value
        -- Do not apply zoom immediately when the slider is adjusted
    end
})



local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game:service("Workspace").CurrentCamera
local RS = game:service("RunService")
local UIS = game:service("UserInputService")

repeat wait() until Player.Character ~= nil and Player.Character.PrimaryPart ~= nil

local LerpColorModule = loadstring(game:HttpGet("https://pastebin.com/raw/wRnsJeid"))()
local HealthBarLerp = LerpColorModule:Lerp(Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0))

local function NewCircle(Transparency, Color, Radius, Filled, Thickness)
    local c = Drawing.new("Circle")
    c.Transparency = Transparency
    c.Color = Color
    c.Visible = false
    c.Thickness = Thickness
    c.Position = Vector2.new(0, 0)
    c.Radius = Radius
    c.NumSides = math.clamp(Radius * 55 / 100, 10, 75)
    c.Filled = Filled
    return c
end

local RadarInfo = {
    Position = Vector2.new(200, 200),
    Radius = 100,
    Scale = 1,
    RadarBack = Color3.fromRGB(10, 10, 10),
    RadarBorder = Color3.fromRGB(75, 75, 75),
    LocalPlayerDot = Color3.fromRGB(255, 255, 255),
    PlayerDot = Color3.fromRGB(60, 170, 255),
    Team = Color3.fromRGB(0, 255, 0),
    Enemy = Color3.fromRGB(255, 0, 0),
    Health_Color = true,
    Team_Check = true
}

local RadarBackground = NewCircle(0.9, RadarInfo.RadarBack, RadarInfo.Radius, true, 1)
local RadarBorder = NewCircle(0.75, RadarInfo.RadarBorder, RadarInfo.Radius, false, 3)

local function GetRelative(pos)
    local char = Player.Character
    if char and char.PrimaryPart then
        local pmpart = char.PrimaryPart
        local camerapos = Vector3.new(Camera.CFrame.Position.X, pmpart.Position.Y, Camera.CFrame.Position.Z)
        local newcf = CFrame.new(pmpart.Position, camerapos)
        local r = newcf:PointToObjectSpace(pos)
        return r.X, r.Z
    else
        return 0, 0
    end
end

local function PlaceDot(plr)
    local PlayerDot = NewCircle(1, RadarInfo.PlayerDot, 3, true, 1)
    PlayerDot.Visible = false  -- Initially hide the dot

    local function Update()
        local c
        c = RS.RenderStepped:Connect(function()
            if RadarBackground.Visible then  -- Check if radar is visible
                local char = plr.Character
                if char and char:FindFirstChildOfClass("Humanoid") and char.PrimaryPart and char:FindFirstChildOfClass("Humanoid").Health > 0 then
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    local scale = RadarInfo.Scale
                    local relx, rely = GetRelative(char.PrimaryPart.Position)
                    local newpos = RadarInfo.Position - Vector2.new(relx * scale, rely * scale)

                    if (newpos - RadarInfo.Position).magnitude < RadarInfo.Radius - 2 then
                        PlayerDot.Radius = 3
                        PlayerDot.Position = newpos
                        PlayerDot.Visible = true
                    else
                        local dist = (RadarInfo.Position - newpos).magnitude
                        local calc = (RadarInfo.Position - newpos).unit * (dist - RadarInfo.Radius)
                        local inside = Vector2.new(newpos.X + calc.X, newpos.Y + calc.Y)
                        PlayerDot.Radius = 2
                        PlayerDot.Position = inside
                        PlayerDot.Visible = true
                    end

                    PlayerDot.Color = RadarInfo.PlayerDot
                    if RadarInfo.Team_Check then
                        if plr.TeamColor == Player.TeamColor then
                            PlayerDot.Color = RadarInfo.Team
                        else
                            PlayerDot.Color = RadarInfo.Enemy
                        end
                    end

                    if RadarInfo.Health_Color then
                        PlayerDot.Color = HealthBarLerp(hum.Health / hum.MaxHealth)
                    end
                else
                    PlayerDot.Visible = false
                    if Players:FindFirstChild(plr.Name) == nil then
                        PlayerDot:Remove()
                        c:Disconnect()
                    end
                end
            else
                PlayerDot.Visible = false
            end
        end)
    end
    coroutine.wrap(Update)()
end

for _, v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
end


local function NewLocalDot()
    local d = Drawing.new("Triangle")
    d.Visible = false  -- Initially hide the dot
    d.Thickness = 1
    d.Filled = true
    d.Color = RadarInfo.LocalPlayerDot
    d.PointA = RadarInfo.Position + Vector2.new(0, -6)
    d.PointB = RadarInfo.Position + Vector2.new(-3, 6)
    d.PointC = RadarInfo.Position + Vector2.new(3, 6)
    return d
end

local LocalPlayerDot = NewLocalDot()

game.Players.PlayerAdded:Connect(function(v)
    if v.Name ~= Player.Name then
        PlaceDot(v)
    end
    LocalPlayerDot:Remove()
    LocalPlayerDot = NewLocalDot()
end)

-- Function to update radar visibility
local function UpdateRadarVisibility(visible)
    RadarBackground.Visible = visible
    RadarBorder.Visible = visible
    LocalPlayerDot.Visible = visible
    for _, v in pairs(Players:GetChildren()) do
        if v.Name ~= Player.Name then
            local dot = v:FindFirstChild("RadarDot")
            if dot then
                dot.Visible = visible
            end
        end
    end
end

-- Add the toggle to the EnemyEspTab
if EnemyEspTab and EnemyEspTab.AddToggle then
    EnemyEspTab:AddToggle('minimap', {
        Text = 'Minimap',
        Default = false,
        Callback = function(first)
            UpdateRadarVisibility(first)
        end
    })
else
    warn("EnemyEspTab or AddToggle method not found")
end

-- Optional: Initialize the radar visibility based on the default toggle state
if EnemyEspTab and EnemyEspTab.GetToggleState then
    local success, toggleState = pcall(function() return EnemyEspTab:GetToggleState('minimap') end)
    if success then
        UpdateRadarVisibility(toggleState)
    else
        warn("Failed to get toggle state for 'minimap'")
    end
else
    warn("EnemyEspTab or GetToggleState method not found")
end

-- Loop
coroutine.wrap(function()
    local c
    c = RS.RenderStepped:Connect(function()
        if LocalPlayerDot then
            LocalPlayerDot.Color = RadarInfo.LocalPlayerDot
            LocalPlayerDot.PointA = RadarInfo.Position + Vector2.new(0, -6)
            LocalPlayerDot.PointB = RadarInfo.Position + Vector2.new(-3, 6)
            LocalPlayerDot.PointC = RadarInfo.Position + Vector2.new(3, 6)
        end
        RadarBackground.Position = RadarInfo.Position
        RadarBackground.Radius = RadarInfo.Radius
        RadarBackground.Color = RadarInfo.RadarBack

        RadarBorder.Position = RadarInfo.Position
        RadarBorder.Radius = RadarInfo.Radius
        RadarBorder.Color = RadarInfo.RadarBorder
    end)
end)()

-- Draggable
local inset = game:service("GuiService"):GetGuiInset()

local dragging = false
local offset = Vector2.new(0, 0)
UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
        offset = RadarInfo.Position - Vector2.new(Mouse.X, Mouse.Y)
        dragging = true
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

coroutine.wrap(function()
    local dot = NewCircle(1, Color3.fromRGB(255, 255, 255), 3, true, 1)
    local c
    c = RS.RenderStepped:Connect(function()
        if (Vector2.new(Mouse.X, Mouse.Y + inset.Y) - RadarInfo.Position).magnitude < RadarInfo.Radius then
            dot.Position = Vector2.new(Mouse.X, Mouse.Y + inset.Y)
            dot.Visible = true
        else
            dot.Visible = false
        end
        if dragging then
            RadarInfo.Position = Vector2.new(Mouse.X, Mouse.Y) + offset
        end
    end)
end)()






local isESPEnabled = false -- Toggle state

local function DrawLine()
    local l = Drawing.new("Line")
    l.Visible = false
    l.From = Vector2.new(0, 0)
    l.To = Vector2.new(1, 1)
    l.Color = Color3.fromRGB(255, 255, 255) -- White color
    l.Thickness = 1
    l.Transparency = 1
    return l
end

local function DrawESP(plr)
    repeat wait() until plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil
    local limbs = {}
    local R15 = (plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) and true or false
    if R15 then 
        limbs = {
            -- Spine
            Head_UpperTorso = DrawLine(),
            UpperTorso_LowerTorso = DrawLine(),
            -- Left Arm
            UpperTorso_LeftUpperArm = DrawLine(),
            LeftUpperArm_LeftLowerArm = DrawLine(),
            LeftLowerArm_LeftHand = DrawLine(),
            -- Right Arm
            UpperTorso_RightUpperArm = DrawLine(),
            RightUpperArm_RightLowerArm = DrawLine(),
            RightLowerArm_RightHand = DrawLine(),
            -- Left Leg
            LowerTorso_LeftUpperLeg = DrawLine(),
            LeftUpperLeg_LeftLowerLeg = DrawLine(),
            LeftLowerLeg_LeftFoot = DrawLine(),
            -- Right Leg
            LowerTorso_RightUpperLeg = DrawLine(),
            RightUpperLeg_RightLowerLeg = DrawLine(),
            RightLowerLeg_RightFoot = DrawLine(),
        }
    else 
        limbs = {
            Head_Spine = DrawLine(),
            Spine = DrawLine(),
            LeftArm = DrawLine(),
            LeftArm_UpperTorso = DrawLine(),
            RightArm = DrawLine(),
            RightArm_UpperTorso = DrawLine(),
            LeftLeg = DrawLine(),
            LeftLeg_LowerTorso = DrawLine(),
            RightLeg = DrawLine(),
            RightLeg_LowerTorso = DrawLine()
        }
    end

    local function Visibility(state)
        for i, v in pairs(limbs) do
            v.Visible = state
        end
    end

    local function UpdaterR15()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if isESPEnabled then
                if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                    local HUM, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                    if vis then
                        -- Head
                        local H = Camera:WorldToViewportPoint(plr.Character.Head.Position)
                        if limbs.Head_UpperTorso.From ~= Vector2.new(H.X, H.Y) then
                            --Spine
                            local UT = Camera:WorldToViewportPoint(plr.Character.UpperTorso.Position)
                            local LT = Camera:WorldToViewportPoint(plr.Character.LowerTorso.Position)
                            -- Left Arm
                            local LUA = Camera:WorldToViewportPoint(plr.Character.LeftUpperArm.Position)
                            local LLA = Camera:WorldToViewportPoint(plr.Character.LeftLowerArm.Position)
                            local LH = Camera:WorldToViewportPoint(plr.Character.LeftHand.Position)
                            -- Right Arm
                            local RUA = Camera:WorldToViewportPoint(plr.Character.RightUpperArm.Position)
                            local RLA = Camera:WorldToViewportPoint(plr.Character.RightLowerArm.Position)
                            local RH = Camera:WorldToViewportPoint(plr.Character.RightHand.Position)
                            -- Left leg
                            local LUL = Camera:WorldToViewportPoint(plr.Character.LeftUpperLeg.Position)
                            local LLL = Camera:WorldToViewportPoint(plr.Character.LeftLowerLeg.Position)
                            local LF = Camera:WorldToViewportPoint(plr.Character.LeftFoot.Position)
                            -- Right leg
                            local RUL = Camera:WorldToViewportPoint(plr.Character.RightUpperLeg.Position)
                            local RLL = Camera:WorldToViewportPoint(plr.Character.RightLowerLeg.Position)
                            local RF = Camera:WorldToViewportPoint(plr.Character.RightFoot.Position)

                            --Head
                            limbs.Head_UpperTorso.From = Vector2.new(H.X, H.Y)
                            limbs.Head_UpperTorso.To = Vector2.new(UT.X, UT.Y)

                            --Spine
                            limbs.UpperTorso_LowerTorso.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LowerTorso.To = Vector2.new(LT.X, LT.Y)

                            -- Left Arm
                            limbs.UpperTorso_LeftUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_LeftUpperArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftUpperArm_LeftLowerArm.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftUpperArm_LeftLowerArm.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftLowerArm_LeftHand.From = Vector2.new(LLA.X, LLA.Y)
                            limbs.LeftLowerArm_LeftHand.To = Vector2.new(LH.X, LH.Y)

                            -- Right Arm
                            limbs.UpperTorso_RightUpperArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.UpperTorso_RightUpperArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightUpperArm_RightLowerArm.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightUpperArm_RightLowerArm.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightLowerArm_RightHand.From = Vector2.new(RLA.X, RLA.Y)
                            limbs.RightLowerArm_RightHand.To = Vector2.new(RH.X, RH.Y)

                            -- Left Leg
                            limbs.LowerTorso_LeftUpperLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LowerTorso_LeftUpperLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftUpperLeg_LeftLowerLeg.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftUpperLeg_LeftLowerLeg.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLowerLeg_LeftFoot.From = Vector2.new(LLL.X, LLL.Y)
                            limbs.LeftLowerLeg_LeftFoot.To = Vector2.new(LF.X, LF.Y)

                            -- Right Leg
                            limbs.LowerTorso_RightUpperLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LowerTorso_RightUpperLeg.To = Vector2.new(RUL.X, RUL.Y)

                            limbs.RightUpperLeg_RightLowerLeg.From = Vector2.new(RUL.X, RUL.Y)
                            limbs.RightUpperLeg_RightLowerLeg.To = Vector2.new(RLL.X, RLL.Y)

                            limbs.RightLowerLeg_RightFoot.From = Vector2.new(RLL.X, RLL.Y)
                            limbs.RightLowerLeg_RightFoot.To = Vector2.new(RF.X, RF.Y)
                        end

                        if limbs.Head_UpperTorso.Visible ~= true then
                            Visibility(true)
                        end
                    else 
                        if limbs.Head_UpperTorso.Visible ~= false then
                            Visibility(false)
                        end
                    end
                else 
                    if limbs.Head_UpperTorso.Visible ~= false then
                        Visibility(false)
                    end
                    if game.Players:FindFirstChild(plr.Name) == nil then 
                        for i, v in pairs(limbs) do
                            v:Remove()
                        end
                        connection:Disconnect()
                    end
                end
            else
                if limbs.Head_UpperTorso.Visible ~= false then
                    Visibility(false)
                end
            end
        end)
    end

    local function UpdaterR6()
        local connection
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            if isESPEnabled then
                if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 then
                    local HUM, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                    if vis then
                        local H = Camera:WorldToViewportPoint(plr.Character.Head.Position)
                        if limbs.Head_Spine.From ~= Vector2.new(H.X, H.Y) then
                            local T_Height = plr.Character.Torso.Size.Y/2 - 0.2
                            local UT = Camera:WorldToViewportPoint((plr.Character.Torso.CFrame * CFrame.new(0, T_Height, 0)).p)
                            local LT = Camera:WorldToViewportPoint((plr.Character.Torso.CFrame * CFrame.new(0, -T_Height, 0)).p)

                            local LA_Height = plr.Character["Left Arm"].Size.Y/2 - 0.2
                            local LUA = Camera:WorldToViewportPoint((plr.Character["Left Arm"].CFrame * CFrame.new(0, LA_Height, 0)).p)
                            local LLA = Camera:WorldToViewportPoint((plr.Character["Left Arm"].CFrame * CFrame.new(0, -LA_Height, 0)).p)
                            local LH = Camera:WorldToViewportPoint(plr.Character["Left Arm"].Position)

                            local RA_Height = plr.Character["Right Arm"].Size.Y/2 - 0.2
                            local RUA = Camera:WorldToViewportPoint((plr.Character["Right Arm"].CFrame * CFrame.new(0, RA_Height, 0)).p)
                            local RLA = Camera:WorldToViewportPoint((plr.Character["Right Arm"].CFrame * CFrame.new(0, -RA_Height, 0)).p)
                            local RH = Camera:WorldToViewportPoint(plr.Character["Right Arm"].Position)

                            local LL_Height = plr.Character["Left Leg"].Size.Y/2 - 0.2
                            local LUL = Camera:WorldToViewportPoint((plr.Character["Left Leg"].CFrame * CFrame.new(0, LL_Height, 0)).p)
                            local LLL = Camera:WorldToViewportPoint((plr.Character["Left Leg"].CFrame * CFrame.new(0, -LL_Height, 0)).p)
                            local LF = Camera:WorldToViewportPoint(plr.Character["Left Leg"].Position)

                            local RL_Height = plr.Character["Right Leg"].Size.Y/2 - 0.2
                            local RUL = Camera:WorldToViewportPoint((plr.Character["Right Leg"].CFrame * CFrame.new(0, RL_Height, 0)).p)
                            local RLL = Camera:WorldToViewportPoint((plr.Character["Right Leg"].CFrame * CFrame.new(0, -RL_Height, 0)).p)
                            local RF = Camera:WorldToViewportPoint(plr.Character["Right Leg"].Position)

                            --Head
                            limbs.Head_Spine.From = Vector2.new(H.X, H.Y)
                            limbs.Head_Spine.To = Vector2.new(UT.X, UT.Y)

                            --Spine
                            limbs.Spine.From = Vector2.new(UT.X, UT.Y)
                            limbs.Spine.To = Vector2.new(LT.X, LT.Y)

                            -- Left Arm
                            limbs.LeftArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.LeftArm.To = Vector2.new(LUA.X, LUA.Y)

                            limbs.LeftArm_UpperTorso.From = Vector2.new(LUA.X, LUA.Y)
                            limbs.LeftArm_UpperTorso.To = Vector2.new(LLA.X, LLA.Y)

                            limbs.LeftArm_UpperTorso.To = Vector2.new(LH.X, LH.Y)

                            -- Right Arm
                            limbs.RightArm.From = Vector2.new(UT.X, UT.Y)
                            limbs.RightArm.To = Vector2.new(RUA.X, RUA.Y)

                            limbs.RightArm_UpperTorso.From = Vector2.new(RUA.X, RUA.Y)
                            limbs.RightArm_UpperTorso.To = Vector2.new(RLA.X, RLA.Y)

                            limbs.RightArm_UpperTorso.To = Vector2.new(RH.X, RH.Y)

                            -- Left Leg
                            limbs.LeftLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.LeftLeg.To = Vector2.new(LUL.X, LUL.Y)

                            limbs.LeftLeg_LowerTorso.From = Vector2.new(LUL.X, LUL.Y)
                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LLL.X, LLL.Y)

                            limbs.LeftLeg_LowerTorso.To = Vector2.new(LF.X, LF.Y)

                            -- Right Leg
                            limbs.RightLeg.From = Vector2.new(LT.X, LT.Y)
                            limbs.RightLeg.To = Vector2.new(RUL.X, RUL.Y)

                            limbs.RightLeg_LowerTorso.From = Vector2.new(RUL.X, RUL.Y)
                            limbs.RightLeg_LowerTorso.To = Vector2.new(RLL.X, RLL.Y)

                            limbs.RightLeg_LowerTorso.To = Vector2.new(RF.X, RF.Y)
                        end

                        if limbs.Head_Spine.Visible ~= true then
                            Visibility(true)
                        end
                    else 
                        if limbs.Head_Spine.Visible ~= false then
                            Visibility(false)
                        end
                    end
                else 
                    if limbs.Head_Spine.Visible ~= false then
                        Visibility(false)
                    end
                    if game.Players:FindFirstChild(plr.Name) == nil then 
                        for i, v in pairs(limbs) do
                            v:Remove()
                        end
                        connection:Disconnect()
                    end
                end
            else
                if limbs.Head_Spine.Visible ~= false then
                    Visibility(false)
                end
            end
        end)
    end

    if R15 then 
        UpdaterR15()
    else 
        UpdaterR6()
    end
end

-- Toggle ESP
local function ToggleESP()
    isESPEnabled = not isESPEnabled
    if isESPEnabled then
        for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
            if plr ~= Player then
                DrawESP(plr)
            end
        end
    else
        for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
            if plr ~= Player then
                for i, v in pairs(limbs) do
                    if v and v.Visible then
                        v:Remove()
                    end
                end
            end
        end
    end
end


EnemyEspTab:AddToggle('skeletonesp', {
    Text = 'Skeleton Esp',
    Default = false,
    Callback = function(first)
        ToggleESP()
    end
})

EnemyEspTab:AddToggle('FaceDirectionEsp', {
    Text = 'Face Direction Esp',
    Tooltip = 'Face Direction Esp',
    Default = false,

    Callback = function(first)



toggleTracersForAllPlayersExceptLocal(localPlayer)





       
    end
})




print('load_' .. tostring(counter))
counter = counter + 1
local WorldTab = Visuals:AddTab('world')
local Misc = Tabs.Misc:AddLeftGroupbox('misc1')
local CrosshairTab = Tabs.Misc:AddLeftGroupbox('crosshair')
local movetab = Tabs.Misc:AddRightGroupbox('misc2')
local Settings = Tabs.Settings:AddLeftGroupbox('Settings')
local luatab = Tabs.Lua:AddRightGroupbox('dogelua');
do
    local Sky = game:GetService("Lighting"):FindFirstChildOfClass("Sky")
    if not Sky then Sky = Instance.new("Sky", Lighting) end
    local value = "Standard"
    local SkyBoxes = {
        ["Standard"] = { ["SkyboxBk"] = Sky.SkyboxBk, ["SkyboxDn"] = Sky.SkyboxDn, ["SkyboxFt"] = Sky.SkyboxFt, ["SkyboxLf"] = Sky.SkyboxLf, ["SkyboxRt"] = Sky.SkyboxRt, ["SkyboxUp"] = Sky.SkyboxUp, },
        ["Among Us"] = { ["SkyboxBk"] = "rbxassetid://5752463190", ["SkyboxDn"] = "rbxassetid://5752463190", ["SkyboxFt"] = "rbxassetid://5752463190", ["SkyboxLf"] = "rbxassetid://5752463190", ["SkyboxRt"] = "rbxassetid://5752463190", ["SkyboxUp"] = "rbxassetid://5752463190" },
        ["Doge"] = { ["SkyboxBk"] = "rbxassetid://159713165", ["SkyboxDn"] = "rbxassetid://159713165", ["SkyboxFt"] = "rbxassetid://5752463190", ["SkyboxLf"] = "rbxassetid://5752463190", ["SkyboxRt"] = "rbxassetid://159713165", ["SkyboxUp"] = "rbxassetid://159713165" },
        ["Spongebob"] = { ["SkyboxBk"] = "rbxassetid://277099484", ["SkyboxDn"] = "rbxassetid://277099500", ["SkyboxFt"] = "rbxassetid://277099554", ["SkyboxLf"] = "rbxassetid://277099531", ["SkyboxRt"] = "rbxassetid://277099589", ["SkyboxUp"] = "rbxassetid://277101591" },
        ["Deep Space"] = { ["SkyboxBk"] = "rbxassetid://159248188", ["SkyboxDn"] = "rbxassetid://159248183", ["SkyboxFt"] = "rbxassetid://159248187", ["SkyboxLf"] = "rbxassetid://159248173", ["SkyboxRt"] = "rbxassetid://159248192", ["SkyboxUp"] = "rbxassetid://159248176" },
        ["Winter"] = { ["SkyboxBk"] = "rbxassetid://510645155", ["SkyboxDn"] = "rbxassetid://510645130", ["SkyboxFt"] = "rbxassetid://510645179", ["SkyboxLf"] = "rbxassetid://510645117", ["SkyboxRt"] = "rbxassetid://510645146", ["SkyboxUp"] = "rbxassetid://510645195" },
        ["Clouded Sky"] = { ["SkyboxBk"] = "rbxassetid://252760981", ["SkyboxDn"] = "rbxassetid://252763035", ["SkyboxFt"] = "rbxassetid://252761439", ["SkyboxLf"] = "rbxassetid://252760980", ["SkyboxRt"] = "rbxassetid://252760986", ["SkyboxUp"] = "rbxassetid://252762652" },
        --["test"] = {"SkyboxBk"="rbxassetid://","SkyboxDn"="rbxassetid://","SkyboxFt"="rbxassetid://","SkyboxLf"="rbxassetid://","SkyboxRt"="rbxassetid://","SkyboxUp"="rbxassetid://"},
    }



movetab:AddButton('no fog', function()
    if Lighting:FindFirstChildOfClass("Atmosphere") then
        Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
 end
 end)

WorldTab:AddToggle('cartpfurther', { Text = 'teleport most far car', Default = false })
WorldTab:AddButton("Car Teleport", function()
    if not plr.Character then return Library:Notify("no character") end
    local uaz, dist = nil, Toggles["cartpfurther"].Value and 0 or math.huge
    do
        for i, v in pairs(workspace:WaitForChild("Vehicles"):GetChildren()) do
            if v:FindFirstChild("Body") and v.Body:FindFirstChildOfClass("MeshPart") and
                (Toggles["cartpfurther"].Value and dist < (v.Body:FindFirstChildOfClass("MeshPart").Position - workspace.CurrentCamera.CFrame.p).Magnitude or
                    dist > (v.Body:FindFirstChildOfClass("MeshPart").Position - workspace.CurrentCamera.CFrame.p).Magnitude)
            then
                dist = (v.Body:FindFirstChildOfClass("MeshPart").Position - workspace.CurrentCamera.CFrame.p).Magnitude
                uaz = v
            end
        end
    end

    if not uaz then return Library:Notify("there is no cars around") end
    local player = game.Players.LocalPlayer

    for i, v in next, uaz:GetDescendants() do
        if v:IsA('Seat') and v.Name == 'SeatFR' then
            v:Sit(player.Character.Humanoid)
        end
    end

    wait(0.2)

    game:GetService("ReplicatedStorage").Remotes.VehicleInteractions:FireServer({
        ["Vehicle"] = uaz,
        ["Action"] = "Enter",
        ["Door"] = uaz.Body.FRdoor.FR_Door
    })
    wait(.2)

    uaz.Remotes.ExitSeat:FireServer()
    wait(0.1)
    --[[game:GetService("ReplicatedStorage").Remotes.VehicleInteractions:FireServer({
        ["Vehicle"] = uaz,
        ["Action"] = "Exit",
        ["Door"] = uaz.Body.FRdoor.FR_Door
    })
    game:GetService("ReplicatedStorage").Remotes.VehicleInteractions:FireServer({
        ["Vehicle"] = uaz,
        ["Action"] = "Enter",
        ["Door"] = uaz.Body.FRdoor.FR_Door
    })
    game:GetService("ReplicatedStorage").Remotes.VehicleInteractions:FireServer({
        ["Vehicle"] = uaz,
        ["Action"] = "Exit",
        ["Door"] = uaz.Body.FRdoor.FR_Door
    })]]
    uaz.Remotes.ExitSeat:FireServer()
    wait(1)
    --player.Character:FindFirstChildOfClass('Humanoid'):Move(Vector3.new(0, 10, 0))
end)


 


-- Call the function to apply ForceField and remove SurfaceAppearance



makefolder("nexify661")
luatab:AddInput('Execute', {
    Default = 'Execute Any Scripts',
    Numeric = false, -- true / false, only allows numbers
    Finished = true, -- Call the callback only when you press Enter

    Text = 'Execute Script',
    Tooltip = 'Execute Any Scripts', -- Information shown when you hover over the textbox

    Placeholder = 'Execute Any Scripts', -- Placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        -- Ensure the script is safe to execute, if necessary
        if Value and Value ~= "" then
            print('[cb] Executing script:', Value) -- Debug print
            local success, err = pcall(function()
                loadstring(Value)() -- Execute the script input by the user
            end)

            -- Handle execution result
            if not success then
                print('[cb] Error executing script:', err) -- Print any errors encountered
            end
        else
            print('[cb] No script provided.')
        end
    end
})

luatab:AddLabel("Sigma Or Bigma?")
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
luatab:AddLabel("1.2")


print('load_' .. tostring(counter))
counter = counter + 1
--[[WorldTab:AddToggle('nograsss', {
    Text = 'no grass',
    Default = false,
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})]]

local UserInputService = game:GetService("UserInputService")


local zoomValue = 0 -- Default zoom value
local defaultFOV = Camera.FieldOfView -- Get the current FOV from the camera
local zoomKey = Enum.KeyCode.Z -- Default keybind

-- Function to apply zoom based on zoom value
local function applyZoom()
    Camera.FieldOfView = defaultFOV - (zoomValue * 10) -- Adjust FOV based on zoom value
end


-- Slider for Zoom Value
Misc:AddSlider('ZoomSlider', {
    Text = 'Zoom Value',
    Default = 0,
    Min = 0.1,
    Max = 9,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        zoomValue = Value
        -- Do not apply zoom immediately when the slider is adjusted
    end
})

-- Keybind for Zoom
Misc:AddLabel('Zoom Bind'):AddKeyPicker('ZoomKeyPicker', {
    Default = 'Z',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Zoom Keybind',

    Callback = function(value)
        print('[cb] Keybind clicked!', value)
    end,

    ChangedCallback = function(newKey)
        zoomKey = newKey -- Update the zoom key when a new key is selected
        print('[cb] Keybind changed!', newKey)
    end
})

-- Variable to track zoom state
local isZoomed = false

-- Function to handle input for zooming
local function onKeyPress(input, gameProcessed)
    if gameProcessed then return end -- Prevent if the input is processed by the game

    -- Check if the input is the zoom key
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        isZoomed = not isZoomed -- Toggle zoom state
        if isZoomed then
            applyZoom() -- Apply zoom when enabled
        else
            Camera.FieldOfView = defaultFOV -- Reset to default FOV when disabled
        end
    end
end

-- Connect the key press event
UserInputService.InputBegan:Connect(onKeyPress)

-- Ensure zoom is applied only when the zoom key is pressed
UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == zoomKey then
        if isZoomed then
            applyZoom() -- Reapply zoom if the key is currently held down
        end
    end
end)

print('load_' .. tostring(counter))
counter = counter + 1

print('load_' .. tostring(counter))
counter = counter + 1
print('load_' .. tostring(counter))
counter = counter + 1



WorldTab:AddButton('Delete Solters Anti Cheat', function()

--removed

		
 end)

Misc:AddSlider('fpslimiter', {
    Text = 'FPS Limiter',
    Default = 120,
    Min = 10,
    Max = 500,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(State)
    setfpscap(State)
end)


Misc:AddButton('Rejoin⚡', function()
    if #plrs:GetPlayers() <= 1 then
        plrs.LocalPlayer:Kick("\nrejoining⚡")
        wait()
        game:GetService("TeleportService"):Teleport(game.PlaceId, plrs.LocalPlayer)
    else
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plrs.LocalPlayer)
    end
end)
--[[do
    local socket
    local rand = game:service("HttpService"):GenerateGUID(false):sub(1,5)
    if not ( websocket and websocket.connect and pcall(function()socket = websocket.connect("ws://31.210.171.229:8080")end) ) then
        return print("chat failed\nsupported: "..(websocket and websocket.connect and "✅\n" or "❌\n").."connected: ❌")
    else
        socket.OnMessage:Connect(function(txt)
            print(txt)
        end)
        Misc:AddInput('chatboxtest', {Default = 'hello there',Numeric = false,Finished = false,Text = 'chat',Tooltip = 'chat',Placeholder = 'enter text'})
        Misc:AddButton('send message in swimhub chat', function()
            socket:Send("swimhub_"..rand..":-/-:"..tostring(Options.chatboxtest.Value))
        end)
    end
end;]]

-- Toggle function to enable or disable third-person mode
local function toggleThirdPerson(enable)
    if enable then
        -- Enable third-person view
        player.CameraMode = Enum.CameraMode.Classic
        player.CameraMaxZoomDistance = 10
        player.CameraMinZoomDistance = 10
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = player.Character:FindFirstChild("Humanoid")
    else
        -- Disable third-person view
        player.CameraMode = Enum.CameraMode.LockFirstPerson
        camera.CameraType = Enum.CameraType.Custom
        camera.CameraSubject = nil  -- No specific subject in first-person
    end
end

-- Add toggle to the UI
movetab:AddToggle('Third Person', {
    Text = 'Third Person',
    Default = false,

    Callback = function(isEnabled)
        if isEnabled then
            print("called")
            -- Load the script when Third Person is enabled
            loadstring(game:HttpGet("https://pastebin.com/raw/0JRqt76Z"))()
        else
        print("called2")
            -- Load the script when Third Person is disabled
            loadstring(game:HttpGet("https://pastebin.com/raw/sZxZGWn5"))()
        end
    end


}):AddKeyPicker('thirdpersonkeybind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'Third Person Keybind',
    NoUI = false,

    Callback = function(Value)
    end,
})

print('Fuckers_' .. tostring(counter))
counter = counter + 2




print('load_' .. tostring(counter))
counter = counter + 1

print('load_' .. tostring(counter))
counter = counter + 1
-- totally not cripware


print('load_' .. tostring(counter))
counter = counter + 1
local pdeltatabbox = Tabs.Main:AddLeftTabbox("Project Delta Nexify")
local pdeltatabbox1 = Tabs.Main:AddRightTabbox("Project Delta Nexify")
local aimtab = pdeltatabbox:AddTab("Combat Features")



print('suckerloaders_' .. tostring(counter))
counter = counter + 4
--[[
aimtab:AddToggle('FUCKPDDDD', {
    Text = "FUCK UP THE SERVER FPS",
    Default = false,
})
aimtab:AddLabel("@w._.ruby._.w gave me it ^w^!! thx!!")
aimtab:AddSlider('FUCKPDD!!!!', {
    Text = 'TABLE INCR',
    Default = 250,
    Min = 1,
    Max = 300,
    Rounding = 0,
    Compact = false,
})
aimtab:AddSlider('FUCKPDD!!!!!!', {
    Text = 'TRIES',
    Default = 2,
    Min = 1,
    Max = 5,
    Rounding = 0,
    Compact = false,
})
aimtab:AddSlider('FUCKPDD!!!!!!!!', {
    Text = 'DELAY',
    Default = 0.6,
    Min = 0.1,
    Max = 1,
    Rounding = 2,
    Compact = false,
})
wrap(function()
    local function rahhh()
        local function getmaxvalue(val)
            local mainvalueifonetable = 499999
            if type(val) ~= "number" then
                return nil
            end
            local calculateperfectval = (mainvalueifonetable/(val+2))
            return calculateperfectval
        end
        local function bomb(tableincrease, tries)
            local maintable = {}
            local spammedtable = {}

            table.insert(spammedtable, {})
            z = spammedtable[1]

            for i = 1, tableincrease do
                local tableins = {}
                table.insert(z, tableins)
                z = tableins
            end

            local calculatemax = getmaxvalue(tableincrease)
            local maximum

            if calculatemax then
                maximum = calculatemax
            else
                maximum = 1999999
            end

            for i = 1, maximum do
                table.insert(maintable, spammedtable)
            end

            for i = 1, tries do
                game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
            end
        end
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
        bomb(Options["FUCKPDD!!!!"].Value, Options["FUCKPDD!!!!!!!!"].Value)
    end
    while true do
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
        if Options["FUCKPDDDD"].Value then rahhh() end
        wait(Options["FUCKPDD!!!!!!!!"].Value)
    end
end)]]

aimtab:AddLabel("Nexify V1.8 Solara", true)

aimtab:AddToggle('nograss', {
    Text = 'No Grass',
    Default = false,
    Tooltip = 'Removes Grasses',
    Callback = function(first)
        sethiddenproperty(game:GetService("Workspace").Terrain, "Decoration", not first)
    end
})

-- Ensure that `players` is defined correctly and `skins` is accessible.

local LC = Game.Players.LocalPlayer  -- Correctly define `LC` as the LocalPlayer
local rp = game:GetService("ReplicatedStorage")
local skins = {
	["762x25MAG"] = "Nutcracker",
	["762x25Rnd71Mag"] = "Arctic",
	["762x25TTMAG"] = "Watergun",
	["762x39MAG"] = "DeltaAnime",
	["762x39Rnd75Mag"] = "Anton",
	["762x54Rnd10Mag"] = "Permafrost",
	["9x18vzMag"] = "GiftWrap",
	["9x19MP443MAG"] = "JollyRoger",
	["9x19MP5MAG"] = "Permafrost",
	["9x39Mag"] = "Shoreline",
	AKMN = "DeltaAnime",
	FrontAKMN = "DeltaAnime",
	HandleRK3AKMN = "DeltaAnime",
	PolymerStockAKMN = "DeltaAnime",
	HandleAKMN = "Valentine",
    Tortilla = "Blackout",
	DV2 = "Cutlass",
    ["DV-2"] = "Cutlass",
    ["DV-2 Knife"] = "Cutlass",
	TacticalFrontAKMN = "AnodizedRed",
	SvdFront = "Permafrost",
	MuzzleBrakeAKM = "AnodizedRed",
	CombatGloves = "Anarchy",
	CamoShirt = "Anarchy",
	HandWraps = "SantaCommando",
	WastelandShirt = "SantaCommando",
	M4 = "Devil",
	Lighter = "EarlyAccess",
	GorkaShirt = "Wetsuit",
	GhillieTorso = "Arctic",
	AsVal = "Shoreline",
	F1 = "Pineapple",
	Makarov = "Serpant",
	Mosin = "SkullHunter",
	PPSH41 = "Nutcracker",
	SVD = "Permafrost",
	Saiga12 = "Valentine",
	TT33 = "Watergun",
	ZSh = "Woodland",
	MP5SD  = "Permafrost",
	MP443 = "Whiteout",
	IZh81 = "Watergun",
}
  -- Ensure `skins` is defined, e.g., skins = { ["ItemName"] = "SkinId" }



Misc:AddToggle('antiaim', {
    Text = 'Tilt Manuplation',
    Default = false,

    Callback = function(first)
        game.ReplicatedStorage.Remotes.UpdateTilt:FireServer(first and 0 / 0 or 0)
    end
})

aimtab:AddButton('Skin Changer', function()

if rp:FindFirstChild("Players") then
    local playersContainer = rp.Players
    local player = playersContainer:FindFirstChild(LC.Name)
    
    if player then
        for _, item in player:GetDescendants() do
            local itemProperties = item:FindFirstChild("ItemProperties")
            if itemProperties and skins[item.Name] then
                itemProperties:SetAttribute("Skin", skins[item.Name])
            end
        end
    end
end


 end)

WorldTab:AddButton('Remove SFX', function()

game.ReplicatedStorage.SFX:Destroy()

 end)

WorldTab:AddButton('Remove VFX', function()

game.ReplicatedStorage.VFX:Destroy()

 end)


local Workspace = game:GetService("Workspace")


-- Global variables
local speedMultiplier = 1 -- Default speed multiplier
local viewModel = nil
local animator = nil
local monitoring = true -- To control the loop

-- Function to change the speed of all currently playing animations
local function changeAnimationSpeed(multiplier)
    if animator then
        for _, animTrack in pairs(animator:GetPlayingAnimationTracks()) do
            animTrack:AdjustSpeed(multiplier)
        end
    end
end

-- Function to set up the Animator
local function setupAnimator()
    viewModel = Workspace:FindFirstChild("Camera") and Workspace.Camera:FindFirstChild("ViewModel")
    if viewModel then
        local humanoid = viewModel:FindFirstChild("Humanoid")
        if humanoid then
            animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                -- Apply speed to currently playing animations
                changeAnimationSpeed(speedMultiplier)
                
                -- Adjust speed for any new animations that start playing
                animator.AnimationPlayed:Connect(function(animTrack)
                    animTrack:AdjustSpeed(speedMultiplier)
                end)
                
                return true
            else
                warn("Animator not found in Humanoid")
            end
        else
            warn("Humanoid not found in ViewModel")
        end
    else
        
    end
    return false
end

-- Function to continuously check for ViewModel and update Animator
local function monitorViewModel()
    while monitoring do
        local hasViewModel = setupAnimator()

        if not hasViewModel then
            animator = nil
            viewModel = nil
        end

        wait(0.1) -- Check every second, adjust as needed
    end
end

-- Function to toggle animation speed adjustment
local function toggleAnimationSpeed(enable)
    if enable and animator then
        -- Apply the speed multiplier to currently playing animations
        changeAnimationSpeed(speedMultiplier)
    else
        -- Optional: You might want to reset speed or handle disabling here if needed
        print("Animation speed adjustment disabled.")
    end
end

-- Slider or value control for speedMultiplier
local function setSpeedMultiplier(value)
    speedMultiplier = value
    toggleAnimationSpeed(true) -- Reapply speed with new multiplier
end

local Lighting = game:GetService("Lighting") -- Ensure Lighting service is referenced
local fullBrightActive = false -- Track toggle state
local oldSettings = {} -- Table to store old lighting settings

local function enableFullBright()
    -- Store old settings if not already stored
    if not oldSettings.Ambient then
        oldSettings.Ambient = Lighting.Ambient
        oldSettings.Brightness = Lighting.Brightness
        oldSettings.ShadowSoftness = Lighting.ShadowSoftness
        oldSettings.GlobalShadows = Lighting.GlobalShadows
    end

    -- Set full bright settings
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 2 -- Increased brightness
    Lighting.GlobalShadows = false -- Disable shadows
    Lighting.ShadowSoftness = 0 -- Disable shadow softness for a flat lighting effect
end

local function disableFullBright()
    -- Restore old settings
    Lighting.Ambient = oldSettings.Ambient or Lighting.Ambient
    Lighting.Brightness = oldSettings.Brightness or Lighting.Brightness
    Lighting.GlobalShadows = oldSettings.GlobalShadows ~= nil and oldSettings.GlobalShadows or Lighting.GlobalShadows
    Lighting.ShadowSoftness = oldSettings.ShadowSoftness or Lighting.ShadowSoftness
end

-- Toggle to enable/disable full bright
Misc:AddToggle('fullBrightToggle', {
    Text = 'Enable Full Bright',
    Default = false,
    Callback = function(state)
        fullBrightActive = state
        if fullBrightActive then
            enableFullBright() -- Enable full bright
        else
            disableFullBright() -- Disable full bright
        end
    end
})


Misc:AddToggle('noglobshadow', {
    Text = 'No Global Shadows',
    Default = false,
    Callback = function(state)
        noglobshadowactive = state
        if noglobshadowactive then
            game.Lighting.GlobalShadows = false -- Enable full bright
        else
            game.Lighting.GlobalShadows = true
        end
    end
})

aimtab:AddToggle('nowaterblur', {
    Text = 'No Water Blur',
    Tooltip = 'No Blur For Water',
    Default = false, -- Initialize with the current state
    Callback = function(enabled)
        if enabled then
        Library:Notify("Enabled No Water Blur")
            game.Lighting.WaterBlur.Size = 0 -- If toggle is enabled, set blur to 0
        else
        Library:Notify("Disabled No Water Blur")
            game.Lighting.WaterBlur.Size = 24 -- If toggle is disabled, set blur to default (24)
        end
    end
})



	
movetab:AddDropdown('FunctionMode', {
    Values = {'AUTOMATIC', 'V1🔴', 'V2🟡', 'V3🟡', 'V4🔴', 'V5🟢', 'V5 TURBO🟢', 'V6🟢', 'V6 TURBO🟢', 'V7🟡', 'V7 TURBO MAX🟡', 'V7 TURBO🟢', 'V8 TURBO MAX🟢'},
    Default = 9,
    Multi = false,
    Text = 'Function Mode ⚠️',
    Tooltip = 'Function Mode ⚠️ (NOT RECOMMENDED TO CHANGE)',
    Callback = function(state)
                -- Reduce FPS cap for 0.6 seconds
        setfpscap(0)  -- Lower FPS cap drastically (example: 10 FPS)

        -- Wait for 0.6 seconds
        wait(1.9)

        -- Reset the FPS cap to its default or original state
        setfpscap(9000)  -- Reset FPS cap (you can set it to your default FPS cap, e.g., 60 FPS)
    end
})

aimtab:AddToggle('removevisors', {
    Text = 'Remove Visors',
    Default = false,
    Callback = function(state)  -- Renamed 'first' to 'state' for clarity
        if state then
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = false
        else
            game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.ScreenEffects.Visible = true
        end
    end
})



-- Adding Toggle to aimtab
aimtab:AddToggle('Instantequip', {
    Text = 'Instant Equip',
    Tooltip = 'Instant Equip',
    Default = false,
    
    Callback = function(isToggled)
        if isToggled then
            -- Enable instant reload and set high speed
            setSpeedMultiplier(7)
        else
            -- Disable instant reload and reset to normal speed
            setSpeedMultiplier(1)
        end
    end
})

-- Start monitoring the ViewModel in a coroutine to avoid blocking the main thread
coroutine.wrap(monitorViewModel)()

local function nostalgiaModePd(enabled)
    if enabled then
        game.Lighting.Brightness = 14
        game.Lighting.GlobalShadows = false
        game.Lighting.Technology = Enum.Technology.Compatibility
    else
        game.Lighting.Brightness = 1
        game.Lighting.GlobalShadows = true
        game.Lighting.Technology = Enum.Technology.Future
    end
end

aimtab:AddToggle('NostalgiaMode', {
    Text = 'Old Times Mode',
    Tooltip = 'Old Times Mode',
    Default = false,

    Callback = function(enabled)
        if enabled then
            nostalgiaModePd(true)
        else
            nostalgiaModePd(false)
        end
    end
})

local function printFolderNames(parent)
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Folder") then
            print(child.Name)
        end
    end
end

-- Example usage
local directory = game.ReplicatedStorage.Clans -- or any other parent instance

Misc:AddButton('Nigga Whisper', function()

    -- Destroy clothing items
    game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
    game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()
    
    -- Retrieve the BodyColors instance
    local bodyColors = game.ReplicatedStorage.AiPresets.WhisperAI["Body Colors"]
    
    -- Function to change body colors to dark
    local function setDarkColors()
        -- Check if BodyColors instance exists
        if bodyColors and bodyColors:IsA("BodyColors") then
            -- Set all color properties to dark color
            bodyColors.HeadColor = BrickColor.new("Black")
            bodyColors.LeftArmColor = BrickColor.new("Black")
            bodyColors.LeftLegColor = BrickColor.new("Black")
            bodyColors.RightArmColor = BrickColor.new("Black")
            bodyColors.RightLegColor = BrickColor.new("Black")
            bodyColors.TorsoColor = BrickColor.new("Black")
        else
            warn("BodyColors instance not found or invalid.")
        end
    end
    
    -- Apply the dark colors
    setDarkColors()

end)

aimtab:AddButton('Destroy Look At (Whisper)', function()

game.ReplicatedStorage.AiPresets.WhisperAI.LookAt:Destroy()


 end)

Misc:AddButton('Naked Whisper', function()

game.ReplicatedStorage.AiPresets.WhisperAI.Pants:Destroy()
game.ReplicatedStorage.AiPresets.WhisperAI.Shirt:Destroy()

 end)

Misc:AddButton('Print All Clan Names', function()

printFolderNames(directory)

 end)

aimtab:AddButton('Destroy Drown Remote', function()

game.StarterPlayer.StarterCharacterScripts.Health.Drowning:Destroy()

 end)

Misc:AddButton('Destroy Buildables', function()

game.ReplicatedStorage.Buildable:Destroy()

 end)

aimtab:AddToggle('Aimbot', {
    Text = 'Aim Bot',
    Tooltip = 'Locks To Head Or Torso',
    Default = false,

    Callback = function(first)
        toggleAimbot()
    end



    }):AddKeyPicker('aimbotkeybind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'Aimbot Key Bind',
    NoUI = false,

    Callback = function(Value)
    end,
})

local HitmarkerSounds = {
    ["TF2"]       = "rbxassetid://8255306220",
    ["Gamesense"] = "rbxassetid://4817809188",
    ["Rust"]      = "rbxassetid://1255040462",
    ["Neverlose"] = "rbxassetid://8726881116",
    ["Bubble"]    = "rbxassetid://198598793",
    ["Quake"]     = "rbxassetid://1455817260",
    ["Among-Us"]  = "rbxassetid://7227567562",
    ["Ding"]      = "rbxassetid://2868331684",
    ["Minecraft"] = "rbxassetid://6361963422",
    ["Blackout"]  = "rbxassetid://3748776946",
    ["Osu!"]      = "rbxassetid://7151989073",
}

-- Create the dropdown for selecting hit sounds
aimtab:AddDropdown('cameradropdown', {
    Values = { 'TF2', 'Gamesense', 'Rust', 'Neverlose', 'Bubble', 'Quake', 'Among-Us', 'Ding', 'Minecraft', 'Blackout', 'Osu!' },  -- Add all the options
    Default = 3,  -- Default selection is 'Rust'
    Multi = false,
    Text = 'Hit Sounds', 
    Tooltip = 'Hit Sounds', 
    Callback = function(state)
        -- Get the selected sound ID from the HitmarkerSounds table
        local globalhitsounds = HitmarkerSounds[state]
        
        -- Ensure the sound ID is valid and exists
        if globalhitsounds then
            local SFXDIRECTORY = game.ReplicatedStorage.SFX

            -- Assign the selected sound ID to all relevant sounds
            SFXDIRECTORY.Hits.MeleeHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.ProjectileHits.Blood.Hit.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Helmet.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Bodyshot.SoundId = globalhitsounds
            SFXDIRECTORY.Hits.HitMarkers.Headshot.SoundId = globalhitsounds
        else
            warn("Selected hit sound is not available!")
        end
    end
})

aimtab:AddButton('No Gun Weight', function()

local playerName = game.Players.LocalPlayer.Name

-- Access the player's inventory based on their actual name
local playerInventory = game.ReplicatedStorage.Players[playerName].Inventory



-- Loop through all items in the inventory and set the "MovementModifier" attribute
for _, item in pairs(playerInventory:GetChildren()) do
    if item:FindFirstChild("ItemProperties") and item.ItemProperties:FindFirstChild("Tool") then
        item.ItemProperties.Tool:SetAttribute("MovementModifer", "0")
    end
end


 end)

Misc:AddSlider('hydration', {
    Text = 'Hydration Slider',
    Default = 3700,
    Min = 0,
    Max = 3700,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Hydration:SetAttribute("Value", state)
end)

Misc:AddSlider('radiationslider', {
    Text = 'Radiation Slider',
    Default = 0,
    Min = 0,
    Max = 800,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Radiation:SetAttribute("Value", state)
end)


Misc:AddSlider('legfracture', {
    Text = 'Leg Fracture Slider',
    Default = 0,
    Min = 0,
    Max = 30,
    Rounding = 1,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.LegFracture:SetAttribute("Value", state)
end)


Misc:AddSlider('Bleeding', {
    Text = 'Bleeding Slider',
    Default = 0,
    Min = 0,
    Max = 70,
    Rounding = 1,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Bleeding:SetAttribute("Value", state)
end)


Misc:AddSlider('hunger', {
    Text = 'Hunger Slider',
    Default = 2000,
    Min = 0,
    Max = 2000,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Status.GameplayVariables


playerInventory.Hunger:SetAttribute("Value", state)
end)


Misc:AddDropdown('raritychanger', {
    Values = { 'Epic', 'Common', 'Legendary', 'Mythical' },
    Default = 1,
    Multi = false,
    Text = 'Rarity Changer',
    Tooltip = 'Works For All Guns!',
    Callback = function(state)
       
local playerName = game.Players.LocalPlayer.Name


local playerInventory = game.ReplicatedStorage.Players[playerName].Inventory


for _, item in pairs(playerInventory:GetChildren()) do

    if item:FindFirstChild("ItemProperties") then

        item.ItemProperties:SetAttribute("Rarity", state)
    end
end



    end
})

Misc:AddDropdown('cameradropdown', {
    Values = { 'Attach', 'Custom', 'Fixed', 'Follow', 'Orbital', 'Scriptable', 'Track', 'Watch'},
    Default = 2,
    Multi = false,
    Text = 'Camera Type',
    Tooltip = 'Camera Type',
    Callback = function(state)
        game.workspace.Camera.CameraType = state -- Update the target part based on dropdown selection
    end
})

aimtab:AddDropdown('aimbottargetpart', {
    Values = { 'HumanoidRootPart', 'Head' },
    Default = 2,
    Multi = false,
    Text = 'Aimbot Target Part',
    Tooltip = 'Select a part for targeting (Aimbot)',
    Callback = function(Value)
        targetPart = Value -- Update the target part based on dropdown selection
    end
})



local function norecoil()

for i,v in pairs(ammo:GetChildren()) do
     v:SetAttribute("RecoilStrength", "0")
end

end
--[[
aimtab:AddToggle('InstantHit', {
    Text = 'Instant Hit',
    Tooltip = 'Instant Hit',
    Default = false,

    Callback = function(enabled)
        -- Locate the AmmoTypes folder in ReplicatedStorage
        local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            -- Iterate through all children of AmmoTypes
            for _, v in pairs(ammo:GetChildren()) do
                -- If the toggle is enabled, set MuzzleVelocity to 3200, else revert it to default (you might need to set the correct default value)
                if enabled then
                    v:SetAttribute("MuzzleVelocity", 3200)
                else
                    v:SetAttribute("MuzzleVelocity", 3100) -- Replace 1500 with the default value you want
                end
            end
        end
    end
})

--]]


-- Create the recoil slider and handle its change event
aimtab:AddSlider('RecoilStrength', {
    Text = 'Recoil Slider',
    Default = 230,
    Min = 0,
    Max = 300,
    Rounding = 0,
    Compact = false,
}):OnChanged(function(State)
    -- Check if the slider value is zero
    if State == 0 then
        -- Set the recoil strength to "0" for all children of ammo
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", "0")
        end
    else
        -- Set the recoil strength to the slider value for all children of ammo
        for i, v in pairs(ammo:GetChildren()) do
            v:SetAttribute("RecoilStrength", State)
        end
    end
end)


local function predict_drop(part, entity, projectile_speed, projectile_drop)
    local distance = (trident.middlepart.Position - part.Position).Magnitude
    local time_to_hit = distance / projectile_speed

    -- Simpler final projectile speed assumption
    local final_projectile_speed = projectile_speed  -- Assuming constant speed

    -- Simplified drop calculation
    local drop_timing = projectile_drop * time_to_hit

    -- Return drop_timing or 0 if it's not a valid number
    if drop_timing ~= drop_timing then  -- Check for NaN
        return 0
    end

    return drop_timing
end


aimtab:AddButton('Drop Prediction', function()

predict_drop()

end)


aimtab:AddLabel("Default Is 0.118", true)

-- Slider setup
aimtab:AddSlider('Predictionslider', {
    Text = 'Prediction Slider',
    Default = 0.118,
    Min = 0.1,
    Max = 0.340,
    Rounding = 3,
    Compact = true,
}):OnChanged(function(state)
    if type(state) == "number" then
        predictionFactor = state
        print("Prediction factor updated to:", predictionFactor)
    else
        warn("Slider state is not a number:", state)
    end
end)



-- Get all available materials in Roblox
local materials = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    table.insert(materials, material.Name)
end

-- Create a function for ban detection
local function detectBan()
    while true do
        wait(3) -- Wait 4 seconds before the next check

        -- Check if the UAC and BeingBanned attribute exist
        local playerStatus = game.ReplicatedStorage.Players:FindFirstChild(Game.Players.LocalPlayer.Name)
        
        if playerStatus and playerStatus:FindFirstChild("Status") and playerStatus.Status:FindFirstChild("UAC") then
            -- Check if the 'BeingBanned' attribute exists
            local beingBanned = playerStatus.Status.UAC:GetAttribute("BeingBanned")
            
            -- If BeingBanned is true, print a message
            if beingBanned == true then
                print("You are being banned!")
                Library:Notify("[UAC] YOU ARE GOING TO GET BANNED.")
            end
        else
        Library:Notify("[UAC] UAC VARIABLE ERROR.")
            warn("Could not find the UAC status for the player.")
        end
    end
end

-- Start the ban detection coroutine
coroutine.wrap(detectBan)()
Library:Notify("[UAC] BAN DETECTOR STARTED!")

-- Define the material mapping (for quick lookup)
local materialMapping = {}
for _, material in ipairs(Enum.Material:GetEnumItems()) do
    materialMapping[material.Name] = material
end

-- Dropdown setup with all materials
aimtab:AddDropdown('dv2materialchanger', {
    Values = materials,
    Default = 1,
    Multi = false,
    Text = 'DV2 Material Changer',
    Tooltip = 'Changes The Material Of The DV2',
    Callback = function(selectedValue)
        -- Get the material type based on the dropdown selection
        local materialType = materialMapping[selectedValue]
        
        -- Ensure the material type exists in the mapping
        if materialType then
            -- Get the item from the specified path
            local item = game.Workspace:FindFirstChild('Camera')
                                    :FindFirstChild('ViewModel')
                                    :FindFirstChild('Item')
                                    :FindFirstChild('ItemRoot')

            -- Check if the item was found
            if item then
                -- Apply the selected material to the item
                item.Material = materialType
                item.SurfaceAppearance:Destroy()
            else
                warn('Item not found at the specified path.')
            end
        else
            warn('Selected material not recognized.')
        end
    end
})


--aimtab:AddToggle('hitboxexpander', {
--    Text = 'Bigger Heads',
--    Tooltip = 'Bigger Heads',
--    Default = false,
--
--    Callback = function(first)
--       toggleHeadEffect()
--    end
--})






-- Adding the slider to adjust FOV
aimtab:AddSlider('fovslider', {
    Text = 'FOV Slider',
    Default = 90,
    Min = 0, -- Minimum FOV value
    Max = 120,
    Rounding = 2,
    Compact = false,
}):OnChanged(function(State)
    -- Check if the camera is available
    if camera then
        camera.FieldOfView = State -- Update the FOV of the camera
    else
        warn("Camera not found!")
    end
end)





-- Add the Head Size Slider
aimtab:AddSlider('HeadSizeSlider', {
    Text = 'Head Size Slider',
    Default = 3.5,
    Min = 1, -- Minimum normal head size
    Max = 4,
    Rounding = 3,
    Compact = false,
}):OnChanged(function(State)
    headSizeMultiplier = State -- Update the head size multiplier when the slider changes
    
    -- Apply the effect to all players if it is enabled
    if isEnabled then
        for _, player in pairs(players:GetPlayers()) do
            applyHeadEffect(player)
        end
    end
end)

-- Function to check if a target is visible (line-of-sight)
-- Function to check if a target is visible (line-of-sight)
-- Function to simulate holding the left mouse button
-- Function to check if the target is a valid player (or another specific type of target)
local function isValidTarget(target)
    if target and target:IsA("BasePart") then
        local character = target.Parent
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        return humanoid and humanoid.Health > 0
    end
    return false
end

---- Function to simulate holding the left mouse button
--local function startAutoFire()
--    while autoFireEnabled do
--        local target = mouse.Target
        
 --       if isValidTarget(target) then
            virtualInput:SendMouseButtonEvent(0, 0, 0, true, game, 0) -- Hold down left mouse button
 --       else
            virtualInput:SendMouseButtonEvent(0, 0, 0, false, game, 0) -- Release left mouse button if no valid target
 --       end
        
 --       wait(0.1) -- Adjust the delay as needed
  --  end
    
    -- Ensure the left mouse button is released when auto-fire is disabled
--    virtualInput:SendMouseButtonEvent(0, 0, 0, false, game, 0)
--end

-- Function to toggle auto-firing
--local function toggleAutoFire()
--    autoFireEnabled = not autoFireEnabled
    
--    if autoFireEnabled then
--        print("Auto-fire enabled")
        -- Start auto-firing in a coroutine
--        coroutine.wrap(startAutoFire)()
--    else
 --       print("Auto-fire disabled")
--    end
--end


--aimtab:AddToggle('atgyatshoot', {
--    Text = 'Auto Shoot',
 --   Tooltip = 'Auto Shoots Until That Player You Aim Dies.',
--    Default = false,

--    Callback = function(first)
--        toggleAutoFire()
--    end
--}):AddKeyPicker('autoshotkeybind', {
--    Default = 'None',
--    SyncToggleState = true,

--    Mode = 'Toggle',

--    Text = 'AutoShootKeyBind',
----    NoUI = false,
--
--    Callback = function(Value)
---    end,
--})

--[[





aimtab:AddToggle('predictiontoggle13', {
    Text = 'Prediction Toggle',
    Tooltip = 'Prediction',
    Default = false,

    Callback = function(first)
                print("Prediction enabled:", predictionEnabled)
                togglePrediction()
    end
})
]]--


-- Aim FOV Slider to adjust prediction value
--aimtab:AddSlider('Prediction', {
 --   Text = 'Prediction Slider',
 --   Default = predictionFactor, -- Default value set here
 --   Min = 0.1,
 --   Max = 1,
  --  Rounding = 2, -- You can set the rounding to 2 decimal places for more precise control
 --   Compact = false,
--}):OnChanged(function(state)
 --   predictionFactor = state -- Update the predictionFactor based on slider value
--    print("Prediction Factor updated to:", predictionFactor)
--zend)

local isEnabled883 = false  -- Global variable to track whether the script is enabled or disabled
local LC = game.Players.LocalPlayer

local function toggleBunnyHop()
    isEnabled883 = not isEnabled883
    print("Bunny Hop is now", isEnabled883 and "enabled" or "disabled")
end

game:GetService("RunService").RenderStepped:Connect(function()
    if isEnabled883 then
        LC.Character.Humanoid:SetAttribute("JumpCooldown", 0)
    end
end)

aimtab:AddToggle('Bunnyhop', {
    Text = 'No Jump Cooldown',
    Tooltip = 'Bunny Hop',
    Default = false,

    Callback = function(first)
        toggleBunnyHop()
    end
})


-- Define the function to update sound IDs
local function updateSoundIds()
    -- Fetching the sound objects
    local hitMarkers = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("HitMarkers")
    local hitMarkers2 = game.ReplicatedStorage:WaitForChild("SFX"):WaitForChild("Hits"):WaitForChild("ProjectileHits")
    
    -- Defining the sounds dictionary with their corresponding instances
    local sounds = {
        Helmet = hitMarkers:FindFirstChild("Helmet"),
        BodyArmor = hitMarkers:FindFirstChild("BodyArmor"),
        Hit2 = hitMarkers2:FindFirstChild("Hit"),
        Bodyshot = hitMarkers:FindFirstChild("Bodyshot"),
        Headshot = hitMarkers:FindFirstChild("Headshot")
    }

    -- Loop through each sound and update its SoundId
    for name, sound in pairs(sounds) do
        if sound then
            sound.SoundId = "rbxassetid://5043539486"
            print(name .. " SoundId updated to: " .. sound.SoundId)
        else
            warn(name .. " sound not found")
        end
    end
end



-- Adding a button to change the hit sounds


local isCheckingVisibility = false
local textLabel = nil
local connection = nil

-- Function to create the visibility text label
local function createVisibilityText()
    if not textLabel then
        local screenGui = Instance.new("ScreenGui")
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        textLabel = Instance.new("TextLabel")
        textLabel.Parent = screenGui
        textLabel.Text = ""
        textLabel.TextColor3 = Color3.new(0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Position = UDim2.new(0.5, 0, 0.9, 0) -- Positioning slightly down the middle
        textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 24 -- Medium-sized text
    end
end

-- Function to check if the player is visible
local function isPlayerVisible(target)
    if target and target.Parent:FindFirstChild("HumanoidRootPart") then
        local camera = workspace.CurrentCamera
        local humanoidRootPart = target.Parent.HumanoidRootPart
        local ray = Ray.new(camera.CFrame.Position, (humanoidRootPart.Position - camera.CFrame.Position).unit * 5000)
        local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {camera, game.Players.LocalPlayer.Character})

        if part and part:IsDescendantOf(target.Parent) then
            return true
        end
    end
    return false
end

-- Function to toggle visibility checking
local function toggleVisibilityCheck()
    isCheckingVisibility = not isCheckingVisibility

    if isCheckingVisibility then
        createVisibilityText()

        connection = game:GetService("RunService").RenderStepped:Connect(function()
            local target = game.Players.LocalPlayer:GetMouse().Target
            if isPlayerVisible(target) then
                textLabel.Text = "Player Visible"
            else
                textLabel.Text = ""
            end
        end)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        if textLabel then
            textLabel.Text = ""
        end
    end
end

-- Example usage: toggle visibility checking on/off
--toggleVisibilityCheck() -- Call this to enable or disable the function


--aimtab:AddToggle('faketoggle1', {
  --  Text = 'Better Aimbot',
  --  Tooltip = 'Better Aimbot',
 --   Default = false,

  --  Callback = function(first)
        
 --   end
--})

--aimtab:AddToggle('automatic131', {
--    Text = 'Automatic Prediction Adjust',
--    Tooltip = 'Automatic Prediction Adjust',
--    Default = false,
--
--    Callback = function(first)
--       toggleAdjustPrediction()
--    end
--})

--toggleSwimmingState()


aimtab:AddToggle('walkunderwater', {
    Text = 'Walk Under Water',
    Tooltip = 'Walk Under The Water',
    Default = false,

    Callback = function(first)
        toggleSwimmingState()
    end
})




local UserInputService3es = game:GetService("UserInputService")

local Players3es = game:GetService("Players")
local RunService3es = game:GetService("RunService")
local Workspace3es = game:GetService("Workspace")

local player3es = Players3es.LocalPlayer
local mouse3es = player3es:GetMouse()
local keybind3es = Enum.KeyCode.G  --- for retard niggers this is keybind
local aimLockEnabled3es = false  --- Toggle for enabling/disabling aimlock
local aimLock3es = false  --- To track if aimlock is currently active
local lockedPlayer3es = nil

local function findClosestPlayerToCursor3es()
    local closestPlayer3es = nil
    local shortestDistance3es = math.huge
    for _, otherPlayer3es in pairs(Players3es:GetPlayers()) do
        if otherPlayer3es ~= player3es and otherPlayer3es.Character and otherPlayer3es.Character:FindFirstChild("HumanoidRootPart") then
            local screenPosition3es, onScreen3es = Workspace3es.CurrentCamera:WorldToScreenPoint(otherPlayer3es.Character.HumanoidRootPart.Position)
            if onScreen3es then
                local distanceFromMouse3es = (Vector2.new(screenPosition3es.X, screenPosition3es.Y) - Vector2.new(mouse3es.X, mouse3es.Y)).magnitude
                if distanceFromMouse3es < shortestDistance3es then
                    shortestDistance3es = distanceFromMouse3es
                    closestPlayer3es = otherPlayer3es
                end
            end
        end
    end
    return closestPlayer3es
end

local function teleportAndLockToHead3es()
    local closestPlayer3es = findClosestPlayerToCursor3es()
    if closestPlayer3es and player3es.Character and player3es.Character:FindFirstChild("HumanoidRootPart") then
        local head3es = closestPlayer3es.Character:FindFirstChild("Head")
        if head3es then
            local targetPosition3es = closestPlayer3es.Character.HumanoidRootPart.Position - (closestPlayer3es.Character.HumanoidRootPart.CFrame.LookVector * 5)
            local targetOrientation3es = closestPlayer3es.Character.HumanoidRootPart.CFrame.LookVector

            player3es.Character.HumanoidRootPart.Anchored = true
            RunService3es.Stepped:Wait()

            player3es.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition3es, targetPosition3es + targetOrientation3es)
            RunService3es.Stepped:Wait()
            player3es.Character.HumanoidRootPart.Anchored = false

            Workspace3es.CurrentCamera.CFrame = CFrame.new(Workspace3es.CurrentCamera.CFrame.Position, head3es.Position)
            aimLock3es = true
            lockedPlayer3es = closestPlayer3es

            RunService3es.RenderStepped:Connect(function()
                if aimLock3es and lockedPlayer3es and Players3es:FindFirstChild(lockedPlayer3es.Name) then
                    local head3es = lockedPlayer3es.Character:FindFirstChild("Head")
                    if head3es then
                        Workspace3es.CurrentCamera.CFrame = CFrame.new(Workspace3es.CurrentCamera.CFrame.Position, head3es.Position)
                    end
                end
            end)
        end
    end
end

UserInputService3es.InputBegan:Connect(function(input3es, isProcessed3es)
    if not isProcessed3es and input3es.KeyCode == keybind3es then
        if aimLockEnabled3es then
            aimLock3es = false
            lockedPlayer3es = nil
            aimLockEnabled3es = false
        else
            teleportAndLockToHead3es()
            aimLockEnabled3es = true
        end
    end
end)

UserInputService3es.InputEnded:Connect(function(input3es, isProcessed3es)
    if not isProcessed3es and input3es.KeyCode == keybind3es then
        aimLock3es = false
        lockedPlayer3es = nil
    end
end)

player3es.CameraMode = Enum.CameraMode.LockFirstPerson


aimtab:AddLabel("To Use TP Kill Press G", true)
--aimtab:AddToggle('toggletpkill', {
--    Text = 'Toggle TP Kill',
 --   Tooltip = 'Toggle TP Kill',
 ----   Default = false,

 --   Callback = function(first)
----        if first then
            -- Toggle is turned on
 --           aimLockEnabled3es = true
--            print("TP Kill Enabled")
 --       else
            -- Toggle is turned off
 --           aimLockEnabled3es = false
 --           print("TP Kill Disabled")
--        end
--    end
--})

local Utility = {
    Drawings = { };
    Objects = { };
    BindToRenders = { };
    Fonts = { }
}



local tracersEnabled = false -- Initial state of tracers

--- Lighting shits world



local isFiring = false


-- Function to toggle tracers on and off
function Utility:ToggleTracers(enable)
    tracersEnabled = enable
end

-- Function to check for ViewModel in the Camera
function Utility:HasViewModel()
    return workspace:FindFirstChild("Camera") and workspace.Camera:FindFirstChild("ViewModel") ~= nil
end

-- Function to create bullet tracers with gradual transparency fading and decals on all sides
function Utility:CreateBullets(Position, From)
    if not tracersEnabled or not self:HasViewModel() then
        return -- Do nothing if tracers are disabled or there's no ViewModel
    end

    local direction = (Position - From).unit -- Calculate the direction vector

    local BulletTracers = Instance.new("Part")
    BulletTracers.Anchored = true
    BulletTracers.CanCollide = false
    BulletTracers.Material = Enum.Material.ForceField
    BulletTracers.Color = Color3.fromRGB(119, 120, 255)
    BulletTracers.Size = Vector3.new(0.1, 0.1, (From - Position).magnitude)
    BulletTracers.CFrame = CFrame.new(From, Position) * CFrame.new(0, 0, -BulletTracers.Size.Z / 2)
    BulletTracers.Name = "BulletTracers"
    BulletTracers.Transparency = 0
    BulletTracers.Parent = game.Workspace.NoCollision

    -- Function to add decals to all sides of the part
    local function addDecal(face)
        local decal = Instance.new("Decal")
        decal.Texture = "rbxassetid://7151778311"
        decal.Face = face
        decal.Transparency = 0
        decal.Parent = BulletTracers
    end

    -- Add decals to each face of the part
    addDecal(Enum.NormalId.Front)
    addDecal(Enum.NormalId.Back)
    addDecal(Enum.NormalId.Top)
    addDecal(Enum.NormalId.Bottom)
    addDecal(Enum.NormalId.Left)
    addDecal(Enum.NormalId.Right)

    -- Gradually fade the tracer out, including the decals
    for i = 0, 1, 0.05 do
        BulletTracers.Transparency = i
        for _, decal in ipairs(BulletTracers:GetChildren()) do
            if decal:IsA("Decal") then
                decal.Transparency = i
            end
        end
        wait(0.1) -- Adjust for faster or slower fading
    end
    
    BulletTracers:Destroy()
end

-- Function to fire the weapon
function FireWeapon()
    local gunPosition = game.Players.LocalPlayer.Character.Head.Position -- Replace with the actual gun position
    local mouse = game.Players.LocalPlayer:GetMouse()
    local hitPosition = mouse.Hit.p -- Get the mouse hit position

    -- Call the CreateBullets function
    Utility:CreateBullets(hitPosition, gunPosition)
end



-- Detect when the mouse button is pressed
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = true

        -- Continuously fire while holding down the button
        spawn(function()
            while isFiring do
                FireWeapon()
                wait(0.1) -- Adjust this delay to control the firing rate
            end
        end)
    end
end)

-- Detect when the mouse button is released
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isFiring = false
    end
end)

-- Add a toggle for the tracers in the UI
aimtab:AddToggle('tracers', {
    Text = 'Tracers',
    Tooltip = 'Toggle tracers on or off',
    Default = tracersEnabled, -- Initialize with the current state
    Callback = function(enabled)
        Utility:ToggleTracers(enabled) -- Enable or disable based on toggle
    end
})

aimtab:AddButton('No Drag', function()

-- Function to set ammo drag
local function setAmmoDrag(first)
    local ammoTypes = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
    if not ammoTypes then
        warn("AmmoTypes not found in ReplicatedStorage")
        return
    end

    for _, ammoType in pairs(ammoTypes:GetChildren()) do
        local dragValue = first and "0" or "DefaultDrag"
        ammoType:SetAttribute("Drag", dragValue)
    end
end

-- Call the setAmmoDrag function (example usage)
setAmmoDrag(true) -- sets Drag to "0"


 end)

aimtab:AddButton('No Spread', function()

local ammo = game.ReplicatedStorage:FindFirstChild("AmmoTypes")
        if ammo then
            for _, v in pairs(ammo:GetChildren()) do
                v:SetAttribute("ProjectileWidth", first and "0" or "DefaultWidth")
            end
        else
            warn("AmmoTypes not found in ReplicatedStorage")
        end



 end)

local jesusEnabled = false
local jesusFolder = workspace:FindFirstChild("JesusFolder") or Instance.new("Folder", workspace)
jesusFolder.Name = "JesusFolder"

local function onJesusToggle(enabled)
    jesusEnabled = enabled

    -- If disabled, clear the platforms and stop the function
    if not jesusEnabled then
        for _, v in pairs(jesusFolder:GetChildren()) do
            v:Destroy()
        end
        return
    end

    -- Continuously check and create platforms if enabled
    while jesusEnabled do
        task.wait(0.1)

        local player = game.Players.LocalPlayer
        local character = player.Character

        if not character then
            continue
        end

        local head = character:FindFirstChild("Head")
        if not head then continue end

        local rayOrigin = head.Position + Vector3.new(0, 150, 0) + workspace.CurrentCamera.CFrame.LookVector * 5
        local rayDirection = Vector3.new(0, -300, 0)
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        rayParams.FilterDescendantsInstances = {character}

        local rayResult = workspace:Raycast(rayOrigin, rayDirection, rayParams)

        if rayResult and rayResult.Material == Enum.Material.Water then
            local platform = Instance.new("Part")
            platform.Size = Vector3.new(500, 1, 500)
            platform.Anchored = true
            platform.CanCollide = true
            platform.Position = rayResult.Position + Vector3.new(0, 0.3, 0) -- Slightly above water surface
            platform.Material = Enum.Material.ForceField
            platform.Parent = jesusFolder
        end
    end
end
-- Toggle implementation
aimtab:AddToggle('jesus', {
    Text = 'Walk On Water',
    Tooltip = 'Lets You Walk On Water',
    Default = false,

    Callback = function(value)
        onJesusToggle(value)
    end
})




--aimtab:AddToggle('WalkOnWater', {
--    Text = 'Walk On Water',
--    Tooltip = 'Lets You Walk On Water',
--    Default = false,

--    Callback = function(first)
 --           local character = LC.Character or LC.CharacterAdded:Wait()
--            local part = character:FindFirstChild("Head")
 --           local rayparams = RaycastParams.new()
 --           rayparams.FilterType = Enum.RaycastFilterType.Exclude
 --   
  --          rayparams.FilterDescendantsInstances = {character}
    
 --   end
--})

local timeValue = 12 -- Default time

-- Function to change the time of day
local function changeTimeOfDay(value)
    Lighting.ClockTime = value
end

-- Slider to set time of day
Misc:AddSlider('timeSlider', {
    Text = 'Set Time of Day',
    Default = 12, -- Default to noon
    Min = 0, -- Minimum time (midnight)
    Max = 24, -- Maximum time (next midnight)
    Rounding = 1, -- Round to 1 decimal place
    Compact = false,
}):OnChanged(function(value)
    -- Only change the time when the slider is adjusted
    timeValue = value -- Update timeValue with the slider
    changeTimeOfDay(timeValue) -- Apply the new time
end)

-- OPTIONAL: Monitor if the game resets the time and reapply if necessary
game:GetService("RunService").Stepped:Connect(function()
    if Lighting.ClockTime ~= timeValue then
        changeTimeOfDay(timeValue) -- Reapply the desired time if it changes
    end
end)

Misc:AddButton('Remove Scope From Gun', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):Destroy()

 end)

Misc:AddButton('Disable OKP7 SCOPE GUI', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("Item"):FindFirstChild("Attachments"):FindFirstChild("Sight"):FindFirstChild("OKP7"):FindFirstChild("Reticle"):FindFirstChild("ScopeGui"):Destroy()

 end)

Misc:AddButton('Remove Gloves From Viewmodel', function()


game.workspace:FindFirstChild("Camera"):FindFirstChild("ViewModel"):FindFirstChild("CombatGloves"):Destroy()	

 end)

aimtab:AddToggle('VisibleText', {
    Text = 'Visible Text',
    Tooltip = 'Tells you if the user you aim is visible or not',
    Default = false,

    Callback = function(first)
        toggleVisibilityCheck()
    end
})



Misc:AddButton('Remove Mag From Viewmodel', function()



if camera then
    local viewModel = camera:FindFirstChild("ViewModel")
    if viewModel then
        local item = viewModel:FindFirstChild("Item")
        if item then
            local attachments = item:FindFirstChild("Attachments")
            if attachments then
                local magazine = attachments:FindFirstChild("Magazine")
                if magazine then
                    magazine:Destroy()
                else
                    warn("Magazine not found in Attachments")
                end
            else
                warn("Attachments not found in Item")
            end
        else
            warn("Item not found in ViewModel")
        end
    else
        warn("ViewModel not found in Camera")
    end
else
    warn("Camera not found in Workspace")
end


 end)
print('number_' .. tostring(counter))
counter = counter + 1
local charactertab = pdeltatabbox1:AddTab("misc")
 
Library:Notify("Nexify V1.8 SOLARA")
Library:Notify("DOWNLOADED BUG FIXES")
Library:Notify(executorname33)
Library:Notify("Optimization Loaded")
wait(1)
Library:Notify("Loading Updates ")
wait(0.4)
Library:Notify("Loaded")
wait(0.5)
Library:Notify("LOADED FLY SCRIPT")

local function IsTargetVisible(target)
    if not plr.Character then return false end
    if not target then return false end
    if not camera:FindFirstChildOfClass("Model") then return false end
    if not camera:FindFirstChildOfClass("Model"):FindFirstChild("AimPart") then return false end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = { plr.Character, camera, workspace.NoCollision }
    params.IgnoreWater = true
    params.CollisionGroup = "WeaponRay"
    local from = workspace.Camera.ViewModel:FindFirstChild("AimPart")
    local part, _ = workspace:Raycast(from.CFrame.p, (target.Position - from.CFrame.p).Unit * 6000, params)
    if part.Instance and part.Instance:IsDescendantOf(target.Parent) then
        local humanoid = target.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.Parent == target.Parent then
            return true
        end
    end
    return false
end
-- Services and Variables
-- Services and Variables
-- Services and Variables
-- Services and Variables
-- Required Services
-- Required Services
-- Prediction Settings by Distance
-- FOV Settings
-- FOV Settings
-- FOV Settings
-- Settings
-- Settings
local fovRadius = 175  -- Increased FOV for slightly better target tracking
local fovCircle

-- Bullet speed
local bulletSpeed = 430           -- Bullet speed, adjusted for better prediction

-- Prediction for different ranges (manual values)
local predictionForRanges = {
    [10] = 0.1,   [20] = 0.12,  [30] = 0.14,  [40] = 0.16,  [50] = 0.18,
    [60] = 0.20,  [70] = 0.22,  [80] = 0.24,  [90] = 0.26,  [100] = 0.28,
    [110] = 0.30, [120] = 0.32, [130] = 0.34, [140] = 0.36, [150] = 0.38,
    [160] = 0.40, [170] = 0.42, [180] = 0.44, [190] = 0.46, [200] = 0.48,
    [210] = 0.50, [220] = 0.52, [230] = 0.54, [240] = 0.56, [250] = 0.58,
    [260] = 0.60, [270] = 0.62, [280] = 0.64, [290] = 0.66, [300] = 0.68,
    [310] = 0.70, [320] = 0.72, [330] = 0.74, [340] = 0.76, [350] = 0.78,
    [360] = 0.80, [370] = 0.82, [380] = 0.84, [390] = 0.86, [400] = 0.88,
    [410] = 0.90, [420] = 0.92, [430] = 0.94, [440] = 0.96, [450] = 0.98,
    [460] = 1.00, [470] = 1.02, [480] = 1.04, [490] = 1.06, [500] = 1.08,
    [510] = 1.10, [520] = 1.12, [530] = 1.14, [540] = 1.16, [550] = 1.18,
    [560] = 1.20, [570] = 1.22, [580] = 1.24, [590] = 1.26, [600] = 1.28
}


-- Bullet drop compensation for different ranges (manual values)
local bulletDropForRanges = {
    [10] = 0.001, [20] = 0.002, [30] = 0.003, [40] = 0.004, [50] = 0.005,
    [60] = 0.006, [70] = 0.007, [80] = 0.008, [90] = 0.009, [100] = 0.010,
    [110] = 0.011, [120] = 0.012, [130] = 0.013, [140] = 0.014, [150] = 0.015,
    [160] = 0.016, [170] = 0.017, [180] = 0.018, [190] = 0.019, [200] = 0.020,
    [210] = 0.021, [220] = 0.022, [230] = 0.023, [240] = 0.024, [250] = 0.025,
    [260] = 0.026, [270] = 0.027, [280] = 0.028, [290] = 0.029, [300] = 0.030,
    [310] = 0.031, [320] = 0.032, [330] = 0.033, [340] = 0.034, [350] = 0.035,
    [360] = 0.036, [370] = 0.037, [380] = 0.038, [390] = 0.039, [400] = 0.040,
    [410] = 0.045, [420] = 0.046, [430] = 0.047, [440] = 0.049, [450] = 0.050,
    [460] = 0.052, [470] = 0.053, [480] = 0.054, [490] = 0.049, [500] = 0.050,
    [510] = 0.051, [520] = 0.052, [530] = 0.053, [540] = 0.054, [550] = 0.055,
    [560] = 0.056, [570] = 0.057, [580] = 0.058, [590] = 0.059, [600] = 0.060
}

local camera = workspace.CurrentCamera
local mouse = Players.LocalPlayer:GetMouse()

-- Function to create a visible FOV circle
local function createFovCircle()
    if fovCircle then
        fovCircle:Remove()  -- Remove existing circle if it exists
    end
    
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.NumSides = 100
    fovCircle.Radius = fovRadius
    fovCircle.Color = Color3.new(1, 1, 1) -- White color
    fovCircle.Filled = false
    fovCircle.Visible = true
    fovCircle.Transparency = 1
end

-- Update FOV circle position (centered on the screen)
local function updateFovCircle994()
    if fovCircle then
        -- Get the center of the screen
        local screenCenter = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        
        -- Set the FOV circle's position to the screen's center
        fovCircle.Position = screenCenter
        fovCircle.Radius = fovRadius -- Update FOV circle size
    else
        createFovCircle()
    end
end

-- Function to find a target within the FOV
local function findTargetWithinFovCircle()
    local mousePos = Vector2.new(mouse.X, mouse.Y)
    local closestTarget = nil
    local shortestDistance = fovRadius

    -- Iterate over all players to find a target within FOV
    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if targetPlayer ~= Players.LocalPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Head") then
            local head = targetPlayer.Character.Head
            local screenPos, onScreen = camera:WorldToScreenPoint(head.Position)

            if onScreen then
                local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
                local distance = (screenPoint - mousePos).Magnitude

                -- Check if the target is within the FOV and closer than previous targets
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestTarget = targetPlayer.Character
                end
            end
        end
    end

    return closestTarget
end

-- Function to get the closest matching prediction value based on distance
local function getPredictionForDistance(distance)
    local closestRange = 10  -- Start with the smallest distance

    for range, _ in pairs(predictionForRanges) do
        if distance >= range then
            closestRange = range  -- Find the closest matching range
        end
    end

    return predictionForRanges[closestRange] or 0  -- Return the prediction value or 0 if not found
end

-- Function to get the closest matching bullet drop compensation based on distance
local function getBulletDropForDistance(distance)
    local closestRange = 10  -- Start with the smallest distance

    for range, _ in pairs(bulletDropForRanges) do
        if distance >= range then
            closestRange = range  -- Find the closest matching range
        end
    end

    return bulletDropForRanges[closestRange] or 0  -- Return the bullet drop value or 0 if not found
end

-- Function to adjust aim to compensate for bullet drop
local function adjustAimForBulletDrop(target, distance)
    local head = target:FindFirstChild("Head")
    if head then
        -- Get bullet drop compensation for the given distance
        local compensation = getBulletDropForDistance(distance)
        
        -- Return the adjusted position (slightly above the head to compensate for bullet drop)
        local adjustedPosition = head.Position + Vector3.new(0, compensation, 0)
        
        return adjustedPosition
    end
    return target.Head.Position
end

-- Function to predict target's future position
local function predictTargetPosition(target)
    local head = target:FindFirstChild("Head")
    if head then
        local velocity = head.Velocity
        local distance = (Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
        
        -- Time for the bullet to travel to the target
        local bulletTravelTime = distance / bulletSpeed

        -- Calculate the predicted position
        local predictedPosition = head.Position + (velocity * bulletTravelTime)

        -- Further adjust prediction based on distance and velocity
        local leadFactor = (bulletTravelTime * velocity).Magnitude
        predictedPosition = predictedPosition + (velocity.Unit * leadFactor)  -- Additional lead based on speed
        
        -- Adjust aim to compensate for bullet drop
        predictedPosition = adjustAimForBulletDrop(target, distance)
        
        return predictedPosition
    end
    return head.Position
end

-- Variables to track aiming state and debugging
local isSilentAimEnabled994 = false -- Toggle this to enable/disable silent aim
local lockedCharacter = nil

-- Function to handle aiming logic
local function updateAiming()
    if isSilentAimEnabled994 then -- Check if Silent Aim is enabled
        -- Find the character under the mouse cursor
        local characterUnderMouse = findTargetWithinFovCircle()

        -- If a character is found within the FOV, lock onto it
        if characterUnderMouse and characterUnderMouse ~= lockedCharacter then
            lockedCharacter = characterUnderMouse
        end

        -- If we have a locked character, aim at them
        if lockedCharacter and lockedCharacter:FindFirstChild("Head") and camera:FindFirstChild("ViewModel") then
            local head = lockedCharacter.Head
            local vm = camera:FindFirstChild("ViewModel")
            local ap = vm:FindFirstChild("AimPart")
            local apc = vm:FindFirstChild("AimPartCanted")
            local fc = vm:FindFirstChild("FakeCamera")

            if ap and apc and fc then
                -- Get the distance to the target
                local distance = (Players.LocalPlayer.Character.Head.Position - head.Position).Magnitude
                
                -- Get the predicted position (with bullet drop compensation and velocity)
                local aimPosition = predictTargetPosition(lockedCharacter)
                local cameraPosition = camera.CFrame.Position

                -- Update AimPart positions
                ap.CFrame = CFrame.new(cameraPosition, aimPosition)
                apc.CFrame = CFrame.new(cameraPosition, aimPosition)
            end
        end

        -- Unlock the character if they are no longer in the FOV
        if not characterUnderMouse then
            lockedCharacter = nil
        end
    end
end

-- Call the updateAiming function continuously
RunService.RenderStepped:Connect(function()
    updateFovCircle994()  -- Ensure this function is correctly implemented
    updateAiming()
end)

-- Create the FOV circle at the start
createFovCircle()

-- Optional: Clean up when the script is stopped or the player is removed
Players.LocalPlayer.CharacterRemoving:Connect(function(character)
    lockedCharacter = nil  -- Reset the locked character on removal
end)




-- Create a table to store settings globally
ViewModelSettings = {
    Color = Color3.new(0.768627, 0.039216, 0.913725), -- Default color
    Material = Enum.Material.Plastic, -- Default material
    IsEnabled = false, -- Toggle state for ViewModel Chams
    HighlightEnabled = false, -- Toggle state for Highlight effect
    HighlightTransparency = 0.5, -- Default transparency for highlight
    ArmCustomizationEnabled = false -- Toggle state for arm customization
}

-- Function to apply color, material, and outline to ViewModel parts
function applySettings(viewModel)
    if viewModel and ViewModelSettings.IsEnabled then
        -- Change the color of all parts in the ViewModel
        for _, part in ipairs(viewModel:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = ViewModelSettings.Color -- Change part color
                part.Material = ViewModelSettings.Material -- Set material

                -- Create or update the outline (Highlight)
                local highlight = part:FindFirstChildOfClass("Highlight")
                if ViewModelSettings.HighlightEnabled then
                    if not highlight then
                        highlight = Instance.new("Highlight")
                        highlight.Parent = part
                    end
                    highlight.FillColor = ViewModelSettings.Color -- Set highlight fill color
                    highlight.OutlineColor = Color3.new(1, 1, 1) -- Set outline color (white)
                    highlight.OutlineTransparency = ViewModelSettings.HighlightTransparency -- Set outline transparency
                elseif highlight then
                    highlight:Destroy() -- Remove highlight if it is disabled
                end
            end
            
            -- Remove SurfaceAppearance if it exists
            if part:IsA("MeshPart") then
                local surfaceAppearance = part:FindFirstChildOfClass("SurfaceAppearance")
                if surfaceAppearance then
                    surfaceAppearance:Destroy() -- Remove SurfaceAppearance
                end
            end
        end
    end
end

-- Function to customize arms and remove WastelandShirt
function customizeArms(viewModel)
    if not viewModel then return end
    
    -- Remove WastelandShirt if it exists
    local wastelandShirt = viewModel:FindFirstChild("WastelandShirt")
    if wastelandShirt then
        wastelandShirt:Destroy()
    end
    
    -- List of arm parts to customize
    local armParts = { "LeftLowerArm", "LeftUpperArm", "RightLowerArm", "RightUpperArm" }
    
    -- Apply force field and transparency to arms
    for _, armName in ipairs(armParts) do
        local armPart = viewModel:FindFirstChild(armName)
        if armPart and armPart:IsA("BasePart") then
            armPart.Material = Enum.Material.ForceField -- Set material to ForceField
            armPart.Transparency = 0.8 -- Set transparency to 0.8

            -- Create or update the highlight
            local highlight = armPart:FindFirstChildOfClass("Highlight")
            if not highlight then
                highlight = Instance.new("Highlight")
                highlight.Parent = armPart
            end
            highlight.FillColor = ViewModelSettings.Color -- Set highlight color to match ViewModelSettings color
            highlight.OutlineColor = Color3.new(1, 1, 1) -- Set outline color to white
            highlight.OutlineTransparency = 0.5 -- Set outline transparency
        end
    end
end


charactertab:AddLabel('-------------------------------------------------------------')
-- Skybox Color Picker
-- Skybox Image Changer
-- Define the available skyboxes with their asset IDs
SkyBoxes = {
    ["Standard"] = {
        ["SkyboxBk"] = "rbxassetid://123456789", -- Replace with actual asset IDs
        ["SkyboxDn"] = "rbxassetid://123456789",
        ["SkyboxFt"] = "rbxassetid://123456789",
        ["SkyboxLf"] = "rbxassetid://123456789",
        ["SkyboxRt"] = "rbxassetid://123456789",
        ["SkyboxUp"] = "rbxassetid://123456789"
    },
    ["Among Us"] = {
        ["SkyboxBk"] = "rbxassetid://5752463190",
        ["SkyboxDn"] = "rbxassetid://5752463190",
        ["SkyboxFt"] = "rbxassetid://5752463190",
        ["SkyboxLf"] = "rbxassetid://5752463190",
        ["SkyboxRt"] = "rbxassetid://5752463190",
        ["SkyboxUp"] = "rbxassetid://5752463190"
    },
    ["Doge"] = {
        ["SkyboxBk"] = "rbxassetid://159713165",
        ["SkyboxDn"] = "rbxassetid://159713165",
        ["SkyboxFt"] = "rbxassetid://5752463190",
        ["SkyboxLf"] = "rbxassetid://5752463190",
        ["SkyboxRt"] = "rbxassetid://159713165",
        ["SkyboxUp"] = "rbxassetid://159713165"
    },
    ["Spongebob"] = {
        ["SkyboxBk"] = "rbxassetid://277099484",
        ["SkyboxDn"] = "rbxassetid://277099500",
        ["SkyboxFt"] = "rbxassetid://277099554",
        ["SkyboxLf"] = "rbxassetid://277099531",
        ["SkyboxRt"] = "rbxassetid://277099589",
        ["SkyboxUp"] = "rbxassetid://277101591"
    },
["Blood"] = {
    ["SkyboxBk"] = "rbxassetid://163288979",  -- Test this ID
    ["SkyboxDn"] = "rbxassetid://163288979",  -- Test this ID
    ["SkyboxFt"] = "rbxassetid://163288979",  -- Test this ID
    ["SkyboxLf"] = "rbxassetid://163288979",  -- Test this ID
    ["SkyboxRt"] = "rbxassetid://163288979",  -- Test this ID
    ["SkyboxUp"] = "rbxassetid://163288979"   -- Test this ID
},

    ["Deep Space"] = {
        ["SkyboxBk"] = "rbxassetid://159248188",
        ["SkyboxDn"] = "rbxassetid://159248183",
        ["SkyboxFt"] = "rbxassetid://159248187",
        ["SkyboxLf"] = "rbxassetid://159248173",
        ["SkyboxRt"] = "rbxassetid://159248192",
        ["SkyboxUp"] = "rbxassetid://159248176"
    },
    ["Winter"] = {
        ["SkyboxBk"] = "rbxassetid://510645155",
        ["SkyboxDn"] = "rbxassetid://510645130",
        ["SkyboxFt"] = "rbxassetid://510645179",
        ["SkyboxLf"] = "rbxassetid://510645117",
        ["SkyboxRt"] = "rbxassetid://510645146",
        ["SkyboxUp"] = "rbxassetid://510645195"
    },
    ["Clouded Sky"] = {
        ["SkyboxBk"] = "rbxassetid://252760981",
        ["SkyboxDn"] = "rbxassetid://252763035",
        ["SkyboxFt"] = "rbxassetid://252761439",
        ["SkyboxLf"] = "rbxassetid://252760980",
        ["SkyboxRt"] = "rbxassetid://252760986",
        ["SkyboxUp"] = "rbxassetid://252762652"
    },
}

-- Create the dropdown for selecting the skybox
charactertab:AddDropdown('skyboxDropdown', {
    Values = {"Standard", "Blood", "Among Us", "Doge", "Spongebob", "Deep Space", "Winter", "Clouded Sky"},  -- List of available skyboxes
    Default = 1,  -- Default selection is 'Standard'
    Multi = false,
    Text = 'Skybox Selector',
    Tooltip = 'Select a skybox from the dropdown',
    Callback = function(selectedSkybox)
        local sky = game.Lighting:FindFirstChildOfClass("Sky")
        
        -- Create a new Sky instance if it doesn't exist
        if not sky then
            sky = Instance.new("Sky")
            sky.Parent = game.Lighting
        end

        -- Update the skybox images based on the selection
        local selectedBox = SkyBoxes[selectedSkybox]
        if selectedBox then
            for key, assetId in pairs(selectedBox) do
                sky[key] = assetId -- Update each side of the skybox
            end
        else
            warn("Selected skybox is not available!")
        end
    end
})


-- Retrieve the original grass color from the Terrain service
terrain = game:GetService("Workspace").Terrain
originalGrassColor = terrain:GetMaterialColor(Enum.Material.Grass)

-- Create a color picker for changing the grass color
charactertab:AddLabel('Grass Color Picker'):AddColorPicker('ColorPickerGrass', {
    Default = originalGrassColor, -- Set the default color to the original grass color
    Title = 'Grass Color Picker',
    Transparency = 0,

    Callback = function(Value)
        -- Change the grass color in the Terrain
        local grassColor = Value

        -- Set the color of grass by modifying the terrain properties
        terrain:SetMaterialColor(Enum.Material.Grass, grassColor)

        -- Ensure grass is enabled (the decoration property)
        sethiddenproperty(terrain, "Decoration", true) -- Ensure grass is enabled
    end
})


-- Create a color picker for changing the grass color

lastSelectedColor = Color3.fromRGB(0, 255, 255) -- Default color (cyan)
colorPickerEnabled = false -- State to check if the color picker is enabled
storedItems = {} -- Table to store items before making them invisible

-- Create a toggle for enabling/disabling the character color picker
charactertab:AddToggle('Character Color Picker', {
    Text = 'Enable Character Color Picker',
    Default = false,

    Callback = function(isEnabled)
        colorPickerEnabled = isEnabled -- Update the toggle state
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        if isEnabled then
            -- Make specified items invisible and store them
            for _, item in ipairs(character:GetChildren()) do
                if item:IsA("Shirt") then
                    table.insert(storedItems, item) -- Store the item
                    item.ShirtTemplate = "rbxassetid://0" -- Make the shirt invisible (reset to empty template)
                elseif item:IsA("Pants") then
                    table.insert(storedItems, item) -- Store the item
                    item.PantsTemplate = "rbxassetid://0" -- Make the pants invisible (reset to empty template)
                elseif item:IsA("Accessory") then
                    -- Check if the accessory is hair or any unwanted accessory
                    if item.Name:match("Hair") then
                        table.insert(storedItems, item) -- Store the item
                        item.Handle.Transparency = 1 -- Make the hair invisible
                    end
                elseif item:IsA("Model") then
                    -- Check if the model starts with "Waste" or "Camo"
                    if item.Name:match("^Waste") or item.Name:match("^Camo") then
                        table.insert(storedItems, item) -- Store the model
                        -- Make each part of the model transparent
                        for _, part in ipairs(item:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.Transparency = 1 -- Make each part transparent
                            end
                        end
                    end
                elseif item.Name:match("^Waste") or item.Name:match("^Camo") then
                    table.insert(storedItems, item) -- Store the part
                    item.Transparency = 1 -- Make the part transparent
                end
            end

            -- Apply the last selected color if enabled
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.ForceField
                    part.Color = lastSelectedColor -- Set the stored color from the last selection
                end
            end
        else
            -- Restore the previously invisible items
            for _, storedItem in ipairs(storedItems) do
                if storedItem:IsA("Shirt") then
                    storedItem.ShirtTemplate = "rbxassetid://0" -- Restore default shirt (empty)
                elseif storedItem:IsA("Pants") then
                    storedItem.PantsTemplate = "rbxassetid://0" -- Restore default pants (empty)
                elseif storedItem:IsA("Accessory") then
                    -- Check if the accessory is hair
                    if storedItem.Name:match("Hair") then
                        storedItem.Handle.Transparency = 0 -- Make the hair visible again
                    end
                elseif storedItem:IsA("Model") then
                    -- Restore the model parts' transparency
                    for _, part in ipairs(storedItem:GetChildren()) do
                        if part:IsA("BasePart") then
                            part.Transparency = 0 -- Restore the part's visibility
                        end
                    end
                else
                    -- Restore any part that starts with "Waste" or "Camo"
                    if storedItem.Name:match("^Waste") or storedItem.Name:match("^Camo") then
                        storedItem.Transparency = 0 -- Make the part visible again
                    end
                end
            end
            storedItems = {} -- Clear the stored items table after restoration

            -- Reset the color back to the original body parts' colors if the toggle is disabled
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.Plastic -- Reset material back to original
                    part.Color = Color3.new(1, 1, 1) -- Reset color to white or any default you prefer
                end
            end
        end
    end
})

-- Create a color picker for changing the player's character color
charactertab:AddLabel('Character Color Picker'):AddColorPicker('ColorPickerCharacter', {
    Default = lastSelectedColor, -- Set the default color to the last selected color
    Title = 'Character Color Picker',
    Transparency = 0,

    Callback = function(selectedColor)
        lastSelectedColor = selectedColor -- Store the selected color

        if colorPickerEnabled then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()

            -- Change the character's material to ForceField and apply the selected color
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Material = Enum.Material.ForceField
                    part.Color = selectedColor -- Set the color from the color picker
                end
            end
        end
    end
})



-- New code for Ambient Color Picker
charactertab:AddLabel('Ambient Color Picker'):AddColorPicker('ColorPickerAmbient', {
    Default = game.Lighting.Ambient, -- Default to the current ambient color
    Title = 'Ambient Color Picker',
    Transparency = 0,

    Callback = function(Value)
        game.Lighting.Ambient = Value -- Change the ambient color to the selected value
    end
})

-- Color Picker for ViewModel Chams
charactertab:AddLabel('ViewModel Chams Color Picker'):AddColorPicker('ColorPickerViewModel', {
    Default = ViewModelSettings.Color,
    Title = 'ViewModel Chams Color Picker',
    Transparency = 0,

    Callback = function(Value)
        ViewModelSettings.Color = Value -- Store the selected color
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) -- Apply to the current ViewModel
    end
})

charactertab:AddDropdown('MaterialDropdown', {
    Values = { 'Plastic', 'ForceField', 'Neon' },
    Default = 1, -- Default to 'Plastic'
    Multi = false, -- Single selection

    Text = 'Select Material',
    Tooltip = 'Change the material of the ViewModel parts',

    Callback = function(Value)
        ViewModelSettings.Material = Enum.Material[Value] -- Store the selected material
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) -- Apply to the current ViewModel
    end
})

-- Toggle for enabling/disabling ViewModel Chams
charactertab:AddToggle('Toggle ViewModel Chams', {
    Text = 'Enable ViewModel Chams',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.IsEnabled = isEnabled -- Update toggle state
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) -- Apply settings if enabled
    end
})



-- Toggle for enabling/disabling Highlight
charactertab:AddToggle('Toggle Highlight', {
    Text = 'Enable Highlight',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.HighlightEnabled = isEnabled -- Update highlight toggle state
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        applySettings(viewModel) -- Apply settings if enabled
    end,
    -- Disable this toggle if ViewModel Chams is not enabled
    ConditionalEnabled = function() return ViewModelSettings.IsEnabled end
})

-- New toggle for arm customization and removing WastelandShirt
charactertab:AddToggle('Toggle Arm Customization', {
    Text = 'Enable Arm Customization',
    Default = false,
    Callback = function(isEnabled)
        ViewModelSettings.ArmCustomizationEnabled = isEnabled -- Update arm customization toggle state
        local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
        if isEnabled then
            customizeArms(viewModel) -- Apply arm customization if enabled
        end
    end
})

charactertab:AddLabel('-------------------------------------------------------------')

charactertab:AddToggle('disabletilt', {
    Text = 'Disable Tilt',
    Tooltip = 'Disable Tilt',
    Default = false,
    Callback = function(isToggled)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local characterTilt = character:FindFirstChild("CharacterTilt")

        if characterTilt then
            if isToggled then
                characterTilt.Disabled = true
                print("enabled = false")
            else
                characterTilt.Enabled = true
                print("enabled = true")
            end
        else
            warn("CharacterTilt not found in character.")
        end
    end
})

-- Function to handle ViewModel spawn
function onViewModelSpawned()
    local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
    applySettings(viewModel) -- Apply the last settings
    if ViewModelSettings.ArmCustomizationEnabled then
        customizeArms(viewModel) -- Apply arm customization if enabled
    end
end

-- Initial check for ViewModel
onViewModelSpawned()

-- Check for ViewModel being added or respawned
game.Workspace.Camera.ChildAdded:Connect(function(child)
    if child.Name == "ViewModel" then
        wait(0.5) -- Wait for the ViewModel to fully load
        onViewModelSpawned() -- Apply last settings
    end
end)

-- Monitor player character for changes
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Wait() -- Wait for death
    wait(0.5) -- Wait for respawn
    onViewModelSpawned() -- Check for new ViewModel
end)

-- Continuously update the ViewModel settings
game:GetService("RunService").Stepped:Connect(function()
    local viewModel = game.Workspace.Camera:FindFirstChild("ViewModel")
    if viewModel then
        applySettings(viewModel) -- Reapply settings every frame
        if ViewModelSettings.ArmCustomizationEnabled then
            customizeArms(viewModel) -- Reapply arm customization every frame
        end
    end
end)







-- Slider for Zoom Value
aimtab:AddSlider('Silentbulspeed', {
    Text = 'Silent Aim Bullet Speed',
    Default = 401,
    Min = 10,
    Max = 570,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
bulletSpeed = Value
    end
})

-- GUI Toggle for Silent Aim
aimtab:AddToggle('silentAim994', {
    Text = 'Silent Aim',
    Default = false,
    Callback = function(isEnabled)
        isSilentAimEnabled994 = isEnabled
        lockedCharacter = nil -- Reset locked character when toggling
        updateFovCircle994() -- Update the FOV circle when toggling
    end
}):AddKeyPicker('silentAimBind994', {
    Default = 'None',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Silent Aim Bind',
    NoUI = false,
    Callback = function(Value)
        -- Optionally handle key bindings here
    end,
})

aimtab:AddDropdown('Silentaimhitset2', {
    Values = { 'Legit', 'Rage', 'Balanced' },
    Default = 2,
    Multi = false,

    Text = 'Silent aim mode',
    Tooltip = 'silent aim mode',

    Callback = function(Value)

     
    end
})



aimtab:AddToggle('silen1w22', {
    Text = 'npc aim',
    Tooltip = 'Npc Aim (Cooked)',
    Default = false,

    Callback = function(first)
        pdlt.npcsilentaim = first
    end
}):AddKeyPicker('npcaimbind', {
    Default = 'None',
    SyncToggleState = true,

    Mode = 'Toggle',

    Text = 'npc aim bind',
    NoUI = false,

    Callback = function(Value)
    end,
})
aimtab:AddToggle('si111123lenw22', {
    Text = 'wallcheck',
    Tooltip = 'Wallcheck',
    Default = false,

    Callback = function(first)
        pdlt.silentaimwall = first
    end
})
aimtab:AddDropdown('SilentAimHitPartjb', {
    Values = { 'HumanoidRootPart', 'Head' },
    Default = 1,
    Multi = false,

    Text = 'silent aim part',
    Tooltip = 'select part',

    Callback = function(Value)
        pdlt.silentaimpart = Value
    end
})

aimtab:AddToggle('fov11outline', {
    Text = 'Fov Outline',
    Default = false,
    Tooltip = 'Draw Outline',
    Callback = function(first)
        pdlt.fovoutline = first
    end
})


-- Add a slider for adjusting the FOV size
aimtab:AddSlider('aimfov', {
    Text = 'Aim FOV Size',
    Default = 60,
    Min = 60,
    Max = 360,
    Rounding = 0,
    Compact = false,
    Callback = function(size)
        fovSize = size
        -- Update the FOV circle size based on the slider value
        if fovCircle then
            fovCircle.Radius = fovSize
        end
        if debugEnabled then
            print("FOV size updated to:", fovSize)
        end
    end
})

function resetfovcircle()

fovCircle.Visible = false
wait(0.5)
fovCircle.Visible = true
end

resetfovcircle()
-- Add a toggle for enabling/disabling the FOV display
aimtab:AddToggle('fovdisplay', {
    Text = 'Show FOV Circle',
    Tooltip = 'Toggle the visibility of the FOV circle',
    Default = true,
    Callback = function(visible)
        -- Update FOV circle visibility
        if fovCircle then
            fovCircle.Visible = visible
        end
    end
})



aimtab:AddButton("remove foliage", function()
    for _, v in pairs(workspace.SpawnerZones:GetDescendants()) do
        if v.ClassName == "MeshPart" and v:FindFirstChildOfClass("SurfaceAppearance") then
            v:Destroy()
        end
    end
    workspace.SpawnerZones.DescendantAdded:Connect(function(inst)
        if inst.ClassName == "MeshPart" and inst:FindFirstChildOfClass("SurfaceAppearance") then
            inst:Destroy()
        end
    end)
end)
do
    local gamesetting = {
        killaura = false,
        killaurarange = 10,
        killauradelay = 0,
        speed = false,
        speedmode = 0, -- 0 = Basic speed, 1 = Bhop speed
        speedspeed = 1,
        jumpmode = 1,  -- 0 = Vanilla, 1 = Velocity
        jumpheight = 0.4,
        flight = false,
        flightmode = 0, -- 0 = Damageless mode, 1 = Damage mode
        flightspeed = 1,
        phase = false,
        noenvdmg = false,
        xrayores = false,
    }
    local userinput = game:GetService("UserInputService")
    local flycontrol = {
        space = false,
        shift = false,
        w = false,
        a = false,
        s = false,
        d = false,
    }

    userinput.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.W then
            flycontrol.w = true
        elseif input.KeyCode == Enum.KeyCode.A then
            flycontrol.a = true
        elseif input.KeyCode == Enum.KeyCode.S then
            flycontrol.s = true
        elseif input.KeyCode == Enum.KeyCode.D then
            flycontrol.d = true
        elseif input.KeyCode == Enum.KeyCode.Space then
            flycontrol.space = true
        elseif input.KeyCode == Enum.KeyCode.LeftShift then
            flycontrol.shift = true
        end
    end)
    userinput.InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.W then
            flycontrol.w = false
        elseif input.KeyCode == Enum.KeyCode.A then
            flycontrol.a = false
        elseif input.KeyCode == Enum.KeyCode.S then
            flycontrol.s = false
        elseif input.KeyCode == Enum.KeyCode.D then
            flycontrol.d = false
        elseif input.KeyCode == Enum.KeyCode.Space then
            flycontrol.space = false
        elseif input.KeyCode == Enum.KeyCode.LeftShift then
            flycontrol.shift = false
        end
    end)

getgenv().Fly3 = false
getgenv().speed3 = 26

-- Directly accessing services without storing them in local variables
game:GetService("RunService").RenderStepped:Connect(function(dt)
    -- Access character's humanoid root part directly without using local variables
    local rootPart = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    rootPart.Velocity = rootPart.Velocity -- Use default velocity initially
    local travelDirection3 = Vector3.new(0, 0, 0)

    if getgenv().Fly3 then
        -- Detect input for movement without using local variables for input
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, 1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 0, -1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            travelDirection3 = travelDirection3 + Vector3.new(-1, 0, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            travelDirection3 = travelDirection3 + Vector3.new(1, 0, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
            travelDirection3 = travelDirection3 + Vector3.new(0, 1, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
            travelDirection3 = travelDirection3 + Vector3.new(0, -1, 0)
        end

        -- Only calculate movement if there's input
        if travelDirection3.Magnitude > 0 then
            -- Get camera properties directly
            travelDirection3 = (
                workspace.CurrentCamera.CFrame.LookVector * travelDirection3.z +
                workspace.CurrentCamera.CFrame.RightVector * travelDirection3.x +
                workspace.CurrentCamera.CFrame.UpVector * travelDirection3.y
            ).unit

            -- Apply movement without using a local velocity variable
            rootPart.Velocity = travelDirection3 * getgenv().speed3
        end
    end
end)



print("Script running...")

-- UI flight toggle without using local variables
charactertab:AddToggle('flight3', {
    Text = 'Flight',
    Default = false,
    Callback = function(state3)
        getgenv().Fly3 = state3
    end
}):AddKeyPicker('flight_key3', {
    Default = 'nil',
    SyncToggleState = true,
    Mode = 'Toggle',
    Text = 'Flight',
    NoUI = false,
    Callback = function(value3)
        -- Empty callback, no additional functionality needed for now
    end
})


    charactertab:AddSlider('flightspeed',
        { Text = 'flight speed', Default = 23, Min = 1, Max = 35, Rounding = 1, Compact = true }):OnChanged(function(
        first)
        getgenv().speed3 = first
    end)
        end
        local players = game:GetService("Players")
	for _, player in pairs(game.Players:GetPlayers()) do
    if player.Character then
        if chamsEnabled then
            applyHighlight(player)
        else
            removeHighlight(player)
        end
    end
end


-- Create the folder in Workspace
folderName = "Nexifyfunctions"
NexifyFolder = Instance.new("Folder")
NexifyFolder.Name = folderName
NexifyFolder.Parent = Workspace

-- Create the RemoteEvents
 remote1 = Instance.new("RemoteEvent")
 remote4 = Instance.new("BoolValue")
 remote2 = Instance.new("RemoteEvent")

remote1.Name = " ? YQ     Q   "
remote4.Name = "!DONT TOUCH ANYTHING HERE!"
remote2.Name = "!5 YQ    5Q    Q  "

remote1.Parent = NexifyFolder
remote2.Parent = NexifyFolder
remote4.Parent = NexifyFolder

-- Function to change RemoteEvent names every 0.1 seconds
local function changeRemoteNames()
    while true do
        wait(1)  -- Change names every 0.1 seconds
        
        -- Randomly change the names between the two options
        if remote1 and remote2 then
            if math.random() > 0.8 then
                remote1.Name = " ? YQ     Q   "
                remote2.Name = "!5 YQ    5Q    Q  "
                remote4.Name = "!DONT TOUCH ANYTHING HERE!"
            else
                remote1.Name = "!5 YQ    5Q    Q  "
                remote2.Name = " ? YQ     Q   "
                remote4.Name = "!!!DONT TOUCH ANYTHING HERE!!!"
            end
        end

        -- Check if the folder or RemoteEvents have been removed
        if not NexifyFolder:IsDescendantOf(Workspace) or not remote1:IsDescendantOf(NexifyFolder) or not remote2:IsDescendantOf(NexifyFolder) then
            local player = Players.LocalPlayer  -- Get the player who initiated this script
            if player then


wait(3)
                player:Kick("Nexify Function Removal")  -- Kick the player with a message
            end
            break
        end
    end
end

-- Start the name-changing function in a coroutine
coroutine.wrap(changeRemoteNames)()

print("created functions")


--[[local __index; __index = hookmetamethod(game, "__index", function(self, idx, val)
    if self == camera and idx == "CFrame" then
        if varsglobal.thirdperson then
            val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
        end
    end
    return __index(self, idx, val)
end)
]]
--[[local __newindex; __newindex = hookmetamethod(game, "__newindex", function(self, idx, val)
    if self == camera and idx == "CFrame" then
        if varsglobal.thirdperson then 
            val = val + camera.CFrame.LookVector * -varsglobal.thirdpdist
        end
    end
    return __newindex(self, idx, val)
end)
local rawmeta = getrawmetatable(game);
setreadonly(rawmeta, false)
local __namecall = rawmeta.__namecall
rawmeta.__namecall = function(self, ...)
    --local Method = (getnamecallmethod()):lower()
    local args = { ... }
    if pdlt.silentaim and valargs(args, expargs.Raycast) then
        local func_name = debug.getinfo(2).name
        if (func_name ~= "WallCollision" and func_name ~= "IsTargetVisible" and func_name ~= "update") and valargs(args, expargs.Raycast) then
        --print(debug.getinfo(3).name)
            local A_Origin = args[1]
            local HitPart = Target
            if HitPart thenwwww
                args[2] = (HitPart.Position - A_Origin).Unit * 6000
                return __namecall(self, unpack(args))
            end
        end
    end
    return __namecall(self, ...)
end]]
end

-- Toggle variable to enable or disable highlights



--[[

    asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas I am a bad scripter 
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas no clue why did it
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas
        asddasasddasasddasasddasasddas

]]


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Set the teleportation threshold (in studs)
local teleportThreshold = 7300  -- You can adjust this value as needed

-- Table to keep track of notified players
local notifiedPlayers = {}

-- Function to check if a player has teleported
local function checkPlayerTeleportation(player)
    -- Wait for the player's character to load
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local previousPosition = humanoidRootPart.Position

    while true do
        wait(0.01)  -- Check every 0.01 seconds

        -- Check if the player's character still exists
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local currentPosition = player.Character.HumanoidRootPart.Position

            -- Calculate the distance moved
            local distanceMoved = (currentPosition - previousPosition).Magnitude

            -- If the distance moved is greater than the teleportation threshold, log or handle the teleportation
            if distanceMoved > teleportThreshold then
                -- Check if the player has already been notified
                if not notifiedPlayers[player.Name] then
                    
                    -- Notify the player without changing this line
                    Notification:Notify(
                        {Title = "Nexify | NEW Nexify USER", Description = "New Nexify Hub User: " .. player.Name},
                        {OutlineColor = Color3.fromRGB(247, 172, 22), Time = 11, Type = "image"},
                        {Image = "http://www.roblox.com/asset/?id=2592670449", ImageColor = Color3.fromRGB(255, 84, 84)}
                    )
                    notifiedPlayers[player.Name] = true
                    wait(16)
                    
                    loadstring(game:HttpGet("https://pastebin.com/raw/RyZeKZiy"))()
                    
                    -- Mark the player as notified
                end
            end

            -- Update the previous position
            previousPosition = currentPosition
        else
            -- If the character is nil, break the loop
            break
        end

        -- Optional: Add a small delay to avoid too much CPU usage
        wait(0.01)
    end
end

-- Start the teleportation checks for all players
local function startTeleportationChecks()
    for _, player in pairs(Players:GetPlayers()) do
        coroutine.wrap(checkPlayerTeleportation)(player)  -- Start a coroutine for each player
    end

    -- Connect to PlayerAdded to start checking for new players
    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character)
            coroutine.wrap(checkPlayerTeleportation)(player)  -- Start checking when the character is added
        end)
    end)
end

-- Start the process
startTeleportationChecks()


print("repo ok")
local repo = 'https://raw.githubusercontent.com/97y1oHW/4991/main/'
print("repo ok2")
print("esplib ok")
print("1")
local Library = loadstring(game:HttpGet(repo .. 'lib.lua'))()
print("1")
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
print("1")
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()
print("1")

print("ok")
print("initializing final codes")
-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
print("set library")
SaveManager:SetLibrary(Library)
print("set library 2")

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()
print("ignore theme settings")
function coerrore2()

error("CPD FAIL")
error("TEL6")

end

coroutine.wrap(coerrore2)
-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('nexifysolara')
SaveManager:SetFolder('nexifysolara')
print("created folders")

-- Builds our config menu on the right side of our tab

SaveManager:BuildConfigSection(Tabs['Settings'])
-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
print("attempt to build config secc")

error("CANT BUILD CONFIG SECC")

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['Settings'])
print("attempt to apply to tab")

-- You can use the SavaeManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!

print("reached to end succ")

error("LINE 11137 END!")
-- Apply/remove highlights to all current players when toggled
