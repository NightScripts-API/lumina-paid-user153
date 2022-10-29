
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Player = game.Players.LocalPlayer
local player = game.Players.LocalPlayer


local Window = Rayfield:CreateWindow({
	Name = "Lumina Premium",
	LoadingTitle = "Lumina Da Hood Modded Premium",
	LoadingSubtitle = "by Schematic",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "Lumina"
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Lumina Premium",
		Subtitle = "Premium Key",
		Note = "Don't have premium? use Lumina Free!",
		Key = "XCA82-OSD81-XJWJ-712SD"
	}
})

Rayfield:Notify("User","153",10010348543) -- (t,c,image)


            local Tab = Window:CreateTab("Main")
            local Section = Tab:CreateSection("Speed Contents")

          

local Button = Tab:CreateButton({
	Name = "Slow Speed [L]",
	Callback = function()
		togglekey = "l"  -- fly toggle
upkey = "="      -- makes speed faster
downkey = "-"
speed = -1    -- makes speed slower
enablepart = false -- enables part fly    -- changes set speed
updown = false   -- true if you want to go up
notify = true    -- true if you want notifcations
flypart = false   -- true for part fly

local user = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingShiftKey = false
local check = false



mouse.KeyDown:connect(function(key)
   if key == enablepart then
       if flypart then
           flypart = false
           if notify then
               Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
           end
       else
           flypart = true
           if notify then
               Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == upkey then
       speed = speed + -0.1
       if notify then
           Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == downkey then
       speed = speed - -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == togglekey then
       if check  == true then
           check = false
           if notify then
                        Rayfield:Notify("Speed","Off",10010348543) -- (t,c,image)
           end
           game.Workspace.fly:Destroy()
       else
           check = true
           if notify then
         Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
           if flypart then
               local brick = Instance.new("Part", workspace)
               brick.Size = Vector3.new(8, 2, 8)
               brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
               game:GetService('RunService').Stepped:connect(function()
                   brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                   brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
               end)
           end
       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if check then
       if holdingWKey == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
       end
       if holdingSKey == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
   end
       if holdingAKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
   end
       if holdingDKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)    
       end
       if holdingShiftKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
       end
       if updown then
           if holdingSpaceKey == true then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
           end
       end
   end
end)

user.InputBegan:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = true
   end
end)

user.InputEnded:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = false
   end
   if( inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = false
   end
end)
	end,
})

local Button = Tab:CreateButton({
	Name = "Speed [B]",
	Callback = function()
		togglekey = "b"  -- fly toggle
upkey = "="      -- makes speed faster
downkey = "-"
speed = -3    -- makes speed slower
enablepart = false -- enables part fly    -- changes set speed
updown = false   -- true if you want to go up
notify = true    -- true if you want notifcations
flypart = false   -- true for part fly

local user = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingShiftKey = false
local check = false



mouse.KeyDown:connect(function(key)
   if key == enablepart then
       if flypart then
           flypart = false
           if notify then
               Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
           end
       else
           flypart = true
           if notify then
               Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == upkey then
       speed = speed + -0.1
       if notify then
           Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == downkey then
       speed = speed - -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == togglekey then
       if check  == true then
           check = false
           if notify then
                        Rayfield:Notify("Speed","Off",10010348543) -- (t,c,image)
           end
           game.Workspace.fly:Destroy()
       else
           check = true
           if notify then
         Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
           if flypart then
               local brick = Instance.new("Part", workspace)
               brick.Size = Vector3.new(8, 2, 8)
               brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
               game:GetService('RunService').Stepped:connect(function()
                   brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                   brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
               end)
           end
       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if check then
       if holdingWKey == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
       end
       if holdingSKey == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
   end
       if holdingAKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
   end
       if holdingDKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)    
       end
       if holdingShiftKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
       end
       if updown then
           if holdingSpaceKey == true then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
           end
       end
   end
end)

user.InputBegan:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = true
   end
end)

user.InputEnded:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = false
   end
   if( inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = false
   end
end)
	end,
})


