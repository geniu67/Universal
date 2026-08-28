-- ==========================================
-- БЛОК 1: ТРОЛЛИНГ С ОБРАТНЫМ ОТСЧЕТОМ
-- ==========================================
local trollGui = Instance.new("ScreenGui")
trollGui.Parent = game:GetService("CoreGui")

local trollLabel = Instance.new("TextLabel")
trollLabel.Size = UDim2.new(0, 450, 0, 100)
trollLabel.Position = UDim2.new(0.5, -225, 0.4, 0)
trollLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
trollLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
trollLabel.TextSize = 28
trollLabel.Font = Enum.Font.SourceSansBold
trollLabel.BorderSizePixel = 2
trollLabel.Parent = trollGui

for i = 5, 1, -1 do
    trollLabel.Text = "ВЫ ОТЪЕБАНЫ: " .. tostring(i)
    task.wait(1)
end

trollLabel.TextColor3 = Color3.fromRGB(50, 255, 50)
trollLabel.Text = "ХАХА, ОТЪЕБАН!ЗАЗРУЗКА ЗОВХУЯ"
task.wait(5)
trollGui:Destroy()

-- ==========================================
-- БЛОК 2: СОЗДАНИЕ КРАСИВОГО МЕНЮ ЧИТА
-- ==========================================
local mainGui = Instance.new("ScreenGui")
mainGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 360)
mainFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 2
mainFrame.Active = true
mainFrame.Parent = mainGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleLabel.Text = "ZOVHUY V1.0"
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = mainFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 35, 0, 35)
closeButton.Position = UDim2.new(1, -38, 0, 2)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Parent = mainFrame

local scriptRunning = true
closeButton.MouseButton1Click:Connect(function()
    scriptRunning = false
    mainGui:Destroy()
end)

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0, 210, 0, 35)
speedButton.Position = UDim2.new(0, 20, 0, 55)
speedButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
speedButton.Text = "СПИДХАЧИК (36)"
speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
speedButton.TextSize = 15
speedButton.Parent = mainFrame

local chamsButton = Instance.new("TextButton")
chamsButton.Size = UDim2.new(0, 210, 0, 35)
chamsButton.Position = UDim2.new(0, 20, 0, 100)
chamsButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
chamsButton.Text = "ESP Чамсы: ВЫКЛ"
chamsButton.TextColor3 = Color3.fromRGB(255, 80, 80)
chamsButton.TextSize = 15
chamsButton.Font = Enum.Font.SourceSansBold
chamsButton.Parent = mainFrame

local noclipButton = Instance.new("TextButton")
noclipButton.Size = UDim2.new(0, 210, 0, 35)
noclipButton.Position = UDim2.new(0, 20, 0, 145)
noclipButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
noclipButton.Text = "Ноуклип: ВЫКЛ"
noclipButton.TextColor3 = Color3.fromRGB(255, 80, 80)
noclipButton.TextSize = 15
noclipButton.Font = Enum.Font.SourceSansBold
noclipButton.Parent = mainFrame

local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 210, 0, 35)
flyButton.Position = UDim2.new(0, 20, 0, 190)
flyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
flyButton.Text = "Полёт (Fly): ВЫКЛ"
flyButton.TextColor3 = Color3.fromRGB(255, 80, 80)
flyButton.TextSize = 15
flyButton.Font = Enum.Font.SourceSansBold
flyButton.Parent = mainFrame

local infJumpButton = Instance.new("TextButton")
infJumpButton.Size = UDim2.new(0, 210, 0, 35)
infJumpButton.Position = UDim2.new(0, 20, 0, 235)
infJumpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
infJumpButton.Text = "Беск. Прыжок: ВЫКЛ"
infJumpButton.TextColor3 = Color3.fromRGB(255, 80, 80)
infJumpButton.TextSize = 15
infJumpButton.Font = Enum.Font.SourceSansBold
infJumpButton.Parent = mainFrame

local resetPriceButton = Instance.new("TextButton")
resetPriceButton.Size = UDim2.new(0, 210, 0, 35)
resetPriceButton.Position = UDim2.new(0, 20, 0, 305)
resetPriceButton.BackgroundColor3 = Color3.fromRGB(55, 25, 25)
resetPriceButton.Text = "Сбросить скорость (16)"
resetPriceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
resetPriceButton.TextSize = 14
resetPriceButton.Parent = mainFrame

