-- HorizonToolkit

local CONFIG = {
    GROUND_OFFSET = 80,
    FORWARD_DISTANCE = 150,
    GROUND_CLEARANCE = 20,
    INFINITE_QUANTITY = 999999,
    INFINITE_AMMO = 999999,
    ENABLE_CHAT_MESSAGES = true,
    
    SPEED_MULTIPLIER = 2.0,
    JUMP_MULTIPLIER = 2.0,

}

local ASSET_PATHS = {
    PAINT_BOMB = "/Game/BP/Items/Movable/PaintBomb/PaintBomb.PaintBomb_C",
    RUST_BRUSH = "/Game/BP/Items/Movable/Tools/RustBrush.RustBrush_C",
    POLISH_BRUSH = "/Game/BP/Items/Movable/Tools/PolishBrush.PolishBrush_C",
    
    AK_WEAPON = "/Game/BP/Items/Movable/Weapons/AK/AkWeapon.AkWeapon_C",
    BAZOOKA = "/Game/BP/Items/Movable/Bazooka/Bazooka.Bazooka_C",
    

    
    CAN_FOOD = "/Game/BP/Items/Movable/Food/CanFood_01.CanFood_01_C",
    SODA_CAN = "/Game/BP/Items/Movable/Bottle/BP_Can_01.BP_Can_01_C"
}

local Colors = {
    { name = "[Basic Colors]", color = { R = 0, G = 0, B = 0, A = 0 } },
    { name = "Blue", color = { R = 0, G = 0, B = 1, A = 1 } },
    { name = "Red", color = { R = 1, G = 0, B = 0, A = 1 } },
    { name = "Green", color = { R = 0, G = 1, B = 0, A = 1 } },
    { name = "Yellow", color = { R = 1, G = 1, B = 0, A = 1 } },
    { name = "Orange", color = { R = 1, G = 0.5, B = 0, A = 1 } },
    { name = "Purple", color = { R = 0.5, G = 0, B = 0.5, A = 1 } },
    { name = "Viola Purple", color = { R = 0.494, G = 0.345, B = 0.494, A = 1 } },
    { name = "Pink", color = { R = 1, G = 0.75, B = 0.8, A = 1 } },
    { name = "Black", color = { R = 0, G = 0, B = 0, A = 1 } },
    { name = "White", color = { R = 1, G = 1, B = 1, A = 1 } },
    { name = "Gold", color = { R = 1, G = 0.84, B = 0, A = 1 } },
    { name = "Silver", color = { R = 0.45, G = 0.45, B = 0.5, A = 1 } },
    { name = "Cyan", color = { R = 0.298, G = 0.792, B = 0.784, A = 1 } },
    { name = "[F1 Racing Team Colors]", color = { R = 0, G = 0, B = 0, A = 0 } },
    { name = "Alfa Romeo Maroon", color = { R = 0.643, G = 0.129, B = 0.204, A = 1 } },
    { name = "Alpine Dark Blue", color = { R = 0.008, G = 0.098, B = 0.169, A = 1 } },
    { name = "Aston Martin Dark Green", color = { R = 0, G = 0.141, B = 0.125, A = 1 } },
    { name = "Aston Martin Tiffany Green", color = { R = 0.012, G = 0.478, B = 0.408, A = 1 } },
    { name = "Caterham Green", color = { R = 0, G = 0.314, B = 0.188, A = 1 } },
    { name = "Équipe Ligier Dark Blue", color = { R = 0.075, G = 0.141, B = 0.318, A = 1 } },
    { name = "Force India Orange", color = { R = 0.949, G = 0.471, B = 0.212, A = 1 } },
    { name = "Forti Corse Warm Gray", color = { R = 0.561, G = 0.486, B = 0.518, A = 1 } },
    { name = "Haas Red", color = { R = 0.902, G = 0, B = 0.169, A = 1 } },
    { name = "HRT Khaki", color = { R = 0.651, G = 0.565, B = 0.31, A = 1 } },
    { name = "Manor Racing Blue", color = { R = 0, G = 0.427, B = 0.757, A = 1 } },
    { name = "Red Bull Racing Silver", color = { R = 0.753, G = 0.749, B = 0.749, A = 1 } },
    { name = "Sauber Red", color = { R = 0.871, G = 0.192, B = 0.149, A = 1 } },
    { name = "Scuderia AlphaTauri Dark Blue", color = { R = 0.125, G = 0.224, B = 0.298, A = 1 } },
    { name = "Scuderia Ferrari Yellow", color = { R = 1, G = 0.949, B = 0, A = 1 } },
    { name = "Scuderia Toro Rosso Red", color = { R = 1, G = 0.027, B = 0.259, A = 1 } },
    { name = "Simtek Medium Slate Blue", color = { R = 0.455, G = 0.529, B = 0.827, A = 1 } },
    { name = "Team Lotus Peach Puff", color = { R = 0.714, G = 0.6, B = 0.357, A = 1 } },
    { name = "Team Lotus Orange", color = { R = 0.984, G = 0.667, B = 0.118, A = 1 } },
    { name = "Team Penske Red", color = { R = 0.812, G = 0.063, B = 0.176, A = 1 } },
    { name = "Toleman Blue", color = { R = 0.016, G = 0.008, B = 0.769, A = 1 } },
    { name = "Williams Racing Sky Blue", color = { R = 0, G = 0.627, B = 0.871, A = 1 } },
    { name = "[Vintage Military Colors]", color = { R = 0, G = 0, B = 0, A = 0 } },
    { name = "Soviet 4BO Green", color = { R = 0.314, G = 0.329, B = 0.239, A = 1 } },
    { name = "US Olive Drab", color = { R = 0.282, G = 0.353, B = 0.251, A = 1 } },
    { name = "US Desert Sand", color = { R = 0.780, G = 0.706, B = 0.620, A = 1 } },
    { name = "US Navy Blue‑Gray", color = { R = 0.290, G = 0.329, B = 0.380, A = 1 } },
    { name = "US Intermediate Blue", color = { R = 0.439, G = 0.518, B = 0.596, A = 1 } },
    { name = "German Panzergrau", color = { R = 0.290, G = 0.310, B = 0.333, A = 1 } },
    { name = "German Dunkelgelb", color = { R = 0.690, G = 0.604, B = 0.420, A = 1 } },
    { name = "German Olivgrün", color = { R = 0.420, G = 0.420, B = 0.278, A = 1 } },
    { name = "German Rotbraun", color = { R = 0.416, G = 0.243, B = 0.208, A = 1 } },
    { name = "Luftwaffe Grau", color = { R = 0.541, G = 0.541, B = 0.482, A = 1 } },
    { name = "Luftwaffe Schwarzgrün", color = { R = 0.227, G = 0.251, B = 0.208, A = 1 } },
    { name = "Luftwaffe Dunkelgrün", color = { R = 0.275, G = 0.290, B = 0.235, A = 1 } },
    { name = "UK Khaki Green No.3", color = { R = 0.373, G = 0.361, B = 0.247, A = 1 } },
    { name = "UK SCC No.2 Khaki Drab", color = { R = 0.482, G = 0.412, B = 0.318, A = 1 } },
    { name = "UK SCC No.1A Dark Brown", color = { R = 0.302, G = 0.251, B = 0.212, A = 1 } },
    { name = "UK SCC No.15 Olive Drab", color = { R = 0.369, G = 0.365, B = 0.278, A = 1 } },
    { name = "RAF Dark Earth", color = { R = 0.475, G = 0.408, B = 0.329, A = 1 } },
    { name = "RAF Dark Green", color = { R = 0.290, G = 0.329, B = 0.267, A = 1 } },
    { name = "RAF Sky", color = { R = 0.635, G = 0.718, B = 0.659, A = 1 } },
    { name = "NATO Green", color = { R = 0.294, G = 0.325, B = 0.220, A = 1 } },
    { name = "NATO Gelboliv", color = { R = 0.325, G = 0.310, B = 0.235, A = 1 } }
}

