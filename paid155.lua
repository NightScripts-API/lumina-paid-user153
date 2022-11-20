
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

Rayfield:Notify("User","155",10010348543) -- (t,c,image)


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
  local Paragraph = Tab:CreateParagraph({Title = "CFly Info", Content = "CFly Fly in the Sky and Shoot, Activate Speed [B], Click [B], Then Select X to Fly!, Click or Spam Space on Shoot!, MAKE SURE FLY SPEED IS 8"})
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

local Button = Tab:CreateButton({
	Name = "Reach",
	Callback = function()
		if player.Character:FindFirstChildWhichIsA('Tool') then
            player.Character:FindFirstChildWhichIsA('Tool').Handle.Size = Vector3.new(50,50,50)
        	player.Character:FindFirstChildWhichIsA('Tool').Handle.Transparency = 1
              Rayfield:Notify("Reach: On","_LocalPlayer",10010348543) -- (t,c,image)
        else
            Rayfield:Notify("Error","Please hold a weapon!",10010348543) -- (t,c,image)
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
local Button = Tab:CreateButton({				
				Name = "OrbDot Aim [C]",
	Callback = function()
		local Settings = { AimLock = { Enabled = true, Aimlockkey = "c", Prediction = 0.130340, Aimpart = 'HumanoidRootPart', Notifications = true }, Settings = { Thickness = 1, Transparency = 1, Color = Color3.fromRGB(236, 182, 224), FOV = true } } local CurrentCamera = game:GetService("Workspace").CurrentCamera local Inset = game:GetService("GuiService"):GetGuiInset().Y local RunService = game:GetService("RunService") local Mouse = game.Players.LocalPlayer:GetMouse() local LocalPlayer = game.Players.LocalPlayer local Line = Drawing.new("Line") local Circle = Drawing.new("Circle") local Plr = game.Players.LocalPlayer Mouse.KeyDown:Connect(function(KeyPressed) if KeyPressed == (Settings.AimLock.Aimlockkey) then if Settings.AimLock.Enabled == true then Settings.AimLock.Enabled = false if Settings.AimLock.Notifications == true then Plr = FindClosestPlayer() game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Unlocked" }) end else Plr = FindClosestPlayer() Settings.AimLock.Enabled = true if Settings.AimLock.Notifications == true then game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Locked On : " .. tostring(Plr.Character.Humanoid.DisplayName) }) end end end end) function FindClosestPlayer() local ClosestDistance, ClosestPlayer = math.huge, nil; for _, Player in next, game:GetService("Players"):GetPlayers() do if Player ~= LocalPlayer then local Character = Player.Character if Character and Character.Humanoid.Health > 1 then local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart .Position) if IsVisibleOnViewPort then local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude if Distance < ClosestDistance then ClosestPlayer = Player ClosestDistance = Distance end end end end end return ClosestPlayer, ClosestDistance end RunService.Heartbeat:connect(function() if Settings.AimLock.Enabled == true then local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)) Line.Color = Settings.Settings.Color Line.Transparency = Settings.Settings .Transparency Line.Thickness = Settings.Settings .Thickness Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset) Line.To = Vector2.new(Vector.X, Vector.Y) Line.Visible = true Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset) Circle.Visible = Settings.Settings.FOV Circle.Thickness = 3 Circle.Thickness = 20 Circle.Radius = 10 Circle.Color = Settings.Settings.Color elseif Settings.AimLock.FOV == true then Circle.Visible = true else Circle.Visible = false Line.Visible = false end end) local mt = getrawmetatable(game) local old = mt.__namecall setreadonly(mt, false) mt.__namecall = newcclosure(function(...) local args = {...} if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then args[3] = Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction) return old(unpack(args)) end return old(...) end)

