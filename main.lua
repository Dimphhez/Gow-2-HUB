--==================================================
-- TO GROW A GARDEN 2 HUB
-- Made by Dimph
-- UI / KEY SYSTEM TEMPLATE
--==================================================

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local Player = Players.LocalPlayer

--==================================================
-- CONFIG
--==================================================

local KEY_LINK = "[https://raw.githubusercontent.com/Dimphhez/Gow-2-HUB/refs/heads/main/key.lua]"

-- Untuk demo UI saja.
-- Ganti dengan sistem verifikasi server milikmu sendiri
-- jika ini digunakan pada experience milikmu.
local DEMO_KEY = "DIMPH-2026"

--==================================================
-- HELPERS
--==================================================

local function Corner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, radius)
    c.Parent = parent
    return c
end

local function Stroke(parent, color, thickness)
    local s = Instance.new("UIStroke")
    s.Color = color
    s.Thickness = thickness
    s.Parent = parent
    return s
end

local function Label(parent, text, size, position, font, color)
    local l = Instance.new("TextLabel")
    l.BackgroundTransparency = 1
    l.Text = text
    l.TextSize = size
    l.Font = font
    l.TextColor3 = color
    l.Position = position
    l.Size = UDim2.new(1, 0, 0, size + 8)
    l.Parent = parent
    return l
end

--==================================================
-- GUI
--==================================================

local Gui = Instance.new("ScreenGui")
Gui.Name = "DimphGardenHub"
Gui.ResetOnSpawn = false
Gui.Parent = Player:WaitForChild("PlayerGui")

--==================================================
-- KEY WINDOW
--==================================================

local KeyWindow = Instance.new("Frame")
KeyWindow.Size = UDim2.fromOffset(430, 245)
KeyWindow.Position = UDim2.fromScale(0.5, 0.5)
KeyWindow.AnchorPoint = Vector2.new(0.5, 0.5)
KeyWindow.BackgroundColor3 = Color3.fromRGB(18, 20, 25)
KeyWindow.BorderSizePixel = 0
KeyWindow.Parent = Gui

Corner(KeyWindow, 14)
Stroke(KeyWindow, Color3.fromRGB(65, 70, 80), 1)

Label(
    KeyWindow,
    "🌱 To Grow a Garden 2 HUB",
    20,
    UDim2.fromOffset(20, 18),
    Enum.Font.GothamBold,
    Color3.fromRGB(245,245,245)
)

Label(
    KeyWindow,
    "Made by Dimph",
    12,
    UDim2.fromOffset(21, 48),
    Enum.Font.Gotham,
    Color3.fromRGB(135,140,150)
)

local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(1, -40, 0, 42)
KeyBox.Position = UDim2.fromOffset(20, 82)
KeyBox.BackgroundColor3 = Color3.fromRGB(28,31,38)
KeyBox.BorderSizePixel = 0
KeyBox.PlaceholderText = "Masukkan key..."
KeyBox.PlaceholderColor3 = Color3.fromRGB(110,115,125)
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(240,240,245)
KeyBox.TextSize = 13
KeyBox.Font = Enum.Font.Gotham
KeyBox.ClearTextOnFocus = false
KeyBox.Parent = KeyWindow

Corner(KeyBox, 8)

local CheckButton = Instance.new("TextButton")
CheckButton.Size = UDim2.fromOffset(190, 42)
CheckButton.Position = UDim2.fromOffset(20, 137)
CheckButton.BackgroundColor3 = Color3.fromRGB(45, 120, 75)
CheckButton.BorderSizePixel = 0
CheckButton.Text = "✓  Periksa Kunci"
CheckButton.TextColor3 = Color3.new(1,1,1)
CheckButton.TextSize = 13
CheckButton.Font = Enum.Font.GothamBold
CheckButton.Parent = KeyWindow

Corner(CheckButton, 8)

local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.fromOffset(190, 42)
CopyButton.Position = UDim2.fromOffset(220, 137)
CopyButton.BackgroundColor3 = Color3.fromRGB(40,44,53)
CopyButton.BorderSizePixel = 0
CopyButton.Text = "🔗  Salin Tautan"
CopyButton.TextColor3 = Color3.fromRGB(235,238,245)
CopyButton.TextSize = 13
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Parent = KeyWindow

