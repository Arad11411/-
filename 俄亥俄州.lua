function modifyPrompt(prompt)
    prompt.HoldDuration = 0
    prompt.RequiresLineOfSight = false
    prompt.MaxActivationDistance = 25
end

function isTargetPrompt(prompt)
    local parent = prompt.Parent
    while parent do
        if parent == workspace or parent == workspace.BankRobbery.VaultDoor then
            return true
        end
        parent = parent.Parent
    end
    return false
end

for _, prompt in ipairs(workspace:GetDescendants()) do
    if prompt:IsA("ProximityPrompt") and isTargetPrompt(prompt) then
        modifyPrompt(prompt)
    end
end

workspace.DescendantAdded:Connect(
    function(instance)
        if instance:IsA("ProximityPrompt") and isTargetPrompt(instance) then
            modifyPrompt(instance)
        end
    end
)

for _, shelf in ipairs(workspace.ToSort:GetChildren()) do
    if shelf.Name == "Shelf" or shelf.Name == "trash" then
        shelf:Destroy()
    end
end

game.TextChatService.ChatWindowConfiguration.Enabled = true

local Rayfield = loadstring(game:HttpGet("https://gitee.com/roblox-smk/rayfield/raw/master/Rayfield"))()
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Character, Humanoid, HumanoidRootPart

function GXJS()
    Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    Humanoid = Character:WaitForChild("Humanoid")
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
end

function GXGN()
    if ZZWJ then
        ZZWJ()
    end
    if JST then
        SJKQ()
    end
    if FlyJumpT then
        SJGB()
    end
end

function GXJS2()
    GXJS()
    if Humanoid then
        Humanoid.Died:Connect(
            function()
                LocalPlayer.CharacterAdded:Wait()
                GXJS2()
                GXGN()
            end
        )
    end
end

LocalPlayer.CharacterAdded:Connect(
    function()
        GXJS2()
        GXGN()
    end
)

GXJS2()
GXGN()

local RemoteStorage = ReplicatedStorage.devv.remoteStorage
local Hit, Stomp, Grab
local Call
Call =
    hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        local args = {...}
        if self.Parent == RemoteStorage then
            if self.Name == "meleeHit" then
                Hit = self
            elseif #args ~= 0 then
                if table.find({"prop", "player"}, args[1]) then
                    Hit = self
                end
            end
            if self.Name == "stomp" then
                Stomp = self
            elseif #args ~= 0 then
                if typeof(args[1]) == "Instance" and args[1].ClassName == "Player" then
                    Stomp = self
                    Grab = self
                end
            end
            if self.Name == "stomp" then
                Stomp = self
            elseif #args ~= 0 then
                if typeof(args[1]) == "Instance" and args[1].ClassName == "Player" then
                    Stomp = self
                    Grab = self
                end
            end
        end
        return Call(self, ...)
    end
)

local Window =
    Rayfield:CreateWindow(
    {
        Name = "十一脚本",
        Icon = 0,
        LoadingTitle = "加载中",
        LoadingSubtitle = "十一制作",
        Theme = "Default",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "SukunaScript",
            FileName = "Ohio"
        },
        Discord = {
            Enabled = false,
            Invite = "",
            RememberJoins = true
        },
        KeySystem = false,
        KeySettings = {
            Title = "",
            Subtitle = "",
            Note = "",
            FileName = "",
            SaveKey = true,
            GrabKeyFromSite = false,
            Key = {""}
        }
    }
)

local MainTab = Window:CreateTab("主页")

local moneyEarned = Players.LocalPlayer:GetAttribute("moneyEarned")
MainTab:CreateLabel("电脑隐藏UI默认热键：K 手机点菜单右上角从左到右第三个按钮")
MainTab:CreateLabel("脚本贡献者：960")
MainTab:CreateLabel("历史资金：" .. moneyEarned)
MainTab:CreateLabel("当前资金：" .. Players.LocalPlayer.stats.Money.Value)

MainTab:CreateButton(
    {
        Name = "关闭",
        Callback = function()
            Rayfield:Destroy()
        end
    }
)

MainTab:CreateDivider()

local PlayerTab = Window:CreateTab("玩家")

local TPWalkSpeed = 1

PlayerTab:CreateInput(
    {
        Name = "加速速度",
        CurrentValue = "",
        PlaceholderText = "1",
        RemoveTextAfterFocusLost = false,
        Flag = "",
        Callback = function(Text)
            TPWalkSpeed = Text
            Rayfield:Notify({Title = "提示", Content = "设置加速速度为:" .. Text, Image = 4483362458})
        end
    }
)

local JST
local TpwalkConnection

function SJKQ()
    if TpwalkConnection then
        TpwalkConnection:Disconnect()
    end

    TpwalkConnection =
        RunService.Heartbeat:Connect(
        function()
            if not JST or not Humanoid or Humanoid.Health <= 0 then
                return
            end
            if Humanoid.MoveDirection.Magnitude > 0 then
                local moveDir = Humanoid.MoveDirection * TPWalkSpeed
                local currentPos = HumanoidRootPart.Position
                local rotation = HumanoidRootPart.CFrame - currentPos
                HumanoidRootPart.CFrame = CFrame.new(currentPos + moveDir) * rotation
            end
        end
    )
end

function GBJS()
    if TpwalkConnection then
        TpwalkConnection:Disconnect()
        TpwalkConnection = nil
    end
end

PlayerTab:CreateToggle(
    {
        Name = "加速",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            JST = Value
            if Value then
                task.spawn(SJKQ)
                Rayfield:Notify({Title = "提示", Content = "加速开启", Image = 4483362458})
            else
                task.spawn(GBJS)
                Rayfield:Notify({Title = "提示", Content = "加速关闭", Image = 4483362458})
            end
        end
    }
)

local FlyJumpConnection
local FlyJumpT

function SJGB()
    if FlyJumpConnection then
        FlyJumpConnection:Disconnect()
        FlyJumpConnection = nil
    end

    FlyJumpConnection =
        UserInputService.JumpRequest:Connect(
        function()
            if Humanoid and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    )
end

PlayerTab:CreateToggle(
    {
        Name = "连跳",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            FlyJumpT = Value
            if Value then
                SJGB()
                Rayfield:Notify({Title = "提示", Content = "连跳开启", Image = 4483362458})
            elseif FlyJumpConnection then
                FlyJumpConnection:Disconnect()
                FlyJumpConnection = nil
                Rayfield:Notify({Title = "提示", Content = "连跳关闭", Image = 4483362458})
            end
        end
    }
)

