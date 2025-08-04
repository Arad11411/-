-- 罗布乐思通用多功能脚本 v3.0（完整版）
-- 功能：飞行、加速、跳高、穿墙、追踪 + 死铁轨自动刷钱 + 汉化界面
-- 注意：请遵守游戏规则，合理使用本脚本

-- 初始化服务
local 玩家服务 = game:GetService("Players")
local 运行服务 = game:GetService("RunService")
local 输入服务 = game:GetService("UserInputService")
local 工作区 = game:GetService("Workspace")
local 动画服务 = game:GetService("TweenService")

-- 本地玩家信息
local 本地玩家 = 玩家服务.LocalPlayer
local 角色 = 本地玩家.Character or 本地玩家.CharacterAdded:Wait()
local 人形 = 角色:WaitForChild("Humanoid")
local 根部件 = 角色:WaitForChild("HumanoidRootPart")

-- 角色重生监听（确保功能在角色重生后仍可用）
本地玩家.CharacterAdded:Connect(function(新角色)
    角色 = 新角色
    人形 = 角色:WaitForChild("Humanoid")
    根部件 = 角色:WaitForChild("HumanoidRootPart")
    重置角色属性() -- 重置角色属性
    -- 重新启用已开启的功能
    if 配置.飞行 then 处理飞行() end
    if 配置.穿墙 then 处理穿墙() end
    if 配置.追踪 then 处理追踪() end
end)

-- 全局配置
local 配置 = {
    -- 通用功能开关
    飞行 = false,
    加速 = false,
    跳高 = false,
    穿墙 = false,
    追踪 = false,
    -- 功能参数
    速度值 = 30,
    跳跃值 = 100,
    飞行速度 = 50,
    追踪视野 = 150, -- 追踪功能的视野范围
    -- 死铁轨模式
    死铁轨模式 = false,
    自动刷钱 = false
}

-- 存储临时对象和连接（用于清理）
local 连接表 = {}
local 对象表 = {}

-- ==================== 通用功能实现 ====================
-- 重置角色属性
function 重置角色属性()
    人形.WalkSpeed = 16 -- 重置步行速度
    人形.JumpPower = 50 -- 重置跳跃力度
    根部件.CanCollide = true -- 恢复碰撞检测
end

-- 1. 飞行功能
local function 处理飞行()
    if 配置.飞行 then
        -- 创建飞行控制器（BodyVelocity）
        if not 对象表.飞行速度控制器 then
            对象表.飞行速度控制器 = Instance.new("BodyVelocity")
            对象表.飞行速度控制器.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            对象表.飞行速度控制器.Parent = 根部件
        end
        
        -- 飞行控制循环（WASD控制方向，空格上升，左Ctrl下降）
        连接表.飞行循环 = 运行服务.RenderStepped:Connect(function()
            if not 配置.飞行 then return end
            local 移动方向 = Vector3.new(0, 0, 0)
            local 相机 = 工作区.CurrentCamera
            if 输入服务:IsKeyDown(Enum.KeyCode.W) then
                移动方向 += 相机.CFrame.LookVector * 配置.飞行速度
            end
            if 输入服务:IsKeyDown(Enum.KeyCode.S) then
                移动方向 -= 相机.CFrame.LookVector * 配置.飞行速度
            end
            if 输入服务:IsKeyDown(Enum.KeyCode.A) then
                移动方向 -= 相机.CFrame.RightVector * 配置.飞行速度
            end
            if 输入服务:IsKeyDown(Enum.KeyCode.D) then
                移动方向 += 相机.CFrame.RightVector * 配置.飞行速度
            end
            if 输入服务:IsKeyDown(Enum.KeyCode.Space) then
                移动方向 += Vector3.new(0, 配置.飞行速度, 0) -- 上升
            end
            if 输入服务:IsKeyDown(Enum.KeyCode.LeftControl) then
                移动方向 -= Vector3.new(0, 配置.飞行速度, 0) -- 下降