Corner(CopyButton, 8)

local KeyStatus = Label(
    KeyWindow,
    "Masukkan key untuk melanjutkan.",
    12,
    UDim2.fromOffset(20, 190),
    Enum.Font.Gotham,
    Color3.fromRGB(145,150,160)
)

KeyStatus.TextXAlignment = Enum.TextXAlignment.Center

--==================================================
-- MAIN HUB
--==================================================

local Main = Instance.new("Frame")
Main.Size = UDim2.fromOffset(570, 360)
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(18,20,25)
Main.BorderSizePixel = 0
Main.Visible = false
Main.Parent = Gui

Corner(Main, 14)
Stroke(Main, Color3.fromRGB(65,70,80), 1)

Label(
    Main,
    "🌱 To Grow a Garden 2 HUB",
    20,
    UDim2.fromOffset(18, 12),
    Enum.Font.GothamBold,
    Color3.fromRGB(245,245,245)
)

Label(
    Main,
    "Made by Dimph",
    12,
    UDim2.fromOffset(20, 43),
    Enum.Font.Gotham,
    Color3.fromRGB(135,140,150)
)

-- Minimize
local Minimize = Instance.new("TextButton")
Minimize.Size = UDim2.fromOffset(35,35)
Minimize.Position = UDim2.new(1,-50,0,15)
Minimize.BackgroundColor3 = Color3.fromRGB(35,39,47)
Minimize.BorderSizePixel = 0
Minimize.Text = "—"
Minimize.TextColor3 = Color3.fromRGB(235,235,240)
Minimize.TextSize = 18
Minimize.Font = Enum.Font.GothamBold
Minimize.Parent = Main

Corner(Minimize, 8)

-- Sidebar
local Sidebar = Instance.new("Frame")
Sidebar.Size = UDim2.fromOffset(145, 275)
Sidebar.Position = UDim2.fromOffset(15,70)
Sidebar.BackgroundColor3 = Color3.fromRGB(24,27,33)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = Main

Corner(Sidebar, 10)

local Content = Instance.new("Frame")
Content.Size = UDim2.fromOffset(375,275)
Content.Position = UDim2.fromOffset(175,70)
Content.BackgroundTransparency = 1
Content.Parent = Main

--==================================================
-- TAB SYSTEM
--==================================================

local Pages = {}

local function CreatePage(name)
    local Page = Instance.new("Frame")
    Page.Name = name
    Page.Size = UDim2.fromScale(1,1)
    Page.BackgroundTransparency = 1
    Page.Visible = false
    Page.Parent = Content

    Pages[name] = Page
    return Page
end

local FarmPage = CreatePage("Farm")
local PetPage = CreatePage("Pet")
local PlayerPage = CreatePage("Player")
local SettingsPage = CreatePage("Settings")

local function CreateTab(text, y, pageName)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1,-20,0,40)
    Button.Position = UDim2.fromOffset(10,y)
    Button.BackgroundColor3 = Color3.fromRGB(34,38,46)
    Button.BorderSizePixel = 0
    Button.Text = text
    Button.TextColor3 = Color3.fromRGB(225,228,235)
    Button.TextSize = 13
    Button.Font = Enum.Font.GothamMedium
    Button.AutoButtonColor = false
    Button.Parent = Sidebar

    Corner(Button,8)

    Button.MouseButton1Click:Connect(function()

        for _, page in pairs(Pages) do
            page.Visible = false
        end

        Pages[pageName].Visible = true
    end)

    return Button
end

CreateTab("🌱  FARM",10,"Farm")
CreateTab("🐾  PET",57,"Pet")
CreateTab("👤  PLAYER",104,"Player")
CreateTab("⚙  SETTINGS",151,"Settings")

--==================================================
-- PAGE CONTENT
--==================================================

local function AddToggle(parent, text, y)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1,-20,0,40)
    Button.Position = UDim2.fromOffset(10,y)
    Button.BackgroundColor3 = Color3.fromRGB(30,34,41)
    Button.BorderSizePixel = 0
    Button.Text = text .. "     [ OFF ]"
    Button.TextColor3 = Color3.fromRGB(220,223,230)
    Button.TextSize = 13
    Button.Font = Enum.Font.GothamMedium
    Button.Parent = parent

    Corner(Button,8)

    local Enabled = false

    Button.MouseButton1Click:Connect(function()

        Enabled = not Enabled

        if Enabled then
            Button.Text = text .. "     [ ON ]"
            Button.TextColor3 = Color3.fromRGB(100,230,145)
        else
            Button.Text = text .. "     [ OFF ]"
            Button.TextColor3 = Color3.fromRGB(220,223,230)
        end
    end)