local NoclipT

function startNoclip()
    if NoclipConnection then
        NoclipConnection:Disconnect()
    end

    NoclipConnection =
        RunService.Heartbeat:Connect(
        function()
            if not NoclipT or not Character then
                return
            end
            if Character then
                for _, child in pairs(Character:GetDescendants()) do
                    if child:IsA("BasePart") then
                        child.CanCollide = false
                    end
                end
            end
        end
    )
end

function stopNoclip()
    if NoclipConnection then
        NoclipConnection:Disconnect()
        NoclipConnection = nil
        for _, child in pairs(Character:GetDescendants()) do
            if child:IsA("BasePart") then
                child.CanCollide = true
            end
        end
    end
end

PlayerTab:CreateToggle(
    {
        Name = "穿墙",
        CurrentValue = false,
        Callback = function(Value)
            NoclipT = Value
            if Value then
                Spawn(startNoclip)
                Rayfield:Notify({Title = "提示", Content = "穿墙开启", Image = 4483362458})
            else
                spawn(stopNoclip)
                Rayfield:Notify({Title = "提示", Content = "穿墙关闭", Image = 4483362458})
            end
        end
    }
)

PlayerTab:CreateDivider()

local TraceTab = Window:CreateTab("追踪")

function GetPlayers()
    local PlayerNames = {}
    for _, v in pairs(Players:GetPlayers()) do
        table.insert(PlayerNames, v.Name)
    end
    return PlayerNames
end

local XZWJ

local XZWJLB =
    TraceTab:CreateDropdown(
    {
        Name = "选择玩家",
        Options = GetPlayers(),
        CurrentOption = {""},
        MultipleOptions = false,
        Flag = "",
        Callback = function(Options)
            for _, v in ipairs(Options) do
                local b = game:GetService("Players"):FindFirstChild(v)
                XZWJ = tostring(b.Name)
                Rayfield:Notify({Title = "提示", Content = "选择的玩家:" .. b.Name, Image = 4483362458})
            end
        end
    }
)

local Button =
    TraceTab:CreateButton(
    {
        Name = "刷新列表",
        Callback = function()
            XZWJLB:Refresh(GetPlayers())
            Rayfield:Notify({Title = "提示", Content = "已刷新目标列表请重新打开目标列表", Image = 4483362458})
        end
    }
)

local ZZPHMST = false
local PHSD = 200
local currentTween = nil

TraceTab:CreateSlider(
    {
        Name = "平滑速度",
        Range = {100, 400},
        Increment = 1,
        Suffix = "速度",
        CurrentValue = PHSD,
        Flag = "",
        Callback = function(Value)
            PHSD = Value
            Rayfield:Notify({Title = "提示", Content = "Tween速度已设为:" .. Value, Image = 4483362458})
        end
    }
)

TraceTab:CreateToggle(
    {
        Name = "平滑模式",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ZZPHMST = Value
            Rayfield:Notify({Title = "提示", Content = (Value and "平滑模式开启" or "平滑模式关闭"), Image = 4483362458})
        end
    }
)

function createTweenInfo(startPos, endPos)
    local distance = (startPos - endPos).Magnitude
    local time = math.clamp(distance / PHSD, 0, 0.1)
    return TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
end

local ZZWJT

function ZZWJ()
    while ZZWJT and task.wait() do
        local targetPlayer = Players:FindFirstChild(XZWJ)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetRoot = targetPlayer.Character.HumanoidRootPart
            local localChar = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local localRoot = localChar:WaitForChild("HumanoidRootPart")
            if ZZPHMST then
                local tweenInfo = createTweenInfo(localRoot.Position, targetRoot.Position)
                if currentTween then
                    currentTween:Cancel()
                end
                currentTween = TweenService:Create(localRoot, tweenInfo, {CFrame = targetRoot.CFrame})
                currentTween:Play()
            else
                localRoot.CFrame = targetRoot.CFrame
            end
        end
    end
end

TraceTab:CreateToggle(
    {
        Name = "追踪目标",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ZZWJT = Value
            if Value then
                task.spawn(ZZWJ)
                Rayfield:Notify({Title = "提示", Content = "追踪目标开启", Image = 4483362458})
            else
                Rayfield:Notify({Title = "提示", Content = "追踪目标关闭", Image = 4483362458})
            end
        end
    }
)

local ZZWJBHT

function ZZWJBH()
    while ZZWJBHT and task.wait() do
        local targetPlayer = Players:FindFirstChild(XZWJ)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetRoot = targetPlayer.Character.HumanoidRootPart
            local backPosition = targetRoot.Position - targetRoot.CFrame.LookVector * 3 + Vector3.new(0, 1, 0)
            local localChar = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local localRoot = localChar:WaitForChild("HumanoidRootPart")
            if ZZPHMST then
                local tweenInfo = createTweenInfo(localRoot.Position, backPosition)
                if currentTween then
                    currentTween:Cancel()
                end
                currentTween =
                    TweenService:Create(
                    localRoot,
                    tweenInfo,
                    {
                        CFrame = CFrame.new(backPosition, backPosition + targetRoot.CFrame.LookVector)
                    }
                )
                currentTween:Play()
            else
                localRoot.CFrame = CFrame.new(backPosition, backPosition + targetRoot.CFrame.LookVector)
            end
        end
    end
end

TraceTab:CreateToggle(
    {
        Name = "追踪目标背后",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ZZWJBHT = Value
            if Value then
                task.spawn(ZZWJBH)
                Rayfield:Notify({Title = "提示", Content = "追踪目标背后开启", Image = 4483362458})
            else
                Rayfield:Notify({Title = "提示", Content = "追踪目标背后关闭", Image = 4483362458})
            end
        end
    }
)

local KZWJT

function KZWJ()
    while KZWJT and task.wait() do
        local PlayerName = XZWJ
        local targetPlayer = Players:FindFirstChild(XZWJ)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
        end
        if not KZWJT then
            break
        end
    end
end

TraceTab:CreateToggle(
    {
        Name = "看着目标",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            KZWJT = Value
            if Value then
                task.spawn(KZWJ)
                Rayfield:Notify({Title = "提示", Content = "看着目标开启", Image = 4483362458})
            else
                Rayfield:Notify({Title = "提示", Content = "看着目标关闭", Image = 4483362458})
            end
        end
    }
)