local Button = Tab:CreateButton({
	Name = "Super Speed [M]",
	Callback = function()
		togglekey = "m"  -- fly toggle
upkey = "="      -- makes speed faster
downkey = "-"
speed = -6    -- makes speed slower
enablepart = false -- enables part fly    -- changes set speed
updown = false   -- true if you want to go up
notify = true    -- true if you want notifcations
flypart = false   -- true for part fly

local user = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingShiftKey = false
local check = false



mouse.KeyDown:connect(function(key)
   if key == enablepart then
       if flypart then
           flypart = false
           if notify then
               Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
           end
       else
           flypart = true
           if notify then
               Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == upkey then
       speed = speed + -0.1
       if notify then
           Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == downkey then
       speed = speed - -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == togglekey then
       if check  == true then
           check = false
           if notify then
                        Rayfield:Notify("Speed","Off",10010348543) -- (t,c,image)
           end
           game.Workspace.fly:Destroy()
       else
           check = true
           if notify then
         Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
           if flypart then
               local brick = Instance.new("Part", workspace)
               brick.Size = Vector3.new(8, 2, 8)
               brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
               game:GetService('RunService').Stepped:connect(function()
                   brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                   brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
               end)
           end
       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if check then
       if holdingWKey == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
       end
       if holdingSKey == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
   end
       if holdingAKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
   end
       if holdingDKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)    
       end
       if holdingShiftKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
       end
       if updown then
           if holdingSpaceKey == true then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
           end
       end
   end
end)

user.InputBegan:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = true
   end
end)

user.InputEnded:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = false
   end
   if( inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = false
   end
end)
	end,
})

local Button = Tab:CreateButton({
	Name = "Orbital Speed [J]",
	Callback = function()
		togglekey = "j"  -- fly toggle
upkey = "="      -- makes speed faster
downkey = "-"
speed = -12    -- makes speed slower
enablepart = false -- enables part fly    -- changes set speed
updown = false   -- true if you want to go up
notify = true    -- true if you want notifcations
flypart = false   -- true for part fly

local user = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingShiftKey = false
local check = false



mouse.KeyDown:connect(function(key)
   if key == enablepart then
       if flypart then
           flypart = false
           if notify then
               Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
           end
       else
           flypart = true
           if notify then
               Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == upkey then
       speed = speed + -0.1
       if notify then
           Rayfield:Notify("ERROR","Content/?",10010348543) -- (t,c,image)
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == downkey then
       speed = speed - -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)

mouse.KeyDown:connect(function(key)
   if key == togglekey then
       if check  == true then
           check = false
           if notify then
                        Rayfield:Notify("Speed","Off",10010348543) -- (t,c,image)
           end
           game.Workspace.fly:Destroy()
       else
           check = true
           if notify then
         Rayfield:Notify("Speed","On",10010348543) -- (t,c,image)
           end
           if flypart then
               local brick = Instance.new("Part", workspace)
               brick.Size = Vector3.new(8, 2, 8)
               brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
               game:GetService('RunService').Stepped:connect(function()
                   brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                   brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
               end)
           end
       end
   end
end)

game:GetService('RunService').Stepped:connect(function()
   if check then
       if holdingWKey == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
       end
       if holdingSKey == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
   end
       if holdingAKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
   end
       if holdingDKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)    
       end
       if holdingShiftKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
       end
       if updown then
           if holdingSpaceKey == true then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
           end
       end
   end
end)

user.InputBegan:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = true
   end
end)

user.InputEnded:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = false
   end
   if( inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = false    
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = false
   end
end)
	end,
})

    FLYMODE = 'Default'
FLYSPEED = 8


  local Section = Tab:CreateSection("Fly Contents")
  local Paragraph = Tab:CreateParagraph({Title = "CFly Info", Content = "CFly Fly in the Sky and Shoot, Activate Speed [B], Click [B], Then Select X to Fly!, Click or Spam Space on Shoot!"})
