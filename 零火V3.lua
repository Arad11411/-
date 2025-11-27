local versionCheck = jianke_V4
if versionCheck == "作者_零火" then
    versionCheck = jianke__V4
end
if versionCheck == "作者QQ1985166867" then
    versionCheck = jianke___V4
end
if versionCheck == "零火QQ群347724155" then
    local virtualUser = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        virtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        virtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end

local welcomeSound = Instance.new("Sound")
welcomeSound.SoundId = "rbxassetid://9126125807"
welcomeSound.Parent = game.Workspace
welcomeSound:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "欢迎使用零火V4",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(2)

local messageSound1 = Instance.new("Sound")
messageSound1.SoundId = "rbxassetid://9126125807"
messageSound1.Parent = game.Workspace
messageSound1:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "我想对你说",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(1)

local messageSound2 = Instance.new("Sound")
messageSound2.SoundId = "rbxassetid://9126125807"
messageSound2.Parent = game.Workspace
messageSound2:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "除夕快乐~QWQ",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(1)

local updateDateSound = Instance.new("Sound")
updateDateSound.SoundId = "rbxassetid://9126125807"
updateDateSound.Parent = game.Workspace
updateDateSound:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "更新日期 2024年2月9日",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(1)

local versionSound = Instance.new("Sound")
versionSound.SoundId = "rbxassetid://9126125807"
versionSound.Parent = game.Workspace
versionSound:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "当前版本:1.1",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(1)

local loadingSound = Instance.new("Sound")
loadingSound.SoundId = "rbxassetid://9126125807"
loadingSound.Parent = game.Workspace
loadingSound:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "零火",
    Text = "正在加载零火V4...",
    Icon = "rbxassetid://14155622912",
        Duration = 3
})
wait(1)

local localPlayer = game:GetService("Players").LocalPlayer
local groupId = "17317757"
local appName = "零火"
if localPlayer:IsInGroup(17317757) then
    print("欢迎使用零火")
else
    localPlayer:Kick("被踢解决方法:在Roblox点···然后找到[群组] 搜索[零火] 加入即可验证成功")
    setclipboard(groupId)
end
print(appName)

local gamePlaceIds = {
    286090429,
    2474168535,
    863266079,
    12355337193,
    3101667897,
    3623096087,
    3398014311,
    4639625707,
    6839171747,
    6403373529,
    3956818381,
    10449761463,
    3297964905
}

if game.PlaceId == gamePlaceIds[1] then
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://9126072038"
    sound.Parent = game.Workspace
    sound:Play()
    
    jianke = Instance.new("Message")
    jianke.Parent = game.Workspace
    jianke.Text = "正在开启兵工厂脚本..."
    wait(2)
    jianke:Remove()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"))()
    local window = loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"))():Window(" 剑 客 V 4\t\t\t\t\t\t\t\t兵工厂 ", Color3.fromRGB(120, 0, 255), Enum.KeyCode.F6)
    
    local aboutTab = window:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
    aboutTab:Label("剑客作者 零火")
    aboutTab:Label("兵工厂暂无高级功能")
    aboutTab:Label("剑客群一群 347724155 ")
    aboutTab:Label("剑客群二群 881072957 ")
    aboutTab:Label("剑客群三群 157104934 ")
    aboutTab:Label("剑客群四群 454780416 ")
    aboutTab:Label("剑客群五群 1015803524 ")
    aboutTab:Label("剑客群六群 318754006 ")
    
    local characterTab = window:Tab(" ✔️ 人 物 功 能 ✔️ ")
    characterTab:Button(" ♋ 透 视 ♋ ", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/Sword-Guest/main/ESP"))()
    end)
    
    characterTab:Toggle(" ♋ 跳 跃 ♋ ", false, function(jumpEnabled)
        Jump = jumpEnabled
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)
    
    local weaponTab = window:Tab(" ✔️ 武 器 功 能 ✔️ ")
    weaponTab:Button(" ♋ 无 限 子 弹 ♋ ", function()
        while wait(0.5) do
            game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 100
            local ammoCount2 = game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2
            ammoCount2.Value = 100
        end
    end)
    
    weaponTab:Button(" ♋ 快 速 射 击 ♋ ", function()
        for _, weapon in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
            if weapon.Name == "Auto" then
                weapon.Value = true
            end
            if weapon.Name == "RecoilControl" then
                weapon.Value = 0
            end
            if weapon.Name == "MaxSpread" then
                weapon.Value = 0
            end
            if weapon.Name == "ReloadTime" then
                weapon.Value = 0
            end
            if weapon.Name == "FireRate" then
                weapon.Value = 0.05
            end
            if weapon.Name == "Crit" then
                weapon.Value = 20
            end
        end
    end)
    
elseif game.PlaceId == gamePlaceIds[2] then
    jianke = Instance.new("Message")
    jianke.Parent = game.Workspace
    jianke.Text = "正在开启一路向西脚本..."
    wait(2)
    jianke:Remove()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"))()
    local window2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"))():Window("剑 客 V4\t\t\t\t\t\t\t\t一路向西 ", Color3.fromRGB(120, 0, 255), Enum.KeyCode.F6)
    
    local aboutTab2 = window2:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
    aboutTab2:Label("剑客作者 初夏")
    aboutTab2:Label("除夕福利:限时免费高级版功能")
    aboutTab2:Label("剑客群一群 347724155 ")
    aboutTab2:Label("剑客群二群 881072957 ")
    aboutTab2:Label("剑客群三群 157104934 ")
    aboutTab2:Label("剑客群四群 454780416 ")
    aboutTab2:Label("剑客群五群 1015803524 ")
    aboutTab2:Label("剑客群六群 318754006 ")
    
    getgenv().HP = true
    getgenv().buyammo1 = true
    getgenv().buyammo2 = true
    getgenv().buyammo3 = true
    getgenv().buyammo4 = true
    getgenv().buyammo5 = true
    getgenv().buyammo6 = true
    getgenv().buyammo7 = true
    getgenv().sell = true
    getgenv().esp = true
    getgenv().Speed = 16
    
    function Walkspeed()
        game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
        end)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
    end
    
    local metatable = getrawmetatable(game)
    local namecall = metatable.__namecall
    setreadonly(metatable, false)
    metatable.__namecall = newcclosure(function(...)
        if getnamecallmethod() == "Kick" then
            return nil
        end
        return namecall(...)
    end)
    
    local localPlayer2 = game:GetService("Players").LocalPlayer
    local humanoid = localPlayer2.Character.Humanoid
    
    function esp()
        while getgenv().esp == true do
            wait(1)
            for _, animal in pairs(game:GetService("Workspace").Animals:GetDescendants()) do
                if animal.ClassName == "Part" and animal.Name == "HumanoidRootPart" and not animal.Parent:FindFirstChild("AEsp") then
                    local billboardGui = Instance.new("BillboardGui")
                    local textLabel = Instance.new("TextLabel")
                    billboardGui.Parent = animal.Parent
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Size = UDim2.new(2, 35, 2, 35)
                    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    billboardGui.Name = "AEsp"
                    textLabel.Parent = billboardGui
                    textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.Text = animal.Parent.AnimalType.Value
                    textLabel.TextColor3 = Color3.new(0.678, 0.847, 0.902)
                    textLabel.TextScaled = true
                end
            end
        end
    end
    
    function sell()
        while getgenv().sell == true do
            local args = {
                [1] = "Sell",
            }
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Inventory"):InvokeServer(unpack(args))
            wait(0.5)
        end
    end
    
    function buyammo1()
        while getgenv().buyammo1 == true do
            local args = {
                [1] = "PistolAmmo",
                [2] = true,
            }
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(args))
            wait(0.5)
        end
    end
    
    function buyammo2()
        while getgenv().buyammo2 == true do
            local args = {
                [1] = "RifleAmmo",
                [2] = true,
            }
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_167)) wait(0.5) end end
function buyammo3() while getgenv().buyammo3 == true do local r0_291 = { [1] = "Arrows",
}
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_291)) wait(0.5) end end
function buyammo4() while getgenv().buyammo4 == true do local r0_151 = { [1] = "ShotgunAmmo",
}
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_151)) wait(0.5) end end
function buyammo5() while getgenv().buyammo5 == true do local r0_348 = { [1] = "SniperAmmo",
  [2] = true,
}
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_348)) wait(0.5) end end
function buyammo6() while getgenv().buyammo6 == true do local r0_142 = { [1] = "Dynamite",
}
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_142)) wait(0.5) end end
function buyammo7() while getgenv().buyammo7 == true do local r0_238 = { [1] = "BIG Dynamite",
  [2] = true,
}
game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(r0_238)) wait(0.5) end end
function HP() 
    while getgenv().HP == true do 
        local buyArgs = {
            [1] = "Health Potion",
            [2] = true,
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("BuyItem"):InvokeServer(unpack(buyArgs)) 
    wait(0.5) 
end 
end 

local characterTab = window2:Tab(" ✔️ 人 物 功 能 ✔️ ") 
characterTab:Textbox(" ♋ 速 度 (输入以后按手机的发送键)♋ ", true, function(speedValue)
    if getgenv().ison == true then
        Nspeed = speedValue
        getgenv().Speed = speedValue
        Walkspeed()
    else
        getgenv().SprintSpeed = getgenv().Speed
        Nspeed = speedValue
        getgenv().Speed = speedValue
        Walkspeed()
    end
end) 

characterTab:Toggle(" ♋ 穿 墙 ♋ ", false, function(noclipEnabled)
    if noclipEnabled then
        Noclip = true
        Stepped = game.RunService.Stepped:Connect(function()
            if Noclip == true then
                for _, child in pairs(game.Workspace:GetChildren()) do
                    if child.Name == game.Players.LocalPlayer.Name then
                        for _, part in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                end
            else
                Stepped:Disconnect()
            end
        end)
    else
        Noclip = false
    end
end) 

characterTab:Toggle(" ♋ 跳 跃 ♋ ", false, function(jumpEnabled)
    Jump = jumpEnabled
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end) 

characterTab:Button(" ♋ 飞 行 ♋ ", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/Sword-Guest/main/fly"))()
end) 

characterTab:Button(" ♋ 防 摔 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    local metatable = getrawmetatable(game)
    local namecall = metatable.__namecall
    setreadonly(metatable, false)
    metatable.__namecall = newcclosure(function(remote, ...)
        if getnamecallmethod() == "FireServer" and remote.Name == "ChangeCharacter" then
            local args = {...}
            if args[1] and args[1] == "Damage" then
                return nil
            end
        end
        return namecall(remote, ...)
    end)
end) 

characterTab:Button(" ♋ 快 速 拾 取 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    require(game:GetService("Workspace")[game.Players.LocalPlayer.Name].ContextActions.ContextMain):New({
        RobPlayerLength = 0.1,
        FixWallLength = 0.1,
        CrackSafeLength = 0.1,
        RobSafeLength = 0.1,
        RobRegisterLength = 0.1,
        PickCellLength = 0.1,
        SkinAnimalLength = 0.1,
    }, 200, {
        "Get out of my shop! Outlaws are not welcome here!",
        "Hey, scoundrel! Get out before I call the sheriff!",
        "You're an outlaw! We don't serve your type here!"
    }, {
        "This here's a bandit camp! Get out!",
        "Get lost, cowboy!",
        "Are you an outlaw? Didn't think so! Scram!"
    })
end) 

local espTab = window2:Tab(" ✔️ 透 视 功 能 ✔️ ") 
espTab:Button(" ♋ 玩 家 透 视 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/Sword-Guest/main/ESP"))()
end) 

espTab:Toggle(" ♋ 动 物 透 视 ♋ ", false, function(espEnabled)
    getgenv().esp = espEnabled
    esp()
end) 

local weaponTab = window2:Tab(" ✔️ 武 器 功 能 ✔️ ") 
weaponTab:Button(" ♋ 无 后 座 力 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    local weaponStats = {
        FanFire = true,
        camShakeResist = 0,
        prepTime = 0,
        equipTime = 0,
        Spread = 0,
        InstantFireAnimation = true,
    }
    for _, gunStat in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
        for statName, statValue in pairs(weaponStats) do
            if gunStat[statName] then
                gunStat[statName] = statValue
            end
        end
    end
end) 

weaponTab:Button(" ♋ 秒 换 弹 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    local reloadStats = {
        FanFire = true,
        prepTime = 0,
        equipTime = 0,
        camShakeResist = 0,
        ReloadAnimationSpeed = 10,
        ReloadSpeed = 0,
        Spread = 0,
        InstantFireAnimation = true,
    }
    for _, gunStat in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
        for statName, statValue in pairs(reloadStats) do
            if gunStat[statName] then
                gunStat[statName] = statValue
            end
        end
    end
end) 

weaponTab:Button(" ♋ 子 弹 汇 聚 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    local accuracyStats = {
        FanFire = true,
        prepTime = 0,
        equipTime = 0,
        camShakeResist = 0,
        ReloadAnimationSpeed = 10,
        ReloadSpeed = 0,
        Spread = 0,
        HipFireAccuracy = 0,
        ZoomAccuracy = 0,
        InstantFireAnimation = true,
    }
    for _, gunStat in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
        for statName, statValue in pairs(accuracyStats) do
            if gunStat[statName] then
                gunStat[statName] = statValue
            end
        end
    end
end) 

weaponTab:Button(" ♋ 无 限 备 弹 (死亡后会卡inf子弹) ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    local ammoStats = {
        FanFire = true,
        prepTime = 0,
        equipTime = 0,
        MaxShots = math.huge,
        camShakeResist = 0,
        ReloadAnimationSpeed = 10,
        ReloadSpeed = 0,
        Spread = 0,
        InstantFireAnimation = true,
    }
    for _, gunStat in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
        for statName, statValue in pairs(ammoStats) do
            if gunStat[statName] then
                gunStat[statName] = statValue
            end
        end
    end
end) 

weaponTab:Button(" ♋ 范 围 伤 害 (开启后无法打猎) ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "开启成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    loadstring(game:HttpGet("https://pastebin.com/raw/rLGRxq0W"))()
end) 

local teleportTab = window2:Tab(" ✔️ 传 送 功 能 ✔️ ") 
teleportTab:Label("<---牛仔传送点--->") 
teleportTab:Button(" ♋ 滚 筒 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "Tumbleweed",
        [2] = false,
    }))
end) 

teleportTab:Button(" ♋ 岩 石 溪 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "StoneCreek",
        [2] = false,
    }))
end) 

teleportTab:Button(" ♋ 灰 色 山 脊 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "Grayridge",
        [2] = false,
    }))
end) 

teleportTab:Button(" ♋ 大 矿 洞 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "Quarry",
        [2] = false,
    }))
end) 

teleportTab:Label("<---不法之徒传送点--->") 
teleportTab:Button(" ♋ 堡 垒 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "FortCassidy",
        [2] = true,
    }))
end) 

teleportTab:Button(" ♋ 阿 瑟 堡 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "FortArthur",
        [2] = true,
    }))
end) 

teleportTab:Button(" ♋ 红 色 岩 石 营 地 ♋ ", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://4601634016"
    sound.Parent = game.Workspace
    sound:Play()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "剑客V3",
        Text = "传送成功",
        Icon = "rbxassetid://14156236272",
        Duration = 3
    })
    game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack({
        [1] = "RedRocks",
        [2] = true,
    }))
