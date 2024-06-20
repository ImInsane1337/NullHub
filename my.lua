local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "NullHub | v1.2",
   LoadingTitle = "NullHub ",
   LoadingSubtitle = "by ImInsane1337",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = Nhub, -- Create a custom folder for your hub/game
      FileName = "Nullhubcfg"
   },
   Discord = {
      Enabled = true,
      Invite = "GfE7BKHGb3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System | NullHub",
      Subtitle = "hello ^^",
      Note = "Key In Discord Server\nDiscord: GfE7BKHGb3y",
      FileName = "keysystem", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/ImInsane1337/NullHub/key/key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Thanks for using",
   Content = "Our discord: discord.gg/GfE7BKHGb3",
   Duration = 5,
   Image =  2541869220,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "<3",
         Callback = function()
         print("discord.gg/GfE7BKHGb3")
      end
   },
},
})

local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
MainTab:CreateLabel("Script loaded in game: " .. gameName)




local Button = MainTab:CreateButton({
   Name = "Fly [V]",
   Callback = function()
   -- The function that takes place when the button is pressed
            repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 500

 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-8 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "v" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="NullHub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 75},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local SliderJumpPower = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 200},
   Increment = 1,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local SliderGravity = MainTab:CreateSlider({
   Name = "Gravity Slider",
   Range = {0, 196}, -- 196.2 is the default gravity in Roblox
   Increment = 1,
   Suffix = "Gravity",
   CurrentValue = 196,
   Flag = "slidergravity", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Workspace.Gravity = Value
   end,
})

local function teleportToPlayer(targetPlayerName)
    local player = game.Players.LocalPlayer
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)

    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetHRP = targetPlayer.Character.HumanoidRootPart
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")

        if hrp then
            hrp.CFrame = targetHRP.CFrame
        end
    end
end

local Input = MainTab:CreateInput({
   Name = "Teleport to Player",
   PlaceholderText = "Enter Player Name",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
       teleportToPlayer(Text)
   end,
})

local GamesTab = Window:CreateTab("Games", nil) -- ИГРЫ ЕБАТЬ

local GamesSection = GamesTab:CreateSection("Blade Ball")
local Button = GamesTab:CreateButton({
   Name = "Visual [BETA]",
   Callback = function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ab6906cda6641c69a5f3a6c0c2ad6d80.lua"))()
   end,
})

local GamesSection = GamesTab:CreateSection("MM2")
local Button = GamesTab:CreateButton({
   Name = "SnapSanix GUI",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
   end,
})

local GamesSection = GamesTab:CreateSection("Sol's RNG")
local Button = GamesTab:CreateButton({
   Name = "Sol's RNG",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Just3itx/Backup/main/loader.lua"))()
   end,
})

local VisualTab = Window:CreateTab("Visual", nil) -- ОСТАЛЬНОЕ
local VisualSection = VisualTab:CreateSection("Only Visual")

local trail = nil
local function createTrail()
    local character = game.Players.LocalPlayer.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local trailAttachment0 = Instance.new("Attachment")
    trailAttachment0.Position = Vector3.new(0, -0.5, 0) -- Small height adjustment
    trailAttachment0.Parent = humanoidRootPart

    local trailAttachment1 = Instance.new("Attachment")
    trailAttachment1.Position = Vector3.new(0, 0.5, 0) -- Small height adjustment
    trailAttachment1.Parent = humanoidRootPart

    trail = Instance.new("Trail")
    trail.Attachment0 = trailAttachment0
    trail.Attachment1 = trailAttachment1
    trail.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), -- Red
        ColorSequenceKeypoint.new(0.25, Color3.fromRGB(255, 165, 0)), -- Orange
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 0)), -- Yellow
        ColorSequenceKeypoint.new(0.75, Color3.fromRGB(0, 255, 0)), -- Green
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255)) -- Blue
    } -- Rainbow color gradient
    trail.Lifetime = 0.5 -- Short duration
    trail.Transparency = NumberSequence.new(0.5, 1) -- Start semi-transparent, end fully transparent
    trail.Parent = humanoidRootPart
end

local function removeTrail()
    if trail then
        trail:Destroy()
        trail = nil
    end
end

local Toggle = VisualTab:CreateToggle({
   Name = "Trail",
   CurrentValue = false,
   Flag = "ToggleTrail", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       if Value then
           createTrail()
           game.StarterGui:SetCore("SendNotification", {Title="NullHub"; Text="Trail Activated!"; Duration=5;})
       else
           removeTrail()
           game.StarterGui:SetCore("SendNotification", {Title="NullHub"; Text="Trail Deactivated!"; Duration=5;})
       end
   end,
})

local function makeHeadless()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local head = character:FindFirstChild("Head")

    if head then
        head.Transparency = 1
        for _, child in pairs(head:GetChildren()) do
            if child:IsA("Decal") then
                child.Transparency = 1
            end
        end
    end
end

-- Пример кнопки для вызова функции
local Button = VisualTab:CreateButton({
   Name = "Headless",
   Callback = function()
       makeHeadless()
   end,
})

local SliderFOV = VisualTab:CreateSlider({
   Name = "FOV Slider",
   Range = {70, 120},
   Increment = 1,
   Suffix = "FOV",
   CurrentValue = 70,
   Flag = "sliderfov",
   Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = Value
   end,
})

