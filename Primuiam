-- Premium Loading Screen + Stylish GUI Menu by Rafsun

-- Destroy if already loaded
if game.CoreGui:FindFirstChild("PremiumHub") then
    game.CoreGui:FindFirstChild("PremiumHub"):Destroy()
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- UI Setup
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "PremiumHub"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Background blur
local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
blur.Size = 24

-- Loading Frame
local loadFrame = Instance.new("Frame", gui)
loadFrame.Size = UDim2.new(0, 400, 0, 250)
loadFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
loadFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
loadFrame.BorderSizePixel = 0
loadFrame.BackgroundTransparency = 0.1
loadFrame.AnchorPoint = Vector2.new(0.5, 0.5)

-- UICorner for round edges
local corner = Instance.new("UICorner", loadFrame)
corner.CornerRadius = UDim.new(0, 12)

-- Logo
local logo = Instance.new("ImageLabel", loadFrame)
logo.Image = "rbxassetid://4483345998" -- Replace with your logo asset ID
logo.Size = UDim2.new(0, 100, 0, 100)
logo.Position = UDim2.new(0.5, -50, 0.1, 0)
logo.BackgroundTransparency = 1

-- Loading Text
local status = Instance.new("TextLabel", loadFrame)
status.Text = "Loading Premium Hub..."
status.Size = UDim2.new(1, 0, 0, 40)
status.Position = UDim2.new(0, 0, 0.65, 0)
status.TextColor3 = Color3.new(1, 1, 1)
status.TextScaled = true
status.BackgroundTransparency = 1
status.Font = Enum.Font.GothamBold

-- Progress bar
local barBg = Instance.new("Frame", loadFrame)
barBg.Size = UDim2.new(0.8, 0, 0, 10)
barBg.Position = UDim2.new(0.1, 0, 0.85, 0)
barBg.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
local barFill = Instance.new("Frame", barBg)
barFill.Size = UDim2.new(0, 0, 1, 0)
barFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
barFill.BorderSizePixel = 0

local barCorner1 = Instance.new("UICorner", barBg)
local barCorner2 = Instance.new("UICorner", barFill)
barCorner1.CornerRadius = UDim.new(1, 0)
barCorner2.CornerRadius = UDim.new(1, 0)

-- Fake loading animation
for i = 1, 100 do
	barFill.Size = UDim2.new(i / 100, 0, 1, 0)
	status.Text = "Loading Premium Hub... " .. i .. "%"
	wait(0.02)
end

-- Clean up loading screen
blur:Destroy()
loadFrame:Destroy()

-- === MAIN GUI ===
local mainGui = Instance.new("Frame", gui)
mainGui.Size = UDim2.new(0, 300, 0, 300)
mainGui.Position = UDim2.new(0.5, -150, 0.5, -150)
mainGui.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

local cornerMain = Instance.new("UICorner", mainGui)
cornerMain.CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel", mainGui)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "🔹 Rafsun Premium Menu 🔹"
title.Font = Enum.Font.FredokaOne
title.TextColor3 = Color3.fromRGB(0, 200, 255)
title.TextScaled = true
title.BackgroundTransparency = 1

-- ESP Button Example
local espButton = Instance.new("TextButton", mainGui)
espButton.Size = UDim2.new(0.8, 0, 0, 40)
espButton.Position = UDim2.new(0.1, 0, 0.25, 0)
espButton.Text = "Toggle ESP"
espButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
espButton.TextColor3 = Color3.new(1, 1, 1)
espButton.Font = Enum.Font.GothamBold
espButton.TextScaled = true
local cornerBtn = Instance.new("UICorner", espButton)

local espEnabled = false
espButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espButton.Text = espEnabled and "ESP: ON" or "ESP: OFF"
    print("ESP " .. (espEnabled and "Enabled" or "Disabled"))
    -- Your ESP code goes here
end)

-- Close Button
local close = Instance.new("TextButton", mainGui)
close.Size = UDim2.new(0.8, 0, 0, 40)
close.Position = UDim2.new(0.1, 0, 0.75, 0)
close.Text = "❌ Close"
close.BackgroundColor3 = Color3.fromRGB(255, 70, 70)
close.TextColor3 = Color3.new(1, 1, 1)
close.Font = Enum.Font.GothamBold
close.TextScaled = true
local closeCorner = Instance.new("UICorner", close)

close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