end

Label(FarmPage,"FARM",18,UDim2.fromOffset(10,5),
    Enum.Font.GothamBold,Color3.fromRGB(245,245,245))

AddToggle(FarmPage,"Auto Plant",45)
AddToggle(FarmPage,"Auto Harvest",93)
AddToggle(FarmPage,"Auto Sell",141)
AddToggle(FarmPage,"Auto Collect",189)

Label(PetPage,"PET",18,UDim2.fromOffset(10,5),
    Enum.Font.GothamBold,Color3.fromRGB(245,245,245))

AddToggle(PetPage,"Auto Hatch",45)
AddToggle(PetPage,"Equip Best",93)

Label(PlayerPage,"PLAYER",18,UDim2.fromOffset(10,5),
    Enum.Font.GothamBold,Color3.fromRGB(245,245,245))

AddToggle(PlayerPage,"WalkSpeed",45)
AddToggle(PlayerPage,"JumpPower",93)

Label(SettingsPage,"SETTINGS",18,UDim2.fromOffset(10,5),
    Enum.Font.GothamBold,Color3.fromRGB(245,245,245))

--==================================================
-- KEY ACTIONS
--==================================================

CheckButton.MouseButton1Click:Connect(function()

    local Key = KeyBox.Text

    if Key == "" then
        KeyStatus.Text = "⚠ Masukkan key terlebih dahulu."
        KeyStatus.TextColor3 = Color3.fromRGB(255,190,80)
        return
    end

    KeyStatus.Text = "Memeriksa..."
    KeyStatus.TextColor3 = Color3.fromRGB(180,185,195)

    task.wait(0.6)

    if Key == DEMO_KEY then
        KeyStatus.Text = "✓ Key valid!"
        KeyStatus.TextColor3 = Color3.fromRGB(100,230,145)

        task.wait(0.3)

        KeyWindow.Visible = false
        Main.Visible = true
        FarmPage.Visible = true

    else
        KeyStatus.Text = "✕ Key tidak valid."
        KeyStatus.TextColor3 = Color3.fromRGB(255,90,90)
    end
end)

CopyButton.MouseButton1Click:Connect(function()

    local Link = KEY_LINK
        :gsub("^%[","")
        :gsub("%]$","")

    if setclipboard then
        setclipboard(Link)
        KeyStatus.Text = "✓ Tautan berhasil disalin!"
        KeyStatus.TextColor3 = Color3.fromRGB(100,230,145)
    else
        KeyStatus.Text = Link
        KeyStatus.TextColor3 = Color3.fromRGB(255,190,80)
    end
end)

--==================================================
-- MINIMIZE
--==================================================

local Minimized = false

Minimize.MouseButton1Click:Connect(function()

    Minimized = not Minimized

    if Minimized then
        Sidebar.Visible = false
        Content.Visible = false
        Main.Size = UDim2.fromOffset(300,70)
    else
        Sidebar.Visible = true
        Content.Visible = true
        Main.Size = UDim2.fromOffset(570,360)
    end
end)

--==================================================
-- DRAG
--==================================================

local Dragging = false
local DragStart
local StartPosition

local function MakeDraggable(Frame, Handle)

    Handle.InputBegan:Connect(function(Input)

        if Input.UserInputType == Enum.UserInputType.MouseButton1 then

            Dragging = true
            DragStart = Input.Position
            StartPosition = Frame.Position

            Input.Changed:Connect(function()

                if Input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end

            end)
        end
    end)

    UIS.InputChanged:Connect(function(Input)

        if Dragging and Input.UserInputType == Enum.UserInputType.MouseMovement then

            local Delta = Input.Position - DragStart

            Frame.Position = UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        end
    end)
end

MakeDraggable(Main, Main)

print("To Grow a Garden 2 HUB loaded!")
print("Made by Dimph")