local SliderTimeOfDay = VisualTab:CreateSlider({
   Name = "Time of Day Slider",
   Range = {0, 24},
   Increment = 0.1,
   Suffix = "Hours",
   CurrentValue = 12,
   Flag = "slidertimeofday",
   Callback = function(Value)
        game.Lighting.TimeOfDay = Value
   end,
})

local SliderAmbientLighting = VisualTab:CreateSlider({
   Name = "Ambient Lighting",
   Range = {0, 1},
   Increment = 0.1,
   Suffix = "",
   CurrentValue = 1,
   Flag = "sliderambientlighting",
   Callback = function(Value)
        game.Lighting.Ambient = Color3.new(Value, Value, Value)
   end,
})

local ToggleRainbowCharacter = VisualTab:CreateToggle({
   Name = "Rainbow Character",
   CurrentValue = false,
   Flag = "togglerainbowcharacter",
   Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        local function rainbow()
            while Value do
                wait(0.1)
                local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Color = color
                    elseif part:IsA("Accessory") and part:FindFirstChild("Handle") then
                        part.Handle.Color = color
                    end
                end
            end
        end

        if Value then
            coroutine.wrap(rainbow)()
        else
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = Color3.fromRGB(255, 255, 255)
                elseif part:IsA("Accessory") and part:FindFirstChild("Handle") then
                    part.Handle.Color = Color3.fromRGB(255, 255, 255)
                end
            end
        end
   end,
})


local SliderCameraZoom = VisualTab:CreateSlider({
   Name = "Camera Max Zoom",
   Range = {10, 100},
   Increment = 1,
   Suffix = "Distance",
   CurrentValue = 70,
   Flag = "slidercamerazoom",
   Callback = function(Value)
        game.Players.LocalPlayer.CameraMaxZoomDistance = Value
   end,
})

local noclipConnection

local function enableNoClip(character)
    if noclipConnection then
        noclipConnection:Disconnect()
    end

    noclipConnection = game:GetService("RunService").Stepped:Connect(function()
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end

local function disableNoClip(character)
    if noclipConnection then
        noclipConnection:Disconnect()
    end

    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = true
        end
    end
end

local ToggleNoClip = MainTab:CreateToggle({
   Name = "NoClip",
   CurrentValue = false,
   Flag = "togglenoclip",
   Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        if Value then
            enableNoClip(character)
        else
            disableNoClip(character)
        end
        
        player.CharacterAdded:Connect(function(char)
            if Value then
                enableNoClip(char)
            end
        end)
   end,
})

local currentESPColor = Color3.fromRGB(255, 0, 0) -- Начальный цвет ESP
local currentOutlineColor = Color3.fromRGB(255, 255, 255) -- Начальный цвет Outline
local checkTeam = false -- Переменная для включения/выключения проверки на команду
local outlineEnabled = false -- Переменная для включения/выключения Outline

-- Функция для обновления цвета всех подсветок
local function updateESPColor()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and (not checkTeam or player.Team ~= game.Players.LocalPlayer.Team) and player.Character then
            local highlight = player.Character:FindFirstChildOfClass("Highlight")
            if highlight then
                highlight.FillColor = currentESPColor
                highlight.OutlineColor = currentOutlineColor
                highlight.OutlineTransparency = outlineEnabled and 0 or 1
            end
        end
    end
end

-- Создание Toggle для включения/выключения ESP
local ToggleESP = VisualTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "toggleesp",
    Callback = function(Value)
        if Value then
            -- Включить ESP
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer and (not checkTeam or player.Team ~= game.Players.LocalPlayer.Team) and player.Character then
                    local Highlight = Instance.new("Highlight", player.Character)
                    Highlight.FillColor = currentESPColor
                    Highlight.OutlineColor = currentOutlineColor
                    Highlight.OutlineTransparency = outlineEnabled and 0 or 1
                end
            end
        else
            -- Выключить ESP
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer and player.Character then
                    local highlight = player.Character:FindFirstChildOfClass("Highlight")
                    if highlight then
                        highlight:Destroy()
                    end
                end
            end
        end
    end
})

-- Создание Color Picker для цвета ESP
local ColorPickerESP = VisualTab:CreateColorPicker({
    Name = "ESP Color",
    Color = currentESPColor,
    Flag = "colorpickeresp",
    Callback = function(Value)
        currentESPColor = Value
        updateESPColor()
    end
})

-- Создание Toggle для включения/выключения Outline
local OutlineToggle = VisualTab:CreateToggle({
    Name = "Enable Outline",
    CurrentValue = false,
    Flag = "outlineenabledtoggle",
    Callback = function(Value)
        outlineEnabled = Value
        updateESPColor()
    end
})


-- Создание Color Picker для цвета Outline
local ColorPickerOutline = VisualTab:CreateColorPicker({
    Name = "Outline Color",
    Color = currentOutlineColor,
    Flag = "colorpickeroutline",
    Callback = function(Value)
        currentOutlineColor = Value
        updateESPColor()
    end
})

local OtherTab = Window:CreateTab("Other", nil) -- ОСТАЛЬНОЕ
local OtherSection = OtherTab:CreateSection("Scripts")

local Button = OtherTab:CreateButton({
   Name = "Chat bypass (may not work)",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ImInsane1337/NullHub/nullhub/antichat.lua'))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Get Coordinates",
   Callback = function()
    setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
    print(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
    game.StarterGui:SetCore("SendNotification", {Title="NullHub"; Text="Coordinates copyed and printed to console!"; Duration=5;})
   end,
})