local Button3 = Tab:CreateButton({
	Name = "CFly (X)",
	Callback = function()


		if FLYMODE == 'Default' then
        local plr = game.Players.LocalPlayer
        local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
        local mouse = plr:GetMouse()
        localplayer = plr
        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end
        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)
        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)
        workspace:WaitForChild("Core")
        local torso = workspace.Core
        flying = true
        local speed=FLYSPEED
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=FLYSPEED
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                    end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed
                end
                if speed>FLYSPEED then
                    speed=FLYSPEED
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
                until flying == false
                if gyro then gyro:Destroy() end
                if pos then pos:Destroy() end
                flying=false
                    Humanoid.PlatformStand=false
                    speed=FLYSPEED
                end
                e1=mouse.KeyDown:connect(function(key)
                    if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
                    if key=="w" then
                        keys.w=true
                    elseif key=="s" then
                        keys.s=true
                    elseif key=="a" then
                        keys.a=true
                    elseif key=="d" then
                        keys.d=true
                    elseif key=="x" then
                        if flying==true then
                            flying=false
                        else
                            flying=true
                            start()
                        end
                    end
                end)
            e2=mouse.KeyUp:connect(function(key)
                if key=="w" then
                    keys.w=false
                elseif key=="s" then
                    keys.s=false
                elseif key=="a" then
                    keys.a=false
                elseif key=="d" then
                    keys.d=false
                end
            end)
        start()
    elseif FLYMODE == 'IY' then
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        local flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 5000
        local speed = 5000
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
            if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                speed = speed+.0+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                speed = speed-5
                if speed > 5 then
                    speed = -2
                end
            end
            if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0.1,0)
            end
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
            end
            mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then flying = false
                else
                    flying = true
                    Fly()
                end
                elseif key:lower() == "w" then
                ctrl.f = FLYSPEED
                elseif key:lower() == "s" then
                ctrl.b = -FLYSPEED
                elseif key:lower() == "a" then
                ctrl.l = -FLYSPEED
                elseif key:lower() == "d" then
                ctrl.r = FLYSPEED
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
    elseif FLYMODE == 'SuperHero' then
        local player = game.Players.LocalPlayer
        local Flyanimation = Instance.new('Animation', game.Workspace)
        Flyanimation.AnimationId = 'rbxassetid://3541044388'
        local Idleanimation = Instance.new('Animation', game.Workspace)
        Idleanimation.AnimationId = 'rbxassetid://3541114300'
        local HeroIdle = player.Character.Humanoid:LoadAnimation(Idleanimation)
        local HeroFly = player.Character.Humanoid:LoadAnimation(Flyanimation)
        Idleing2 = false
            local function flyanim()
                    --HeroIdle:Stop()
                    local FlyingA = false
                    for i,v in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == 'rbxassetid://3541044388' then
                            FlyingA = true
                        end
                        if v.Animation.AnimationId == 'rbxassetid://2788289281' then
                            v:Stop()
                        end
                        if v.Animation.AnimationId == 'rbxassetid://2788292075' then
                            v:Stop()
                        end
                    end
                    if FlyingA == false and Idleing2 == false then
                        HeroFly:Play()
                    end
            end
        
        local SPEED = FLYSPEED
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        maxspeed = 5000
        speed = 5001
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
            if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                speed = speed+.0+(speed/maxspeed)
                local foundidle = false
                flyanim()
            if speed > maxspeed then
        
                speed = maxspeed
        
            end
            elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                speed = speed-5
                
            if speed > 5 then
                speed = -2
            end
            end
            if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
              
            else
                bv.velocity = Vector3.new(0,0.1,0)
        
        
            end
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
        end
        mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then
                    flying = false
                    HeroFly:Stop()
                    HeroIdle:Stop()
            else
                flying = true
                Fly()
            end
        
            elseif key:lower() == "w" then
                ctrl.f = FLYSPEED
            elseif key:lower() == "s" then
                ctrl.b = -FLYSPEED
            elseif key:lower() == "a" then
                ctrl.l = -FLYSPEED
            elseif key:lower() == "d" then
                ctrl.r = FLYSPEED
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
            if ctrl.r == 0 and ctrl.l == 0 and ctrl.b == 0 and ctrl.f == 0 then
                local Loop
                local loopFunction = function()
                    Idleing2 = true
                    HeroFly:Stop()
                    wait()
                    Idleing = false
                    for i,v in pairs(player.Character.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == 'rbxassetid://3541114300' then
                            Idleing = true
                        end
                    end
                    if Idleing == false and flying == true then
                        HeroIdle:Play()
                    end
        
                end;
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                    Idleing2 = false
                end;
                Start()	
                repeat wait() until ctrl.r ~= 0 or ctrl.l ~= 0 or ctrl.b ~= 0 or ctrl.f ~= 0 or flying == false
                Pause()
            end
            end)
        Fly()
        player.CharacterAdded:Connect(function()
            repeat wait() until player.Character
            wait(1)
            Fly()
        end)
    end
	end,
})



