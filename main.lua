local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "NullHub | v1.1",
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
      Title = "Key System | NullHub",
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
   Content = "Our discord: discord.gg/GfE7BKHGb3",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "<3",
         Callback = function()
         print("discord.gg/GfE7BKHGb3")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "ESP",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ImInsane1337/NightHub/main/esp.lua"))()
   end,
})

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
	game.StarterGui:SetCore("SendNotification", {Title="Night Hub"; Text="Infinite Jump Activated!"; Duration=5;})

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
   Name = "FOV [GUI]",
   Callback = function()
   -- The function that takes place when the button is pressed
            -- Instances:
 
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local emotes = Instance.new("TextButton")
local vynixu = Instance.new("TextButton")
local ludicity = Instance.new("TextButton")
local eclipse = Instance.new("TextButton")
local god = Instance.new("TextButton")
local troll = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.300
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.0163098853, 0, 0.319767386, 0)
main.Size = UDim2.new(0, 212, 0, 251)
main.Active = true
main.Draggable = true
 
title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(-1.1920929e-07, 0, 0, 0)
title.Size = UDim2.new(0, 212, 0, 22)
title.Font = Enum.Font.Cartoon
title.Text = "FOV Menu"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
 
emotes.Name = "emotes"
emotes.Parent = main
emotes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
emotes.BackgroundTransparency = 0.300
emotes.BorderColor3 = Color3.fromRGB(255, 255, 255)
emotes.Position = UDim2.new(0.0566037744, 0, 0.843250215, 0)
emotes.Size = UDim2.new(0, 187, 0, 22)
emotes.Font = Enum.Font.Cartoon
emotes.Text = "Fov.20"
emotes.TextColor3 = Color3.fromRGB(255, 255, 255)
emotes.TextSize = 14.000
emotes.TextWrapped = true
emotes.MouseButton1Down:connect(function()
  workspace.CurrentCamera.FieldOfView = 20 
end)
 
vynixu.Name = "vynixu"
vynixu.Parent = main
vynixu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vynixu.BackgroundTransparency = 0.300
vynixu.BorderColor3 = Color3.fromRGB(255, 255, 255)
vynixu.Position = UDim2.new(0.0566037744, 0, 0.13348788, 0)
vynixu.Size = UDim2.new(0, 187, 0, 22)
vynixu.Font = Enum.Font.Cartoon
vynixu.Text = "Fov.120"
vynixu.TextColor3 = Color3.fromRGB(255, 255, 255)
vynixu.TextSize = 14.000
vynixu.TextWrapped = true
vynixu.MouseButton1Down:connect(function()
    workspace.CurrentCamera.FieldOfView = 120
end)
 
ludicity.Name = "ludicity"
ludicity.Parent = main
ludicity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ludicity.BackgroundTransparency = 0.300
ludicity.BorderColor3 = Color3.fromRGB(255, 255, 255)
ludicity.Position = UDim2.new(0.0566037744, 0, 0.280969203, 0)
ludicity.Size = UDim2.new(0, 187, 0, 22)
ludicity.Font = Enum.Font.Cartoon
ludicity.Text = "Fov.100"
ludicity.TextColor3 = Color3.fromRGB(255, 255, 255)
ludicity.TextSize = 14.000
ludicity.TextWrapped = true
ludicity.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 100
end)
 
eclipse.Name = "eclipse"
eclipse.Parent = main
eclipse.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
eclipse.BackgroundTransparency = 0.300
eclipse.BorderColor3 = Color3.fromRGB(255, 255, 255)
eclipse.Position = UDim2.new(0.0566037744, 0, 0.428859621, 0)
eclipse.Size = UDim2.new(0, 187, 0, 22)
eclipse.Font = Enum.Font.Cartoon
eclipse.Text = "Default Fov"
eclipse.TextColor3 = Color3.fromRGB(255, 255, 255)
eclipse.TextSize = 14.000
eclipse.TextWrapped = true
eclipse.MouseButton1Down:connect(function()
 workspace.CurrentCamera.FieldOfView = 80
end)
 
god.Name                   = "god"
god.Parent                 = main
god.BackgroundColor3       = Color3.fromRGB(0, 0, 0)
god.BackgroundTransparency = 0.300
god.BorderColor3           = Color3.fromRGB(255, 255, 255)
god.Position               = UDim2.new(0.0566037744, 0, 0.566901684, 0)
god.Size                   = UDim2.new(0, 187, 0, 22)
god.Font                   = Enum.Font.Cartoon
god.Text                   = "Fov.60"
god.TextColor3             = Color3.fromRGB(255, 255, 255)
god.TextSize               = 14.000
god.TextWrapped            = true
god.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 60
end)
 
troll.Name = "troll"
troll.Parent = main
troll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
troll.BackgroundTransparency = 0.300
troll.BorderColor3 = Color3.fromRGB(255, 255, 255)
troll.Position = UDim2.new(0.0566037744, 0, 0.708927751, 0)
troll.Size = UDim2.new(0, 187, 0, 22)
troll.Font = Enum.Font.Cartoon
troll.Text = "Fov.40"
troll.TextColor3 = Color3.fromRGB(255, 255, 255)
troll.TextSize = 14.000
troll.TextWrapped = true
troll.MouseButton1Down:connect(function()
   workspace.CurrentCamera.FieldOfView = 40
end)
   end,
})