local MenuMode = {
    PAINT = 1,
    WEAPON = 2,
    PLAYER = 3,
    ITEM = 4
}

local MenuModeNames = {
    [MenuMode.PAINT] = "/////// Paint Mode",
    [MenuMode.WEAPON] = "/////// Weapon Mode", 
    [MenuMode.PLAYER] = "/////// Player Mode",
    [MenuMode.ITEM] = "/////// Item Mode"
}

local currentMode = MenuMode.PAINT
local currentColorIndex = 1
local isMetallic = false
local spawnedTools = {}
local currentPaintBomb, currentRustBrush, currentPolishBrush = nil, nil, nil
local currentAK, currentBazooka = nil, nil
local playerEnhancementsActive = {
    speedBoost = false,
    jumpBoost = false
}

local function ShowMessage(message)
    if not CONFIG.ENABLE_CHAT_MESSAGES then return end
    
    print("[HorizonToolkit] " .. message)
    
    local pc = FindFirstOf("PlayerController")
    if not pc or not pc:IsValid() then return end
    
    pcall(function()
        local chatStruct = {}
        chatStruct.Time_8_DF6F279248745BE38C2E40835DE88631 = 0
        chatStruct.User_6_4A6B517E45F066403FD3C4B4AA7C0FA3 = "[HorizonToolkit]"
        chatStruct.Mesage_7_79981D7A424DFD8E6876D888E700B202 = message
        chatStruct.IsInfoMessage_10_CD41743F409EA1DC4DD22CAC94591338 = false
        
        if pc.ServerSendChatMessage then
            pc:ServerSendChatMessage(chatStruct)
        end
    end)
end

local localAppDataPath = os.getenv("LOCALAPPDATA")
local modLogFilePath = nil

if localAppDataPath then
    modLogFilePath = localAppDataPath .. "\\DriveBeyondHorizons\\Saved\\Logs\\HorizonToolkit_Mod.log"
    print("[HorizonToolkit] Mod log path: " .. modLogFilePath)