local Slider = Tab:CreateSlider({
	Name = "Fly Speed",
	Range = {0, 50},
	Increment = 2,
	Suffix = "Speed",
	CurrentValue = 8,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(value)
		FLYSPEED = value;
	end,
})


local Tab = Window:CreateTab("Player")
            local Section = Tab:CreateSection("Weapon Contents")

local Toggle = Tab:CreateToggle({
	Name = "Reach",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(state)
	if state then
        if player.Character:FindFirstChildWhichIsA('Tool') then
            player.Character:FindFirstChildWhichIsA('Tool').Handle.Size = Vector3.new(50,50,50)
        	player.Character:FindFirstChildWhichIsA('Tool').Handle.Transparency = 1
              Rayfield:Notify("Reach: On","_LocalPlayer",10010348543) -- (t,c,image)
        else
            Rayfield:Notify("Error","Please hold a weapon!",10010348543) -- (t,c,image)
        end
 else
      
            Rayfield:Notify("Error","Sorry there was an error while request the url! Reach is still on!",10010348543) -- (t,c,image)
        
    end
	end,
})

local Section = Tab:CreateSection("Jump Contents")

local Button = Tab:CreateButton({
	Name = "Infinite Jump",
	Callback = function()
		local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
	end,
})


local Button = Tab:CreateButton({
	Name = "Super Infinite Jump",
	Callback = function()
		local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 100;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
	end,
})



local Tab = Window:CreateTab("Aim")
            local Section = Tab:CreateSection("Silent Aim Contents")
local Button = Tab:CreateButton({
	Name = "Orbital Aim [C]",
	Callback = function()
		local Settings = { AimLock = { Enabled = true, Aimlockkey = "c", Prediction = 0.130340, Aimpart = 'HumanoidRootPart', Notifications = true }, Settings = { Thickness = 1, Transparency = 1, Color = Color3.fromRGB(236, 182, 224), FOV = true } } local CurrentCamera = game:GetService("Workspace").CurrentCamera local Inset = game:GetService("GuiService"):GetGuiInset().Y local RunService = game:GetService("RunService") local Mouse = game.Players.LocalPlayer:GetMouse() local LocalPlayer = game.Players.LocalPlayer local Line = Drawing.new("Line") local Circle = Drawing.new("Circle") local Plr = game.Players.LocalPlayer Mouse.KeyDown:Connect(function(KeyPressed) if KeyPressed == (Settings.AimLock.Aimlockkey) then if Settings.AimLock.Enabled == true then Settings.AimLock.Enabled = false if Settings.AimLock.Notifications == true then Plr = FindClosestPlayer() game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Unlocked" }) end else Plr = FindClosestPlayer() Settings.AimLock.Enabled = true if Settings.AimLock.Notifications == true then game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Locked On : " .. tostring(Plr.Character.Humanoid.DisplayName) }) end end end end) function FindClosestPlayer() local ClosestDistance, ClosestPlayer = math.huge, nil; for _, Player in next, game:GetService("Players"):GetPlayers() do if Player ~= LocalPlayer then local Character = Player.Character if Character and Character.Humanoid.Health > 1 then local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart .Position) if IsVisibleOnViewPort then local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude if Distance < ClosestDistance then ClosestPlayer = Player ClosestDistance = Distance end end end end end return ClosestPlayer, ClosestDistance end RunService.Heartbeat:connect(function() if Settings.AimLock.Enabled == true then local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)) Line.Color = Settings.Settings.Color Line.Transparency = Settings.Settings .Transparency Line.Thickness = Settings.Settings .Thickness Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset) Line.To = Vector2.new(Vector.X, Vector.Y) Line.Visible = true Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset) Circle.Visible = Settings.Settings.FOV Circle.Thickness = 3 Circle.Thickness = 3 Circle.Radius = 80 Circle.Color = Settings.Settings.Color elseif Settings.AimLock.FOV == true then Circle.Visible = true else Circle.Visible = false Line.Visible = false end end) local mt = getrawmetatable(game) local old = mt.__namecall setreadonly(mt, false) mt.__namecall = newcclosure(function(...) local args = {...} if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then args[3] = Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction) return old(unpack(args)) end return old(...) end)