TraceTab:CreateButton(
    {
        Name = "瞬移目标",
        Callback = function()
            if not XZWJ or XZWJ == "" then
                Rayfield:Notify({Title = "错误", Content = "请先从目标列表中选择一个玩家", Image = 4483362458})
                return
            end

            local Players = game:GetService("Players")
            local targetPlayer = Players:FindFirstChild(XZWJ)

            if not targetPlayer or not targetPlayer.Character then
                Rayfield:Notify({Title = "错误", Content = "目标玩家不存在或未加载角色", Image = 4483362458})
                return
            end

            local localChar = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local targetChar = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
            local localRoot = localChar:FindFirstChild("HumanoidRootPart")
            local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")

            if localRoot and targetRoot then
                if ZZPHMST then
                    local tweenInfo = createTweenInfo(localRoot.Position, targetRoot.Position)
                    if currentTween then
                        currentTween:Cancel()
                    end
                    currentTween = TweenService:Create(localRoot, tweenInfo, {CFrame = targetRoot.CFrame})
                    currentTween:Play()
                else
                    localRoot.CFrame = targetRoot.CFrame
                end
                Rayfield:Notify({Title = "提示", Content = "已瞬移至目标玩家", Image = 4483362458})
            else
                Rayfield:Notify({Title = "错误", Content = "找不到角色或部位", Image = 4483362458})
            end
        end
    }
)

TraceTab:CreateDivider()

local VisualsTab = Window:CreateTab("视觉")

VisualsTab:CreateInput(
    {
        Name = "FOV",
        CurrentValue = "",
        PlaceholderText = workspace.CurrentCamera.FieldOfView,
        RemoveTextAfterFocusLost = false,
        Flag = "",
        Callback = function(Text)
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    workspace.CurrentCamera.FieldOfView = Text
                end
            )
        end
    }
)

local success, result =
    pcall(
    function()
        return game:HttpGet("https://gitee.com/roblox-smk/roblox/raw/master/ubgteamlist")
    end
)
local loadSuccess, tramlistFunction =
    pcall(
    function()
        return loadstring(result)
    end
)
local executeSuccess, tramlist = pcall(tramlistFunction)

function YZFFBYH(username)
    for _, tramlistedUsername in ipairs(tramlist) do
        if tramlistedUsername == username then
            return true
        end
    end
    return false
end

local PlayerColor = Color3.fromRGB(255, 255, 255)
local TeamerColor = Color3.fromRGB(0, 255, 0)
local ESPPlayerT
local ESPPlayerUserNameT
local ESPPlayerNameT
local ESPPlayerHealthT
local PlayerHighlightT
local ESPTeamerT
local ESPPlayerGuis = {}

VisualsTab:CreateColorPicker(
    {
        Name = "玩家颜色",
        Color = PlayerColor,
        Callback = function(Value)
            PlayerColor = Value
            for _, gui in pairs(ESPPlayerGuis) do
                if gui:FindFirstChild("ESPLabel") then
                    local player = Players:GetPlayerFromCharacter(gui.Adornee.Parent)
                    if player then
                        local isTeamer = YZFFBYH(player.Name)
                        gui.ESPLabel.TextColor3 = isTeamer and TeamerColor or PlayerColor
                    end
                end
            end
            for _, v in pairs(Players:GetPlayers()) do
                if v ~= Players.LocalPlayer then
                    local Character = v.Character
                    if Character then
                        local Highlight = Character:FindFirstChild("PlayerESPHighlight")
                        if Highlight then
                            local isTeamer = YZFFBYH(v.Name)
                            Highlight.OutlineColor = isTeamer and TeamerColor or PlayerColor
                        end
                    end
                end
            end
        end
    }
)

VisualsTab:CreateColorPicker(
    {
        Name = "队友颜色",
        Color = TeamerColor,
        Callback = function(Value)
            TeamerColor = Value
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "绘制开关",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ESPPlayerT = Value
            if Value then
                task.spawn(ESPPlayer)
                Rayfield:Notify({Title = "提示", Content = "绘制开启(默认不绘制友军)", Image = 4483362458})
            else
                task.spawn(NOESPPlayer)
                Rayfield:Notify({Title = "提示", Content = "绘制关闭", Image = 4483362458})
            end
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "玩家用户名",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ESPPlayerUserNameT = Value
            Rayfield:Notify({Title = "提示", Content = Value and "玩家用户名开启" or "玩家用户名关闭", Image = 4483362458})
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "玩家名字",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ESPPlayerNameT = Value
            Rayfield:Notify({Title = "提示", Content = Value and "玩家昵称开启" or "玩家昵称关闭", Image = 4483362458})
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "玩家血量",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ESPPlayerHealthT = Value
            Rayfield:Notify({Title = "提示", Content = Value and "玩家血量开启" or "玩家血量关闭", Image = 4483362458})
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "玩家描边",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            PlayerHighlightT = Value
            Rayfield:Notify({Title = "提示", Content = Value and "玩家描边开启" or "玩家描边关闭", Image = 4483362458})
        end
    }
)

VisualsTab:CreateToggle(
    {
        Name = "绘制友军",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ESPTeamerT = Value
            Rayfield:Notify({Title = "提示", Content = Value and "绘制友军开启" or "绘制友军关闭", Image = 4483362458})
        end
    }
)

function ESPPlayer()
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= Players.LocalPlayer then
            local isTeamer = YZFFBYH(v.Name)
            if not isTeamer or ESPTeamerT then
                local Character = v.Character
                if Character and Character:FindFirstChild("Head") then
                    local head = Character.Head
                    local hasESP = false
                    for _, gui in pairs(ESPPlayerGuis) do
                        if gui.Adornee == head then
                            hasESP = true
                            break
                        end
                    end
                    if not hasESP then
                        local billboardGui = Instance.new("BillboardGui")
                        billboardGui.Name = "ESP_" .. v.Name
                        billboardGui.Parent = head
                        billboardGui.AlwaysOnTop = true
                        billboardGui.Size = UDim2.new(0, 200, 0, 50)
                        billboardGui.StudsOffset = Vector3.new(0, 5, 0)
                        billboardGui.Adornee = head

                        local textLabel = Instance.new("TextLabel")
                        textLabel.Name = "ESPLabel"
                        textLabel.Parent = billboardGui
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.BackgroundTransparency = 1
                        textLabel.TextColor3 = isTeamer and TeamerColor or PlayerColor
                        textLabel.Font = Enum.Font.SourceSansBold
                        textLabel.TextSize = 14
                        textLabel.TextStrokeTransparency = 0.2
                        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        textLabel.Text = ""

                        table.insert(ESPPlayerGuis, billboardGui)

                        if PlayerHighlightT then
                            local highlight = Character:FindFirstChild("PlayerESPHighlight")
                            if not highlight then
                                highlight = Instance.new("Highlight")
                                highlight.Name = "PlayerESPHighlight"
                                highlight.FillTransparency = 1
                                highlight.OutlineColor = isTeamer and TeamerColor or PlayerColor
                                highlight.Parent = Character
                            end
                        end
                    end
                end
            end
        end
    end