else
    print("[HorizonToolkit] ERROR: Could not find LOCALAPPDATA environment variable.")
end

local function LogToModFile(message)
    if not modLogFilePath then
        return
    end

    local file, err = io.open(modLogFilePath, "a")
    if file then
        local timestamp = os.date("[%Y.%m.%d-%H.%M.%S]")
        local fileMessage = timestamp .. " [HorizonToolkit] " .. message .. "\n"
        file:write(fileMessage)
        file:close()
    else
        print("[HorizonToolkit] Could not create mod log file: " .. (err or "unknown error"))
    end
end

local function HasProperty(obj, propName)
    if not obj then return false end
    local success, result = pcall(function() return obj[propName] ~= nil end)
    return success and result
end

local function DestroyTool(tool)
    if tool and tool:IsValid() then
        local success, _ = pcall(function() return tool:K2_DestroyActor() end)
        if not success then
            print("[HorizonToolkit] Warning: Failed to destroy tool: " .. tostring(tool))
        end
    end
end

local function DestroyAllSpawnedTools()
    print("[HorizonToolkit] Destroying all spawned tools...")
    for i = #spawnedTools, 1, -1 do
        local tool = spawnedTools[i]
        DestroyTool(tool)
        table.remove(spawnedTools, i)
    end
    spawnedTools = {}
    currentPaintBomb = nil
    currentRustBrush = nil
    currentPolishBrush = nil
    currentAK = nil
    currentBazooka = nil
    print("[HorizonToolkit] All spawned tools destroyed.")
end

local function ConfigureSpawnedObject(actor)
    if not actor or not actor:IsValid() then return end

    pcall(function()
        if HasProperty(actor, "bEnableDebugLogging") then
            actor.bEnableDebugLogging = false
        end
        if HasProperty(actor, "bLogRotationChanges") then
            actor.bLogRotationChanges = false
        end
        if HasProperty(actor, "bLogStateChanges") then
            actor.bLogStateChanges = false
        end
        
        if HasProperty(actor, "RootComponent") and actor.RootComponent then
            local rootComp = actor.RootComponent
            pcall(function()
                if HasProperty(rootComp, "bNotifyRigidBodyCollision") then
                    rootComp.bNotifyRigidBodyCollision = false
                end
                if HasProperty(rootComp, "bGenerateOverlapEvents") then
                end
            end)
        end
        
        if HasProperty(actor, "PrimaryActorTick") and actor.PrimaryActorTick then
            pcall(function()
                local tick = actor.PrimaryActorTick
                if HasProperty(tick, "TickInterval") then
                    tick.TickInterval = 0.1
                end
                if HasProperty(tick, "bCanEverTick") then
                    if HasProperty(actor, "GetClass") then
                        local className = tostring(actor:GetClass())
                        if string.find(className, "Brush") or string.find(className, "Polish") then
                            tick.bCanEverTick = false
                        end
                    end
                end
            end)
        end
    end)
end

local function SpawnTool(toolPath, toolName, callback)
    local pc = FindFirstOf("PlayerController")
    if not pc or not pc.Pawn then return nil end

    local pawn = pc.Pawn
    local toolClass = StaticFindObject(toolPath)
    if not toolClass then
        ShowMessage("Error: Could not find " .. toolName .. " class")
        return nil
    end

    local location = pawn:K2_GetActorLocation()
    local yaw = (pawn:K2_GetActorRotation().Yaw or 0)
    local yawRad = yaw * (math.pi / 180.0)
    local spawnPos = {
        X = location.X + (math.cos(yawRad) * CONFIG.FORWARD_DISTANCE),
        Y = location.Y + (math.sin(yawRad) * CONFIG.FORWARD_DISTANCE),
        Z = (location.Z - CONFIG.GROUND_OFFSET) + CONFIG.GROUND_CLEARANCE
    }

    local world = pawn:GetWorld()
    local success, result = pcall(function()
        return world:SpawnActor(toolClass, spawnPos, {Pitch=0, Yaw=yaw, Roll=0})
    end)

    if success and result then
        ConfigureSpawnedObject(result)
        
        table.insert(spawnedTools, result)
        if callback then
            callback(result)
        end
        return result
    else
        ShowMessage("Error: Failed to spawn " .. toolName)
        return nil
    end
end

local function SetInfiniteToolProperties(tool)
    if not tool or not tool:IsValid() then return end

    tool.Quantity = CONFIG.INFINITE_QUANTITY
    tool.MinQuantity = 0
    tool.MaxQuantity = CONFIG.INFINITE_QUANTITY

    pcall(function()
        if HasProperty(tool, "OnRep_Quantity") then tool:OnRep_Quantity() end
    end)
end