local Settings = { AimLock = { Enabled = true, Aimlockkey = "c", Prediction = 0.130340, Aimpart = 'HumanoidRootPart', Notifications = true }, Settings = { Thickness = 4.0, Transparency = 0.3, Color = Color3.fromRGB(179, 182, 246), FOV = true } } local CurrentCamera = game:GetService("Workspace").CurrentCamera local Inset = game:GetService("GuiService"):GetGuiInset().Y local RunService = game:GetService("RunService") local Mouse = game.Players.LocalPlayer:GetMouse() local LocalPlayer = game.Players.LocalPlayer local Line = Drawing.new("Line") local Circle = Drawing.new("Circle") local Plr = game.Players.LocalPlayer Mouse.KeyDown:Connect(function(KeyPressed) if KeyPressed == (Settings.AimLock.Aimlockkey) then if Settings.AimLock.Enabled == true then Settings.AimLock.Enabled = false if Settings.AimLock.Notifications == true then Plr = FindClosestPlayer() game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Unlocked" }) end else Plr = FindClosestPlayer() Settings.AimLock.Enabled = true if Settings.AimLock.Notifications == true then game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "True : " .. tostring(Plr.Character.Humanoid.DisplayName) }) end end end end) function FindClosestPlayer() local ClosestDistance, ClosestPlayer = math.huge, nil; for _, Player in next, game:GetService("Players"):GetPlayers() do if Player ~= LocalPlayer then local Character = Player.Character if Character and Character.Humanoid.Health > 1 then local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart .Position) if IsVisibleOnViewPort then local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude if Distance < ClosestDistance then ClosestPlayer = Player ClosestDistance = Distance end end end end end return ClosestPlayer, ClosestDistance end RunService.Heartbeat:connect(function() if Settings.AimLock.Enabled == true then local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)) Line.Color = Settings.Settings.Color Line.Transparency = Settings.Settings .Transparency Line.Thickness = Settings.Settings .Thickness Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset) Line.To = Vector2.new(Vector.X, Vector.Y) Line.Visible = true Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset) Circle.Visible = Settings.Settings.FOV Circle.Thickness = 1.5 Circle.Thickness = 2 Circle.Radius = 75 Circle.Color = Settings.Settings.Color elseif Settings.AimLock.FOV == true then Circle.Visible = true else Circle.Visible = false Line.Visible = false end end) local mt = getrawmetatable(game) local old = mt.__namecall setreadonly(mt, false) mt.__namecall = newcclosure(function(...) local args = {...} if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then args[3] = Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction) return old(unpack(args)) end return old(...) end)
    end,
})

local Tab = Window:CreateTab("Hub")
local Section = Tab:CreateSection("Free Scripts")

local Button = Tab:CreateButton({
	Name = "Oblivion",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptOblivion/Oblivion/main/loader.lua"))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Nyula",
	Callback = function()
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nyuladhm", true))()
	end,
})




local Section = Tab:CreateSection("Paid Scripts")

local Button = Tab:CreateButton({
	Name = "Halloware",
	Callback = function()
		print("error")
	end,
})

local Button = Tab:CreateButton({
	Name = "Pyramid",
	Callback = function()
		print("error")
	end,
})