-- ==========================================
-- БЛОК 3: ОБЩИЕ ПЕРЕМЕННЫЕ И НАСТРОЙКИ СКОРОСТИ
-- ==========================================
local player = game:GetService("Players").LocalPlayer
local targetSpeed = 16

speedButton.MouseButton1Click:Connect(function()
    targetSpeed = 36
    if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed = 100 end
end)

resetPriceButton.MouseButton1Click:Connect(function()
    targetSpeed = 16
    if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid.WalkSpeed = 16 end
end)

player.CharacterAdded:Connect(function(newCharacter)
    local humanoid = newCharacter:WaitForChild("Humanoid")
    humanoid.WalkSpeed = targetSpeed
end)

-- ==========================================
-- БЛОК 4: ЛОГИКА КНОПКИ ЧАМСОВ (ESP)
-- ==========================================
local chamsEnabled = false
local function applyChams(character)
    if not chamsEnabled or character == player.Character or character:FindFirstChild("HubChams") then return end
    local highlight = Instance.new("Highlight")
    highlight.Name = "HubChams"
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = character
end

local function removeChams()
    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
        if p.Character and p.Character:FindFirstChild("HubChams") then p.Character.HubChams:Destroy() end
    end
end

chamsButton.MouseButton1Click:Connect(function()
    chamsEnabled = not chamsEnabled
    if chamsEnabled then
        chamsButton.Text = "ESP Чамсы: ВКЛ"
        chamsButton.TextColor3 = Color3.fromRGB(80, 255, 80)
        for _, p in ipairs(game:GetService("Players"):GetPlayers()) do if p.Character then applyChams(p.Character) end end
    else
        chamsButton.Text = "ESP Чамсы: ВЫКЛ"
        chamsButton.TextColor3 = Color3.fromRGB(255, 80, 80)
        removeChams()
    end
end)

game:GetService("Players").PlayerAdded:Connect(function(p) p.CharacterAdded:Connect(applyChams) end)
for _, p in ipairs(game:GetService("Players"):GetPlayers()) do p.CharacterAdded:Connect(applyChams) end

-- ==========================================
-- БЛОК 5: ЛОГИКА НОУКЛИПА (NOCLIP)
-- ==========================================
local noclipEnabled = false
game:GetService("RunService").Stepped:Connect(function()
    if noclipEnabled and scriptRunning and player.Character then
        for _, part in ipairs(player.Character:GetChildren()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

noclipButton.MouseButton1Click:Connect(function()
    noclipEnabled = not noclipEnabled
    noclipButton.Text = noclipEnabled and "Ноуклип: ВКЛ" or "Ноуклип: ВЫКЛ"
    noclipButton.TextColor3 = noclipEnabled and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
end)

-- ==========================================
-- БЛОК 6: ЛОГИКА ПОЛЁТА (FLY)
-- ==========================================
local flying = false
local flySpeed = 60
local function startFly()
    local char = player.Character
    if not char then return end
    local root = char:WaitForChild("HumanoidRootPart")
    local bv = Instance.new("BodyVelocity")
    bv.Name = "HubFlyEngine"
    bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    bv.Velocity = Vector3.new(0, 0, 0)
    bv.Parent = root
    task.spawn(function()
        while flying and scriptRunning and char and root and bv.Parent do
            bv.Velocity = char.Humanoid.MoveDirection * flySpeed
            task.wait()
        end
        bv:Destroy()
    end)
end

flyButton.MouseButton1Click:Connect(function()
    flying = not flying
    flyButton.Text = flying and "Полёт (Fly): ВКЛ" or "Полёт (Fly): ВЫКЛ"
    flyButton.TextColor3 = flying and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
    if flying then startFly() end
end)

-- ==========================================
-- БЛОК 7: БЕСКОНЕЧНЫЙ ПРЫЖОК (INF JUMP)
-- ==========================================
local infJumpEnabled = false
game:GetService("UserInputService").JumpRequest:Connect(function()
    if infJumpEnabled and scriptRunning and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

infJumpButton.MouseButton1Click:Connect(function()
    infJumpEnabled = not infJumpEnabled
    infJumpButton.Text = infJumpEnabled and "Беск. Прыжок: ВКЛ" or "Беск. Прыжок: ВЫКЛ"
    infJumpButton.TextColor3 = infJumpEnabled and Color3.fromRGB(80, 255, 80) or Color3.fromRGB(255, 80, 80)
end)

-- ==========================================
-- 
-- ==========================================
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true dragStart = input.Position startPos = mainFrame.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end
end)
UIS.InputChanged:Connect(function(input) if input == dragInput and dragging then update(input) end end)