local function SetPaintBombProperties(paintBomb, colorData, metallic)
    if not paintBomb or not paintBomb:IsValid() then return end

    local color = colorData.color
    paintBomb.Color = color
    paintBomb.Metallic = metallic and 1.0 or 0.0

    SetInfiniteToolProperties(paintBomb)

    if HasProperty(paintBomb, "ApplicationAmount") then
        paintBomb.ApplicationAmount = 1.0
    end
    if HasProperty(paintBomb, "ApplicationRate") then
        paintBomb.ApplicationRate = 1.0
    end
    if HasProperty(paintBomb, "PaintAmount") then
        paintBomb.PaintAmount = 1.0
    end
    if HasProperty(paintBomb, "PaintCoverage") then
        paintBomb.PaintCoverage = 0.5
    end
    if HasProperty(paintBomb, "PaintRate") then
        paintBomb.PaintRate = 1.0
    end
    if HasProperty(paintBomb, "SprayAmount") then
        paintBomb.SprayAmount = 1.0
    end
    if HasProperty(paintBomb, "SprayRate") then
        paintBomb.SprayRate = 1.0
    end

    pcall(function()
        if HasProperty(paintBomb, "OnRep_Color") then paintBomb:OnRep_Color() end
        if HasProperty(paintBomb, "OnRep_Metallic") then paintBomb:OnRep_Metallic() end
    end)
end

function SpawnPaintCan()
    if currentPaintBomb and currentPaintBomb:IsValid() then
        DestroyTool(currentPaintBomb)
        for i = #spawnedTools, 1, -1 do
            if spawnedTools[i] == currentPaintBomb then
                table.remove(spawnedTools, i)
                break
            end
        end
    end

    if not Colors or #Colors == 0 or currentColorIndex < 1 or currentColorIndex > #Colors then
        ShowMessage("Error: Cannot spawn paint - invalid color configuration")
        currentColorIndex = 1 
        return nil
    end

    local result = SpawnTool(ASSET_PATHS.PAINT_BOMB, "PaintBomb", function(paintBomb)
        currentPaintBomb = paintBomb
        SetPaintBombProperties(currentPaintBomb, Colors[currentColorIndex], isMetallic)

        local colorName = Colors[currentColorIndex].name
        local sheenType = isMetallic and "Metallic" or "Matte"
        local message = string.format("Spawned %s %s paint", colorName, sheenType)

        ShowMessage(message)
    end)
    return result
end

function SpawnRustBrush()
    if currentRustBrush and currentRustBrush:IsValid() then
        DestroyTool(currentRustBrush)
        for i = #spawnedTools, 1, -1 do
            if spawnedTools[i] == currentRustBrush then
                table.remove(spawnedTools, i)
                break
            end
        end
    end

    local result = SpawnTool(ASSET_PATHS.RUST_BRUSH, "RustBrush", function(brush)
        currentRustBrush = brush
        SetInfiniteToolProperties(brush)
        ShowMessage("Spawned Rust Brush")
    end)
    return result
end

function SpawnPolishBrush()
    if currentPolishBrush and currentPolishBrush:IsValid() then
        DestroyTool(currentPolishBrush)
        for i = #spawnedTools, 1, -1 do
            if spawnedTools[i] == currentPolishBrush then
                table.remove(spawnedTools, i)
                break
            end
        end
    end

    local result = SpawnTool(ASSET_PATHS.POLISH_BRUSH, "PolishBrush", function(brush)
        currentPolishBrush = brush
        SetInfiniteToolProperties(brush)
        ShowMessage("Spawned Polish Sponge")
    end)
    return result
end

local function UpdatePaintCan()
    if currentPaintBomb and currentPaintBomb:IsValid() then
        if not Colors or #Colors == 0 or currentColorIndex < 1 or currentColorIndex > #Colors then
            ShowMessage("Warning: Cannot update paint - invalid color configuration")
            currentColorIndex = 1
            return
        end
        SetPaintBombProperties(currentPaintBomb, Colors[currentColorIndex], isMetallic)
    end
end

function CycleColor(direction)
    if not Colors or #Colors == 0 then
        ShowMessage("Error: No colors available")
        return
    end
    
    currentColorIndex = currentColorIndex + direction
    if currentColorIndex > #Colors then currentColorIndex = 1 end
    if currentColorIndex < 1 then currentColorIndex = #Colors end

    if currentColorIndex < 1 or currentColorIndex > #Colors then
        currentColorIndex = 1
        ShowMessage("Warning: Color index reset to default")
    end

    local colorName = Colors[currentColorIndex].name
    local sheenType = isMetallic and "Metallic" or "Matte"
    local message = string.format("Color: %s (%s)", colorName, sheenType)

    ShowMessage(message)
    UpdatePaintCan()
end

function ToggleSheen()
    if not Colors or #Colors == 0 or currentColorIndex < 1 or currentColorIndex > #Colors then
        ShowMessage("Error: Invalid color configuration")
        return
    end
    
    isMetallic = not isMetallic

    local colorName = Colors[currentColorIndex].name
    local sheenType = isMetallic and "Metallic" or "Matte"
    local message = string.format("Color: %s (%s)", colorName, sheenType)

    ShowMessage(message)
    UpdatePaintCan()
end