end

function NOESPPlayer()
    for _, gui in pairs(ESPPlayerGuis) do
        gui:Destroy()
    end
    ESPPlayerGuis = {}
end

RunService.RenderStepped:Connect(
    function()
        if ESPPlayerT then
            ESPPlayer()
            for _, gui in pairs(ESPPlayerGuis) do
                if gui and gui.Parent and gui:FindFirstChild("ESPLabel") then
                    local head = gui.Adornee
                    if head and head.Parent then
                        local player = Players:GetPlayerFromCharacter(head.Parent)
                        if player and player ~= Players.LocalPlayer then
                            local isTeamer = YZFFBYH(player.Name)
                            if not isTeamer or ESPTeamerT then
                                local humanoid = head.Parent:FindFirstChild("Humanoid")
                                local label = gui.ESPLabel
                                local texts = {}
                                if ESPPlayerUserNameT then
                                    table.insert(texts, "用户名：" .. player.Name)
                                end
                                if ESPPlayerNameT then
                                    table.insert(texts, "名字：" .. player.DisplayName)
                                end
                                if ESPPlayerHealthT and humanoid then
                                    table.insert(texts, "血量：" .. math.floor(humanoid.Health))
                                end
                                label.Text = table.concat(texts, "  ")
                                label.TextColor3 = isTeamer and TeamerColor or PlayerColor

                                if PlayerHighlightT then
                                    local character = player.Character
                                    if character then
                                        local highlight = character:FindFirstChild("PlayerESPHighlight")
                                        if not highlight then
                                            highlight = Instance.new("Highlight")
                                            highlight.Name = "PlayerESPHighlight"
                                            highlight.FillTransparency = 1
                                            highlight.OutlineColor = isTeamer and TeamerColor or PlayerColor
                                            highlight.Parent = character
                                        else
                                            highlight.OutlineColor = isTeamer and TeamerColor or PlayerColor
                                        end
                                    end
                                else
                                    local character = player.Character
                                    if character then
                                        local highlight = character:FindFirstChild("PlayerESPHighlight")
                                        if highlight then
                                            highlight:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            for _, v in pairs(Players:GetPlayers()) do
                if v ~= Players.LocalPlayer then
                    local character = v.Character
                    if character then
                        local highlight = character:FindFirstChild("PlayerESPHighlight")
                        if highlight then
                            highlight:Destroy()
                        end
                    end
                end
            end
        end
    end
)

VisualsTab:CreateButton(
    {
        Name = "背包储物柜",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = true
        end
    }
)

VisualsTab:CreateButton(
    {
        Name = "制作界面",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.CraftingBenchMenu.Enabled = true
        end
    }
)

VisualsTab:CreateDivider()

local TPTab = Window:CreateTab("传送")