end) 

local autoTab = window2:Tab(" ✔️ 自 动 功 能 ✔️ ") 
autoTab:Toggle(" ♋ 自 动 出 售 ♋ ", false, function(sellEnabled)
    getgenv().sell = sellEnabled
    sell()
end) 

autoTab:Toggle(" ♋ 手 枪 子 弹 ♋ ", false, function(pistolEnabled)
    getgenv().buyammo1 = pistolEnabled
    buyammo1()
end) 

autoTab:Toggle(" ♋ 步 枪 子 弹 ♋ ", false, function(rifleEnabled)
    getgenv().buyammo2 = rifleEnabled
    buyammo2()
end) 

autoTab:Toggle(" ♋ 购 买 箭 矢 ♋ ", false, function(arrowEnabled)
    getgenv().buyammo3 = arrowEnabled
    buyammo3()
end) 

autoTab:Toggle(" ♋ 霰 弹 枪 弹 ♋ ", false, function(shotgunEnabled)
    getgenv().buyammo4 = shotgunEnabled
    buyammo4()
end) 

autoTab:Toggle(" ♋ 狙 击 子 弹 ♋ ", false, function(sniperEnabled)
    getgenv().buyammo5 = sniperEnabled
    buyammo5()
end) 

autoTab:Toggle(" ♋ 小 型 炸 药 ♋ ", false, function(smallExplosiveEnabled)
    getgenv().buyammo6 = smallExplosiveEnabled
    buyammo6()
end) 

autoTab:Toggle(" ♋ 大 型 炸 药 ♋ ", false, function(largeExplosiveEnabled)
    getgenv().buyammo7 = largeExplosiveEnabled
    buyammo7()
end) 

local premiumTab = window2:Tab(" ✔️ 高 级 功 能 ✔️ ") 
premiumTab:Label("开通高级功能 50元")
premiumTab:Label("购买一次后可以体验剑客脚本的任何游戏的高级功能")
premiumTab:Label("一路向西高级功能:全图击杀")
premiumTab:Label("除夕高级功能限时免费")
premiumTab:Button(" ♋ 全 图 击 杀 (手持近战武器)♋ ", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/Sword-Guest/main/killQWQ"))()
end) 