local function SetInfiniteAmmoProperties(weapon)
    if not weapon or not weapon:IsValid() then return end

    weapon.NbBulletMax = CONFIG.INFINITE_AMMO
    weapon.NbBullet = CONFIG.INFINITE_AMMO

    pcall(function()
        if HasProperty(weapon, "OnRep_NbBullet") then weapon:OnRep_NbBullet() end
    end)
end

function SpawnAKWeapon()
    if currentAK and currentAK:IsValid() then
        DestroyTool(currentAK)
        for i = #spawnedTools, 1, -1 do
            if spawnedTools[i] == currentAK then
                table.remove(spawnedTools, i)
                break
            end
        end
    end

    local result = SpawnTool(ASSET_PATHS.AK_WEAPON, "AK Weapon", function(weapon)
        currentAK = weapon
        SetInfiniteAmmoProperties(weapon)
        ShowMessage("Spawned AK")
    end)
    return result
end

function SpawnBazooka()
    if currentBazooka and currentBazooka:IsValid() then
        DestroyTool(currentBazooka)
        for i = #spawnedTools, 1, -1 do
            if spawnedTools[i] == currentBazooka then
                table.remove(spawnedTools, i)
                break
            end
        end
    end

    local result = SpawnTool(ASSET_PATHS.BAZOOKA, "Bazooka", function(bazooka)
        currentBazooka = bazooka
        ShowMessage("Spawned Bazooka")
    end)
    return result
end

local function ApplyForwardVelocity(speed)
    local pc = FindFirstOf("PlayerController")
    if not pc then return end
    local pawn = pc.Pawn
    if not pawn then return end
    local movementComponent = pawn.CharacterMovement or pawn.MovementComponent
    if not movementComponent then return end
    local forwardVector = pawn:GetActorForwardVector()
    if not forwardVector then return end

    local newVelocity = {
        X = forwardVector.X * speed,
        Y = forwardVector.Y * speed,
        Z = forwardVector.Z * speed
    }

    local ok = pcall(function() movementComponent.Velocity = newVelocity end)
end

local function ApplyUltraSpeedSettings()
    local pc = FindFirstOf("PlayerController")
    if not pc or not pc.Pawn then return end
    
    local player = pc.Pawn
    
    pcall(function()
        local alsMovementComponent = nil
        if HasProperty(player, "MyCharacterMovementComponent") then
            alsMovementComponent = player.MyCharacterMovementComponent
        elseif HasProperty(player, "GetMyMovementComponent") then
            alsMovementComponent = player:GetMyMovementComponent()
        end
        
        if alsMovementComponent then
            if HasProperty(alsMovementComponent, "bRequestMovementSettingsChange") then
                alsMovementComponent.bRequestMovementSettingsChange = true
            end
            
            if HasProperty(alsMovementComponent, "CurrentMovementSettings") then
                local settings = alsMovementComponent.CurrentMovementSettings
                if settings then
                    settings.WalkSpeed = 800.0
                    settings.RunSpeed = 1600.0
                    settings.SprintSpeed = 3000.0
                    
                    if HasProperty(alsMovementComponent, "SetMovementSettings") then
                        alsMovementComponent:SetMovementSettings(settings)
                    end
                end
            end
            
            alsMovementComponent.MaxWalkSpeed = 3000.0
            alsMovementComponent.MaxWalkSpeedCrouched = 800.0
            if HasProperty(alsMovementComponent, "MaxAcceleration") then
                alsMovementComponent.MaxAcceleration = 8192.0
            end
            if HasProperty(alsMovementComponent, "BrakingDecelerationWalking") then
                alsMovementComponent.BrakingDecelerationWalking = 4000.0
            end
            
            if HasProperty(alsMovementComponent, "bRequestMovementSettingsChange") then
                alsMovementComponent.bRequestMovementSettingsChange = true
            end
        end
    end)
    
    pcall(function()
        if HasProperty(player, "BoostSpeed") then
            player.BoostSpeed = 3000.0
        end
        if HasProperty(player, "DebugSpeedMultiplier") then
            player.DebugSpeedMultiplier = 5.0
        end
    end)
end