local Settings = { AimLock = { Enabled = true, Aimlockkey = "c", Prediction = 0.130340, Aimpart = 'HumanoidRootPart', Notifications = true }, Settings = { Thickness = 4.0, Transparency = 1, Color = Color3.fromRGB(179, 182, 246), FOV = true } } local CurrentCamera = game:GetService("Workspace").CurrentCamera local Inset = game:GetService("GuiService"):GetGuiInset().Y local RunService = game:GetService("RunService") local Mouse = game.Players.LocalPlayer:GetMouse() local LocalPlayer = game.Players.LocalPlayer local Line = Drawing.new("Line") local Circle = Drawing.new("Circle") local Plr = game.Players.LocalPlayer Mouse.KeyDown:Connect(function(KeyPressed) if KeyPressed == (Settings.AimLock.Aimlockkey) then if Settings.AimLock.Enabled == true then Settings.AimLock.Enabled = false if Settings.AimLock.Notifications == true then Plr = FindClosestPlayer() game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "Unlocked" }) end else Plr = FindClosestPlayer() Settings.AimLock.Enabled = true if Settings.AimLock.Notifications == true then game.StarterGui:SetCore("SendNotification", { Title = "True", Text = "True : " .. tostring(Plr.Character.Humanoid.DisplayName) }) end end end end) function FindClosestPlayer() local ClosestDistance, ClosestPlayer = math.huge, nil; for _, Player in next, game:GetService("Players"):GetPlayers() do if Player ~= LocalPlayer then local Character = Player.Character if Character and Character.Humanoid.Health > 1 then local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart .Position) if IsVisibleOnViewPort then local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude if Distance < ClosestDistance then ClosestPlayer = Player ClosestDistance = Distance end end end end end return ClosestPlayer, ClosestDistance end RunService.Heartbeat:connect(function() if Settings.AimLock.Enabled == true then local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)) Line.Color = Settings.Settings.Color Line.Transparency = Settings.Settings .Transparency Line.Thickness = Settings.Settings .Thickness Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset) Line.To = Vector2.new(Vector.X, Vector.Y) Line.Visible = true Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset) Circle.Visible = Settings.Settings.FOV Circle.Thickness = 1.5 Circle.Thickness = 20 Circle.Radius = 10 Circle.Color = Settings.Settings.Color elseif Settings.AimLock.FOV == true then Circle.Visible = true else Circle.Visible = false Line.Visible = false end end) local mt = getrawmetatable(game) local old = mt.__namecall setreadonly(mt, false) mt.__namecall = newcclosure(function(...) local args = {...} if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then args[3] = Plr.Character[Settings.AimLock.Aimpart].Position + (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction) return old(unpack(args)) end return old(...) end)
		end,
})
		
		
				local Button = Tab:CreateButton({
	Name = "HunterAim [Q]",
	Callback = function()
	pcall(function()
local espcolor = Color3.fromRGB(140, 69, 102)
local wallhack_esp_transparency = .4
local gui_hide_button = {Enum.KeyCode.LeftControl, "End"}
local plrs = game:GetService("Players")
local lplr = game:GetService("Players").LocalPlayer
local TeamBased = false ; local teambasedswitch = "}"
local presskeytoaim = true; local aimkey = "q"
aimbothider = false; aimbothiderspeed = .5
local Aim_Assist = false ; Aim_Assist_Key = {Enum.KeyCode.LeftControl, "End"}
local espupdatetime = 5; autoesp = false
local abs = math.abs
local mouselock = false
local canaimat = true
local lockaim = true; local lockangle = 5
local ver = "2"
local cam = game.Workspace.CurrentCamera
local BetterDeathCount = true


local mouse = lplr:GetMouse()
local switch = false
local key = "End"
local aimatpart = nil




local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")
local EspStatus = Instance.new("TextLabel")
local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextLabel")
local Name = Instance.new("TextLabel")
--Properties:

Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")



local gotstring = 0
local function getrandomstring()
gotstring = gotstring+666
local str = ""
local randomstring = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
"?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?","?", "`", "$",
"0","1","2","3","4","5","6","7","8","9", }
local counting123 = 0
for i, v in ipairs(randomstring) do
counting123 = i
end
do
math.randomseed(tick()+gotstring)
for i = 3, math.random(1,100) do
math.randomseed(i+tick()+gotstring)

local oneortwo = math.random(1,2)
if oneortwo == 2 then
math.randomseed(i+tick()+gotstring)
str = str..""..randomstring[math.random(1, counting123)]
else
math.randomseed(i+tick()+gotstring)
str = str..""..string.upper(randomstring[math.random(1, counting123)])
end

end
end
return str
end
local mousedown = false
local isonmovething = false
local mouseoffset = Vector2.new()
local mousedown = false




Gui.Name = getrandomstring()

Move.Name = getrandomstring()
Move.Draggable = true
Move.Parent = Gui
Move.BackgroundColor3 = Color3.new(0.0431373, 1, 0.0745098)
Move.BackgroundTransparency = 0.40000000596046
Move.BorderSizePixel = 0
Move.Position = UDim2.new(0.5, 0,0.018, 0)
Move.Size = UDim2.new(0.2, 0, 0.0320388414, 0)

Move.MouseEnter:Connect(function()

isonmovething = true

end)
Move.MouseLeave:Connect(function()

isonmovething = mousedown and true or false
end)
mouse.Button1Down:connect(function()
mousedown = true
mouseoffset = Move.AbsolutePosition - Vector2.new(mouse.X, mouse.Y)
end)
mouse.Button1Up:connect(function()
mousedown = false
end)

mouse.Move:Connect(function()
if isonmovething == true and mousedown then
Move.Position = UDim2.new(0, mouseoffset.X + mouse.X, 0, mouseoffset.Y + mouse.Y)
end
end)

Main.Name = getrandomstring()
Main.Parent = Move
Main.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Main.BackgroundTransparency = 0.69999998807907
Main.Position = UDim2.new(0, 0, 0.995670795, 0)
Main.Size = UDim2.new(0, 0, 0, 0)

EspStatus.Name = getrandomstring()
EspStatus.Parent = Main
EspStatus.BackgroundColor3 = Color3.new(1, 1, 1)
EspStatus.BackgroundTransparency = 1
EspStatus.Size = UDim2.new(0.272955924, 0, 0.161862016, 0)
EspStatus.Font = Enum.Font.ArialBold
EspStatus.Text = "Press T to update Esp"
EspStatus.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
EspStatus.TextScaled = true
EspStatus.TextSize = 14
EspStatus.TextWrapped = true

st1.Name = getrandomstring()
st1.Parent = Main
st1.BackgroundColor3 = Color3.new(1, 1, 1)
st1.BackgroundTransparency = 1
st1.Position = UDim2.new(0.271787882, 0, 0, 0)
st1.Size = UDim2.new(0.728211343, 0, 0.161862016, 0)
st1.Font = Enum.Font.ArialBold
st1.Text = "Press "..aimkey.." to lock on a person inside ur view"
st1.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1.TextScaled = true
st1.TextSize = 14
st1.TextWrapped = true

st1_2.Name = getrandomstring()
st1_2.Parent = Main
st1_2.BackgroundColor3 = Color3.new(1, 1, 1)
st1_2.BackgroundTransparency = 1
st1_2.Position = UDim2.new(0, 0, 0.375590861, 0)
st1_2.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_2.Font = Enum.Font.ArialBold
st1_2.Text = "Press L to enable esp loop. Press Y to disable/enable aimbot hider"
st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_2.TextScaled = true
st1_2.TextSize = 14
st1_2.TextWrapped = true

local aimbothiderbox = Instance.new("TextBox")
aimbothiderbox.Name = getrandomstring()
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
aimbothiderbox.Size = UDim2.new(1, 0,0.162, 0)
aimbothiderbox.TextScaled = true
aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
aimbothiderbox.Position = UDim2.new(0, 0,0.853, 0)
aimbothiderbox.BackgroundTransparency = 1
aimbothiderbox.Parent = Main

st1_3.Name = getrandomstring()
st1_3.Parent = Main
st1_3.BackgroundColor3 = Color3.new(1, 1, 1)
st1_3.BackgroundTransparency = 1
st1_3.Position = UDim2.new(0, 0, 0.18558608, 0)
st1_3.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_3.Font = Enum.Font.ArialBold
st1_3.Text = "Press O to change team based mode"
st1_3.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_3.TextScaled = true
st1_3.TextSize = 14
st1_3.TextWrapped = true
local teambasedstatus = st1_3:Clone()
teambasedstatus.Parent = Main
teambasedstatus.TextScaled = true
teambasedstatus.Position = UDim2.new(0, 0,.7, 0)
teambasedstatus.Size = UDim2.new(1, 0,.1, 0)
teambasedstatus.Name = getrandomstring()
teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
local espstatustext = teambasedstatus:Clone()
espstatustext.Name = getrandomstring()
espstatustext.Position = UDim2.new(0, 0,0.58, 0)
espstatustext.Text = "Esp loop :"..tostring(autoesp)
espstatustext.Parent = Main
local hide = Instance.new("TextButton")
hide.Text = "_"
hide.BackgroundTransparency = 1
hide.TextScaled = true
hide.TextWrapped = true
hide.Size = UDim2.new(0.1, 0,1, 0)
hide.Position = UDim2.new(0.9, 0,-0.15, 0)
hide.Name = getrandomstring()
hide.Parent = Move
Name.Name = getrandomstring()
Name.Parent = Move
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.Size = UDim2.new(0.838, 0, 1, 0)
Name.Font = Enum.Font.Arial
Name.Text = "HunterAim - Lumina [Q]"
Name.TextColor3 = Color3.new(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
local scr = Instance.new("ScrollingFrame")
scr.Size = Main.Size
scr.Position = Main.Position
scr.ScrollBarThickness = 0
scr.BackgroundTransparency = 1
scr.Name = getrandomstring()
Main.Size = UDim2.new(1, 0, 1, 0)
Main.Position = UDim2.new(0,0,0,0)
Main.Parent = scr
scr.Parent = Move
startpos = Main.Position
Move.Active = true

-- Scripts:
hided = false
hide.MouseButton1Click:Connect(function()
if hided == false then
hided = true
Main:TweenPosition(UDim2.new(0, 0, -1.5, 0))
else
hided = false
Main:TweenPosition(startpos)
end
end)


aimbothiderbox.FocusLost:Connect(function()
local numb = tonumber(aimbothiderbox.Text)
if aimbothider == true then
aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
else
aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
end
if numb ~= nil then
aimbothiderspeed = numb
if aimbothider == true then
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
else
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
end
else
if aimbothider == true then
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
else
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
end
end
end)


local plrsforaim = {}


Move.Draggable = true
Gui.ResetOnSpawn = false
--Gui.Name = "Chat"
Gui.DisplayOrder = 999
if not game:GetService("CoreGui") then
Gui.Parent = plrs.LocalPlayer.PlayerGui
else
Gui.Parent = game:GetService("CoreGui")
end





f = {}
local espforlder
local partconverter = Instance.new("Part")

f.addesp = function()
pcall(function()
--print("ESP ran")
if espforlder then
espforlder:Destroy()
espforlder = Instance.new("Folder")
espforlder.Parent = game.Workspace.CurrentCamera
else
espforlder = Instance.new("Folder")
espforlder.Parent = game.Workspace.CurrentCamera
end
for i, v in pairs(espforlder:GetChildren()) do
v:Destroy()
end
for _, plr in pairs(plrs:GetChildren()) do
if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
if TeamBased == true then
if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
local e = espforlder:FindFirstChild(plr.Name)
if not e then
local fold = Instance.new("Folder", espforlder)
fold.Name = plr.Name

--partconverter.BrickColor = plr.Team.Color
--local teamc = partconverter.Color
for i, p in pairs(plr.Character:GetChildren()) do
if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
local urmom = Instance.new("BoxHandleAdornment")
urmom.ZIndex = 10
urmom.AlwaysOnTop = true
urmom.Color3 = espcolor
urmom.Size = p.Size
urmom.Adornee = p
urmom.Name = tick().." Ur mom has big gay"
urmom.Transparency = wallhack_esp_transparency
urmom.Parent = fold

end
end
plr.Character.Humanoid.Died:Connect(function()
fold:Destroy()
end)
end
end
else
local e = espforlder:FindFirstChild(plr.Name)
if not e then
local fold = Instance.new("Folder", espforlder)
fold.Name = plr.Name

--partconverter.BrickColor = plr.Team.Color
--local teamc = Move.BackgroundColor3
for i, p in pairs(plr.Character:GetChildren()) do
if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
local urmom = Instance.new("BoxHandleAdornment")
urmom.ZIndex = 10
urmom.AlwaysOnTop = true
urmom.Color3 = espcolor
urmom.Size = p.Size
urmom.Adornee = p
urmom.Name = tick().." Ur mom has big gay"
urmom.Transparency = wallhack_esp_transparency
urmom.Parent = fold
end
end
plr.Character.Humanoid.Died:Connect(function()
fold:Destroy()
end)
end
end


end
end
end)
end
local uis = game:GetService("UserInputService")
local bringall = false
local hided2 = false
mouse.KeyDown:Connect(function(a)
if a == "t" then
--print("worked1")
f.addesp()
elseif a == gui_hide_button[2] and uis:IsKeyDown(gui_hide_button[1]) then
if hided2 == false then
hided2 = true
autoesp =false
if espforlder then
espforlder:Destroy()
end
Gui.Enabled = false
else
Gui.Enabled = true
hided2 = false
end
elseif a == "u" then
if mouselock == false then
mouselock = true
else
mouselock = false
end
elseif a == "y" then
if aimbothider == false then
aimbothider = true
if aimbothider == true then
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
else
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
end
else

aimbothider = false
if aimbothider == true then
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." on"
else
aimbothiderbox.Text = "Speed :"..tostring(aimbothiderspeed).." off"
end
end
if aimbothider == true then
aimbothiderbox.TextColor3 =Color3.fromRGB(11, 255, 19)
else
aimbothiderbox.TextColor3 =Color3.fromRGB(255, 0, 0)
end
elseif a == "l" then
if autoesp == false then
autoesp = true
else
autoesp = false
end
elseif a == Aim_Assist_Key[2] and uis:IsKeyDown(Aim_Assist_Key[1]) then
if Aim_Assist == true then
Aim_Assist = false
--print("disabled")
else
Aim_Assist = true
end
end
if a == "j" then
if mouse.Target then
mouse.Target:Destroy()
end
end
if a == key then
if switch == false then
switch = true
else
switch = false
if aimatpart ~= nil then
aimatpart = nil
end
end
elseif a == teambasedswitch then
if TeamBased == true then
TeamBased = false
teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
else
TeamBased = true
teambasedstatus.Text = "Team Based: "..tostring(TeamBased)
end
elseif a == aimkey then
if not aimatpart then
local maxangle = math.rad(20)
for i, plr in pairs(plrs:GetChildren()) do
if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
if TeamBased == true then
if plr.Team.Name ~= lplr.Team.Name then
local an = checkfov(plr.Character.Head)
if an < maxangle then
maxangle = an
aimatpart = plr.Character.Head
end
end
else
local an = checkfov(plr.Character.Head)
if an < maxangle then
maxangle = an
aimatpart = plr.Character.Head
end
--print(plr)
end
local old = aimatpart
plr.Character.Humanoid.Died:Connect(function()
--print("died")
if aimatpart and aimatpart == old then
aimatpart = nil
end
end)

end
end
else
aimatpart = nil
canaimat = false
delay(1.1, function()
canaimat = true
end)
end
end
end)

function getfovxyz (p0, p1, deg)
local x1, y1, z1 = p0:ToOrientation()
local cf = CFrame.new(p0.p, p1.p)
local x2, y2, z2 = cf:ToOrientation()
local d = math.deg
if deg then
return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
else
return Vector3.new((x1-x2), (y1-y2), (z1-z2))
end
end


function aimat(part)
if part then
if aimbothider == true or Aim_Assist == true then
cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.p, part.CFrame.p), aimbothiderspeed)
else

cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
end
end
end
function checkfov (part)
local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
local angle = math.abs(fov.X) + math.abs(fov.Y)
return angle
end
pcall(function()
delay(0, function()
while wait(.4) do
if Aim_Assist and not aimatpart and canaimat and lplr.Character and lplr.Character.Humanoid and lplr.Character.Humanoid.Health > 0 then
for i, plr in pairs(plrs:GetChildren()) do


local minangle = math.rad(5.5)
local lastpart = nil
local function gg(plr)
pcall(function()
if plr.Name ~= lplr.Name and plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Character.Head then
local raycasted = false
local cf1 = CFrame.new(cam.CFrame.p, plr.Character.Head.CFrame.p) * CFrame.new(0, 0, -4)
local r1 = Ray.new(cf1.p, cf1.LookVector * 9000)
local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
local dist = (plr.Character.Head.CFrame.p- pos).magnitude
if dist < 4 then
raycasted = true
end
if raycasted == true then
local an1 = getfovxyz(cam.CFrame, plr.Character.Head.CFrame)
local an = abs(an1.X) + abs(an1.Y)
if an < minangle then
minangle = an
lastpart = plr.Character.Head
end
end
end
end)
end
if TeamBased then
if plr.Team.Name ~= lplr.Team.Name then
gg(plr)
end
else
gg(plr)
end
--print(math.deg(minangle))
if lastpart then
aimatpart = lastpart
aimatpart.Parent.Humanoid.Died:Connect(function()
if aimatpart == lastpart then
aimatpart = nil
end
end)

end
end
end
end
end)
end)
local oldheadpos
local lastaimapart
game:GetService("RunService").RenderStepped:Connect(function()
espstatustext.Text = ""..tostring(autoesp)
if aimatpart and lplr.Character and lplr.Character.Head then
if BetterDeathCount and lastaimapart and lastaimapart == aimatpart then
local dist = (oldheadpos - aimatpart.CFrame.p).magnitude
if dist > 40 then
aimatpart = nil
end
end
lastaimapart = aimatpart
oldheadpos = lastaimapart.CFrame.p
do
if aimatpart.Parent == plrs.LocalPlayer.Character then
aimatpart = nil
end
aimat(aimatpart)
pcall(function()
if Aim_Assist == true then
local cf1 = CFrame.new(cam.CFrame.p, aimatpart.CFrame.p) * CFrame.new(0, 0, -4)
local r1 = Ray.new(cf1.p, cf1.LookVector * 1000)
local obj, pos = game.Workspace:FindPartOnRayWithIgnoreList(r1,  {lplr.Character.Head})
local dist = (aimatpart.CFrame.p- pos).magnitude
if obj then
--print(obj:GetFullName())
end
if not obj or dist > 6 then
aimatpart = nil
--print("ooof")
end
canaimat = false
delay(.5, function()
canaimat = true
end)
end
end)
end



end
end)
delay(0, function()
while wait(espupdatetime) do
if autoesp == true then
pcall(function()
f.addesp()
end)
end
end
end)
--warn("loaded")
end)
	end,
})
				
				
			local Section = Tab:CreateSection("Anti Aim Contents")	