TPTab:CreateButton(
    {
        Name = "瞬移小保险",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local SmallSafeFolder = workspace.Game.Entities.SmallSafe

            if SmallSafeFolder:FindFirstChild("SmallSafe") then
                local SmallSafe = SmallSafeFolder.SmallSafe
                local Door = SmallSafe:FindFirstChild("Door")
                if Door then
                    local MeshPart = Door:FindFirstChild("Meshes/LargeSafe_Cube.002_Cube.003_None (1)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local proximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if proximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移中保险",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local MediumSafeFolder = workspace.Game.Entities.MediumSafe

            if MediumSafeFolder:FindFirstChild("MediumSafe") then
                local MediumSafe = MediumSafeFolder.MediumSafe
                local Door = MediumSafe:FindFirstChild("Door")
                if Door then
                    local MeshPart = Door:FindFirstChild("Meshes/LargeSafe_Cube.002_Cube.003_None (1)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local proximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if proximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移大保险",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local LargeSafeFolder = workspace.Game.Entities.LargeSafe
            if LargeSafeFolder:FindFirstChild("LargeSafe") then
                local LargeSafe = LargeSafeFolder.LargeSafe
                local Door = LargeSafe:FindFirstChild("Door")
                if Door then
                    local MeshPart = Door:FindFirstChild("Meshes/LargeSafe_Cube.002_Cube.003_None (1)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local proximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if proximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移黑保险",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local JewelSafeFolder = workspace.Game.Entities.JewelSafe
            local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
            if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
                HumanoidRootPart.CFrame = CFrame.new(1078.0809326171875, 6.246849060058594, -343.95758056640625)
                wait(0.5)
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            elseif JewelSafeFolder:FindFirstChild("JewelSafe") then
                local JewelSafe = JewelSafeFolder.JewelSafe
                local Door = JewelSafe:FindFirstChild("Door")
                if Door then
                    local MeshPart = Door:FindFirstChild("Meshes/LargeSafe_Cube.002_Cube.003_None (1)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local proximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if proximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移金保险",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local GoldJewelSafeFolder = workspace.Game.Entities.GoldJewelSafe
            local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor

            if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
                HumanoidRootPart.CFrame = CFrame.new(1078.0809326171875, 6.246849060058594, -343.95758056640625)
                wait(0.5)
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
                BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            elseif GoldJewelSafeFolder:FindFirstChild("GoldJewelSafe") then
                local GoldJewelSafe = GoldJewelSafeFolder.GoldJewelSafe
                local Door = GoldJewelSafe:FindFirstChild("Door")
                if Door then
                    local MeshPart = Door:FindFirstChild("Meshes/LargeSafe_Cube.002_Cube.003_None (1)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local proximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if proximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移小宝箱",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local SmallChestFolder = game:GetService("Workspace").Game.Entities.SmallChest

            if SmallChestFolder:FindFirstChild("SmallChest") then
                local SmallChest = SmallChestFolder.SmallChest
                local Lock = SmallChest:FindFirstChild("Lock")
                if Lock then
                    local MeshPart = Lock:FindFirstChild("Meshes/untitled_chest.002_Material.009 (4)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local ProximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if ProximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移大宝箱",
        Callback = function()
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character or player.CharacterAdded:Wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local LargeChestFolder = game:GetService("Workspace").Game.Entities.LargeChest

            if LargeChestFolder:FindFirstChild("LargeChest") then
                local LargeChest = LargeChestFolder.LargeChest
                local Lock = LargeChest:FindFirstChild("Lock")
                if Lock then
                    local MeshPart = Lock:FindFirstChild("Meshes/untitled_chest.002_Material.009 (4)")
                    if MeshPart then
                        local Attachment = MeshPart:FindFirstChild("Attachment")
                        if Attachment then
                            local ProximityPrompt = Attachment:FindFirstChild("ProximityPrompt")
                            if ProximityPrompt then
                                HumanoidRootPart.CFrame = MeshPart.CFrame
                                Attachment.Parent.Parent.Parent.Name = "Opened"
                            end
                        end
                    end
                end
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移宝藏",
        Callback = function()
            local DebrisFolder = game:GetService("Workspace").Game.Local.Debris
            local TreasureMarker = DebrisFolder:FindFirstChild("TreasureMarker")
            if TreasureMarker then
                HumanoidRootPart.CFrame = TreasureMarker.CFrame * CFrame.new(0, 4, 0)
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移空投",
        Callback = function()
            local AirdropsFolder = game:GetService("Workspace").Game.Airdrops
            local Airdrop = AirdropsFolder:FindFirstChild("Airdrop")
            if Airdrop then
                HumanoidRootPart.CFrame = Airdrop.Airdrop.CFrame * CFrame.new(0, 4, 0)
            end
        end
    }
)

TPTab:CreateButton(
    {
        Name = "瞬移圣诞空投",
        Callback = function()
            local AirdropsFolder = game:GetService("Workspace").Game.Airdrops
            local Santadrop = AirdropsFolder:FindFirstChild("Santadrop")
            if Santadrop then
                HumanoidRootPart.CFrame = Santadrop.Santadrop.CFrame * CFrame.new(0, 4, 0)
            end
        end
    }
)

TPTab:CreateDivider()

local CombatTab = Window:CreateTab("战斗")

CombatTab:CreateLabel("除携带光环其他光环都需先触发一次行为才有效")

local HitAuraT

function HitAura()
    while HitAuraT and task.wait() do
        local targets = {}
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("Humanoid") then
                local Character = v.Character
                local Health = Character.Humanoid.Health
                local Head = Character:FindFirstChild("Head")
                local Distance =
                    Head and (LocalPlayer.Character.HumanoidRootPart.Position - Head.Position).Magnitude or 9999
                local IsFriend = LocalPlayer:IsFriendsWith(v.UserId)

                if v ~= LocalPlayer and not Character:FindFirstChild("ForceField") and not IsFriend then
                    if Distance <= 35 and Health >= 20 then
                        Hit:FireServer(
                            "player",
                            {
                                meleeType = "meleemegapunch",
                                hitPlayerId = v.UserId
                            }
                        )
                    end
                end
            end
        end
        if not HitAuraT then
            return
        end
    end
end

CombatTab:CreateToggle(
    {
        Name = "打击光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            HitAuraT = Value
            if Value then
                task.spawn(HitAura)
            end
        end
    }
)

local StompAuraT

function StompAura()
    while StompAuraT and task.wait() do
        local targets = {}
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("Humanoid") then
                local Character = v.Character
                local Health = Character.Humanoid.Health
                local Head = Character:FindFirstChild("Head")
                local Distance =
                    Head and (LocalPlayer.Character.HumanoidRootPart.Position - Head.Position).Magnitude or 9999
                local IsFriend = LocalPlayer:IsFriendsWith(v.UserId)

                if v ~= LocalPlayer and not Character:FindFirstChild("ForceField") and not IsFriend then
                    if Distance <= 35 and Health <= 20 then
                        Stomp:FireServer(v)
                    end
                end
            end
        end
        if not StompAuraT then
            return
        end
    end
end

CombatTab:CreateToggle(
    {
        Name = "踩踏光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            StompAuraT = Value
            if Value then
                task.spawn(StompAura)
            end
        end
    }
)

local GrabAuraT

function GrabAura()
    while GrabAuraT and task.wait(0.2) do
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("Humanoid") then
                local Character = v.Character
                local Health = Character.Humanoid.Health
                local Head = Character:FindFirstChild("Head")
                local Distance = Head and (HumanoidRootPart.Position - Head.Position).Magnitude or 9999
                local IsFriend = LocalPlayer:IsFriendsWith(v.UserId)
                local prompt = Character:FindFirstChild("grabPrompt", true)

                if
                    v ~= LocalPlayer and not Character:FindFirstChild("ForceField") and not IsFriend and prompt and
                        prompt:IsA("ProximityPrompt")
                 then
                    if Distance <= 35 and Health <= 20 then
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.G, false, nil)
                        prompt.MaxActivationDistance = 0
                        fireproximityprompt(prompt)
                        Stomp:FireServer(v)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.G, false, nil)
                    end
                end
            end
        end
        if not GrabAuraT then
            return
        end
    end
end

local GrabAuraT

function GrabAura()
    while GrabAuraT and task.wait(0.2) do
        for _, v in pairs(Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("Humanoid") then
                local Character = v.Character
                local Health = Character.Humanoid.Health
                local Head = Character:FindFirstChild("Head")
                local Distance = Head and (HumanoidRootPart.Position - Head.Position).Magnitude or 9999
                local IsFriend = LocalPlayer:IsFriendsWith(v.UserId)
                local prompt = Character:FindFirstChild("grabPrompt", true)

                if
                    v ~= LocalPlayer and not Character:FindFirstChild("ForceField") and not IsFriend and prompt and
                        prompt:IsA("ProximityPrompt")
                 then
                    if Distance <= 35 and Health <= 20 then
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.G, false, nil)
                        prompt.MaxActivationDistance = 0
                        fireproximityprompt(prompt)
                        Stomp:FireServer(v)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.G, false, nil)
                    end
                end
            end
        end
        if not GrabAuraT then
            return
        end
    end
end

CombatTab:CreateToggle(
    {
        Name = "携带光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            GrabAuraT = Value
            if Value then
                task.spawn(GrabAura)
            end
        end
    }
)

CombatTab:CreateButton(
    {
        Name = "隐身(X键)",
        Callback = function()
            local ScriptStarted = false
            local Keybind = "X"
            local Transparency = true
            local NoClip = false

            local Player = game:GetService("Players").LocalPlayer
            local RealCharacter = Player.Character or Player.CharacterAdded:wait(0.1)

            local IsInvisible = false

            RealCharacter.Archivable = true
            local FakeCharacter = RealCharacter:Clone()
            local Part
            Part = Instance.new("Part", workspace)
            Part.Anchored = true
            Part.Size = Vector3.new(200, 1, 200)
            Part.CFrame = CFrame.new(0, -500, 0)
            Part.CanCollide = true
            FakeCharacter.Parent = workspace
            FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

            for i, v in pairs(RealCharacter:GetChildren()) do
                if v:IsA("LocalScript") then
                    local clone = v:Clone()
                    clone.Disabled = true
                    clone.Parent = FakeCharacter
                end
            end
            if Transparency then
                for i, v in pairs(FakeCharacter:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Transparency = 0.7
                    end
                end
            end
            local CanInvis = true
            function RealCharacterDied()
                CanInvis = false
                RealCharacter:Destroy()
                RealCharacter = Player.Character
                CanInvis = true
                isinvisible = false
                FakeCharacter:Destroy()
                workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

                RealCharacter.Archivable = true
                FakeCharacter = RealCharacter:Clone()
                Part:Destroy()
                Part = Instance.new("Part", workspace)
                Part.Anchored = true
                Part.Size = Vector3.new(200, 1, 200)
                Part.CFrame = CFrame.new(9999, 9999, 9999)
                Part.CanCollide = true
                FakeCharacter.Parent = workspace
                FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

                for i, v in pairs(RealCharacter:GetChildren()) do
                    if v:IsA("LocalScript") then
                        local clone = v:Clone()
                        clone.Disabled = true
                        clone.Parent = FakeCharacter
                    end
                end
                if Transparency then
                    for i, v in pairs(FakeCharacter:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.Transparency = 0.7
                        end
                    end
                end
                RealCharacter.Humanoid.Died:Connect(
                    function()
                        RealCharacter:Destroy()
                        FakeCharacter:Destroy()
                    end
                )
                Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
            end
            RealCharacter.Humanoid.Died:Connect(
                function()
                    RealCharacter:Destroy()
                    FakeCharacter:Destroy()
                end
            )
            Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
            local PseudoAnchor
            game:GetService "RunService".RenderStepped:Connect(
                function()
                    if PseudoAnchor ~= nil then
                        PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
                    end
                    if NoClip then
                        FakeCharacter.Humanoid:ChangeState(11)
                    end
                end
            )

            PseudoAnchor = FakeCharacter.HumanoidRootPart
            local function Invisible()
                if IsInvisible == false then
                    local StoredCF = RealCharacter.HumanoidRootPart.CFrame
                    RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
                    FakeCharacter.HumanoidRootPart.CFrame = StoredCF
                    RealCharacter.Humanoid:UnequipTools()
                    Player.Character = FakeCharacter
                    workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
                    PseudoAnchor = RealCharacter.HumanoidRootPart
                    for i, v in pairs(FakeCharacter:GetChildren()) do
                        if v:IsA("LocalScript") then
                            v.Disabled = false
                        end
                    end

                    IsInvisible = true
                else
                    local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
                    FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame

                    RealCharacter.HumanoidRootPart.CFrame = StoredCF

                    FakeCharacter.Humanoid:UnequipTools()
                    Player.Character = RealCharacter
                    workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
                    PseudoAnchor = FakeCharacter.HumanoidRootPart
                    for i, v in pairs(FakeCharacter:GetChildren()) do
                        if v:IsA("LocalScript") then
                            v.Disabled = true
                        end
                    end
                    IsInvisible = false
                end
            end

            game:GetService("UserInputService").InputBegan:Connect(
                function(key, gamep)
                    if gamep then
                        return
                    end
                    if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
                        if
                            RealCharacter:FindFirstChild("HumanoidRootPart") and
                                FakeCharacter:FindFirstChild("HumanoidRootPart")
                         then
                            Invisible()
                        end
                    end
                end
            )
        end
    }
)

CombatTab:CreateButton(
    {
        Name = "原皮枪无后座",
        Callback = function()
            local itemsToSearch = {
                "Raygun",
                "Scar L",
                "RPG",
                "Sawn Off",
                "Minigun",
                "Stagecoach",
                "Deagle",
                "RPK",
                "Glock 18",
                "AK-47",
                "Tommy Gun",
                "M4A1",
                "Uzi",
                "MP7",
                "Python",
                "FN FAL"
            }

            local modelsFolder = game:GetService("ReplicatedStorage"):FindFirstChild("Models")
            local itemsFolder = modelsFolder:FindFirstChild("Items")
            for _, itemName in ipairs(itemsToSearch) do
                local item = itemsFolder:FindFirstChild(itemName)
                if item then
                    local pointLights = item:GetDescendants()
                    for _, descendant in ipairs(pointLights) do
                        if descendant:IsA("PointLight") then
                            descendant.Name = "Sukuna"
                        end
                    end
                end
            end
        end
    }
)

CombatTab:CreateButton(
    {
        Name = "自杀(对携带光环无效)",
        Callback = function()
            Humanoid.Health = 0
        end
    }
)

CombatTab:CreateDivider()
local BomTab = Window:CreateTab("轰炸")

BomTab:CreateDropdown(
    {
        Name = "选择玩家",
        Options = GetPlayers(),
        CurrentOption = "",
        MultipleOptions = false,
        Flag = "",
        Callback = function(SelectedOptions)
            local selectedName = SelectedOptions[1]
            if selectedName then
                local selectedPlayer = game:GetService("Players"):FindFirstChild(selectedName)
                if selectedPlayer then
                    BomPlayer = selectedPlayer
                end
            end
        end
    }
)

BomTab:CreateButton(
    {
        Name = "刷新列表",
        Callback = function()
            Dropdown:Refresh(getPlayers())
        end
    }
)

local BomText = "老弟你有啥实力啊"

BomTab:CreateInput(
    {
        Name = "短信轰炸内容",
        CurrentValue = "",
        PlaceholderText = "老弟你有啥实力啊",
        RemoveTextAfterFocusLost = false,
        Flag = "",
        Callback = function(Text)
            BomText = Text
        end
    }
)

local BomPlayer

function TextBom()
    while task.wait(0.3) do
        local args = {
            [1] = BomPlayer.UserId,
            [2] = BomText
        }

        game:GetService("ReplicatedStorage").devv.remoteStorage.sendMessage:FireServer(unpack(args))
    end
end

function CallBom()
    while task.wait(0.3) do
        local args = {
            [1] = BomPlayer.UserId
        }

        game:GetService("ReplicatedStorage").devv.remoteStorage.attemptCall:InvokeServer(unpack(args))
    end
end

BomTab:CreateButton(
    {
        Name = "轰炸玩家",
        Callback = function()
            task.spawn(TextBom)
            task.spawn(CallBom)
        end
    }
)

BomTab:CreateDivider()

local FarmTab = Window:CreateTab("农场")

FarmTab:CreateLabel("自动提款机、收银机都需要先触发一次行为才有效")

local MoneyAuraT

function MoneyAura()
    while MoneyAuraT and task.wait() do
        for _, v in ipairs(workspace.Game.Entities.CashBundle:GetChildren()) do
            if v:IsA("Model") and (v:GetPivot().Position - HumanoidRootPart.Position).Magnitude <= 20 then
                local part = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")
                if part then
                    firetouchinterest(HumanoidRootPart, part, 0)
                    firetouchinterest(HumanoidRootPart, part, 1)
                end
            end
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "现金光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            MoneyAuraT = Value
            if Value then
                task.spawn(MoneyAura)
            end
        end
    }
)

local ItemAuraT

function ItemAura()
    while ItemAuraT and task.wait() do
        local function onChrAdded(Character)
            for _, v in ipairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                    local Distance = (HumanoidRootPart.Position - v.Parent.Position).Magnitude
                    if Distance <= 20 then
                        v.RequiresLineOfSight = false
                        fireproximityprompt(v)
                    end
                end
            end
        end
        onChrAdded(LocalPlayer)
        LocalPlayer.CharacterAdded:Connect(onChrAdded)
    end
end

FarmTab:CreateToggle(
    {
        Name = "物品光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            ItemAuraT = Value
            if Value then
                task.spawn(ItemAura)
            end
        end
    }
)

local InteractionAuraT

function InteractionAura()
    while InteractionAuraT and task.wait(0.3) do
        local entitiesToCheck = {
            workspace.Game.Entities.GoldJewelSafe,
            workspace.Game.Entities.SmallSafe,
            workspace.Game.Entities.SmallChest,
            workspace.Game.Entities.LargeSafe,
            workspace.Game.Entities.MediumSafe,
            workspace.Game.Entities.LargeChest,
            workspace.Game.Entities.JewelSafe,
            workspace.BankRobbery.VaultDoor,
            workspace.BankRobbery.BankCash
        }
        for _, container in ipairs(entitiesToCheck) do
            if container and container:IsA("Instance") then
                for _, obj in ipairs(container:GetDescendants()) do
                    if obj:IsA("ProximityPrompt") and obj.Parent and obj.Parent.Parent then
                        local distance = (HumanoidRootPart.Position - obj.Parent.Parent.Position).Magnitude
                        if distance <= 20 then
                            obj.RequiresLineOfSight = false
                            obj.HoldDuration = 0
                            fireproximityprompt(obj)
                        end
                    end
                end
            end
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "互动光环",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            InteractionAuraT = Value
            if Value then
                task.spawn(InteractionAura)
            end
        end
    }
)

local DealerSellT

function DealerSell()
    while DealerSellT and task.wait(0.3) do
        if not DealerSellT then
            break
        end
        fireproximityprompt(game:GetService("Workspace").BlackMarket.Dealer.Dealer.ProximityPrompt)
    end
end

FarmTab:CreateToggle(
    {
        Name = "黑市互动",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            DealerSellT = Value
            if Value then
                task.spawn(DealerSell)
            end
        end
    }
)

local AutoPickMoneyT

function AutoPickMoney()
    while AutoPickMoneyT and task.wait(0.3) do
        local foundCash = false
        local originalCFrame = HumanoidRootPart.CFrame
        for _, cashBundle in ipairs(workspace.Game.Entities.CashBundle:GetChildren()) do
            if cashBundle:IsA("Model") then
                local intValue = cashBundle:FindFirstChildWhichIsA("IntValue")
                if intValue and intValue.Value >= 1000 then
                    foundCash = true
                    HumanoidRootPart.CFrame = cashBundle:GetPivot()
                    task.wait(0.3)
                    HumanoidRootPart.CFrame = originalCFrame
                    task.wait(0.3)
                end
            end
        end

        if not foundCash then
            task.wait(1)
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "瞬移金钱(大于1k)",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoPickMoneyT = Value
            if Value then
                task.spawn(AutoPickMoney)
            end
        end
    }
)