local function ApplyUltraSpeedBoost()
    if not playerEnhancementsActive.speedBoost then return end
    
    local pc = FindFirstOf("PlayerController")
    if not pc or not pc.Pawn then return end
    
    local player = pc.Pawn
    
    local isSprinting = false
    local hasSignificantMovement = false
    
    pcall(function()
        local movementComponent = player.CharacterMovement or player.MovementComponent
        if movementComponent then
            if HasProperty(movementComponent, "GetLastInputVector") then
                local inputVector = movementComponent:GetLastInputVector()
                if inputVector then
                    local inputMagnitude = math.sqrt(inputVector.X^2 + inputVector.Y^2 + inputVector.Z^2)
                    hasSignificantMovement = inputMagnitude > 0.3
                end
            end
            
            if hasSignificantMovement then
                local currentVel = movementComponent.Velocity
                local speed = math.sqrt(currentVel.X^2 + currentVel.Y^2 + currentVel.Z^2)
                hasSignificantMovement = hasSignificantMovement and speed > 50
            end
            
            if HasProperty(movementComponent, "bHasMovementInput") then
                isSprinting = movementComponent.bHasMovementInput and hasSignificantMovement
            end
        end
        
        if HasProperty(player, "IsSprinting") then
            isSprinting = isSprinting or (player.IsSprinting and hasSignificantMovement)
        end
    end)
    
    if isSprinting and hasSignificantMovement then
        pcall(function()
            local movementComponent = player.CharacterMovement or player.MovementComponent
            local currentVel = movementComponent.Velocity
            local currentSpeed = math.sqrt(currentVel.X^2 + currentVel.Y^2 + currentVel.Z^2)
            
            if currentSpeed < 1000.0 then
                ApplyForwardVelocity(1200.0)
            else
                local forwardVector = player:GetActorForwardVector()
                if forwardVector then
                    local maintainVelocity = {
                        X = forwardVector.X * 1200.0,
                        Y = forwardVector.Y * 1200.0,
                        Z = currentVel.Z
                    }
                    movementComponent.Velocity = maintainVelocity
                end
            end
        end)
    end
end

local function ApplyPlayerJumpBoost(enable)
    local pc = FindFirstOf("PlayerController")
    if not pc or not pc.Pawn then return end
    
    local player = pc.Pawn
    local movementComponent = nil
    
    if HasProperty(player, "CharacterMovement") then
        movementComponent = player.CharacterMovement
    elseif HasProperty(player, "GetCharacterMovement") then
        pcall(function()
            movementComponent = player:GetCharacterMovement()
        end)
    end
    
    if movementComponent then
        pcall(function()
            if enable then
                if HasProperty(movementComponent, "JumpZVelocity") then
                    movementComponent.JumpZVelocity = movementComponent.JumpZVelocity * CONFIG.JUMP_MULTIPLIER
                end
            else
                if HasProperty(movementComponent, "JumpZVelocity") and CONFIG.JUMP_MULTIPLIER > 0 then
                    movementComponent.JumpZVelocity = movementComponent.JumpZVelocity / CONFIG.JUMP_MULTIPLIER
                end
            end
        end)
    end
end