local Button = Tab:CreateButton({
	Name = "Orbital Anti-Aim [Z]",
	Callback = function()
		 Rayfield:Notify("Anti-Aim","Loaded!",10010348543) -- (t,c,image)
		local Toggled = true
local KeyCode = 'z'
local hip = 2.80
local val = -35





function AA()
    local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, val, oldVelocity.Z)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip
end

game:GetService('UserInputService').InputBegan:Connect(function(Key)
    if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
        if Toggled then
            Toggled = false
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = hip

        elseif not Toggled then
            Toggled = true

            while Toggled do
                AA()
                task.wait()
            end
        end
    end
end)
	end,
})
				
				
local Tab = Window:CreateTab("All Players")
local Section = Tab:CreateSection("ESP")
local Button = Tab:CreateButton({
	Name = "Name ESP",
	Callback = function()
		function isnil(thing)
return (thing == nil)
end


local function round(n)
return math.floor(tonumber(n) + 0.5)
end

function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
pcall(function()
if not isnil(v.Character) then
for _,k in pairs(v.Character:GetChildren()) do
if k:IsA'BasePart' and not k:FindFirstChild'Cham' then
local cham = Instance.new('BoxHandleAdornment',k)
cham.ZIndex= 10
cham.Adornee=k
cham.AlwaysOnTop=true
cham.Size=k.Size
cham.Transparency=1
cham.Color3=Color3.new(1,0,0)
cham.Name = 'Cham'
end
end
if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild'NameEsp' then
local bill = Instance.new('BillboardGui',v.Character.Head)
bill.Name = 'NameEsp'
bill.Size=UDim2.new(1,200,1,30)
bill.Adornee=v.Character.Head
bill.AlwaysOnTop=true
local name = Instance.new('TextLabel',bill)
name.TextWrapped=true
name.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment='Top'
name.TextColor3=Color3.new(1,1,1)
name.BackgroundTransparency=1
else
v.Character.Head.NameEsp.TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..'m')
end
end
end)
end
end

while wait() do
UpdatePlayerChams()
end

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
