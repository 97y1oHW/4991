print("=============================================================")

local function safeCheck(name, func)
	local success, result = pcall(function()
		return typeof(func) == "function" and func or nil
	end)
	local status = (success and result) and "🟢" or "🔴"
	print(name .. ": " .. status)
	return status == "🟢"
end

-- Advanced Roblox Executor Functions
-- A comprehensive list of functions for Roblox scripting and executor environments
local checkList = {
    -- Core Lua and Environment Manipulation
    getgc = getgc, -- Retrieves the Lua garbage collector table
    hookmetamethod = hookmetamethod, -- Hooks a metamethod for an object
    hookfunction = hookfunction, -- Replaces a function with a custom implementation
    setrawmetatable = setrawmetatable, -- Sets a raw metatable without invoking __metatable
    setmetatable = setmetatable, -- Sets a metatable for a table
    getmetatable = getmetatable, -- Retrieves the metatable of a table or userdata
    setfenv = setfenv, -- Sets the function environment
    getfenv = getfenv, -- Gets the function environment
    loadstring = loadstring, -- Compiles and executes a string as Lua code
    load = load, -- Loads a chunk of Lua code
    pcall = pcall, -- Calls a function in protected mode to catch errors
    xpcall = xpcall, -- Calls a function with an error handler
    getupvalue = getupvalue, -- Retrieves an upvalue from a function
    setupvalue = setupvalue, -- Sets an upvalue for a function
    getregistry = getregistry, -- Accesses the Lua registry

    -- Debugging and Inspection
    debug = debug.getconstant or debug.getconstants or debug.getinfo or debug.getlocal or debug.getmetatable or debug.getupvalue or debug.setconstant or debug.setconstants or debug.setlocal or debug.setmetatable or debug.setupvalue or debug.traceback,

    getinfo = debug.getinfo, -- Retrieves information about a function
    traceback = debug.traceback, -- Returns a stack traceback
    rawequal = rawequal, -- Compares two values without invoking __eq
    rawget = rawget, -- Retrieves a table value without invoking __index
    rawset = rawset, -- Sets a table value without invoking __newindex
    issecure = issecure, -- Checks if a function is running in a secure context
    setreadonly = setreadonly, -- Sets a table as read-only or writable

    -- Roblox-Specific Utilities
    getconnections = getconnections, -- Retrieves signal connections for an event
    firesignal = firesignal, -- Manually triggers a Roblox signal
    setsimulationradius = setsimulationradius, -- Sets the simulation radius for physics
    getinstances = getinstances, -- Retrieves all instances in the game
    getnilinstances = getnilinstances, -- Retrieves instances parented to nil
    getplayers = getplayers, -- Retrieves all players in the game
    getplayer = getplayer, -- Retrieves a specific player by name or ID
    getasset = getasset, -- Loads an asset by its ID

    -- File and Clipboard Operations
    setclipboard = setclipboard, -- Sets the system clipboard content
    getclipboard = getclipboard, -- Retrieves the system clipboard content
    isfile = isfile, -- Checks if a file exists
    readfile = readfile, -- Reads content from a file
    writefile = writefile, -- Writes content to a file
    appendfile = appendfile, -- Appends content to a file
    isfolder = isfolder, -- Checks if a folder exists
    makefolder = makefolder, -- Creates a new folder
    delfolder = delfolder, -- Deletes a folder
    delfile = delfile, -- Deletes a file

    -- GUI and Instance Manipulation
    make_gui_visible = function(gui) -- Makes a GUI element visible
        gui.Visible = true
    end,
    make_gui_invisible = function(gui) -- Hides a GUI element
        gui.Visible = false
    end,
    create = create, -- Creates a new instance (e.g., GUI or part)
    clone = clone, -- Clones an instance
    newproxy = newproxy, -- Creates a new proxy object

    -- Anti-Cheat and Security
    secure_hook = function(func) -- Creates a secure hook for a function
        return hookfunction(func, function(...)
            -- Add security checks or logging here
            return func(...)
        end)
    end,
    bypass_anticheat = function() -- Placeholder for anti-cheat bypass logic
        -- Implement custom anti-cheat bypass (e.g., spoofing detections)
        warn("Anti-cheat bypass not fully implemented")
    end,

    -- Advanced Utilities
    getcallingscript = getcallingscript, -- Retrieves the script that called the current function
    getthreadidentity = getthreadidentity, -- Gets the identity level of the current thread
    setthreadidentity = setthreadidentity, -- Sets the identity level of the current thread
    crypt = crypt.base64.decode or  crypt.base64.encode or crypt.decrypt, -- Encrypts or decrypts data (if supported by executor)
    httpget = httpget, -- Performs an HTTP GET request
    httppost = httppost, -- Performs an HTTP POST request
    getobjects = getobjects, -- Loads objects from Roblox assets
    syn_io_read = syn_io_read, -- Synapse-specific file reading (if supported)
    syn_io_write = syn_io_write, -- Synapse-specific file writing (if supported)
    newcclosure = newclosure,
    getrawmetatable = getrawmetatable, -- Retrieves raw metatable without restrictions
}

local total = 0
local passed = 0

for name, func in pairs(checkList) do
	total += 1
	if safeCheck(name, func) then
		passed += 1
	end
end

local rate = math.floor((passed / total) * 100)
print("\nExecutor Check Result: " .. rate .. "% passed ✅")

if rate == 100 then
	print("Status: Fully Operational 🔥")
elseif rate >= 50 then
	print("Status: Partially Functional ⚠️")
else
	print("Status: Bro u got scammed 💀")
end