local AutoHideT

function AutoHide()
    while AutoHideT and task.wait(3) do
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            HumanoidRootPart.CFrame = CFrame.new(1881.17371, -45.2568588, -183.409271)
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动隐藏",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoHideT = Value
            if Value then
                task.spawn(AutoHide)
            end
        end
    }
)

local AutoPickItemT

function AutoPickItem()
    if not AutoPickItemT then
        return
    end

    local targetItems = {
        "Money Printer",
        "Blue Candy Cane",
        "Gold AK-47",
        "Gold Deagle",
        "Bunny Balloon",
        "Ghost Balloon",
        "Clover Balloon",
        "Bat Balloon",
        "Gold Clover Balloon",
        "Golden Rose",
        "Black Rose",
        "Heart Balloon",
        "Diamond Ring",
        "Diamond",
        "Void Gem",
        "Dark Matter Gem",
        "Military Armory Keycard",
        "Rollie",
        "Candy Cane"
    }

    while AutoPickItemT and task.wait() do
        for _, itemFolder in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
            for _, item in pairs(itemFolder:GetChildren()) do
                if item:IsA("MeshPart") or item:IsA("Part") then
                    for _, child in pairs(item:GetChildren()) do
                        if child:IsA("ProximityPrompt") then
                            for _, targetName in pairs(targetItems) do
                                if child.ObjectText == targetName then
                                    Humanoid:Move(Vector3.new(1, 0, 0))
                                    HumanoidRootPart.CFrame = item.CFrame * CFrame.new(0, 2, 0)
                                    child.RequiresLineOfSight = false
                                    fireproximityprompt(child)
                                    return
                                end
                            end
                        end
                    end
                end
            end
        end
        if not AutoPickItemT then
            return
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动捡稀有物品",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoPickItemT = Value
            if Value then
                task.spawn(AutoPickItem)
            end
        end
    }
)

