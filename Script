local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")

-- 2. Создаем красивое текстовое окно по центру экрана
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 450, 0, 100)
textLabel.Position = UDim2.new(0.5, -225, 0.4, 0) -- По центру экрана
textLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- Серый пугающий фон
textLabel.TextColor3 = Color3.fromRGB(255, 50, 50) -- Агрессивный красный цвет текста
textLabel.TextSize = 28
textLabel.Font = Enum.Font.SourceSansBold -- Жирный шрифт для паники
textLabel.BorderSizePixel = 2
textLabel.Parent = screenGui

-- 3. ЦИКЛ ОБРАТНОГО ОТСЧЕТА (от 10 до 1 с шагом -1)
for i = 10, 1, -1 do
    -- Меняем текст на экране. Склеиваем текст и цифру с помощью двух точек (..)
    textLabel.Text = "ВЫ БУДЕТЕ ЗАБАНЕНЫ ЧЕРЕЗ: " .. tostring(i)
    task.wait(1) -- Ждем ровно 1 секунду перед следующей цифрой
end

-- 4. финалОЧКА 
textLabel.TextColor3 = Color3.fromRGB(50, 255, 50) -- Меняем цвет на добрый зеленый
textLabel.Text = "ХАХА, Обасрался, напиши в тг! "

-- 5. Удаляем надпись через 6 секунды, чтобы не мешала играть
task.wait(6)
screenGui:Destroy()