local function TogglePlayerSpeedBoost()
    playerEnhancementsActive.speedBoost = not playerEnhancementsActive.speedBoost
    
    if playerEnhancementsActive.speedBoost then
        ShowMessage("Super speed ENABLED")
        
        ApplyUltraSpeedSettings()
        
        pcall(function()
            local world = nil
            local pc = FindFirstOf("PlayerController")
            if pc and pc.Pawn then
                world = pc.Pawn:GetWorld()
            end
            
            if world and HasProperty(world, "GetTimerManager") then
                local timerManager = world:GetTimerManager()
                if timerManager and HasProperty(timerManager, "SetTimer") then
                    timerManager:SetTimer(function()
                        ApplyUltraSpeedBoost()
                    end, 0.02, true)
                end
            end
        end)
    else
        ShowMessage("Super speed DISABLED")
        
        pcall(function()
            local pc = FindFirstOf("PlayerController")
            if pc and pc.Pawn then
                local player = pc.Pawn
                local movementComponent = player.CharacterMovement or player.MovementComponent
                if movementComponent then
                    movementComponent.Velocity = {X = 0, Y = 0, Z = 0}
                end
                
                local world = pc.Pawn:GetWorld()
                if world and HasProperty(world, "GetTimerManager") then
                    local timerManager = world:GetTimerManager()
                    if timerManager and HasProperty(timerManager, "ClearAllTimers") then
                        timerManager:ClearAllTimers()
                    end
                end
            end
        end)
        
        pcall(function()
            local pc = FindFirstOf("PlayerController")
            if pc and pc.Pawn then
                local player = pc.Pawn
                if HasProperty(player, "BP_EnergyComponent") then
                    pcall(function()
                        local energyComp = player.BP_EnergyComponent
                        if energyComp then
                            if HasProperty(energyComp, "BoostSpeed") then
                                energyComp.BoostSpeed = 0.0
                            end
                            if HasProperty(energyComp, "bEnabled") then
                                energyComp.bEnabled = false
                            end
                        end
                    end)
                end
                
                local alsMovementComponent = nil
                if HasProperty(player, "MyCharacterMovementComponent") then
                    alsMovementComponent = player.MyCharacterMovementComponent
                elseif HasProperty(player, "GetMyMovementComponent") then
                    alsMovementComponent = player:GetMyMovementComponent()
                end
                
                if alsMovementComponent then
                    alsMovementComponent.bRequestMovementSettingsChange = true
                    if HasProperty(alsMovementComponent, "CurrentMovementSettings") then
                        local settings = alsMovementComponent.CurrentMovementSettings
                        if settings then
                            settings.WalkSpeed = 165.0
                            settings.RunSpeed = 375.0 
                            settings.SprintSpeed = 600.0
                            
                            if HasProperty(alsMovementComponent, "SetMovementSettings") then
                                alsMovementComponent:SetMovementSettings(settings)
                            end
                        end
                    end
                    
                    alsMovementComponent.MaxWalkSpeed = 600.0
                    alsMovementComponent.MaxWalkSpeedCrouched = 165.0
                    if HasProperty(alsMovementComponent, "MaxAcceleration") then
                        alsMovementComponent.MaxAcceleration = 2048.0
                    end
                    if HasProperty(alsMovementComponent, "BrakingDecelerationWalking") then
                        alsMovementComponent.BrakingDecelerationWalking = 2000.0
                    end
                    
                    alsMovementComponent.bRequestMovementSettingsChange = true
                    
                    if HasProperty(alsMovementComponent, "AllowedGait") then
                        alsMovementComponent.AllowedGait = 3
                    end
                    if HasProperty(alsMovementComponent, "SetAllowedGait") then
                        alsMovementComponent:SetAllowedGait(3)
                    end
                end
                
                if HasProperty(player, "BoostSpeed") then
                    player.BoostSpeed = 0.0
                end
                if HasProperty(player, "DebugSpeedMultiplier") then
                    player.DebugSpeedMultiplier = 1.0
                end
                if HasProperty(player, "IsSprinting") then
                    player.IsSprinting = false
                end
            end
        end)
        
        pcall(function()
            local pc = FindFirstOf("PlayerController")
            if pc and pc.Pawn then
                local player = pc.Pawn
                
                if HasProperty(player, "BoostSpeed") then
                    player.BoostSpeed = 0.0
                end
                if HasProperty(player, "DebugSpeedMultiplier") then
                    player.DebugSpeedMultiplier = 1.0
                end
                
                local movementComponent = player.CharacterMovement or player.MovementComponent
                if movementComponent then
                    movementComponent.Velocity = {X = 0, Y = 0, Z = 0}
                end
            end
        end)
        
        pcall(function()
            local pc = FindFirstOf("PlayerController")
            if pc and pc.Pawn then
                local world = pc.Pawn:GetWorld()
                if world and HasProperty(world, "GetTimerManager") then
                    local timerManager = world:GetTimerManager()
                    if timerManager and HasProperty(timerManager, "SetTimer") then
                        timerManager:SetTimer(function()
                            pcall(function()
                                local pc2 = FindFirstOf("PlayerController")
                                if pc2 and pc2.Pawn then
                                    local player2 = pc2.Pawn
                                    pcall(function()
                                        if HasProperty(player2, "BP_EnergyComponent") then
                                            local energyComp = player2.BP_EnergyComponent
                                            if energyComp then
                                                if HasProperty(energyComp, "BoostSpeed") then
                                                    energyComp.BoostSpeed = 0.0
                                                end
                                                if HasProperty(energyComp, "bEnabled") then
                                                    energyComp.bEnabled = false
                                                end
                                            end
                                        end
                                    end)
                                    
                                    local alsMovement2 = player2.MyCharacterMovementComponent
                                    if alsMovement2 then
                                        alsMovement2.MaxWalkSpeed = 600.0
                                        alsMovement2.bRequestMovementSettingsChange = true
                                        
                                        if HasProperty(alsMovement2, "CurrentMovementSettings") then
                                            local settings2 = alsMovement2.CurrentMovementSettings
                                            if settings2 then
                                                settings2.WalkSpeed = 165.0
                                                settings2.RunSpeed = 375.0
                                                settings2.SprintSpeed = 600.0
                                            end
                                        end
                                    end
                                    
                                    if HasProperty(player2, "BoostSpeed") then
                                        player2.BoostSpeed = 0.0
                                    end
                                    if HasProperty(player2, "DebugSpeedMultiplier") then
                                        player2.DebugSpeedMultiplier = 1.0
                                    end
                                end
                            end)
                        end, 0.1, false)
                    end
                end
            end
        end)
        
        ShowMessage("Speed reset complete")
    end
end

local function TogglePlayerJumpBoost()
    playerEnhancementsActive.jumpBoost = not playerEnhancementsActive.jumpBoost
    ApplyPlayerJumpBoost(playerEnhancementsActive.jumpBoost)
    
    if playerEnhancementsActive.jumpBoost then
        ShowMessage("Jump boost ENABLED")
    else
        ShowMessage("Jump boost DISABLED")
    end
end

local function CycleMode()
    currentMode = currentMode + 1
    if currentMode > MenuMode.ITEM then currentMode = MenuMode.PAINT end
    
    ShowMessage("" .. MenuModeNames[currentMode])
    
    if currentMode == MenuMode.PAINT then
        ShowMessage("F5=Paint, F6=Rust, F7=Polish | []=Color, \\=Sheen")
    elseif currentMode == MenuMode.WEAPON then
        ShowMessage("F5=AK, F6=Bazooka")
    elseif currentMode == MenuMode.PLAYER then
        ShowMessage("F5=Speed Boost, F6=Jump Boost")
    elseif currentMode == MenuMode.ITEM then
        ShowMessage("F5=Food, F6=SodaCan")
    end