local AutoPickItemmT

function AutoPickItemm()
    local targetItems = {
        "Electronics",
        "Weapon Parts",
        "Materials",
        "Scrap",
        "Explosives"
    }

    while AutoPickItemmT and task.wait(0.3) do
        for _, itemFolder in pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren()) do
            for _, item in pairs(itemFolder:GetChildren()) do
                if item:IsA("MeshPart") or item:IsA("Part") then
                    for _, child in pairs(item:GetChildren()) do
                        if child:IsA("ProximityPrompt") then
                            for _, targetName in pairs(targetItems) do
                                if child.ObjectText == targetName then
                                    Humanoid:Move(Vector3.new(1, 0, 0))
                                    HumanoidRootPart.CFrame = item.CFrame * CFrame.new(0, 2, 0)
                                    child.RequiresLineOfSight = false
                                    fireproximityprompt(child)
                                end
                            end
                        end
                    end
                end
            end
        end
        if not AutoPickItemmT then
            return
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动捡零件盒",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoPickItemmT = Value
            if Value then
                AutoPickItemm()
            end
        end
    }
)

local AutoFarmBankT

function AutoFarmBank()
    local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
    local BankCashs = game:GetService("Workspace").BankRobbery.BankCash
    while AutoFarmBankT and task.wait(0.3) do
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true and BankCashs.Cash:FindFirstChild("Bundle") then
            HumanoidRootPart.CFrame = CFrame.new(1078.0809326171875, 6.246849060058594, -343.95758056640625)
            fireproximityprompt(BankDoor.Door.Attachment.ProximityPrompt)
        elseif BankCashs.Cash:FindFirstChild("Bundle") then
            HumanoidRootPart.CFrame = CFrame.new(1060, 5, -344)
            BankCashs.Main.Attachment.ProximityPrompt.RequiresLineOfSight = false
            task.wait(0.5)
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldBegin()
        elseif not BankCashs.Cash:FindFirstChild("Bundle") then
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldEnd()
            break
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动银行",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoFarmBankT = Value
            if Value then
                task.spawn(AutoFarmBank)
            end
        end
    }
)