elseif game.PlaceId ~= gamePlaceIds[3] and game.PlaceId ~= gamePlaceIds[4] then
    if game.PlaceId == gamePlaceIds[5] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"))()
        local speedLegendsWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"))()
        local windowColor = Color3.fromRGB(120, 0, 255)
        local speedLegendsUI = speedLegendsWindow:Window("剑 客 V 4\t\t\t\t\t\t\t\t极速传奇 ", windowColor, Enum.KeyCode.F6)
        
        jianke = Instance.new("Message")
        jianke.Parent = game.Workspace
        jianke.Text = "正在开启极速传奇脚本..."
        wait(2)
        jianke:Remove()
        
        getgenv().cs = true
        getgenv().xc = true
        getgenv().yjc = true
        getgenv().sbsA = true
        getgenv().sbsB = true
        getgenv().sbsC = true
        getgenv().kcA = true
        getgenv().kcB = true
        getgenv().kcC = true
        getgenv().autocs = true
        getgenv().sq = true
        getgenv().egg1 = true
        getgenv().egg2 = true
        getgenv().egg3 = true
        getgenv().egg4 = true
        getgenv().egg5 = true
        getgenv().egg6 = true
        getgenv().egg7 = true
        getgenv().egg8 = true
        getgenv().egg9 = true
        getgenv().egg10 = true
        function collectCityOrbs()
            while getgenv().cs == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
                end
                wait()
            end
        end
        
        function collectSnowCityOrbs()
            while getgenv().xc == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
                end
                wait()
            end
        end
        
        function collectMagmaCityOrbs()
            while getgenv().yjc == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
                end
                wait()
            end
        end
        
        function collectCityGems()
            while getgenv().sbsA == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
                end
                wait()
            end
        end
        
        function collectSnowCityGems()
            while getgenv().sbsB == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
                end
                wait()
            end
        end
        
        function collectMagmaCityGems()
            while getgenv().sbsC == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
                end
                wait()
            end
        end
        
        function collectCityYellowOrbs()
            while getgenv().kcA == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
                end
                wait()
            end
        end
        
        function collectSnowCityYellowOrbs()
            while getgenv().kcB == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
                end
                wait()
            end
        end
        
        function collectMagmaCityYellowOrbs()
            while getgenv().kcC == true do
                local replicatedStorage = game:GetService("ReplicatedStorage")
                for i = 1, 10 do
                    replicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
                end
                wait()
            end
        end
        
        function autoRebirth()
            while getgenv().autocs == true do
                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                wait()
            end
        end
        
        function autoHoops()
            while getgenv().sq == true do
                for _, hoop in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    firetouchinterest(hoop, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
                    wait()
                    firetouchinterest(hoop, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        end
        
        function openRedCrystal()
            while getgenv().egg1 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
            end
        end
        
        function openBlueOrb()
            while getgenv().egg2 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Orb")
            end
        end
        
        function openYellowCrystal()
            while getgenv().egg3 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
            end
        end
        
        function openLightningCrystal()
            while getgenv().egg4 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
            end
        end
        
        function openSnowCrystal()
            while getgenv().egg5 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")
            end
        end
        
        function openLavaCrystal()
            while getgenv().egg6 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lava Crystal")
            end
        end
        
        function openLightningCrystal2()
            while getgenv().egg7 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
            end
        end
        
        function openDesertCrystal()
            while getgenv().egg8 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")
            end
        end
        
        function openElectroCrystal()
            while getgenv().egg9 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Crystal")
            end
        end
        
        function openElectroLegendsCrystal()
            while getgenv().egg10 == true do
                wait(0.1)
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
            end
        end
        
        local aboutTab = speedLegendsUI:Tab(" ✔️ 关 于 剑 客 ✔️ ")
        aboutTab:Label("剑客作者 初夏")
        aboutTab:Label("傻逼名单 小天 (蹭剑客热度自创什么垃圾剑客)")
        aboutTab:Label("剑客群一群 347724155 ")
        aboutTab:Label("剑客群二群 881072957 ")
        aboutTab:Label("剑客群三群 157104934 ")
        aboutTab:Label("剑客群四群 454780416 ")
        aboutTab:Label("剑客群五群 1015803524 ")
        aboutTab:Label("剑客群六群 318754006 ")
        
        local speedTab = speedLegendsUI:Tab(" ✔️ 速 度 功 能 ✔️ ")
        speedTab:Toggle(" ♋ 城 市 ♋ ", false, function(cityEnabled)
            getgenv().cs = cityEnabled
            collectCityOrbs()
        end) 
        
        speedTab:Toggle(" ♋ 雪 城 ♋ ", false, function(snowCityEnabled)
            getgenv().xc = snowCityEnabled
            collectSnowCityOrbs()
        end) 
        
        speedTab:Toggle(" ♋ 火 山 ♋ ", false, function(magmaCityEnabled)
            getgenv().yjc = magmaCityEnabled
            collectMagmaCityOrbs()
        end) 
        
        local gemTab = speedLegendsUI:Tab(" ✔️ 宝 石 功 能 ✔️ ")
        gemTab:Toggle(" ♋ 城 市 ♋ ", false, function(cityGemEnabled)
            getgenv().sbsA = cityGemEnabled
            collectCityGems()
        end) 
        
        gemTab:Toggle(" ♋ 雪 城 ♋ ", false, function(snowCityGemEnabled)
            getgenv().sbsB = snowCityGemEnabled
            collectSnowCityGems()
        end) 
        
        gemTab:Toggle(" ♋ 火 山 ♋ ", false, function(magmaCityGemEnabled)
            getgenv().sbsC = magmaCityGemEnabled
            collectMagmaCityGems()
        end) 
        
        local petTab = speedLegendsUI:Tab(" ✔️ 卡 宠 功 能 ✔️ ")
        petTab:Toggle(" ♋ 城 市 ♋ ", false, function(cityPetEnabled)
            getgenv().kcA = cityPetEnabled
            collectCityYellowOrbs()
        end) 
        
        petTab:Toggle(" ♋ 雪 城 ♋ ", false, function(snowCityPetEnabled)
            getgenv().kcB = snowCityPetEnabled
            collectSnowCityYellowOrbs()
        end) 
        
        petTab:Toggle(" ♋ 火 山 ♋ ", false, function(magmaCityPetEnabled)
            getgenv().kcC = magmaCityPetEnabled
            collectMagmaCityYellowOrbs()
        end) 
        
        local eggTab = speedLegendsUI:Tab(" ✔️ 抽 蛋 功 能 ✔️ ")
        eggTab:Label(" 城 市 ")
        eggTab:Toggle(" ♋ 红 色 水 晶 [300宝石] ♋ ", false, function(redCrystalEnabled)
            getgenv().egg1 = redCrystalEnabled
            openRedCrystal()
        end) 
        
        eggTab:Toggle(" ♋ 蓝 色 水 晶 [600宝石] ♋ ", false, function(blueOrbEnabled)
            getgenv().egg2 = blueOrbEnabled
            openBlueOrb()
        end) 
        
        eggTab:Toggle(" ♋ 黄 色 水 晶 [1.2K宝石] ♋ ", false, function(yellowCrystalEnabled)
            getgenv().egg3 = yellowCrystalEnabled
            openYellowCrystal()
        end) 
        
        eggTab:Toggle(" ♋ 绿 色 闪 电 水 晶 [2.5K宝石] ♋ ", false, function(lightningCrystalEnabled)
            getgenv().egg4 = lightningCrystalEnabled
            openLightningCrystal()
        end) 
        
        eggTab:Label(" 雪 城 ")
        eggTab:Toggle(" ♋ 雪 花 水 晶 [4K宝石] ♋ ", false, function(snowCrystalEnabled)
            getgenv().egg5 = snowCrystalEnabled
            openSnowCrystal()
        end) 
        
        eggTab:Label(" 火 山 ")
        eggTab:Toggle(" ♋ 熔 岩 水 晶 [8K宝石] ♋ ", false, function(lavaCrystalEnabled)
            getgenv().egg6 = lavaCrystalEnabled
            openLavaCrystal()
        end) 
        
        eggTab:Toggle(" ♋ 闪 电 水 晶 [8K宝石] ♋ ", false, function(lightningCrystal2Enabled)
            getgenv().egg7 = lightningCrystal2Enabled
            openLightningCrystal2()
        end) 
        
        eggTab:Label(" 沙 漠 ")
        eggTab:Toggle(" ♋ 沙 漠 水 晶 [40K宝石] ♋ ", false, function(desertCrystalEnabled)
            getgenv().egg8 = desertCrystalEnabled
            openDesertCrystal()
        end) 
        
        eggTab:Toggle(" ♋ 电 光 水 晶 [50K宝石] ♋ ", false, function(electroCrystalEnabled)
            getgenv().egg9 = electroCrystalEnabled
            openElectroCrystal()
        end) 
        
        eggTab:Label(" 公 路 ")
        eggTab:Toggle(" ♋ 电 光 传 奇 水 晶 [100K宝石] ♋ ", false, function(electroLegendsEnabled)
            getgenv().egg10 = electroLegendsEnabled
            openElectroLegendsCrystal()
        end) 
        
        local teleportTab2 = speedLegendsUI:Tab(" ✔️ 传 送 功 能 ✔️ ")
        teleportTab2:Button(" ♋ 城 市 ♋ ", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2002.0133056640625, 1.2624330520629883, 985.2265625)
        end) 
        
        teleportTab2:Button(" ♋ 雪 城 ♋ ", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9675.25, 59.63568115234375, 3783.50146484375)
        end) 
        
        teleportTab2:Button(" ♋ 火 山 ♋ ", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11052.4189453125, 217.59571838378906, 4898.76416015625)
        end) 
        
        teleportTab2:Button(" ♋ 公 路 ♋ ", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13095.255859375, 217.59567260742188, 5905.240234375)
        end) 
        
        local hoopTab = speedLegendsUI:Tab(" ✔️ 刷 圈 功 能 ✔️ ")
        hoopTab:Toggle(" ♋ 刷 圈 ♋ ", false, function(hoopEnabled)
            getgenv().sq = hoopEnabled
            autoHoops()
        end) 
        
        local rebirthTab = speedLegendsUI:Tab(" ✔️ 重 生 功 能 ✔️ ")
        rebirthTab:Toggle(" ♋ 重 生 ♋ ", false, function(rebirthEnabled)
            getgenv().autocs = rebirthEnabled
            autoRebirth()
        end) 
        
    elseif game.PlaceId == gamePlaceIds[6] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"))()
        local strengthLegendsWindow = loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"))()
        local windowColor2 = Color3.fromRGB(120, 0, 255)
        local strengthLegendsUI = strengthLegendsWindow:Window("剑 客 V 4\t\t\t\t\t\t\t\t力量传奇 ", windowColor2, Enum.KeyCode.F6)
        
        local sound2 = Instance.new("Sound")
        sound2.SoundId = "rbxassetid://9126072038"
        sound2.Parent = game.Workspace
        sound2:Play()
        
        jianke = Instance.new("Message")
        jianke.Parent = game.Workspace
        jianke.Text = "正在开启力量传奇脚本..."
        wait(2)
        jianke:Remove()
        
        local localPlayer3 = game:GetService("Players").LocalPlayer
        getgenv().Speed = 16
        
        function Walkspeed()
            game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
            end)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
        end
        
        getgenv().kill1 = true
        getgenv().kill2 = true
        getgenv().autolift = true
        getgenv().xd1 = true
        getgenv().bs1 = true
        getgenv().bs2 = true
        getgenv().bs3 = true
        getgenv().sh1 = true
        getgenv().sh2 = true
        getgenv().sh3 = true
        getgenv().yh1 = true
        getgenv().cq1 = true
        getgenv().cq2 = true
        getgenv().cq3 = true
        getgenv().cq4 = true
        getgenv().cq5 = true
        getgenv().jrzw1 = true
        getgenv().jrzw2 = true
        getgenv().jrzw3 = true
        getgenv().jrzw4 = true
        getgenv().st1 = true
        getgenv().st2 = true
        getgenv().st3 = true
        getgenv().st4 = true
        getgenv().st5 = true
        getgenv().st6 = true
        getgenv().st7 = true
        getgenv().st8 = true
        getgenv().st9 = true
        getgenv().re280 = false
        getgenv().re580 = false
        getgenv().re980 = false
        getgenv().re1480 = false
        getgenv().re2080 = false
        getgenv().re2780 = false
        getgenv().re3580 = false
        getgenv().re4480 = false
        getgenv().re5480 = false
        getgenv().re6580 = false
        getgenv().re7780 = false
        getgenv().re9080 = false
        getgenv().re13580 = false
        getgenv().re15280 = false
        getgenv().re17080 = false
        getgenv().re18980 = false
        getgenv().pet1 = true
        getgenv().pet2 = true
        getgenv().pet3 = true
        getgenv().pet4 = true
        getgenv().pet5 = true
        getgenv().pet6 = true
        getgenv().pet7 = true
        
        function autolift()
            while getgenv().autolift == true do
                local args = {
                    [1] = "rep",
                }
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(unpack(args))
                wait(0.01)
            end
        end
        
        function useMachine1()
            while getgenv().xd1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(67.627625, 17.67689133, 2000.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        function useMachine2()
            while getgenv().bs1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-3007.627625, 43.67689133, -338.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine3()
            while getgenv().bs2 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-2723.627625, 7.67689133, -595.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine4()
            while getgenv().bs3 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-2916.627625, 7.67689133, -206.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        function useMachine5()
            while getgenv().sh1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(2370.627625, 43.67689133, 1243.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine6()
            while getgenv().sh2 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(2670.627625, 7.67689133, 1205.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine7()
            while getgenv().sh3 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(2487.627625, 7.67689133, 863.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        function useMachine8()
            while getgenv().yh1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-7173.627625, 49.67689133, -1105.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine9()
            while getgenv().cq1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(4197.627625, 992.67689133, -3903.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine10()
            while getgenv().cq2 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(4110.627625, 1025.67689133, -3802.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine11()
            while getgenv().cq3 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(4438.627625, 992.67689133, -4057.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine12()
            while getgenv().cq4 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(4525.627625, 992.67689133, -4003.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine13()
            while getgenv().cq5 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(4303.627625, 992.67689133, -4124.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        function useMachine14()
            while getgenv().jrzw1 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-8775.627625, 17.67689133, -5670.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine15()
            while getgenv().jrzw2 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-8940.627625, 17.67689133, -5693.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine16()
            while getgenv().jrzw3 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-8759.627625, 17.67689133, -6043.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        
        function useMachine17()
            while getgenv().jrzw4 == true do
                local machineInUse = game.Players.LocalPlayer.machineInUse.Value
                if machineInUse == nil then
                    machineInUse = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                    machineInUse.CFrame = CFrame.new(-8590.627625, 50.67689133, -6045.3039856, -0.963445187, -0.0000000778685845, -0.267905563, -0.0000000792865222, 1, -0.00000000552570167, 0.267905563, 0.000000015917589, -0.963445187)
                    machineInUse = game:GetService("VirtualInputManager")
                    machineInUse:SendKeyEvent(true, "E", false, game)
                end
                machineInUse = "rep"
                game:GetService("Players").LocalPlayer.muscleEvent:FireServer(machineInUse, game:GetService("Workspace").machinesFolder["Squat Rack"].interactSeat)
                wait(0.1)
            end
        end
        function punchLocation1()
            while getgenv().st1 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -0.0000000853662385, -0.973095655, -0.0000000468743764, 1, -0.0000000766279342, 0.973095655, 0.0000000279580536, -0.23040159)
                wait()
            end
        end
        
        function punchLocation2()
            while getgenv().st2 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -0.00000000181774684, -0.384083599, 0.00000000345247031, 1, 0.00000000356670582, 0.384083599, -0.00000000461917082, 0.923298299)
                wait()
            end
        end
        
        function punchLocation3()
        end
        
        function punchLocation4()
            while getgenv().st4 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -0.0000000867358096, 0.591812849, -0.000000105715522, 1, 0.00000000257029176, -0.591812849, -0.0000000604919563, -0.806075394)
                wait()
            end
        end
        function punchLocation5()
            while getgenv().st5 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -0.0000000411600105, -0.382550538, -0.0000000338838042, 1, -0.0000000257576183, 0.382550538, -0.0000000108360858, -0.923934579)
                wait()
            end
        end
        
        function punchLocation6()
            while getgenv().st6 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -0.00000000916796949, -0.834304988, -0.0000000561318245, 1, 0.0000000261027839, 0.834304988, 0.0000000612216127, -0.551303148)
                wait()
            end
        end
        
        function punchLocation7()
            while getgenv().st7 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -0.0000000158175091, -0.514244199, -0.0000000122581563, 1, -0.0000000512025977, 0.514244199, 0.0000000502172774, 0.857643783)
                wait()
            end
        end
        
        function punchLocation8()
            while getgenv().st8 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 0.0000125481356, 0.44982639, 0.00000502490684, 1, -0.0000179187136, -0.44982639, -0.0000137431543, -0.893115997)
                wait()
            end
        end
        
        function punchLocation9()
            while getgenv().st9 == true do
                local _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                _ = pairs
                for _, tool in _(game.Players.LocalPlayer.Character:GetChildren()) do
                    if tool:IsA("Tool") and tool.Name == "Punch" then
                        tool:Activate()
                    end
                end
                _ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                _.CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 0.000000066065212, 0.594738603, -0.00000000893136143, 1, -0.000000123155459, -0.594738603, -0.000000104318865, -0.803919137)
                wait()
            end
        end
        function autoKill1()
            local localPlayer = game:GetService("Players").LocalPlayer
            local useLeftHand = false
            
            while getgenv().kill1 == true do
                game:GetService("Players").LocalPlayer.Idled:Connect(function()
                    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    wait(1)
                    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                end)
                
                local _ = pairs
                for _, player in _(game:GetService("Players"):GetPlayers()) do
                    game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
                    
                    if localPlayer.Character then
                        if localPlayer.Character:FindFirstChild("Humanoid") then
                            for _, tool in pairs(localPlayer.Backpack:GetChildren()) do
                                if tool:IsA("Tool") and tool.Name == "Punch" then
                                    localPlayer.Character.Humanoid:EquipTool(tool)
                                end
                            end
                        end
                        
                        if localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2595, -2, 5722)
                        end
                    end
                    
                    if useLeftHand then
                        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    else
                        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                    end
                    useLeftHand = not useLeftHand
                    
                    if player ~= localPlayer and localPlayer.Character and player.Character then
                        local localCharacter = localPlayer.Character
                        local targetCharacter = player.Character
                        
                        for _, part in pairs(targetCharacter:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Transparency = 1
                            end
                        end
                        
                        if localCharacter:FindFirstChild("HumanoidRootPart") and targetCharacter:FindFirstChild("HumanoidRootPart") then
                            targetCharacter.HumanoidRootPart.CFrame = localCharacter.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
                        end
                    end
                end
            end
        end
        function autoKill2()
            local localPlayer = game:GetService("Players").LocalPlayer
            local useLeftHand = false
            
            while getgenv().kill2 == true do
                wait(0.1)
                
                local _ = pairs
                for _, player in _(game:GetService("Players"):GetPlayers()) do
                    game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize", 1)
                    
                    if localPlayer.Character and localPlayer.Character:FindFirstChild("Humanoid") then
                        for _, tool in pairs(localPlayer.Backpack:GetChildren()) do
                            if tool:IsA("Tool") and tool.Name == "Punch" then
                                localPlayer.Character.Humanoid:EquipTool(tool)
                            end
                        end
                    end
                    
                    if useLeftHand then
                        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
                    else
                        game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
                    end
                    useLeftHand = not useLeftHand
                    
                    if player ~= localPlayer and localPlayer.Character and player.Character then
                        local localCharacter = localPlayer.Character
                        local targetCharacter = player.Character
                        
                        if localCharacter:FindFirstChild("HumanoidRootPart") and targetCharacter:FindFirstChild("HumanoidRootPart") then
                            localCharacter.HumanoidRootPart.CFrame = targetCharacter.HumanoidRootPart.CFrame
                        end
                    end
                end
            end
        end
        function autoRebirth280()
            while getgenv().re280 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 280 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth580()
            while getgenv().re580 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 580 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth980()
            while getgenv().re980 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 980 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth1480()
            while getgenv().re1480 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 1480 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth2080()
            while getgenv().re2080 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 2080 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth2780()
            while getgenv().re2780 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 2780 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth3580()
            while getgenv().re3580 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 3580 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth4480()
            while getgenv().re4480 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 4480 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth5480()
            while getgenv().re5480 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 5480 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth6580()
            while getgenv().re6580 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 6580 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth7780()
            while getgenv().re7780 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 7780 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth9080()
            while getgenv().re9080 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 9080 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth13580()
            while getgenv().re13580 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 13580 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth15280()
            while getgenv().re15280 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 15280 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth17080()
            while getgenv().re17080 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 17080 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        
        function autoRebirth18980()
            while getgenv().re18980 == true do
                wait(0.5)
                local rebirths = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                if rebirths ~= 18980 then
                    game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
                end
            end
        end
        function openBlueCrystal()
            while getgenv().pet1 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
                wait()
            end
        end
        
        function openGreenCrystal()
            while getgenv().pet2 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Green Crystal")
                wait()
            end
        end
        
        function openFrostCrystal()
            while getgenv().pet3 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Frost Crystal")
                wait()
            end
        end
        
        function openMythicalCrystal()
            while getgenv().pet4 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Mythical Crystal")
                wait()
            end
        end
        
        function openInfernoCrystal()
            while getgenv().pet5 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
                wait()
            end
        end
        
        function openLegendsCrystal()
            while getgenv().pet6 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Legends Crystal")
                wait()
            end
        end
        
        function openGalaxyOracleCrystal()
            while getgenv().pet7 == true do
                game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Galaxy Oracle Crystal")
                wait()
            end
        end
        
        local aboutTab = r13_0:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
        aboutTab:Label("剑客作者 初夏")
        aboutTab:Label("力量传奇暂无高级功能")
        aboutTab:Label("剑客群一群 347724155 ")
        aboutTab:Label("剑客群二群 881072957 ")
        aboutTab:Label("剑客群三群 157104934 ")
        aboutTab:Label("剑客群四群 454780416 ")
        aboutTab:Label("剑客群五群 1015803524 ")
        aboutTab:Label("剑客群六群 318754006 ")
        
        local characterTab = r13_0:Tab(" ✔️ 人 物 功 能 ✔️ ")
        characterTab:Button(" ♋ 挥 拳 无 冷 却 ♋ ",
            function()
                for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if tool.ClassName == "Tool" and (tool.Name == "Handstands" or tool.Name == "Situps" or tool.Name == "Pushups" or tool.Name == "Weight") then
                        tool:FindFirstChildOfClass("NumberValue").Value = 0
                        repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(tool)
                    end
                end
                game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
            end
        )
        characterTab:Toggle(" ♋ 自 动 锻 炼 ♋ ", false,
            function(enabled)
                getgenv().autolift = enabled
                autolift()
            end
        )
        characterTab:Button(" ♋ 飞 天 ♋ ",
            function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/CX5200/Sword-Guest/main/fly"))()
            end
        )
        characterTab:Toggle(" ♋ 穿 墙 ♋ ", false,
            function(enabled)
                if enabled then
                    Noclip = true
                    Stepped = game.RunService.Stepped:Connect(function()
                        if Noclip == true then
                            for _, model in pairs(game.Workspace:GetChildren()) do
                                if model.Name == game.Players.LocalPlayer.Name then
                                    for _, part in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                        if part:IsA("BasePart") then
                                            part.CanCollide = false
                                        end
                                    end
                                end
                            end
                        else
                            Stepped:Disconnect()
                        end
                    end)
                else
                    Noclip = false
                end
            end
        )
        characterTab:Textbox(" ♋ 速 度 ♋ ", true,
            function(speedValue)
                if getgenv().ison == true then
                    Nspeed = speedValue
                    getgenv().Speed = speedValue
                    Walkspeed()
                else
                    getgenv().SprintSpeed = getgenv().Speed
                    Nspeed = speedValue
                    getgenv().Speed = speedValue
                    Walkspeed()
                end
            end
        )
        characterTab:Toggle(" ♋ 跳 跃 ♋ ", false,
            function(enabled)
                Jump = enabled
                game.UserInputService.JumpRequest:Connect(function()
                    if Jump then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    end
                end)
            end
        )
        
        local gymTab = r13_0:Tab(" ✔️ 健 身 功 能 ✔️ ")
        gymTab:Label("小岛")
        gymTab:Toggle(" ♋ 举 重 ♋ ", false,
            function(enabled)
                getgenv().xd1 = enabled
                useMachine1()
            end
        )
        gymTab:Label("冰霜健身房")
        gymTab:Toggle(" ♋ 长 凳 ♋ ", false,
            function(enabled)
                getgenv().bs1 = enabled
                useMachine2()
            end
        )
        gymTab:Toggle(" ♋ 深 蹲 ♋ ", false,
            function(enabled)
                getgenv().bs2 = enabled
                useMachine3()
            end
        )
        gymTab:Toggle(" ♋ 推 举 ♋ ", false,
            function(enabled)
                getgenv().bs3 = enabled
                useMachine4()
            end
        )
        gymTab:Label("神话健身房")
        gymTab:Toggle(" ♋ 凳 子 ♋ ", false,
            function(enabled)
                getgenv().sh1 = enabled
                useMachine5()
            end
        )
        gymTab:Toggle(" ♋ 石 头 ♋ ", false,
            function(enabled)
                getgenv().sh2 = enabled
                useMachine6()
            end
        )
        gymTab:Toggle(" ♋ 引 体 向 上 ♋ ", false,
            function(enabled)
                getgenv().sh3 = enabled
                useMachine7()
            end
        )
        gymTab:Label("永恒健身房")
        gymTab:Toggle(" ♋ 凳 子 ♋ ", false,
            function(enabled)
                getgenv().yh1 = enabled
                useMachine8()
            end
        )
        gymTab:Label("传奇健身房")
        gymTab:Toggle(" ♋ 石 头 ♋ ", false,
            function(enabled)
                getgenv().cq1 = enabled
                useMachine9()
            end
        )
        gymTab:Toggle(" ♋ 凳 子 ♋ ", false,
            function(enabled)
                getgenv().cq2 = enabled
                useMachine10()
            end
        )
        gymTab:Toggle(" ♋ 深 蹲 ♋ ", false,
            function(enabled)
                getgenv().cq3 = enabled
                useMachine11()
            end
        )
        gymTab:Toggle(" ♋ 推 举 ♋ ", false,
            function(enabled)
                getgenv().cq4 = enabled
                useMachine12()
            end
        )
        gymTab:Toggle(" ♋ 引 体 向 上 ♋ ", false,
            function(enabled)
                getgenv().cq5 = enabled
                useMachine13()
            end
        )
        gymTab:Label("力量健身房")
        gymTab:Toggle(" ♋ 举 重 ♋ ", false,
            function(enabled)
                getgenv().jrzw1 = enabled
                useMachine14()
            end
        )
        gymTab:Toggle(" ♋ 石 头 ♋ ", false,
            function(enabled)
                getgenv().jrzw2 = enabled
                useMachine15()
            end
        )
        gymTab:Toggle(" ♋ 深 蹲 ♋ ", false,
            function(enabled)
                getgenv().jrzw3 = enabled
                useMachine16()
            end
        )
        gymTab:Toggle(" ♋ 长 凳 ♋ ", false,
            function(enabled)
                getgenv().jrzw4 = enabled
                useMachine17()
            end
        )
        
        local stoneTab = r13_0:Tab(" ✔️ 石 头 功 能 ✔️ ")
        stoneTab:Label("小号岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (0) ♋ ", false,
            function(enabled)
                getgenv().st1 = enabled
                punchLocation1()
            end
        )
        stoneTab:Label("拳击岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (10) ♋ ", false,
            function(enabled)
                getgenv().st2 = enabled
                punchLocation2()
            end
        )
        stoneTab:Label("大号岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (100) ♋ ", false,
            function(enabled)
                getgenv().st3 = enabled
                punchLocation3()
            end
        )
        stoneTab:Label("金色岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (5K) ♋ ", false,
            function(enabled)
                getgenv().st4 = enabled
                punchLocation4()
            end
        )
        stoneTab:Label("冰冻岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (150K) ♋ ", false,
            function(enabled)
                getgenv().st5 = enabled
                punchLocation5()
            end
        )
        stoneTab:Label("神话岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (400K) ♋ ", false,
            function(enabled)
                getgenv().st6 = enabled
                punchLocation6()
            end
        )
        stoneTab:Label("地狱火岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (750K) ♋ ", false,
            function(enabled)
                getgenv().st7 = enabled
                punchLocation7()
            end
        )
        stoneTab:Label("传说岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (1M) ♋ ", false,
            function(enabled)
                getgenv().st8 = enabled
                punchLocation8()
            end
        )
        stoneTab:Label("肌肉之王岩石")
        stoneTab:Toggle(" ♋ 自 动 石 头 (5M) ♋ ", false,
            function(enabled)
                getgenv().st9 = enabled
                punchLocation9()
            end
        )
        
        local teleportTab = r13_0:Tab(" ✔️ 传 送 功 能 ✔️ ")
        teleportTab:Button(" ♋ 出 生 点 ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.27344, 85.221802, 244.88794)
            end
        )
        teleportTab:Button(" ♋ 小 岛 (0~1000力量) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41.27344, 56.221802, 1994.88794)
            end
        )
        teleportTab:Button(" ♋ 传 奇 沙 滩 (2500力量) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.27344, 46.221802, -741.88794)
            end
        )
        teleportTab:Button(" ♋ 冰 霜 健 身 房 (1重生) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2844.27344, 85.221802, -409.88794)
            end
        )
        teleportTab:Button(" ♋ 神 话 健 身 房 (5重生) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2482.27344, 85.221802, 1075.88794)
            end
        )
        teleportTab:Button(" ♋ 永 恒 健 身 房 (15重生) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6991.27344, 85.221802, -1286.88794)
            end
        )
        teleportTab:Button(" ♋ 传 奇 健 身 房 (30重生) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4345.27344, 1069.221802, -3852.88794)
            end
        )
        teleportTab:Button(" ♋ 力 量 之 王 健 身 房 (5重生) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8751.27344, 120.221802, -5864.88794)
            end
        )
        teleportTab:Button(" ♋ ? ? ? (???) ♋ ",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1961.27344, -2.221802, 6148.88794)
            end
        )
        
        local killTab = r13_0:Tab(" ✔️ 击 杀 功 能 ✔️ ")
        killTab:Toggle(" ♋ 击 杀 模 式 Ⅰ ♋ ", false,
            function(enabled)
                getgenv().kill1 = enabled
                autoKill1()
            end
        )
        killTab:Toggle(" ♋ 击 杀 模 式 Ⅱ ♋ ", false,
            function(enabled)
                getgenv().kill2 = enabled
                autoKill2()
            end
        )
        
        local crystalTab = r13_0:Tab(" ✔️ 抽 蛋 功 能 ✔️ ")
        crystalTab:Toggle(" ♋ 蓝 色 水 晶 (1K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet1 = enabled
                openBlueCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 绿 色 水 晶 (3K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet2 = enabled
                openGreenCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 冰 霜 水 晶 (5K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet3 = enabled
                openFrostCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 神 话 水 晶 (8K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet4 = enabled
                openMythicalCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 地 狱 火 水 晶 (15K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet5 = enabled
                openInfernoCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 传 奇 水 晶 (30K宝石) ♋ ", false,
            function(enabled)
                getgenv().pet6 = enabled
                openLegendsCrystal()
            end
        )
        crystalTab:Toggle(" ♋ 银 河 甲 骨 文 水 晶 (1.5M宝石) ♋ ", false,
            function(enabled)
                getgenv().pet7 = enabled
                openGalaxyOracleCrystal()
            end
        )
        
        local rebirthTab = r13_0:Tab(" ✔️ 重 生 功 能 ✔️ ")
        rebirthTab:Toggle(" ♋ 重生至280 ♋ ", false,
            function(enabled)
                getgenv().re280 = enabled
                autoRebirth280()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至580 ♋ ", false,
            function(enabled)
                getgenv().re580 = enabled
                autoRebirth580()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至980 ♋ ", false,
            function(enabled)
                getgenv().re980 = enabled
                autoRebirth980()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至1480 ♋ ", false,
            function(enabled)
                getgenv().re1480 = enabled
                autoRebirth1480()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至2080 ♋ ", false,
            function(enabled)
                getgenv().re2080 = enabled
                autoRebirth2080()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至2780 ♋ ", false,
            function(enabled)
                getgenv().re2780 = enabled
                autoRebirth2780()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至3580 ♋ ", false,
            function(enabled)
                getgenv().re3580 = enabled
                autoRebirth3580()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至4480 ♋ ", false,
            function(enabled)
                getgenv().re4480 = enabled
                autoRebirth4480()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至5480 ♋ ", false,
            function(enabled)
                getgenv().re5480 = enabled
                autoRebirth5480()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至6580 ♋ ", false,
            function(enabled)
                getgenv().re6580 = enabled
                autoRebirth6580()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至7780 ♋ ", false,
            function(enabled)
                getgenv().re7780 = enabled
                autoRebirth7780()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至9080 ♋ ", false,
            function(enabled)
                getgenv().re9080 = enabled
                autoRebirth9080()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至13580 ♋ ", false,
            function(enabled)
                getgenv().re13580 = enabled
                autoRebirth13580()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至15280 ♋ ", false,
            function(enabled)
                getgenv().re15280 = enabled
                autoRebirth15280()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至17080 ♋ ", false,
            function(enabled)
                getgenv().re17080 = enabled
                autoRebirth17080()
            end
        )
        rebirthTab:Toggle(" ♋ 重生至18980 ♋ ", false,
            function(enabled)
                getgenv().re18980 = enabled
                autoRebirth18980()
            end
        )
    elseif game.PlaceId ~= gamePlaceIds[7] then
        local generalConnections = nil
        local workspaceService = nil
        local localPlayer = nil
        local teamName = nil
        
        if game.PlaceId == gamePlaceIds[8] then
            local uiLibUrl = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"
            loadstring(game:HttpGet(uiLibUrl))()
            local uiLibUrl2 = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"
            local uiLib = loadstring(game:HttpGet(uiLibUrl2))()
            local windowTitle = " 剑 客 V 4\t\t\t\t\t\t\t\t战争大亨 "
            local windowColor = Color3.fromRGB(102, 255, 153)
            local window = uiLib:Window(windowTitle, windowColor, Enum.KeyCode.F6)
            
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://9126072038"
            sound.Parent = game.Workspace
            sound:Play()
            
            local message = Instance.new("Message")
            jianke = message
            message.Parent = game.Workspace
            message.Text = "正在开启战争大亨脚本..."
            wait(2)
            message:Remove()
            
            local runService = game:GetService("RunService")
            local userInputService = game:GetService("UserInputService")
            local tweenService = game:GetService("TweenService")
            local player = game:GetService("Players").LocalPlayer
            local mouse = player:GetMouse()
            local character = player.Character
            local humanoid = character:WaitForChild("Humanoid")
            local camera = workspace.CurrentCamera
            
            if _G.GeneralConnections then
                generalConnections = "GeneralConnections"
                for _, connection in pairs(_G[generalConnections]) do
                    connection:Disconnect()
                end
                generalConnections = {}
                _G.GeneralConnections = generalConnections
            else
                generalConnections = {}
                _G.GeneralConnections = generalConnections
            end
            
            function addConnection(signal, callback)
                table.insert(_G.GeneralConnections, signal:Connect(callback))
            end
            
            local function getMass(model)
                local totalMass = 0
                for _, descendant in pairs(model:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        totalMass = totalMass + descendant:GetMass()
                    end
                end
                return totalMass
            end
            
            _G.GeneralGuiSettings = {}
            generalConnections = _G.GeneralGuiSettings
            generalConnections.WalkSpeed = 16
            generalConnections.JumpPower = 50
            generalConnections.Noclip = false
            generalConnections.Fly = false
            generalConnections.FlySpeed = 10
            generalConnections.FlyBV = nil
            generalConnections.FlyBG = nil
            generalConnections.FlyAG = nil
            generalConnections.Carpet = false
            generalConnections.CarpetVisible = false
            generalConnections.CarpetObject = nil
            generalConnections.PlayerTeleport = nil
            
            function addGeneralConnection(signal, callback)
                table.insert(_G.GeneralConnections, signal:Connect(callback))
            end
            
            local replicatedStorage = game:GetService("ReplicatedStorage")
            workspaceService = game:GetService("Workspace")
            localPlayer = game:GetService("Players").LocalPlayer
            
            local aboutTab = window:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
            aboutTab:Label("剑客作者 初夏")
            aboutTab:Label("战争大亨暂无高级功能")
            aboutTab:Label("剑客群一群 347724155 ")
            aboutTab:Label("剑客群二群 881072957 ")
            aboutTab:Label("剑客群三群 157104934 ")
            aboutTab:Label("剑客群四群 454780416 ")
            aboutTab:Label("剑客群五群 1015803524 ")
            aboutTab:Label("剑客群六群 318754006 ")
            
            local basicTab = window:Tab(" ✔️ 基 本 功 能 ✔️ ")
            basicTab:Label("范围默认值2")
            basicTab:Textbox(" ♋ 范 围 ♋ ", true,
                function(rangeValue)
                    _G.HeadSize = rangeValue
                    _G.Disabled = true
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.Disabled then
                            local _ = next
                            local players = game:GetService("Players"):GetPlayers()
                            for _, player in _, players do
                                if player.Name ~= game:GetService("Players").LocalPlayer.Name then
                                    pcall(function()
                                        player.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                        player.Character.HumanoidRootPart.Transparency = 0.9
                                        player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                                        player.Character.HumanoidRootPart.Material = "Neon"
                                        player.Character.HumanoidRootPart.CanCollide = false
                                    end)
                                end
                            end
                        end
                    end)
                end
            )
            basicTab:Button(" ♋ 删 除 门 ♋ ",
                function()
                    for _, tycoon in pairs(workspaceService.Tycoon.Tycoons:GetChildren()) do
                        for _, purchasedObject in pairs(tycoon.PurchasedObjects:GetChildren()) do
                            if purchasedObject.Name:find("Door") or purchasedObject.Name:find("Gate") then
                                purchasedObject:Destroy()
                            end
                        end
                    end
                end
            )
            
            local characterTab = window:Tab(" ✔️ 人 物 功 能 ✔️ ")
            characterTab:Label("速度")
            characterTab:Toggle(" ♋ 开 启 加 速 ♋ ", false,
                function(enabled)
                    if enabled == true then
                        sudu = game:GetService("RunService").Heartbeat:Connect(function()
                            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and 0 < game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
                                game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                            end
                        end)
                    elseif not enabled and sudu then
                        sudu:Disconnect()
                        sudu = nil
                    end
                end
            )
            characterTab:Textbox(" ♋ 速 度 (手机版) ♋ ", true,
                function(speedValue)
                    Speed = speedValue
                end
            )
            characterTab:Label("踏空")
            characterTab:Slider(" ♋ 踏 空 (如果想下降 请缓慢拖动) (电脑版) ♋ ", 0, 500, 1,
                function(hipHeight)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = hipHeight
                end
            )
            characterTab:Textbox(" ♋ 踏 空 (如果想下降 请缓慢拖动) (手机版) ♋ ", true,
                function(hipHeight)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = hipHeight
                end
            )
            characterTab:Label("连跳")
            characterTab:Toggle(" ♋ 连 跳 ♋ ", false,
                function(enabled)
                    Jump = enabled
                    game.UserInputService.JumpRequest:Connect(function()
                        if Jump then
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                        end
                    end)
                end
            )
            characterTab:Label("飞天")
            characterTab:Button(" ♋ 打开飞天UI (手机版) ♋ ",
                function()
                    local position = UDim2.new(0.822025776, 0, 0.0401606411, 0)
                    local size = UDim2.new(0, 60, 0, 54)
                    local screenGui = Instance.new("ScreenGui")
                    local frame = Instance.new("Frame")
                    local imageButton = Instance.new("ImageButton")
                    screenGui.Name = "GG"
                    screenGui.Parent = game:WaitForChild("CoreGui")
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    frame.Name = "100x100"
                    frame.Parent = screenGui
                    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    frame.Position = position
                    frame.Size = UDim2.new(0, 40, 0, 34)
                    frame.BackgroundTransparency = 1
                    imageButton.Parent = frame
                    imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    imageButton.Size = size
                    imageButton.Image = "rbxassetid://6460496009"
                    imageButton.BackgroundTransparency = 1
                    imageButton.Draggable = true
                    imageButton.MouseButton1Down:Connect(function()
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                    end)
                    imageButton.MouseButton1Up:Connect(function()
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
                    end)
                end
            )
            characterTab:Toggle(" ♋ 飞 天  ♋ ", false,
                function(enabled)
                    generalConnections.Fly = enabled
                    if enabled then
                        local bodyGyro = Instance.new("BodyGyro", character.HumanoidRootPart)
                        bodyGyro.P = 90000
                        bodyGyro.MaxTorque = Vector3.one * 9000000000
                        local bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)
                        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                        bodyVelocity.MaxForce = Vector3.one * 9000000000
                        generalConnections.FlyBG = bodyGyro
                        generalConnections.FlyBV = bodyVelocity
                    else
                        generalConnections.FlyBG:Destroy()
                        generalConnections.FlyBV:Destroy()
                    end
                end
            )
            characterTab:Textbox(" ♋ 调整飞行速度 (手机版) ♋ ", true,
                function(speedValue)
                    generalConnections.FlySpeed = tonumber(speedValue) or 10
                end
            )
            characterTab:Slider(" ♋ 调整飞行速度 (电脑版) ♋ ", 1, 5000, 1,
                function(speedValue)
                    generalConnections.FlySpeed = tonumber(speedValue) or 10
                end
            )
            addGeneralConnection(runService.RenderStepped,
                function()
                    character = localPlayer.Character
                    humanoid = character.Humanoid
                    if character and humanoid then
                        humanoid.WalkSpeed = generalConnections.WalkSpeed
                        humanoid.JumpPower = generalConnections.JumpPower
                        if 0 < humanoid.Health and generalConnections.Carpet then
                            local carpetObject = generalConnections.CarpetObject
                            carpetObject.Position = character.HumanoidRootPart.Position - Vector3.new(0, 3.05 + 0, 0)
                            if generalConnections.CarpetVisible then
                                carpetObject.Transparency = 0.5
                            else
                                carpetObject.Transparency = 1
                            end
                        end
                        if generalConnections.Noclip then
                            for _, descendant in pairs(character:GetDescendants()) do
                                if descendant:IsA("BasePart") then
                                    descendant.CanCollide = not generalConnections.Noclip
                                end
                            end
                        end
                        humanoid.PlatformStand = generalConnections.Fly
                        if generalConnections.Fly and 0 < humanoid.Health then
                            local keys = {}
                            local wKey = userInputService:IsKeyDown(Enum.KeyCode.W)
                            if wKey then
                                keys.f = 1
                            else
                                keys.f = 0
                            end
                            local sKey = userInputService:IsKeyDown(Enum.KeyCode.S)
                            if sKey then
                                keys.b = -1
                            else
                                keys.b = 0
                            end
                            local aKey = userInputService:IsKeyDown(Enum.KeyCode.A)
                            if aKey then
                                keys.l = -1
                            else
                                keys.l = 0
                            end
                            local dKey = userInputService:IsKeyDown(Enum.KeyCode.D)
                            if dKey then
                                keys.r = 1
                            else
                                keys.r = 0
                            end
                            local eKey = userInputService:IsKeyDown(Enum.KeyCode.E)
                            if eKey then
                                keys.u = 1
                            else
                                keys.u = 0
                            end
                            local qKey = userInputService:IsKeyDown(Enum.KeyCode.Q)
                            if qKey then
                                keys.d = -1
                            else
                                keys.d = 0
                            end
                            local lookVector = camera.CFrame.LookVector
                            local upVector = camera.CFrame.UpVector
                            local rightVector = camera.CFrame.RightVector
                            local focusedTextBox = userInputService:GetFocusedTextBox()
                            local velocity = Vector3.zero
                            if not focusedTextBox then
                                velocity = lookVector * (keys.f + keys.b) * generalConnections.FlySpeed + rightVector * (keys.l + keys.r) * generalConnections.FlySpeed + upVector * (keys.u + keys.d) * generalConnections.FlySpeed
                            end
                            tweenService:Create(generalConnections.FlyBG, TweenInfo.new(0.2), {
                                CFrame = camera.CFrame,
                            }):Play()
                            tweenService:Create(generalConnections.FlyBV, TweenInfo.new(0.2), {
                                Velocity = velocity,
                            }):Play()
                        end
                    end
                end
            )
            characterTab:Toggle(" ♋ 穿 墙 ♋ ", false,
                function(enabled)
                    if enabled then
                        Noclip = true
                        Stepped = game.RunService.Stepped:Connect(function()
                            if Noclip == true then
                                for _, model in pairs(game.Workspace:GetChildren()) do
                                    if model.Name == game.Players.LocalPlayer.Name then
                                        for _, part in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                            if part:IsA("BasePart") then
                                                part.CanCollide = false
                                            end
                                        end
                                    end
                                end
                            else
                                Stepped:Disconnect()
                            end
                        end)
                    else
                        Noclip = false
                    end
                end
            )
            
            local espTab = window:Tab(" ✔️ 透 视 功 能 ✔️ ")
            espTab:Button(" ♋ 透视 ♋ ",
                function()
                    _G.FriendColor = Color3.fromRGB(0, 0, 255)
                    _G.EnemyColor = Color3.fromRGB(255, 0, 0)
                    _G.UseTeamColor = true
                    local espFolder = Instance.new("Folder", game.CoreGui)
                    espFolder.Name = "ESP"
                    local boxTemplate = Instance.new("BoxHandleAdornment")
                    boxTemplate.Name = "nilBox"
                    boxTemplate.Size = Vector3.new(1, 2, 1)
                    boxTemplate.Color3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                    boxTemplate.Transparency = 0.7
                    boxTemplate.ZIndex = 0
                    boxTemplate.AlwaysOnTop = false
                    boxTemplate.Visible = false
                    local nameTagTemplate = Instance.new("BillboardGui")
                    nameTagTemplate.Name = "nilNameTag"
                    nameTagTemplate.Enabled = false
                    nameTagTemplate.Size = UDim2.new(0, 200, 0, 50)
                    nameTagTemplate.AlwaysOnTop = true
                    nameTagTemplate.StudsOffset = Vector3.new(0, 1.8, 0)
                    local tagLabel = Instance.new("TextLabel", nameTagTemplate)
                    tagLabel.Name = "Tag"
                    tagLabel.BackgroundTransparency = 1
                    tagLabel.Position = UDim2.new(0, -50, 0, 0)
                    tagLabel.Size = UDim2.new(0, 300, 0, 20)
                    tagLabel.TextSize = 15
                    tagLabel.TextColor3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                    tagLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                    tagLabel.TextStrokeTransparency = 0.4
                    tagLabel.Text = "nil"
                    tagLabel.Font = Enum.Font.SourceSansBold
                    tagLabel.TextScaled = false
                    
                    local function loadCharacter(targetPlayer)
                        repeat wait() until targetPlayer.Character ~= nil
                        targetPlayer.Character:WaitForChild("Humanoid")
                        local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                        playerFolder:ClearAllChildren()
                        local box = boxTemplate:Clone()
                        box.Name = targetPlayer.Name.."Box"
                        box.Adornee = targetPlayer.Character
                        box.Parent = playerFolder
                        local nameTag = nameTagTemplate:Clone()
                        nameTag.Name = targetPlayer.Name.."NameTag"
                        nameTag.Enabled = true
                        nameTag.Parent = playerFolder
                        nameTag.Adornee = targetPlayer.Character:WaitForChild("Head", 5)
                        if not nameTag.Adornee then
                            return
                        end
                        nameTag.Tag.Text = targetPlayer.Name
                        box.Color3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                        nameTag.Tag.TextColor3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                        local healthConnection = nil
                        local function updateHealth()
                            if not pcall(function()
                                targetPlayer.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                                local maxHealth = math.floor(targetPlayer.Character.Humanoid.MaxHealth)
                                local health = math.floor(targetPlayer.Character.Humanoid.Health)
                            end) then
                                healthConnection:Disconnect()
                            end
                        end
                        updateHealth()
                        healthConnection = targetPlayer.Character.Humanoid.Changed:Connect(updateHealth)
                    end
                    
                    local function unloadCharacter(targetPlayer)
                        local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                        if playerFolder and (playerFolder:FindFirstChild(targetPlayer.Name.."Box") ~= nil or playerFolder:FindFirstChild(targetPlayer.Name.."NameTag") ~= nil) then
                            playerFolder:ClearAllChildren()
                        end
                    end
                    
                    local function setupPlayer(targetPlayer)
                        Instance.new("Folder", espFolder).Name = targetPlayer.Name
                        targetPlayer.CharacterAdded:Connect(function()
                            pcall(loadCharacter, targetPlayer)
                        end)
                        targetPlayer.CharacterRemoving:Connect(function()
                            pcall(unloadCharacter, targetPlayer)
                        end)
                        targetPlayer.Changed:Connect(function(property)
                            if property == "TeamColor" then
                                unloadCharacter(targetPlayer)
                                wait()
                                loadCharacter(targetPlayer)
                            end
                        end)
                        loadCharacter(targetPlayer)
                    end
                    
                    local function removePlayer(targetPlayer)
                        unloadCharacter(targetPlayer)
                        local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                        if playerFolder then
                            playerFolder:Destroy()
                        end
                    end
                    
                    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                        spawn(function()
                            pcall(setupPlayer, player)
                        end)
                    end
                    game:GetService("Players").PlayerAdded:Connect(function(player)
                        pcall(setupPlayer, player)
                    end)
                    game:GetService("Players").PlayerRemoving:Connect(function(player)
                        pcall(removePlayer, player)
                    end)
                    game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
                    
                    if _G.Reantheajfdfjdgs then
                        return
                    end
                    _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
                    local playersService = game:GetService("Players")
                    local localPlayer2 = playersService.LocalPlayer
                    
                    function esp(targetPlayer, color)
                        if targetPlayer.Character then
                            if not targetPlayer.Character:FindFirstChild("GetReal") then
                                local highlight = Instance.new("Highlight")
                                highlight.RobloxLocked = true
                                highlight.Name = "GetReal"
                                highlight.Adornee = targetPlayer.Character
                                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                highlight.FillColor = color
                                highlight.Parent = targetPlayer.Character
                            else
                                targetPlayer.Character.GetReal.FillColor = color
                            end
                        end
                    end
                    
                    while task.wait() do
                        local _ = pairs
                        for _, targetPlayer in _(playersService:GetPlayers()) do
                            if targetPlayer ~= localPlayer2 then
                                local color = nil
                                if _G.UseTeamColor then
                                    color = targetPlayer.TeamColor.Color
                                    if not color then
                                        color = localPlayer2.TeamColor
                                    end
                                    if color == targetPlayer.TeamColor then
                                        color = _G.FriendColor
                                    else
                                        color = _G.EnemyColor
                                    end
                                else
                                    color = _G.FriendColor or _G.EnemyColor
                                end
                                esp(targetPlayer, color)
                            end
                        end
                    end
                end
            )
            
            local teleportTab = window:Tab(" ✔️ 传 送 功 能 ✔️ ")
            local team = game.Players.LocalPlayer.Team
            if team then
                teamName = team.Name
            else
                teamName = "No Team"
            end
            teleportTab:Button(" ♋ 中 间 旗 帜 ♋ ",
                function()
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = CFrame.new(71.72091674804688, 48, 194.7030487060547)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    wait(0.2)
                    humanoidRootPart.CFrame = targetCFrame
                end
            )
            teleportTab:Button(" ♋ 中 间 高 楼 ♋ ",
                function()
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = CFrame.new(-183.75144958496094, 346.30084228515625, 103.51554870605469)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    wait(0.2)
                    humanoidRootPart.CFrame = targetCFrame
                end
            )
            teleportTab:Button(" ♋ 空 投♋ ",
                function()
                    for _, beam in pairs(workspaceService.Beams:GetChildren()) do
                        wait(0.5)
                        if beam.Name:find("Airdrop_") then
                            localPlayer.Character.HumanoidRootPart.CFrame = beam.CFrame
                        end
                    end
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            )
            teleportTab:Button(" ♋ 中 间 油 桶 Ⅰ ♋ ",
                function()
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = CFrame.new(-12.500439643859863, 49.34040069580078, 699.876953125)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    wait(0.2)
                    humanoidRootPart.CFrame = targetCFrame
                end
            )
            teleportTab:Button(" ♋ 中 间 油 桶 Ⅱ ♋ ",
                function()
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = CFrame.new(-29.205184936523438, 49.34040069580078, -417.71759033203125)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    wait(0.2)
                    humanoidRootPart.CFrame = targetCFrame
                end
            )
            teleportTab:Button(" ♋ 海 上 油 桶 ♋ ",
                function()
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = CFrame.new(70.86514282226563, 105.256591796875, 3435.6650390625)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    wait(0.2)
                    humanoidRootPart.CFrame = targetCFrame
                end
            )
            
            local baseTab = window:Tab(" ✔️ 基 地 功 能 ✔️ ")
            baseTab:Label("我当前是:"..teamName)
            baseTab:Dropdown("红 色 (Alpha)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2899.7822265625, 48.26700210571289, 702.8833618164063)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2880.9013671875, 62.878868103027344, 643.989013671875)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2779.977294921875, 6.970058441162109, 661.8550415039063)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2805.157470703125, 6.970058441162109, 705.3888549804688)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2848.173095703125, 6.998337745666504, 663.5074462890625)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("橙 色 (Bravo)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2966.656005859375, 48.267005920410156, -442.59783935546875)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2921.4716796875, 62.878875732421875, -487.39093017578125)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2837.39990234375, 6.970059394836426, -437.7812805175781)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2880.630126953125, 6.970060348510742, -400.6142883300781)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2907.369140625, 7.023244857788086, -462.51171875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("黄 色 (Charlie)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2658.763671875, 48.26700210571289, -1268.7978515625)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2614.623046875, 62.878883361816406, -1313.09033203125)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2534.775634765625, 6.970059394836426, -1244.4716796875)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2578.392333984375, 6.970061302185059, -1217.90576171875)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2595.36474609375, 7.023244857788086, -1278.56201171875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("绿 色 (Delta)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2062.617431640625, 48.267005920410156, -2120.82861328125)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2002.0753173828125, 62.87887954711914, -2135.293212890625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2836.2529296875, 6.970059394836426, -437.29034423828125)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2880.214111328125, 6.970058441162109, -402.24395751953125)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2908.175537109375, 7.023244857788086, -462.8197326660156)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("深 绿 (Echo)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-933.6105346679688, 48.32777404785156, -2450.84375)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-891.6569213867188, 62.87887191772461, -2406.64697265625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-956.1591186523438, 6.970058441162109, -2326.504150390625)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-990.4432373046875, 6.970061302185059, -2372.395263671875)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-948.5044555664063, 6.924518585205078, -2349.385498046875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("青 色 (Foxtrot)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(856.9780883789063, 48.26701354980469, -2275.72998046875)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(915.2462158203125, 62.878868103027344, -2259.06494140625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(896.0578002929688, 6.970059394836426, -2154.54150390625)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(849.0440673828125, 6.970060348510742, -2180.49658203125)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(896.1151123046875, 7.023244857788086, -2226.3818359375)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("天 蓝 (Golf)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(1921.7608642578125, 48.267005920410156, -1840.4075927734375)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(1951.6583251953125, 62.87887191772461, -1786.2154541015625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(1865.545166015625, 6.970058441162109, -1726.3966064453125)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(1849.2047119140625, 6.970059394836426, -1777.7406005859375)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(1914.5421142578125, 7.023244857788086, -1776.99169921875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("蓝 色 (Hotel)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(2935.3974609375, 48.266998291015625, -1505.9752197265625)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(2933.19873046875, 62.878883361816406, -1443.58544921875)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(2830.17431640625, 6.970058917999268, -1436.5450439453125)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(2841.27880859375, 6.970058441162109, -1488.647705078125)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(2899.18310546875, 7.023244857788086, -1454.658935546875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("深 蓝 (Kilo)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(3161.466796875, 48.23999786376953, -609.0646362304688)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(3145.50390625, 62.87887191772461, -551.0133666992188)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(3039.475341796875, 6.9245195388793945, -567.218505859375)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(3065.060546875, 6.924520492553711, -611.5802612304688)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(3064.672119140625, 6.9245195388793945, -571.9580688476563)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("浅 粉 (Lima)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(3171.31201171875, 48.267005920410156, 471.00567626953125)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(3155.5419921875, 62.878875732421875, 530.6000366210938)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(3054.1533203125, 6.970060348510742, 507.846435546875)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(3077.177978515625, 6.970058441162109, 461.73291015625)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(3075.361572265625, 6.924520492553711, 508.63128662109375)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("粉 色 (Omega)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(3100.353759765625, 48.26700210571289, 1414.42333984375)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(3058.5751953125, 62.878868103027344, 1466.788330078125)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(2969.189208984375, 6.911160469055176, 1427.9371337890625)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(3010.251220703125, 6.970059394836426, 1379.4034423828125)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(3039.533203125, 6.998337745666504, 1438.223388671875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("肉 色 (Romeo)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(2527.63818359375, 48.267005920410156, 2467.219970703125)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(2465.32177734375, 62.878875732421875, 2465.96240234375)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(2457.516357421875, 6.970058441162109, 2361.075439453125)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(2508.054443359375, 6.970059394836426, 2373.9287109375)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(2475.552001953125, 7.023244857788086, 2430.222412109375)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("浅 棕 (Sierra)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(1584.025390625, 48.26799392700195, 2754.721435546875)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(1523.730712890625, 62.87986373901367, 2765.736083984375)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(1496.459716796875, 6.971052169799805, 2663.48046875)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(1548.066162109375, 6.97105073928833, 2666.697265625)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(1525.490234375, 6.97442102432251, 2724.82666015625)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("棕 色 (Tango)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-680.5509643554688, 48.29742431640625, 2500.5166015625)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-733.7491455078125, 62.878883361816406, 2530.693603515625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-956.1591186523438, 6.970058441162109, -2326.504150390625)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-990.4432373046875, 6.970061302185059, -2372.395263671875)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-948.5044555664063, 6.924518585205078, -2349.385498046875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("白 色 (Victor)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2521.239013671875, 48.26799774169922, 2702.3916015625)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2505.62060546875, 62.879859924316406, 2643.410400390625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2402.149658203125, 6.971051216125488, 2663.590087890625)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2426.01806640625, 6.971051216125488, 2710.712646484375)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2470.885498046875, 7.024237632751465, 2662.289794921875)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            baseTab:Dropdown("灰 色 (Zulu)", {
                "基地",
                "基地(武器库)",
                "地堡",
                "地堡(武器库)",
                "地堡(指挥室)"
            },
                function(selected)
                    local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local targetCFrame = nil
                    if selected == "基地" then
                        targetCFrame = CFrame.new(-2446.206298828125, 48.29741668701172, 1763.9544677734375)
                    elseif selected == "基地(武器库)" then
                        targetCFrame = CFrame.new(-2444.052001953125, 62.878875732421875, 1703.3447265625)
                    elseif selected == "地堡" then
                        targetCFrame = CFrame.new(-2338.371826171875, 6.970058917999268, 1695.3721923828125)
                    elseif selected == "地堡(武器库)" then
                        targetCFrame = CFrame.new(-2352.12841796875, 6.970059394836426, 1752.494140625)
                    elseif selected == "地堡(指挥室)" then
                        targetCFrame = CFrame.new(-2405.357666015625, 6.9609761238098145, 1712.478271484375)
                    end
                    if targetCFrame then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait(0.2)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
            )
            
            local funTab = window:Tab(" ✔️ 娱 乐 功 能 ✔️ ")
            funTab:Label("建议你带降落伞或者开无限跳")
            funTab:Label("必 须 配 合 穿 墙")
            funTab:Button(" ♋ 模拟跳伞 (100米) ♋ ",
                function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = -200
                    wait(2)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0
                end
            )
            funTab:Button(" ♋ 模拟跳伞 (500米) ♋ ",
                function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = -500
                    wait(2)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0
                end
            )
            funTab:Button(" ♋ 模拟跳伞 (1000米) ♋ ",
                function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = -700
                    wait(2)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0
                end
            )
            funTab:Button(" ♋ 模拟跳伞 (10000米高空) ♋ ",
                function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = -1000
                    wait(2)
                    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 0
                end
            )
        elseif game.PlaceId ~= gamePlaceIds[9] and game.PlaceId ~= gamePlaceIds[10] then
            if game.PlaceId == gamePlaceIds[11] then
                local uiLibUrl = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"
                loadstring(game:HttpGet(uiLibUrl))()
                local uiLibUrl2 = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"
                local uiLib = loadstring(game:HttpGet(uiLibUrl2))()
                local windowTitle = "剑 客 V 4\t\t\t\t\t\t\t\t忍者传奇 "
                local windowColor = Color3.fromRGB(102, 255, 153)
                local windowKey = Enum.KeyCode.F6
                local window = uiLib:Window(windowTitle, windowColor, windowKey)
                local localPlayer = game:GetService("Players").LocalPlayer
                
                local genv = getgenv()
                genv.autoS = true
                genv.buyS = true
                genv.rank = false
                genv.jump = true
                genv.slj = true
                
                function autoSwing()
                    while getgenv().autoS == true do
                        local args = {
                            [1] = "swingKatana",
                        }
                        game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                        wait(0.1)
                    end
                end
                autoS = autoSwing
                
                function autoSell()
                    while getgenv().autosell == true do
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.0466309, 91243.8438, 123.681641)
                        wait(0.5)
                    end
                end
                autosell = autoSell
                
                function autoBuyShurikens()
                    while getgenv().jump == true do
                        local args = {
                            [1] = "buyAllShurikens",
                            [2] = "Blazing Vortex Island",
                        }
                        game:GetService("Players").LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                        wait()
                    end
                end
                jump = autoBuyShurikens
                
                function autoBuySkills()
                    while getgenv().slj == true do
                        local args = {
                            [1] = "buyAllSkills",
                            [2] = "Blazing Vortex Island",
                        }
                        game:GetService("Players").LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                        wait()
                    end
                end
                slj = autoBuySkills
                
                function autoBuyRanks()
                    spawn(function()
                        while getgenv().rank == true do
                            local genv = getgenv()
                            if genv then
                                local args = {}
                                args[1] = "buyRank"
                                args[2] = "Grasshopper"
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Apprentice",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Samurai",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Assassin",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Shadow",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Ninja",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Ninja",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Ninja Legend",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Of Shadows",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Immortal Assassin",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Eternity Hunter",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Shadow Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Warrior",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Chaos Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Chaos Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Of Elements",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Elemental Legend",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Ancient Battle Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Ancient Battle Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Legendary Shadow Duelist",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Legend Assassin",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Mythic Shadowmaster",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Legendary Shadowmaster",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Awakened Scythemaster",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Awakened Scythe Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Legend Zephyr",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Golden Sun Shuriken Master",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Golden Sun Shuriken Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dark Sun Samurai Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Evolution Form I",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Evolution Form II",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Evolution Form III",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Evolution Form IV",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dragon Evolution Form V",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Cybernetic Electro Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Cybernetic Electro Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Shadow Chaos Assassin",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Shadow Chaos Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Infinity Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Infinity Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Aether Genesis Master Ninja",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Legend Sensei Hunter",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Skystorm Series Samurai Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Master Elemental Hero",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Eclipse Series Soul Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Starstrike Master Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Evolved Series Master Ninja",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dark Elements Guardian",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Elite Series Master Legend",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Infinity Shadows Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Lighting Storm Sensei",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Dark Elements Blademaster",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Rising Shadow Eternal Ninja",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Skyblade Ninja Master",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Shadow Storm Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Comet Strike Lion",
                                }))
                                wait()
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Cybernetic Azure Sensei",
                                }))
                                game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack({
                                    [1] = "buyRank",
                                    [2] = "Ultra Genesis Shadow",
                                }))
                                wait()
                            end
                        end
                    end)
                end
                autoBuyRanks()
                end
            end
            rank = autoBuyRanks
            
            function autoBuySwords()
                spawn(function()
                    while getgenv().buyS == true do
                        local genv = getgenv()
                        if not genv then
                            break
                        end
                        local args = {}
                        args[1] = "buyAllSwords"
                        args[2] = "Blazing Vortex Island"
                        game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                        wait()
                    end
                end)
            end
            buyS = autoBuySwords
            
            function autoBuyBelts()
                spawn(function()
                    while getgenv().yaodai == true do
                        local genv = getgenv()
                        if genv then
                            local args = {}
                            args[1] = "buyAllBelts"
                            args[2] = "Blazing Vortex Island"
                            game.Players.LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))
                            wait(0.5)
                        else
                            break
                        end
                    end
                end)
            end
            yaodai = autoBuyBelts
            
            local aboutTab = window:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
            aboutTab:Label("剑客作者 初夏")
            aboutTab:Label("忍者传奇暂无高级功能")
            aboutTab:Label("剑客群一群 347724155 ")
            aboutTab:Label("剑客群二群 881072957 ")
            aboutTab:Label("剑客群三群 157104934 ")
            aboutTab:Label("剑客群四群 454780416 ")
            aboutTab:Label("剑客群五群 1015803524 ")
            aboutTab:Label("剑客群六群 318754006 ")
            
            local basicTab = window:Tab(" ✔️ 基 本 功 能 ✔️ ")
            local function toggleGravity(enabled)
                if enabled then
                    workspace.Gravity = 0
                else
                    workspace.Gravity = 196.2
                end
            end
            basicTab:Toggle(" ♋ 重 力 ♋ ", false, toggleGravity)
            basicTab:Button(" ♋ 解 锁 跳 跃 ♋ ",
                function()
                    game.Players.LocalPlayer.multiJumpCount.Value = 50
                end
            )
            basicTab:Button(" ♋ 解 锁 元 素 ♋ ",
                function()
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Frost")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Inferno")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Lightning")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Electral Chaos")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadow Charge")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadowfire")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Eternity Storm")
                    wait(0.1)
                    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Blazing Entity")
                end
            )
            
            local autoTab = window:Tab(" ✔️ 自 动 功 能 ✔️ ")
            local autoSwingDefault = false
            local function toggleAutoSwing(enabled)
                getgenv().autoS = enabled
                autoS()
            end
            autoTab:Toggle(" ♋ 自 动 挥 剑 ♋ ", autoSwingDefault, toggleAutoSwing)
            
            local autoSellDefault = false
            local function toggleAutoSell(enabled)
                getgenv().autosell = enabled
                autosell()
            end
            autoTab:Toggle(" ♋ 自 动 出 售 ♋ ", autoSellDefault, toggleAutoSell)
            
            local buyTab = window:Tab(" ✔️ 购 买 功 能 ✔️ ")
            buyTab:Label("商人")
            local buySwordsDefault = false
            local function toggleBuySwords(enabled)
                getgenv().buyS = enabled
                buyS()
            end
            buyTab:Toggle(" ♋ 剑 ♋ ", buySwordsDefault, toggleBuySwords)
            
            local buyBeltsDefault = false
            local function toggleBuyBelts(enabled)
                getgenv().yaodai = enabled
                yaodai()
            end
            buyTab:Toggle(" ♋ 腰 带 ♋ ", buyBeltsDefault, toggleBuyBelts)
            
            local buyRankDefault = false
            local function toggleBuyRank(enabled)
                getgenv().rank = enabled
                rank()
            end
            buyTab:Toggle(" ♋ 阶 级 ♋ ", buyRankDefault, toggleBuyRank)
            
            buyTab:Label("技能")
            local buySkillsDefault = false
            local function toggleBuySkills(enabled)
                getgenv().jump = enabled
                jump()
            end
            buyTab:Toggle(" ♋ 技 能 ♋ ", buySkillsDefault, toggleBuySkills)
            
            local buyShurikensDefault = false
            local function toggleBuyShurikens(enabled)
                getgenv().slj = enabled
                slj()
            end
            buyTab:Toggle(" ♋ 手 里 剑 ♋ ", buyShurikensDefault, toggleBuyShurikens)
            
            local teleportTab = window:Tab(" ✔️ 传 送 功 能 ✔️ ")
            local unlockAllButtonText = " ♋ 全 部 解 锁 ♋ "
            local function unlockAllLocations()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.9946918, 766.237427, -114.43486, -0.00000000000121443014, 0.0000000929319128, -1, 0.0000000455696494, 1, 0.0000000929319128, 1, -0.0000000455696494, -0.00000000000121866503)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.097946, 2013.93713, 347.208893, 0.819155693, -0.00000000251141441, 0.573571265, 0.00000000230275199, 1, 0.00000000108984222, -0.573571265, 0.00000000042804188, 0.819155693)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.742065, 4047.34668, 13.3782578, -0.819155812, 0.000000100319426, 0.573571086, 0.0000000704455658, 1, -0.0000000742951158, -0.573571086, -0.0000000204537365, -0.819155812)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 5656.94678, 12.9378996, -0.939700603, 0.0000000669553941, 0.341998249, 0.0000000674117331, 1, -0.0000000105513589, -0.341998249, 0.0000000131395756, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 9284.94531, 12.9378996, -0.939700603, -0.0000000529950803, 0.341998249, -0.0000000352049518, 1, 0.0000000582253463, -0.341998249, 0.0000000426743583, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 13679.7988, 12.9378996, -0.939700603, 0.000000039477051, 0.341998249, 0.0000000688188564, 1, 0.0000000736614041, -0.341998249, 0.0000000927555917, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 17686.0918, 12.9378996, -0.939700603, 0.0000000638720579, 0.341998249, 0.0000000605555144, 1, -0.000000020374392, -0.341998249, 0.00000000156405056, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 24069.7871, 12.9378996, -0.939700603, -0.000000063298998, 0.341998249, -0.0000000487095946, 1, 0.0000000512475147, -0.341998249, 0.0000000314987219, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 28256.0586, 7.03808689, -0.939700603, 0.0000000416092512, 0.341998249, 0.0000000548991146, 1, 0.0000000291799189, -0.341998249, 0.0000000461957903, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 33206.7383, 7.03808689, -0.939700603, 0.0000000691665463, 0.341998249, 0.0000000804686238, 1, 0.0000000188593532, -0.341998249, 0.0000000452422739, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 39317.332, 7.03808689, -0.939700603, 0.0000000354787595, 0.341998249, 0.0000000344232696, 1, -0.00000000915558296, -0.341998249, 0.00000000316919091, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 46010.3164, 7.03808689, -0.939700603, -0.0000000780543559, 0.341998249, -0.0000000801792055, 1, 0.00000000792376653, -0.341998249, -0.0000000199751788, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 52607.5234, 7.03808689, -0.939700603, -0.0000000265002509, 0.341998249, -0.0000000334135635, 1, -0.000000014323156, -0.341998249, -0.000000024886857, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 59594.4414, 7.03808689, -0.939700603, -0.00000000473542094, 0.341998249, -0.00000000573590464, 1, -0.00000000191407978, -0.341998249, -0.00000000376033116, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 66668.9219, 7.03808689, -0.939700603, -0.0000000668370177, 0.341998249, -0.0000000629411687, 1, 0.0000000224889032, -0.341998249, -0.000000000392932742, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 70270.9141, 7.03808689, -0.939700603, 0.0000000777362104, 0.341998249, 0.0000000953480352, 1, 0.000000034685538, -0.341998249, 0.0000000652028831, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 74442.6094, 7.03808689, -0.939700603, -0.00000004325479, 0.341998249, -0.0000000744041984, 1, -0.0000000779620279, -0.341998249, -0.0000000987070692, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 79746.7422, 7.03808689, -0.939700603, 0.0000000668511575, 0.341998249, 0.0000000675872727, 1, -0.00000000976425962, -0.341998249, 0.0000000139392471, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 83198.7422, 7.03808689, -0.939700603, 0.0000000936641129, 0.341998249, 0.0000000776997453, 1, -0.0000000603792927, -0.341998249, -0.0000000301652783, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 87050.8281, 7.03808689, -0.939700603, -0.00000000446783455, 0.341998249, -0.00000000176121107, 1, 0.0000000082246725, -0.341998249, 0.00000000712639858, -0.939700603)
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 91245.8281, 7.03808689, -0.939700603, -0.0000000379489293, 0.341998249, -0.0000000294543412, 1, 0.0000000300313516, -0.341998249, 0.0000000181471442, -0.939700603)
            end
            teleportTab:Button(unlockAllButtonText, unlockAllLocations)
            
            local customTeleportDropdownText = " ♋ 自 定 义 传 送 ♋ "
            local teleportOptions = {
                " ⚔️ 出 生 点 ⚔️ ",
                " ⚔️ 附 魔 岛 ⚔️ ",
                " ⚔️ 星 界 岛 ⚔️ ",
                " ⚔️ 神 秘 岛 ⚔️ ",
                " ⚔️ 太 空 岛 ⚔️ ",
                " ⚔️ 冻 土 岛 ⚔️ ",
                " ⚔️ 永 恒 岛 ⚔️ ",
                " ⚔️ 沙 暴 岛 ⚔️ ",
                " ⚔️ 雷 暴 岛 ⚔️ ",
                " ⚔️ 远 古 炼 狱 岛 ⚔️ ",
                " ⚔️ 午 夜 暗 影 岛 ⚔️ ",
                " ⚔️ 神 秘 灵 魂 岛 ⚔️ ",
                " ⚔️ 冬 季 奇 迹 岛 ⚔️ ",
                " ⚔️ 黄 金 大 师 岛 ⚔️ ",
                " ⚔️ 龙 传 奇 岛 ⚔️ ",
                " ⚔️ 赛 博 传 奇 岛 ⚔️ ",
                " ⚔️ 天 岚 超 能 岛 ⚔️ ",
                " ⚔️ 混 沌 传 奇 岛 ⚔️ ",
                " ⚔️ 灵 魂 融 合 岛 ⚔️ ",
                " ⚔️ 黑 暗 元 素 岛 ⚔️ ",
                " ⚔️ 禅 心 岛 ⚔️ ",
                " ⚔️ 炽 热 漩 涡 之 岛 ⚔️ "
            }
            teleportTab:Dropdown(customTeleportDropdownText, teleportOptions,
                function(selected)
                    if selected == " ⚔️ 出 生 点 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35.8307495, 3.19602585, 30.7828999, 0.011297822, 0.0000000904978137, 0.999936163, -0.0000000143550185, 1, -0.0000000903413948, -0.999936163, -0.000000013333441, 0.011297822)
                    elseif selected == " ⚔️ 附 魔 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.9946918, 766.237427, -114.43486, 0.0000000000000128764627, -0.0000000524154835, -1, 0.0000000325350449, 1, -0.0000000524154835, 1, -0.0000000325350449, 0.0000000000000145818026)
                    elseif selected == " ⚔️ 星 界 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.097946, 2013.93713, 347.208893, 0.819155693, -0.00000000634757491, 0.573571265, 0.00000000542712009, 1, 0.00000000331592442, -0.573571265, 0.000000000396581712, 0.819155693)
                    elseif selected == " ⚔️ 神 秘 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.742065, 4047.34668, 13.3782578, -0.819155812, -0.0000000855228848, 0.573571086, -0.0000000839505532, 1, 0.000000029210506, -0.573571086, -0.0000000242236524, -0.819155812)
                    elseif selected == " ⚔️ 太 空 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 5656.94678, 12.9378996, -0.939700603, 0.00000000137194811, 0.341998249, 0.00000000123911625, 1, -0.000000000606873996, -0.341998249, -0.000000000146504267, -0.939700603)
                    elseif selected == " ⚔️ 冻 土 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 9284.94531, 12.9378996, -0.939700603, -0.0000000664411317, 0.341998249, -0.0000000731317371, 1, -0.00000000666905997, -0.341998249, -0.0000000312778461, -0.939700603)
                    elseif selected == " ⚔️ 永 恒 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 13679.7988, 12.9378996, -0.939700603, 0.0000000223656365, 0.341998249, 0.0000000280837646, 1, 0.0000000117681713, -0.341998249, 0.0000000206631547, -0.939700603)
                    elseif selected == " ⚔️ 沙 暴 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 17686.0918, 12.9378996, -0.939700603, -0.0000000598267604, 0.341998249, -0.0000000438784085, 1, 0.0000000543692771, -0.341998249, 0.0000000360845043, -0.939700603)
                    elseif selected == " ⚔️ 雷 暴 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(199.768478, 24069.7871, 12.9378996, -0.939700603, -0.00000000170383652, 0.341998249, -0.000000000814211809, 1, 0.00000000274481282, -0.341998249, 0.00000000230084329, -0.939700603)
                    elseif selected == " ⚔️ 远 古 炼 狱 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 28256.0586, 7.03808689, -0.939700603, -0.0000000136398421, 0.341998249, -0.0000000207291961, 1, -0.0000000170743455, -0.341998249, -0.0000000231341222, -0.939700603)
                    elseif selected == " ⚔️ 午 夜 暗 影 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 33206.7383, 7.03808689, -0.939700603, -0.0000000704980394, 0.341998249, -0.0000000817274, 1, -0.0000000184247977, -0.341998249, -0.0000000452644215, -0.939700603)
                    elseif selected == " ⚔️ 神 秘 灵 魂 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 39317.332, 7.03808689, -0.939700603, 0.000000123445773, 0.341998249, 0.000000120248757, 1, -0.0000000305496926, -0.341998249, 0.0000000124173001, -0.939700603)
                    elseif selected == " ⚔️ 冬 季 奇 迹 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 46010.3164, 7.03808689, -0.939700603, 0.000000104733623, 0.341998249, 0.000000111423724, 1, -0.0000000000838570741, -0.341998249, 0.0000000380279168, -0.939700603)
                    elseif selected == " ⚔️ 黄 金 大 师 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.868469, 52607.5234, 7.03814268, -0.939680457, -0.00000000761174768, 0.342053503, -0.00000000540077005, 1, 0.00000000741623607, -0.342053503, 0.00000000512154008, -0.939680457)
                    elseif selected == " ⚔️ 龙 传 奇 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 59594.4414, 7.03808689, -0.939700603, 0.0000000718403328, 0.341998249, 0.0000000727293923, 1, -0.0000000102236797, -0.341998249, 0.0000000152661279, -0.939700603)
                    elseif selected == " ⚔️ 赛 博 传 奇 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 66668.9219, 7.03808689, -0.939700603, -0.000000056436221, 0.341998249, -0.0000000463281644, 1, 0.0000000377242131, -0.341998249, 0.0000000196053147, -0.939700603)
                    elseif selected == " ⚔️ 天 岚 超 能 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 70270.9141, 7.03808689, -0.939700603, -0.00000000865652261, 0.341998249, 0.0000000000171514036, 1, 0.0000000253587267, -0.341998249, 0.0000000238354758, -0.939700603)
                    elseif selected == " ⚔️ 混 沌 传 奇 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 74442.6094, 7.03808689, -0.939700603, 0.0000000583952406, 0.341998249, 0.0000000756734835, 1, 0.0000000371790634, -0.341998249, 0.0000000608173849, -0.939700603)
                    elseif selected == " ⚔️ 灵 魂 融 合 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 79746.7422, 7.03808689, -0.939700603, 0.0000000265678359, 0.341998249, 0.00000000893949803, 1, -0.0000000531212798, -0.341998249, -0.000000046860805, -0.939700603)
                    elseif selected == " ⚔️ 黑 暗 元 素 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 83198.7422, 7.03808689, -0.939700603, 0.0000000249436454, 0.341998249, 0.0000000408619982, 1, 0.000000039340545, -0.341998249, 0.0000000509430649, -0.939700603)
                    elseif selected == " ⚔️ 禅 心 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 87050.8281, 7.03808689, -0.939700603, -0.0000000475961102, 0.341998249, -0.0000000347673925, 1, 0.0000000436410801, -0.341998249, 0.0000000291191622, -0.939700603)
                    elseif selected == " ⚔️ 炽 热 漩 涡 之 岛 ⚔️ " then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(197.86853, 91245.8281, 7.03808689, -0.939700603, -0.0000000771085027, 0.341998249, -0.0000000894192027, 1, -0.000000020230452, -0.341998249, -0.0000000495917796, -0.939700603)
                    end
                end
            )
        elseif game.PlaceId ~= gamePlaceIds[12] then
            if game.PlaceId == gamePlaceIds[13] then
                local uiLibUrl = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"
                loadstring(game:HttpGet(uiLibUrl))()
                local uiLibUrl2 = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"
                local uiLib = loadstring(game:HttpGet(uiLibUrl2))()
                local windowTitle = "剑 客 V3\t\t\t\t\t\t\t\t武器库 "
                local windowColor = Color3.fromRGB(102, 255, 153)
                local windowKey = Enum.KeyCode.F6
                local window = uiLib:Window(windowTitle, windowColor, windowKey)
                
                local aboutTab = window:Tab(" ✔️ 关 于 剑 客 ✔️ ")
                aboutTab:Label("剑客V3 永久免费请勿倒卖")
                aboutTab:Label(" 倒卖剑客V3死全家 ")
                aboutTab:Label(" 随缘更新 ")
                aboutTab:Label("剑客作者QQ:1412152634")
                aboutTab:Label("剑客作者QQ:424786842(备用号)")
                aboutTab:Label("下方点击即可复制群号")
                aboutTab:Button(" 剑客主群(脚本在这群)(不可聊天) ",
                    function()
                        setclipboard("347724155")
                    end
                )
                aboutTab:Button(" 剑客交流一群 ",
                    function()
                        setclipboard("被恶意举报 只能通过主群公告二维码进入")
                    end
                )
                aboutTab:Button(" 剑客分群(可聊天) ",
                    function()
                        setclipboard("1015803524")
                    end
                )
                
                local characterTab = window:Tab(" ✔️ 人 物 剑 客 ✔️ ")
                characterTab:Button(" ♋ 透 视 ♋ ",
                    function()
                        _G.FriendColor = Color3.fromRGB(0, 0, 255)
                        _G.EnemyColor = Color3.fromRGB(255, 0, 0)
                        _G.UseTeamColor = true
                        local espFolder = Instance.new("Folder", game.CoreGui)
                        espFolder.Name = "ESP"
                        local boxTemplate = Instance.new("BoxHandleAdornment")
                        boxTemplate.Name = "nilBox"
                        boxTemplate.Size = Vector3.new(1, 2, 1)
                        boxTemplate.Color3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                        boxTemplate.Transparency = 0.7
                        boxTemplate.ZIndex = 0
                        boxTemplate.AlwaysOnTop = false
                        boxTemplate.Visible = false
                        local nameTagTemplate = Instance.new("BillboardGui")
                        nameTagTemplate.Name = "nilNameTag"
                        nameTagTemplate.Enabled = false
                        nameTagTemplate.Size = UDim2.new(0, 200, 0, 50)
                        nameTagTemplate.AlwaysOnTop = true
                        nameTagTemplate.StudsOffset = Vector3.new(0, 1.8, 0)
                        local tagLabel = Instance.new("TextLabel", nameTagTemplate)
                        tagLabel.Name = "Tag"
                        tagLabel.BackgroundTransparency = 1
                        tagLabel.Position = UDim2.new(0, -50, 0, 0)
                        tagLabel.Size = UDim2.new(0, 300, 0, 20)
                        tagLabel.TextSize = 15
                        tagLabel.TextColor3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                        tagLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        tagLabel.TextStrokeTransparency = 0.4
                        tagLabel.Text = "nil"
                        tagLabel.Font = Enum.Font.SourceSansBold
                        tagLabel.TextScaled = false
                        
                        local function loadCharacter(targetPlayer)
                            repeat wait() until targetPlayer.Character ~= nil
                            targetPlayer.Character:WaitForChild("Humanoid")
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            playerFolder:ClearAllChildren()
                            local box = boxTemplate:Clone()
                            box.Name = targetPlayer.Name.."Box"
                            box.Adornee = targetPlayer.Character
                            box.Parent = playerFolder
                            local nameTag = nameTagTemplate:Clone()
                            nameTag.Name = targetPlayer.Name.."NameTag"
                            nameTag.Enabled = true
                            nameTag.Parent = playerFolder
                            nameTag.Adornee = targetPlayer.Character:WaitForChild("Head", 5)
                            if not nameTag.Adornee then
                                return
                            end
                            nameTag.Tag.Text = targetPlayer.Name
                            box.Color3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                            nameTag.Tag.TextColor3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                            local healthConnection = nil
                            local function updateHealth()
                                if not pcall(function()
                                    targetPlayer.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                                    local maxHealth = math.floor(targetPlayer.Character.Humanoid.MaxHealth)
                                    local health = math.floor(targetPlayer.Character.Humanoid.Health)
                                end) then
                                    healthConnection:Disconnect()
                                end
                            end
                            updateHealth()
                            healthConnection = targetPlayer.Character.Humanoid.Changed:Connect(updateHealth)
                        end
                        
                        local function unloadCharacter(targetPlayer)
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            if playerFolder and (playerFolder:FindFirstChild(targetPlayer.Name.."Box") ~= nil or playerFolder:FindFirstChild(targetPlayer.Name.."NameTag") ~= nil) then
                                playerFolder:ClearAllChildren()
                            end
                        end
                        
                        local function setupPlayer(targetPlayer)
                            Instance.new("Folder", espFolder).Name = targetPlayer.Name
                            targetPlayer.CharacterAdded:Connect(function()
                                pcall(loadCharacter, targetPlayer)
                            end)
                            targetPlayer.CharacterRemoving:Connect(function()
                                pcall(unloadCharacter, targetPlayer)
                            end)
                            targetPlayer.Changed:Connect(function(property)
                                if property == "TeamColor" then
                                    unloadCharacter(targetPlayer)
                                    wait()
                                    loadCharacter(targetPlayer)
                                end
                            end)
                            loadCharacter(targetPlayer)
                        end
                        
                        local function removePlayer(targetPlayer)
                            unloadCharacter(targetPlayer)
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            if playerFolder then
                                playerFolder:Destroy()
                            end
                        end
                        
                        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                            spawn(function()
                                pcall(setupPlayer, player)
                            end)
                        end
                        game:GetService("Players").PlayerAdded:Connect(function(player)
                            pcall(setupPlayer, player)
                        end)
                        game:GetService("Players").PlayerRemoving:Connect(function(player)
                            pcall(removePlayer, player)
                        end)
                        game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
                        
                        if _G.Reantheajfdfjdgs then
                            return
                        end
                        _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
                        local playersService = game:GetService("Players")
                        local localPlayer2 = playersService.LocalPlayer
                        
                        function esp(targetPlayer, color)
                            if targetPlayer.Character then
                                if not targetPlayer.Character:FindFirstChild("GetReal") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.RobloxLocked = true
                                    highlight.Name = "GetReal"
                                    highlight.Adornee = targetPlayer.Character
                                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    highlight.FillColor = color
                                    highlight.Parent = targetPlayer.Character
                                else
                                    targetPlayer.Character.GetReal.FillColor = color
                                end
                            end
                        end
                        
                        while task.wait() do
                            local _ = pairs
                            for _, targetPlayer in _(playersService:GetPlayers()) do
                                if targetPlayer ~= localPlayer2 then
                                    local color = nil
                                    if _G.UseTeamColor then
                                        color = targetPlayer.TeamColor.Color
                                        if not color then
                                            color = localPlayer2.TeamColor
                                        end
                                        if color == targetPlayer.TeamColor then
                                            color = _G.FriendColor
                                        else
                                            color = _G.EnemyColor
                                        end
                                    else
                                        color = _G.FriendColor or _G.EnemyColor
                                    end
                                    esp(targetPlayer, color)
                                end
                            end
                        end
                    end
                )
                characterTab:Button(" ♋ 子 弹 追 踪 ♋ ",
                    function()
                        local camera = workspace.CurrentCamera
                        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                        
                        local function getClosestPlayer()
                            local closestDistance = math.huge
                            local closestPlayer = nil
                            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                                if player.Name ~= game:GetService("Players").LocalPlayer.Name and player.Character and player.Character.HumanoidRootPart then
                                    local screenPoint, onScreen = camera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
                                    local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                                    if distance < closestDistance then
                                        closestDistance = distance
                                        closestPlayer = player
                                    end
                                end
                            end
                            return closestPlayer
                        end
                        
                        local closestPlayer = nil
                        game:GetService("RunService").Stepped:Connect(function()
                            closestPlayer = getClosestPlayer()
                        end)
                        
                        local originalNamecall = nil
                        originalNamecall = hookmetamethod(game, "__namecall",
                            function(self, ...)
                                local args = {...}
                                if getnamecallmethod() == "InvokeServer" and self.Name == "HitHandler" and args[1].HitPos and closestPlayer and closestPlayer.Character and closestPlayer.Character.Humanoid and closestPlayer.Character.Humanoid.Health ~= 0 then
                                    args[1].HitPos = closestPlayer.Character.Head.Position
                                    args[1].HitObj = closestPlayer.Character.Head
                                end
                                return originalNamecall(self, unpack(args))
                            end
                        )
                    end
                )
                characterTab:Toggle(" ♋ 穿 墙 ♋ ", false,
                    function(enabled)
                        if enabled then
                            Noclip = true
                            Stepped = game.RunService.Stepped:Connect(function()
                                if Noclip == true then
                                    for _, model in pairs(game.Workspace:GetChildren()) do
                                        if model.Name == game.Players.LocalPlayer.Name then
                                            for _, part in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                                if part:IsA("BasePart") then
                                                    part.CanCollide = false
                                                end
                                            end
                                        end
                                    end
                                else
                                    Stepped:Disconnect()
                                end
                            end)
                        else
                            Noclip = false
                        end
                    end
                )
                characterTab:Toggle(" ♋ 加 速 (电脑版) ♋ ", false,
                    function(enabled)
                        if enabled == true then
                            HbTP = game:GetService("RunService").Heartbeat:Connect(function()
                                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and 0 < game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
                                    game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                                end
                            end)
                        elseif not enabled and HbTP then
                            HbTP:Disconnect()
                            HbTP = nil
                        end
                    end
                )
                characterTab:Slider(" ♋ 调 整 速 度 (电脑版) ♋ ", 1, 100, 1,
                    function(speedValue)
                        Speed = speedValue
                    end
                )
                characterTab:Textbox(" ♋ 调 整 速 度 (手机版) ♋ ", true,
                    function(speedValue)
                        Speed = speedValue
                    end
                )
            elseif game.PlaceId ~= gamePlaceIds[14] then
                local sound1 = Instance.new("Sound")
                sound1.SoundId = "rbxassetid://9126072038"
                sound1.Parent = game.Workspace
                sound1:Play()
                jianke = Instance.new("Message")
                jianke.Parent = game.Workspace
                jianke.Text = "未检测到游戏脚本"
                wait(2)
                jianke:Remove()
                
                local sound2 = Instance.new("Sound")
                sound2.SoundId = "rbxassetid://9126072038"
                sound2.Parent = game.Workspace
                sound2:Play()
                
                local message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = "正在开启通用脚本..."
                wait(2)
                message:Remove()
                
                local uiLibUrl = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/XwX"
                loadstring(game:HttpGet(uiLibUrl))()
                local uiLibUrl2 = "https://raw.githubusercontent.com/CX5200/jiankeV3/main/UwU"
                local uiLib = loadstring(game:HttpGet(uiLibUrl2))()
                local windowTitle = " 剑 客 V 4\t\t\t\t\t\t\t\t通用脚本 "
                local windowColor = Color3.fromRGB(102, 255, 153)
                local window = uiLib:Window(windowTitle, windowColor, Enum.KeyCode.F6)
                
                local metatable = getrawmetatable(game)
                local originalNamecall = metatable.__namecall
                setreadonly(metatable, false)
                metatable.__namecall = newcclosure(function(...)
                    if getnamecallmethod() == "Kick" then
                        return nil
                    end
                    return originalNamecall(...)
                end)
                
                getgenv().Speed = 16
                function Walkspeed()
                    game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
                    end)
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
                end
                
                local aboutTab = window:Tab(" ✔️ 关 于 剑 客 V 4 ✔️ ")
                aboutTab:Label("剑客作者 初夏")
                aboutTab:Label("通用脚本暂无高级功能")
                aboutTab:Label("剑客群一群 347724155 ")
                aboutTab:Label("剑客群二群 881072957 ")
                aboutTab:Label("剑客群三群 157104934 ")
                aboutTab:Label("剑客群四群 454780416 ")
                aboutTab:Label("剑客群五群 1015803524 ")
                aboutTab:Label("剑客群六群 318754006 ")
                
                local characterTab = window:Tab(" ✔️ 人 物 功 能 ✔️ ")
                local noclipToggleText = " ♋ 穿 墙 ♋ "
                local noclipDefault = false
                characterTab:Toggle(noclipToggleText, noclipDefault,
                    function(enabled)
                        if enabled then
                            Noclip = true
                            Stepped = game.RunService.Stepped:Connect(function()
                                if Noclip == true then
                                    for _, model in pairs(game.Workspace:GetChildren()) do
                                        if model.Name == game.Players.LocalPlayer.Name then
                                            for _, part in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                                if part:IsA("BasePart") then
                                                    part.CanCollide = false
                                                end
                                            end
                                        end
                                    end
                                else
                                    Stepped:Disconnect()
                                end
                            end)
                        else
                            Noclip = false
                        end
                    end
                )
                
                characterTab:Label("第一种加速")
                local speedToggleText = " ♋ 加 速 (电脑版) ♋ "
                local speedDefault = false
                characterTab:Toggle(speedToggleText, speedDefault,
                    function(enabled)
                        if enabled == true then
                            HbTP = game:GetService("RunService").Heartbeat:Connect(function()
                                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent and 0 < game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude then
                                    game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                                end
                            end)
                        elseif not enabled and HbTP then
                            HbTP:Disconnect()
                            HbTP = nil
                        end
                    end
                )
                
                local speedSliderText = " ♋ 调 整 速 度 (电脑版) ♋ "
                local speedSliderMin = 1
                local function setSpeed1(speedValue)
                    Speed = speedValue
                end
                characterTab:Slider(speedSliderText, speedSliderMin, 100, 1, setSpeed1)
                
                characterTab:Label("第二种加速")
                local speedSliderText2 = " ♋ 速 度 (电脑版) ♋ "
                local speedSliderMin2 = 16
                local function setSpeed2(speedValue)
                    if getgenv().ison == true then
                        Nspeed = speedValue
                        getgenv().Speed = speedValue
                        Walkspeed()
                    else
                        getgenv().SprintSpeed = getgenv().Speed
                        Nspeed = speedValue
                        getgenv().Speed = speedValue
                        Walkspeed()
                    end
                end
                characterTab:Slider(speedSliderText2, speedSliderMin2, 300, 1, setSpeed2)
                
                local speedTextboxText = " ♋ 速 度 ♋ "
                local speedTextboxDefault = true
                characterTab:Textbox(speedTextboxText, speedTextboxDefault,
                    function(speedValue)
                        if getgenv().ison == true then
                            Nspeed = speedValue
                            getgenv().Speed = speedValue
                            Walkspeed()
                        else
                            getgenv().SprintSpeed = getgenv().Speed
                            Nspeed = speedValue
                            getgenv().Speed = speedValue
                            Walkspeed()
                        end
                    end
                )
                
                local jumpToggleText = " ♋ 跳 跃 ♋ "
                local jumpDefault = false
                characterTab:Toggle(jumpToggleText, jumpDefault,
                    function(enabled)
                        Jump = enabled
                        game.UserInputService.JumpRequest:Connect(function()
                            if Jump then
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                            end
                        end)
                    end
                )
                
                local espTab = window:Tab(" ✔️ 透 视 功 能 ✔️ ")
                local espButtonText = " ♋ 透 视 ♋ "
                espTab:Button(espButtonText,
                    function()
                        _G.FriendColor = Color3.fromRGB(0, 0, 255)
                        _G.EnemyColor = Color3.fromRGB(255, 0, 0)
                        _G.UseTeamColor = true
                        local espFolder = Instance.new("Folder", game.CoreGui)
                        espFolder.Name = "ESP"
                        local boxTemplate = Instance.new("BoxHandleAdornment")
                        boxTemplate.Name = "nilBox"
                        boxTemplate.Size = Vector3.new(1, 2, 1)
                        boxTemplate.Color3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                        boxTemplate.Transparency = 0.7
                        boxTemplate.ZIndex = 0
                        boxTemplate.AlwaysOnTop = false
                        boxTemplate.Visible = false
                        local nameTagTemplate = Instance.new("BillboardGui")
                        nameTagTemplate.Name = "nilNameTag"
                        nameTagTemplate.Enabled = false
                        nameTagTemplate.Size = UDim2.new(0, 200, 0, 50)
                        nameTagTemplate.AlwaysOnTop = true
                        nameTagTemplate.StudsOffset = Vector3.new(0, 1.8, 0)
                        local tagLabel = Instance.new("TextLabel", nameTagTemplate)
                        tagLabel.Name = "Tag"
                        tagLabel.BackgroundTransparency = 1
                        tagLabel.Position = UDim2.new(0, -50, 0, 0)
                        tagLabel.Size = UDim2.new(0, 300, 0, 20)
                        tagLabel.TextSize = 15
                        tagLabel.TextColor3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
                        tagLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        tagLabel.TextStrokeTransparency = 0.4
                        tagLabel.Text = "nil"
                        tagLabel.Font = Enum.Font.SourceSansBold
                        tagLabel.TextScaled = false
                        
                        local function loadCharacter(targetPlayer)
                            repeat wait() until targetPlayer.Character ~= nil
                            targetPlayer.Character:WaitForChild("Humanoid")
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            playerFolder:ClearAllChildren()
                            local box = boxTemplate:Clone()
                            box.Name = targetPlayer.Name.."Box"
                            box.Adornee = targetPlayer.Character
                            box.Parent = playerFolder
                            local nameTag = nameTagTemplate:Clone()
                            nameTag.Name = targetPlayer.Name.."NameTag"
                            nameTag.Enabled = true
                            nameTag.Parent = playerFolder
                            nameTag.Adornee = targetPlayer.Character:WaitForChild("Head", 5)
                            if not nameTag.Adornee then
                                return
                            end
                            nameTag.Tag.Text = targetPlayer.Name
                            box.Color3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                            nameTag.Tag.TextColor3 = Color3.new(targetPlayer.TeamColor.r, targetPlayer.TeamColor.g, targetPlayer.TeamColor.b)
                            local healthConnection = nil
                            local function updateHealth()
                                if not pcall(function()
                                    targetPlayer.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                                    local maxHealth = math.floor(targetPlayer.Character.Humanoid.MaxHealth)
                                    local health = math.floor(targetPlayer.Character.Humanoid.Health)
                                end) then
                                    healthConnection:Disconnect()
                                end
                            end
                            updateHealth()
                            healthConnection = targetPlayer.Character.Humanoid.Changed:Connect(updateHealth)
                        end
                        
                        local function unloadCharacter(targetPlayer)
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            if playerFolder and (playerFolder:FindFirstChild(targetPlayer.Name.."Box") ~= nil or playerFolder:FindFirstChild(targetPlayer.Name.."NameTag") ~= nil) then
                                playerFolder:ClearAllChildren()
                            end
                        end
                        
                        local function setupPlayer(targetPlayer)
                            Instance.new("Folder", espFolder).Name = targetPlayer.Name
                            targetPlayer.CharacterAdded:Connect(function()
                                pcall(loadCharacter, targetPlayer)
                            end)
                            targetPlayer.CharacterRemoving:Connect(function()
                                pcall(unloadCharacter, targetPlayer)
                            end)
                            targetPlayer.Changed:Connect(function(property)
                                if property == "TeamColor" then
                                    unloadCharacter(targetPlayer)
                                    wait()
                                    loadCharacter(targetPlayer)
                                end
                            end)
                            loadCharacter(targetPlayer)
                        end
                        
                        local function removePlayer(targetPlayer)
                            unloadCharacter(targetPlayer)
                            local playerFolder = espFolder:FindFirstChild(targetPlayer.Name)
                            if playerFolder then
                                playerFolder:Destroy()
                            end
                        end
                        
                        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                            spawn(function()
                                pcall(setupPlayer, player)
                            end)
                        end
                        game:GetService("Players").PlayerAdded:Connect(function(player)
                            pcall(setupPlayer, player)
                        end)
                        game:GetService("Players").PlayerRemoving:Connect(function(player)
                            pcall(removePlayer, player)
                        end)
                        game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
                        
                        if _G.Reantheajfdfjdgs then
                            return
                        end
                        _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
                        local playersService = game:GetService("Players")
                        local localPlayer2 = playersService.LocalPlayer
                        
                        function esp(targetPlayer, color)
                            if targetPlayer.Character then
                                if not targetPlayer.Character:FindFirstChild("GetReal") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.RobloxLocked = true
                                    highlight.Name = "GetReal"
                                    highlight.Adornee = targetPlayer.Character
                                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    highlight.FillColor = color
                                    highlight.Parent = targetPlayer.Character
                                else
                                    targetPlayer.Character.GetReal.FillColor = color
                                end
                            end
                        end
                        
                        while task.wait() do
                            local _ = pairs
                            for _, targetPlayer in _(playersService:GetPlayers()) do
                                if targetPlayer ~= localPlayer2 then
                                    local color = nil
                                    if _G.UseTeamColor then
                                        color = targetPlayer.TeamColor.Color
                                        if not color then
                                            color = localPlayer2.TeamColor
                                        end
                                        if color == targetPlayer.TeamColor then
                                            color = _G.FriendColor
                                        else
                                            color = _G.EnemyColor
                                        end
                                    else
                                        color = _G.FriendColor or _G.EnemyColor
                                    end
                                    esp(targetPlayer, color)
                                end
                            end
                        end
                    end
                )
                local rangeTextboxText = " ♋ 范 围 ♋ "
                espTab:Textbox(rangeTextboxText, true,
                    function(headSize)
                        _G.HeadSize = headSize
                        _G.Disabled = true
                        game:GetService("RunService").RenderStepped:Connect(function()
                            if _G.Disabled then
                                local playersService = game:GetService("Players")
                                local players = playersService:GetPlayers()
                                for _, player in pairs(players) do
                                    if player.Name ~= game:GetService("Players").LocalPlayer.Name then
                                        pcall(function()
                                            player.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                            player.Character.HumanoidRootPart.Transparency = 0.9
                                            player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
                                            player.Character.HumanoidRootPart.Material = "Neon"
                                            player.Character.HumanoidRootPart.CanCollide = false
                                        end)
                                    end
                                end
                            end
                        end)
                    end
                )
            end
        else
            local localPlayer = game.Players.LocalPlayer
            localPlayer:Kick("请复制完整脚本")
        end
    end