end

local function HandleF5()
    if currentMode == MenuMode.PAINT then
        SpawnPaintCan()
    elseif currentMode == MenuMode.WEAPON then
        SpawnAKWeapon()
    elseif currentMode == MenuMode.PLAYER then
        TogglePlayerSpeedBoost()
    elseif currentMode == MenuMode.ITEM then
        SpawnTool(ASSET_PATHS.CAN_FOOD, "Canned Food", function(food)
            ShowMessage("Spawned canned food")
        end)
    end
end

local function HandleF6()
    if currentMode == MenuMode.PAINT then
        SpawnRustBrush()
    elseif currentMode == MenuMode.WEAPON then
        SpawnBazooka()
    elseif currentMode == MenuMode.PLAYER then
        TogglePlayerJumpBoost()
    elseif currentMode == MenuMode.ITEM then
        SpawnTool(ASSET_PATHS.SODA_CAN, "Soda Can", function(drink)
            ShowMessage("Spawned soda can")
        end)
    end
end

local function HandleF7()
    if currentMode == MenuMode.PAINT then
        SpawnPolishBrush()
    end
end

local function HandleLeftBracket()
    if currentMode == MenuMode.PAINT then
        CycleColor(-1)
    end
end

local function HandleRightBracket()
    if currentMode == MenuMode.PAINT then
        CycleColor(1)
    end
end

local function HandleBackslash()
    if currentMode == MenuMode.PAINT then
        ToggleSheen()
    end
end

RegisterKeyBind(Key.F4, function() CycleMode(); return false end)
RegisterKeyBind(Key.F5, function() HandleF5(); return false end)
RegisterKeyBind(Key.F6, function() HandleF6(); return false end)
RegisterKeyBind(Key.F7, function() HandleF7(); return false end)
RegisterKeyBind(Key.OEM_FOUR, function() HandleLeftBracket(); return false end)
RegisterKeyBind(Key.OEM_SIX, function() HandleRightBracket(); return false end)
RegisterKeyBind(Key.OEM_FIVE, function() HandleBackslash(); return false end)

LogToModFile("UE4SS and HorizonToolkit loaded successfully!")

function OnModuleUnload()
    ShowMessage("HorizonToolkit unloading...")
    DestroyAllSpawnedTools()
    ShowMessage("HorizonToolkit unloaded")
end

local welcomeShown = false
local scenarioScreenDetected = false

local function ShowWelcomeMessages()
    if welcomeShown then return end
    
    ShowMessage("Loading mod suite...")
    ShowMessage("HorizonToolkit loaded successfully!")
    ShowMessage("F4: Cycle modes | Current: Paint Mode")
    ShowMessage("F5=Paint, F6=Rust, F7=Polish | []=Color, \\=Sheen")
    
    welcomeShown = true
    print("[HorizonToolkit] Chat messages printed.")
end

local function MonitorScenarioScreenRemoval(scenarioScreen)
    if not scenarioScreen or not scenarioScreen:IsValid() then return end
    
    print("[HorizonToolkit] Monitoring scenario screen for removal...")

    local checkTimer
    checkTimer = function()
        pcall(function()
            if not scenarioScreen:IsValid() or not scenarioScreen then
                print("[HorizonToolkit] Scenario screen removed - showing welcome messages")
                ShowWelcomeMessages()
                return
            end
            
            local isVisible = false
            pcall(function()
                if scenarioScreen.GetVisibility then
                    local visibility = scenarioScreen:GetVisibility()
                    isVisible = (visibility == 0 or visibility == 2)
                end
            end)
            
            if not isVisible and not welcomeShown then
                print("[HorizonToolkit] Scenario screen is no longer visible - showing welcome messages")
                ShowWelcomeMessages()
                return
            end
            
            if not welcomeShown then
                ExecuteInGameThread(function()
                    ExecuteWithDelay(500, checkTimer)
                end)
            end
        end)
    end
    
    ExecuteInGameThread(function()
        ExecuteWithDelay(1000, checkTimer)
    end)
end


local function MonitorScenarioScreenWidget()
    NotifyOnNewObject("/Game/UI/WBP_ScenarioScreen.WBP_ScenarioScreen_C", function(scenarioScreen)
        if welcomeShown then return end
        
        if scenarioScreen and scenarioScreen:IsValid() then
            print("[HorizonToolkit] Scenario screen detected")
            scenarioScreenDetected = true
            
            pcall(function()
                if scenarioScreen.TextBlock_39 then
                    print("[HorizonToolkit] Scenario screen has text component - monitoring for completion")
                end
            end)
            
            MonitorScenarioScreenRemoval(scenarioScreen)
        end
    end)
    
    print("[HorizonToolkit] Waiting for scenario screen widget to appear...")
end

ExecuteInGameThread(function()
    ExecuteWithDelay(1000, function()
        print("[HorizonToolkit] Looking for scenario screen...")
        MonitorScenarioScreenWidget()
    end)
end)