local AutoFarmAtmT

function AutoFarmAtm()
    local currentATM = nil
    local ATMguid

    while AutoFarmAtmT and task.wait() do
        if not currentATM or (currentATM:GetAttribute("health") or 0) <= 0 then
            currentATM = nil

            for _, v in ipairs(workspace.Game.Props.ATM:GetChildren()) do
                if v:IsA("Model") and (v:GetAttribute("health") or 0) > 0 then
                    currentATM = v
                    ATMguid = v:GetAttribute("guid")
                    break
                end
            end
        end

        if currentATM and ATMguid then
            local pivot = currentATM:GetPivot().Position
            HumanoidRootPart.CFrame = CFrame.new(pivot.X, pivot.Y - 5, pivot.Z)
            Hit:FireServer(
                "prop",
                {
                    meleeType = "meleepunch",
                    guid = ATMguid
                }
            )
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动提款机",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoFarmAtmT = Value
            if Value then
                task.spawn(AutoFarmAtm)
            end
        end
    }
)

local AutoFarmCashRT

function AutoFarmCashR()
    local currentCashR = nil
    local CashRguid

    while AutoFarmCashRT and task.wait() do
        if not currentCashR or (currentCashR:GetAttribute("health") or 0) <= 0 then
            currentCashR = nil

            for _, v in ipairs(workspace.Game.Props.CashRegister:GetChildren()) do
                if v:IsA("Model") and (v:GetAttribute("health") or 0) > 0 then
                    currentCashR = v
                    CashRguid = v:GetAttribute("guid")
                    break
                end
            end
        end

        if currentCashR and CashRguid then
            local pos = currentCashR:GetPivot().Position
            HumanoidRootPart.CFrame = CFrame.new(pos.X, pos.Y - 2, pos.Z)
            Hit:FireServer(
                "prop",
                {
                    meleeType = "meleepunch",
                    guid = CashRguid
                }
            )
        end
    end
end

FarmTab:CreateToggle(
    {
        Name = "自动收银机",
        CurrentValue = false,
        Flag = "",
        Callback = function(Value)
            AutoFarmCashRT = Value
            if Value then
                task.spawn(AutoFarmCashR)
            end
        end
    }
)

FarmTab:CreateDivider()

local BuyTab = Window:CreateTab("购物")

local selectedItem = nil

local function getUniqueItemNames()
    local uniqueNames = {}
    local nameSet = {}

    for _, item in pairs(workspace:FindFirstChild("ItemsOnSale"):GetChildren()) do
        if item:IsA("Model") or item:IsA("Part") then
            local name = item.Name
            if not nameSet[name] then
                table.insert(uniqueNames, name)
                nameSet[name] = true
            end
        end
    end

    return uniqueNames
end

local itemDropdown =
    BuyTab:CreateDropdown(
    {
        Name = "选择要购买的物品",
        Options = getUniqueItemNames(),
        CurrentOption = {},
        MultipleOptions = false,
        Flag = "SelectedItem",
        Callback = function(Options)
            selectedItem = Options[1]
            Rayfield:Notify({Title = "提示", Content = "已选择: " .. selectedItem, Image = 4483362458})
        end
    }
)

BuyTab:CreateButton(
    {
        Name = "购买所选物品",
        Callback = function()
            local args = {selectedItem}
            local success1, result1 =
                pcall(
                function()
                    return game:GetService("ReplicatedStorage").devv.remoteStorage.attemptPurchase:InvokeServer(
                        table.unpack(args)
                    )
                end
            )

            local success2, result2 =
                pcall(
                function()
                    return game:GetService("ReplicatedStorage").devv.remoteStorage.attemptPurchaseAmmo:InvokeServer(
                        table.unpack(args)
                    )
                end
            )

            if success1 or success2 then
                Rayfield:Notify({Title = "提示", Content = "购买成功: " .. selectedItem, Image = 4483362458})
            else
                Rayfield:Notify({Title = "错误", Content = "购买失败: " .. tostring(result1 or result2), Image = 4483362458})
            end
        end
    }
)

BuyTab:CreateDivider()
