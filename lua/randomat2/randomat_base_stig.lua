-- Randomat base code from Malivil's randomat mod
-- Does not run if a convar added by Malivil's randomat mod is detected to ensure a potentially newer version of the randomat base isn't overridden
if not GetGlobalBool("DisableStigRandomatBase", false) then
    util.AddNetworkString("randomat_message")
    util.AddNetworkString("randomat_message_silent")
    util.AddNetworkString("AlertTriggerFinal")
    util.AddNetworkString("alerteventtrigger")
    util.AddNetworkString("RdmtSetSpeedMultiplier")
    util.AddNetworkString("RdmtSetSpeedMultiplier_WithWeapon")
    util.AddNetworkString("RdmtRemoveSpeedMultiplier")
    util.AddNetworkString("RdmtRemoveSpeedMultipliers")
    util.AddNetworkString("TTT_RoleChanged")
    util.AddNetworkString("TTT_LogInfo")
    ROLE_JESTER = ROLE_JESTER or -1
    ROLE_SWAPPER = ROLE_SWAPPER or -1
    ROLE_GLITCH = ROLE_GLITCH or -1
    ROLE_PHANTOM = ROLE_PHANTOM or ROLE_PHOENIX or -1
    ROLE_HYPNOTIST = ROLE_HYPNOTIST or -1
    ROLE_REVENGER = ROLE_REVENGER or -1
    ROLE_DRUNK = ROLE_DRUNK or -1
    ROLE_CLOWN = ROLE_CLOWN or -1
    ROLE_DEPUTY = ROLE_DEPUTY or -1
    ROLE_IMPERSONATOR = ROLE_IMPERSONATOR or -1
    ROLE_BEGGAR = ROLE_BEGGAR or -1
    ROLE_OLDMAN = ROLE_OLDMAN or -1
    ROLE_MERCENARY = ROLE_MERCENARY or ROLE_SURVIVALIST or -1
    ROLE_BODYSNATCHER = ROLE_BODYSNATCHER or -1
    ROLE_VETERAN = ROLE_VETERAN or -1
    ROLE_ASSASSIN = ROLE_ASSASSIN or -1
    ROLE_KILLER = ROLE_KILLER or ROLE_SERIALKILLER or -1
    ROLE_ZOMBIE = ROLE_ZOMBIE or ROLE_INFECTED or -1
    ROLE_VAMPIRE = ROLE_VAMPIRE or -1
    ROLE_DOCTOR = ROLE_DOCTOR or -1
    ROLE_QUACK = ROLE_QUACK or -1
    ROLE_PARASITE = ROLE_PARASITE or -1
    ROLE_TRICKSTER = ROLE_TRICKSTER or -1
    ROLE_DETRAITOR = ROLE_DETRAITOR or -1
    Randomat.Events = Randomat.Events or {}
    Randomat.ActiveEvents = {}
    local randomat_meta = {}
    randomat_meta.__index = randomat_meta
    --[[
 Event History
]]
    --
    Randomat.EventHistory = {}

    local function IsEventInHistory(event)
        if type(event) ~= "table" then
            event = Randomat.Events[event]
        end

        if event == nil then return end

        return table.HasValue(Randomat.EventHistory, event.Id)
    end

    local function TruncateEventHistory(count)
        if count <= 0 then return end

        -- Make sure we only keep the configured number of events
        if #Randomat.EventHistory > count then
            local extra = #Randomat.EventHistory - count
            local keep = {}

            for i = extra + 1, #Randomat.EventHistory do
                table.insert(keep, Randomat.EventHistory[i])
            end

            Randomat.EventHistory = keep
        end
    end

    local function SaveEventHistory()
        -- Save each event ID on a new line
        local history = string.Implode("\n", Randomat.EventHistory)
        file.Write("randomat/history.txt", history)
    end

    local function CheckEventHistoryFile()
        -- Make sure the directory exists
        if not file.IsDir("randomat", "DATA") then
            if file.Exists("randomat", "DATA") then
                ErrorNoHalt("Item named 'randomat' already exists in garrysmod/data but it is not a directory\n")

                return false
            end

            file.CreateDir("randomat")
        end

        -- Make sure the file exists
        if not file.Exists("randomat/history.txt", "DATA") then
            file.Write("randomat/history.txt", "")
        end

        return true
    end

    local function AddEventToHistory(event)
        local count = GetConVar("ttt_randomat_event_history"):GetInt()
        if count <= 0 then return end
        if not CheckEventHistoryFile() then return end

        if type(event) ~= "table" then
            event = Randomat.Events[event]
        end

        if event == nil then return end
        table.insert(Randomat.EventHistory, event.Id)
        TruncateEventHistory(count)
        SaveEventHistory()
    end

    local function LoadEventHistory()
        local count = GetConVar("ttt_randomat_event_history"):GetInt()
        if count <= 0 then return end
        if not CheckEventHistoryFile() then return end
        -- Read each entry from the file and save them
        local history = string.Split(file.Read("randomat/history.txt", "DATA"), "\n")

        for _, h in ipairs(history) do
            if #h > 0 then
                table.insert(Randomat.EventHistory, h)
            end
        end

        TruncateEventHistory(count)
        SaveEventHistory()
    end

    LoadEventHistory()

    concommand.Add("ttt_randomat_clearhistory", function()
        table.Empty(Randomat.EventHistory)
        SaveEventHistory()
    end)

    --[[
 Event Notifications
]]
    --
    local function NotifyDescription(event)
        -- Show this if "secret" is active if we're specifically showing the description for "secret"
        if event.Id ~= "secret" and Randomat:IsEventActive("secret") then return end
        net.Start("randomat_message")
        net.WriteBool(false)
        net.WriteString(event.Description)
        net.WriteUInt(0, 8)
        net.Broadcast()
    end

    local function ChatDescription(ply, event, has_description)
        -- Show this if "secret" is active if we're specifically showing the description for "secret"
        if event.Id ~= "secret" and Randomat:IsEventActive("secret") then return end
        if not IsValid(ply) then return end
        local title = Randomat:GetEventTitle(event)
        local description = ""

        if has_description then
            description = " | " .. event.Description
        end

        ply:PrintMessage(HUD_PRINTTALK, "[RANDOMAT] " .. title .. description)
    end

    --[[
 Event Control
]]
    --
    local function EndEvent(evt)
        evt:CleanUpHooks()

        local function End()
            evt:End()
        end

        local function Catch(err)
            ErrorNoHalt("WARNING: Randomat event '" .. evt.Id .. "' caused an error when it was being Ended. Please report to the addon developer with the following error:\n", err, "\n")
        end

        xpcall(End, Catch)
    end

    local function TriggerEvent(event, ply, silent, ...)
        if not silent then
            -- If this event is supposed to start secretly, trigger "secret" with this specific event chosen
            -- Unless "secret" is already running in which case we don't care, just let it go
            if event.StartSecret and not Randomat:IsEventActive("secret") then
                TriggerEvent(Randomat.Events["secret"], ply, false, event.id)

                return
            end

            Randomat:EventNotify(event.Title)
        end

        local owner = Randomat:GetValidPlayer(ply)
        local index = #Randomat.ActiveEvents + 1
        Randomat.ActiveEvents[index] = event
        Randomat.ActiveEvents[index].owner = owner
        Randomat.ActiveEvents[index]:Begin(...)
        -- Run this after the "Begin" so we have the latest title and description
        local title = Randomat:GetEventTitle(event)
        Randomat:LogEvent("[RANDOMAT] Event '" .. title .. "' (" .. event.Id .. ") started by " .. owner:Nick())

        if not silent then
            local has_description = event.Description ~= nil and #event.Description > 0

            if has_description and GetConVar("ttt_randomat_event_hint"):GetBool() then
                -- Show the small description message but don't use SmallNotify because it specifically mutes when "secret" is running and we want to show this if this event IS "secret"
                NotifyDescription(event)
            end

            if GetConVar("ttt_randomat_event_hint_chat"):GetBool() then
                for _, p in ipairs(player.GetAll()) do
                    ChatDescription(p, event, has_description)
                end
            end
        end

        -- Let other addons know that an event was started
        hook.Call("TTTRandomatTriggered", nil, event.Id, owner)
    end

    --[[
 Randomat Namespace
]]
    --
    function Randomat:EndActiveEvent(id)
        for k, evt in pairs(Randomat.ActiveEvents) do
            if evt.Id == id then
                EndEvent(evt)
                table.remove(Randomat.ActiveEvents, k)

                return
            end
        end

        error("Could not find active event '" .. id .. "'")
    end

    function Randomat:IsEventActive(id)
        for _, v in pairs(Randomat.ActiveEvents) do
            if v.id == id then return true end
        end

        return false
    end

    function Randomat:GetEventTitle(event)
        if event.Title == "" then return event.AltTitle end

        return event.Title
    end

    function Randomat:GetPlayers(shuffle, alive_only, dead_only)
        local plys = {}

        -- Optimize this to get the full raw list if both alive and dead should be included
        if alive_only == dead_only then
            plys = player.GetAll()
        else
            for _, ply in ipairs(player.GetAll()) do
                if IsValid(ply) and ((not alive_only and not dead_only) or (alive_only and (ply:Alive() and not ply:IsSpec())) or (dead_only and (not ply:Alive() or ply:IsSpec()))) then
                    -- Anybody
                    -- Alive and non-spec
                    -- Dead or spec
                    table.insert(plys, ply)
                end
            end
        end

        if shuffle then
            table.Shuffle(plys)
        end

        return plys
    end

    function Randomat:GetValidPlayer(ply)
        if IsValid(ply) and ply:Alive() and not ply:IsSpec() then return ply end

        return Randomat:GetPlayers(true, true)[1]
    end

    function Randomat:SetRole(ply, role)
        -- Reset the Veteran damage bonus
        if ply:GetRole() == ROLE_VETERAN and role ~= ROLE_VETERAN then
            ply:SetNWBool("VeteranActive", false)
        end

        -- Heal the Old Man back to full when they are converted
        if ply:GetRole() == ROLE_OLDMAN and role ~= ROLE_OLDMAN then
            ply:SetMaxHealth(100)
            ply:SetHealth(100)
        end

        ply:SetRole(role)
        net.Start("TTT_RoleChanged")
        net.WriteString(ply:SteamID64())

        if CR_VERSION and CRVersion("1.1.2") then
            net.WriteInt(role, 8)
        else
            net.WriteUInt(role, 8)
        end

        net.Broadcast()
    end

    function Randomat:register(tbl)
        local id = tbl.id
        tbl.Id = id
        tbl.__index = tbl

        -- Default SingleUse to true if it isn't specified
        if tbl.SingleUse ~= false then
            tbl.SingleUse = true
        end

        -- Default StartSecret to false if it isn't specified
        if tbl.StartSecret ~= true then
            tbl.StartSecret = false
        end

        -- Default the event type if it's not specified
        if tbl.Type == nil then
            tbl.Type = EVENT_TYPE_DEFAULT
        end

        setmetatable(tbl, randomat_meta)
        Randomat.Events[id] = tbl

        CreateConVar("ttt_randomat_" .. id, 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

        CreateConVar("ttt_randomat_" .. id .. "_min_players", 0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

        local weight = CreateConVar("ttt_randomat_" .. id .. "_weight", -1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

        local default_weight = GetConVar("ttt_randomat_event_weight"):GetInt()

        -- If the current weight matches the default, update the per-event weight to the new default of -1
        if weight:GetInt() == default_weight then
            print("Event '" .. id .. "' weight (" .. weight:GetInt() .. ") matches default weight (" .. default_weight .. "), resetting to -1")
            weight:SetInt(-1)
        end
    end

    function Randomat:unregister(id)
        if not Randomat.Events[id] then return end
        Randomat.Events[id] = nil
    end

    function Randomat:CanEventRun(event, ignore_history)
        if type(event) ~= "table" then
            event = Randomat.Events[event]
        end

        -- Basic checks
        if event == nil then return false, "No such event" end
        if not event:Enabled() then return false, "Not enabled" end
        if not event:Condition() then return false, "Condition not fulfilled" end
        -- Check there are enough players
        local min_players = GetConVar("ttt_randomat_" .. event.Id .. "_min_players"):GetInt()
        local player_count = player.GetCount()
        if min_players > 0 and player_count < min_players then return false, "Not enough players (" .. player_count .. " vs. " .. min_players .. " required)" end
        -- Check that the round has run the correct amount of time
        local round_percent_complete = Randomat:GetRoundCompletePercent()
        if (event.MinRoundCompletePercent and event.MinRoundCompletePercent > round_percent_complete) or (event.MaxRoundCompletePercent and event.MaxRoundCompletePercent < round_percent_complete) then return false, "Round percent complete mismatch (" .. round_percent_complete .. ")" end
        -- Don't allow single use events to run twice
        if event.SingleUse and Randomat:IsEventActive(event.Id) then return false, "Single use event is already running" end
        -- Don't use the same events over and over again
        if not ignore_history and IsEventInHistory(event) then return false, "Event is in recent history" end

        -- Don't allow multiple events of the same type to run at once
        if event.Type ~= EVENT_TYPE_DEFAULT then
            for _, evt in pairs(Randomat.ActiveEvents) do
                if type(evt.Type) == "table" then
                    -- If both are tables don't allow any matching types
                    if type(event.Type) == "table" then
                        for _, t in ipairs(event.Type) do
                            if table.HasValue(evt.Type, t) then return false, "Event with same type (" .. t .. ") is already running" end
                        end
                        -- If only one is a table, don't allow it to contain the other's type
                    elseif table.HasValue(evt.Type, event.Type) then
                        return false, "Event with same type (" .. event.Type .. ") is already running"
                    end
                    -- If only one is a table, don't allow it to contain the other's type
                elseif type(event.Type) == "table" then
                    if table.HasValue(event.Type, evt.Type) then return false, "Event with same type (" .. evt.Type .. ") is already running" end
                elseif evt.Type == event.Type then
                    -- If neither are tables, don't allow the types to match
                    return false, "Event with same type (" .. event.Type .. ") is already running"
                end
            end
        end

        return true
    end

    local function GetRandomWeightedEvent(events, can_run)
        local weighted_events = {}

        for id, event in pairs(events) do
            if can_run and not can_run(event) then continue end
            local weight = GetConVar("ttt_randomat_" .. id .. "_weight"):GetInt()
            local default_weight = GetConVar("ttt_randomat_event_weight"):GetInt()

            -- Use the default if the per-event weight is invalid
            if weight < 0 then
                weight = default_weight
            end

            for _ = 1, weight do
                table.insert(weighted_events, id)
            end
        end

        -- Randomize the weighted list
        table.Shuffle(weighted_events)
        -- Then get a random index from the random list for more randomness
        local count = table.Count(weighted_events)
        local idx = math.random(count)
        local key = weighted_events[idx]

        return events[key]
    end

    function Randomat:GetRandomEvent(skip_history, can_run)
        local events = Randomat.Events
        local found = false

        for _, v in pairs(events) do
            if Randomat:CanEventRun(v) and ((not can_run) or can_run(v)) then
                found = true
                break
            end
        end

        if not found then
            error("Could not find valid event, consider enabling more")
        end

        local event = GetRandomWeightedEvent(events, can_run)

        while not Randomat:CanEventRun(event) do
            event = GetRandomWeightedEvent(events, can_run)
        end

        -- Only add randomly selected events to the history so specifically-triggered events don't get tracked
        if not skip_history then
            AddEventToHistory(event)
        end

        return event
    end

    function Randomat:TriggerRandomEvent(ply)
        local event = Randomat:GetRandomEvent()
        TriggerEvent(event, ply, false)
    end

    function Randomat:SilentTriggerRandomEvent(ply)
        local event = Randomat:GetRandomEvent()
        TriggerEvent(event, ply, true)
    end

    function Randomat:TriggerEvent(cmd, ply, ...)
        if Randomat.Events[cmd] ~= nil then
            local event = Randomat.Events[cmd]
            TriggerEvent(event, ply, false, ...)
        else
            error("Could not find event '" .. cmd .. "'")
        end
    end

    function Randomat:SafeTriggerEvent(cmd, ply, error_if_unsafe, ...)
        if Randomat.Events[cmd] ~= nil then
            local event = Randomat.Events[cmd]
            local can_run, reason = Randomat:CanEventRun(event)

            if can_run then
                TriggerEvent(event, ply, false, ...)
            elseif error_if_unsafe then
                error("Conditions for event not met: " .. reason)
            end
        else
            error("Could not find event '" .. cmd .. "'")
        end
    end

    function Randomat:SilentTriggerEvent(cmd, ply, ...)
        if Randomat.Events[cmd] ~= nil then
            local event = Randomat.Events[cmd]
            TriggerEvent(event, ply, true, ...)
        else
            error("Could not find event '" .. cmd .. "'")
        end
    end

    function Randomat:SmallNotify(msg, length, targ)
        -- Don't broadcast anything when "Secret" is running
        if Randomat:IsEventActive("secret") then return end

        if not isnumber(length) then
            length = 0
        end

        net.Start("randomat_message")
        net.WriteBool(false)
        net.WriteString(msg)
        net.WriteUInt(length, 8)

        if not targ then
            net.Broadcast()
        else
            net.Send(targ)
        end
    end

    function Randomat:ChatNotify(ply, msg)
        if Randomat:IsEventActive("secret") then return end
        if not IsValid(ply) then return end
        ply:PrintMessage(HUD_PRINTTALK, msg)
    end

    function Randomat:LogEvent(msg)
        net.Start("TTT_LogInfo")
        net.WriteString(msg)
        net.Broadcast()
    end

    function Randomat:EventNotify(title)
        -- Don't broadcast anything when "Secret" is running
        if Randomat:IsEventActive("secret") then return end
        net.Start("randomat_message")
        net.WriteBool(true)
        net.WriteString(title)
        net.WriteUInt(0, 8)
        net.Broadcast()
    end

    function Randomat:EventNotifySilent(title)
        -- Don't broadcast anything when "Secret" is running
        if Randomat:IsEventActive("secret") then return end
        net.Start("randomat_message_silent")
        net.WriteBool(true)
        net.WriteString(title)
        net.WriteUInt(0, 8)
        net.Broadcast()
    end

    local function GetRandomRoleWeapon(roles, blocklist, droppable_only)
        local selected = math.random(1, #roles)
        local tbl = table.Copy(EquipmentItems[roles[selected]]) or {}

        for _, v in ipairs(weapons.GetList()) do
            if v and not v.Spawnable and v.CanBuy and (type(droppable_only) ~= "boolean" or not droppable_only or v.AllowDrop) and (not blocklist or not table.HasValue(blocklist, v.ClassName)) then
                table.insert(tbl, v)
            end
        end

        table.Shuffle(tbl)
        local item = table.Random(tbl)
        local item_id = tonumber(item.id)
        local swep_table = (not item_id) and weapons.GetStored(item.ClassName) or nil

        return item, item_id, swep_table
    end

    function Randomat:GetShopEquipment(ply, roles, blocklist, include_equipment, tracking, settrackingvar, droppable_only)
        if tracking == nil then
            tracking = 0
        end

        if tracking >= 500 then return nil, nil, nil end
        tracking = tracking + 1
        settrackingvar(tracking)
        local item, item_id, swep_table = GetRandomRoleWeapon(roles, blocklist, droppable_only)

        if item_id then
            -- If this is an item and we shouldn't get players items or the player already has this item, try again
            if not include_equipment or ply:HasEquipmentItem(item_id) then
                -- Otherwise return it
                return Randomat:GetShopEquipment(ply, roles, blocklist, include_equipment, tracking, settrackingvar, droppable_only)
            else
                settrackingvar(0)

                return item, item_id, swep_table
            end
        elseif swep_table then
            -- If this player can use this weapon, give it to them
            if ply:CanCarryWeapon(swep_table) then
                settrackingvar(0)
                -- Otherwise try again

                return item, item_id, swep_table
            else
                return Randomat:GetShopEquipment(ply, roles, blocklist, include_equipment, tracking, settrackingvar, droppable_only)
            end
        end

        return nil, nil, nil
    end

    local function GiveWep(ply, roles, blocklist, include_equipment, tracking, settrackingvar, onitemgiven, droppable_only)
        local item, item_id, swep_table = Randomat:GetShopEquipment(ply, roles, blocklist, include_equipment, tracking, settrackingvar, droppable_only)

        -- Give the player whatever was found
        if item_id then
            onitemgiven(true, item_id)
            ply:GiveEquipmentItem(item_id)
        elseif swep_table then
            onitemgiven(false, item.ClassName)
            ply:Give(item.ClassName)

            if swep_table.WasBought then
                swep_table:WasBought(ply)
            end
        end
    end

    function Randomat:GiveRandomShopItem(ply, roles, blocklist, include_equipment, gettrackingvar, settrackingvar, onitemgiven, droppable_only)
        GiveWep(ply, roles, blocklist, include_equipment, gettrackingvar(), settrackingvar, onitemgiven, droppable_only)
    end

    function Randomat:CallShopHooks(isequip, id, ply)
        hook.Call("TTTOrderedEquipment", GAMEMODE, ply, id, isequip, true)
        ply:AddBought(id)
        net.Start("TTT_BoughtItem")
        net.WriteBit(isequip)

        if isequip then
            local bits = 16

            -- Only use 32 bits if the number of equipment items we have requires it
            if EQUIP_MAX >= 2 ^ bits then
                bits = 32
            end

            net.WriteInt(id, bits)
        else
            net.WriteString(id)
        end

        net.Send(ply)
    end

    -- Adapted from Sandbox code by Jenssons
    function Randomat:SpawnNPC(ply, pos, cls)
        local npc_list = list.Get("NPC")
        local npc_data = npc_list[cls]

        -- Don't let them spawn this entity if it isn't in our NPC Spawn list.
        -- We don't want them spawning any entity they like!
        if not npc_data then
            if IsValid(ply) then
                ply:SendLua("Derma_Message(\"Sorry! You can't spawn that NPC!\")")
            end

            return
        end

        -- Create NPC
        local npc_ent = ents.Create(npc_data.Class)
        if not IsValid(npc_ent) then return end
        npc_ent:SetPos(pos)

        --
        -- This NPC has a special model we want to define
        --
        if npc_data.Model then
            npc_ent:SetModel(npc_data.Model)
        end

        --
        -- Spawn Flags
        --
        local spawn_flags = bit.bor(SF_NPC_FADE_CORPSE, SF_NPC_ALWAYSTHINK)

        if npc_data.SpawnFlags then
            spawn_flags = bit.bor(spawn_flags, npc_data.SpawnFlags)
        end

        if npc_data.TotalSpawnFlags then
            spawn_flags = npc_data.TotalSpawnFlags
        end

        npc_ent:SetKeyValue("spawnflags", spawn_flags)

        --
        -- Optional Key Values
        --
        if npc_data.KeyValues then
            for k, v in pairs(npc_data.KeyValues) do
                npc_ent:SetKeyValue(k, v)
            end
        end

        --
        -- This NPC has a special skin we want to define
        --
        if npc_data.Skin then
            npc_ent:SetSkin(npc_data.Skin)
        end

        npc_ent:Spawn()
        npc_ent:Activate()

        if not npc_data.NoDrop and not npc_data.OnCeiling then
            npc_ent:DropToFloor()
        end

        return npc_ent
    end

    function Randomat:SpawnBee(ply, color, height)
        local spos = ply:GetPos() + Vector(math.random(-75, 75), math.random(-75, 75), height or math.random(200, 250))
        local headBee = Randomat:SpawnNPC(ply, spos, "npc_manhack")
        headBee:SetNPCState(2)
        local bee = ents.Create("prop_dynamic")
        bee:SetModel("models/lucian/props/stupid_bee.mdl")
        bee:SetPos(spos)
        bee:SetParent(headBee)

        if color and type(color) == "table" then
            bee:SetColor(color)
        end

        headBee:SetNoDraw(true)
        headBee:SetHealth(1000)

        return headBee
    end

    --[[
 Randomat Meta
]]
    --
    -- Valid players not spec
    function randomat_meta:GetPlayers(shuffle)
        return Randomat:GetPlayers(shuffle)
    end

    function randomat_meta:GetAlivePlayers(shuffle)
        return Randomat:GetPlayers(shuffle, true)
    end

    function randomat_meta:GetDeadPlayers(shuffle)
        return Randomat:GetPlayers(shuffle, false, true)
    end

    function randomat_meta:SmallNotify(msg, length, targ)
        Randomat:SmallNotify(msg, length, targ)
    end

    function randomat_meta:AddHook(hooktype, callbackfunc)
        callbackfunc = callbackfunc or self[hooktype]
        hook.Add(hooktype, "RandomatEvent." .. self.Id .. ":" .. hooktype, function(...) return callbackfunc(...) end)
        self.Hooks = self.Hooks or {}

        table.insert(self.Hooks, {hooktype, "RandomatEvent." .. self.Id .. ":" .. hooktype})
    end

    function randomat_meta:RemoveHook(hooktype)
        local id = "RandomatEvent." .. self.Id .. ":" .. hooktype

        for idx, ahook in ipairs(self.Hooks or {}) do
            if ahook[1] == hooktype and ahook[2] == id then
                hook.Remove(ahook[1], ahook[2])
                table.remove(self.Hooks, idx)

                return
            end
        end
    end

    function randomat_meta:CleanUpHooks()
        if not self.Hooks then return end

        for _, ahook in ipairs(self.Hooks) do
            hook.Remove(ahook[1], ahook[2])
        end

        table.Empty(self.Hooks)
    end

    function randomat_meta:Begin(...)
    end

    function randomat_meta:End()
    end

    function randomat_meta:Condition()
        return true
    end

    function randomat_meta:Enabled()
        return GetConVar("ttt_randomat_" .. self.id):GetBool()
    end

    function randomat_meta:GetConVars()
    end

    function randomat_meta:GetRoleName(ply, hide_secret_roles)
        return Randomat:GetRoleExtendedString(ply:GetRole(), hide_secret_roles)
    end

    -- Rename stock weapons so they are readable
    function randomat_meta:RenameWeps(name)
        if name == "sipistol_name" then
            return "Silenced Pistol"
        elseif name == "knife_name" then
            return "Knife"
        elseif name == "newton_name" then
            return "Newton Launcher"
        elseif name == "tele_name" then
            return "Teleporter"
        elseif name == "hstation_name" then
            return "Health Station"
        elseif name == "flare_name" then
            return "Flare Gun"
        elseif name == "decoy_name" then
            return "Decoy"
        elseif name == "radio_name" then
            return "Radio"
        elseif name == "polter_name" then
            return "Poltergeist"
        elseif name == "vis_name" then
            return "Visualizer"
        elseif name == "defuser_name" then
            return "Defuser"
        elseif name == "stungun_name" then
            return "UMP Prototype"
        elseif name == "binoc_name" then
            return "Binoculars"
        end

        return name
    end

    function randomat_meta:StripRoleWeapons(ply)
        if not IsValid(ply) then return end

        if ply.StripRoleWeapons then
            ply:StripRoleWeapons()

            return
        end

        if ply:HasWeapon("weapon_hyp_brainwash") then
            ply:StripWeapon("weapon_hyp_brainwash")
        end

        if ply:HasWeapon("weapon_vam_fangs") then
            ply:StripWeapon("weapon_vam_fangs")
        end

        if ply:HasWeapon("weapon_zom_claws") then
            ply:StripWeapon("weapon_zom_claws")
        end

        if ply:HasWeapon("weapon_kil_knife") then
            ply:StripWeapon("weapon_kil_knife")
        end

        if ply:HasWeapon("weapon_kil_crowbar") then
            ply:StripWeapon("weapon_kil_crowbar")
        end

        if ply:HasWeapon("weapon_ttt_wtester") then
            ply:StripWeapon("weapon_ttt_wtester")
        end
    end

    function randomat_meta:HandleWeaponAddAndSelect(ply, addweapons)
        local active_class = nil
        local active_kind = WEAPON_UNARMED

        if IsValid(ply:GetActiveWeapon()) then
            active_class = WEPS.GetClass(ply:GetActiveWeapon())
            active_kind = WEPS.TypeForWeapon(active_class)
        end

        -- Handle adding weapons
        addweapons(active_class, active_kind)
        -- Try to find the correct weapon to select so the transition is less jarring
        local select_class = nil

        for _, w in ipairs(ply:GetWeapons()) do
            local w_class = WEPS.GetClass(w)
            local w_kind = WEPS.TypeForWeapon(w_class)

            if (active_class ~= nil and w_class == active_class) or w_kind == active_kind then
                select_class = w_class
            end
        end

        -- Only try to select a weapon if one was found
        if select_class ~= nil then
            -- Delay seems to be necessary to reliably change weapons after having them all added
            timer.Simple(0.25, function()
                ply:SelectWeapon(select_class)
            end)
            -- Otherwise switch to unarmed to we don't show other players our potentially-illegal first weapon (e.g. Killer's knife)
        else
            ply:SelectWeapon("weapon_ttt_unarmed")
        end
    end

    function randomat_meta:SwapWeapons(ply, weapon_list, from_killer)
        local had_brainwash = ply:HasWeapon("weapon_hyp_brainwash")
        local had_bodysnatch = ply:HasWeapon("weapon_bod_bodysnatch")
        local had_paramedic_defib = ply:HasWeapon("weapon_med_defib")
        local had_zombificator = ply:HasWeapon("weapon_mad_zombificator")
        local had_scanner = ply:HasWeapon("weapon_ttt_wtester")

        self:HandleWeaponAddAndSelect(ply, function()
            ply:StripWeapons()
            -- Reset FOV to unscope
            ply:SetFOV(0, 0.2)

            -- Have roles keep their special weapons
            if ply:GetRole() == ROLE_ZOMBIE then
                ply:Give("weapon_zom_claws")
            elseif ply:GetRole() == ROLE_VAMPIRE then
                ply:Give("weapon_vam_fangs")
            elseif had_brainwash then
                ply:Give("weapon_hyp_brainwash")
            elseif had_bodysnatch then
                ply:Give("weapon_bod_bodysnatch")
            elseif had_scanner then
                ply:Give("weapon_ttt_wtester")
            elseif had_paramedic_defib then
                ply:Give("weapon_med_defib")
            elseif had_zombificator then
                ply:Give("weapon_mad_zombificator")
            elseif ply:GetRole() == ROLE_KILLER then
                if ConVarExists("ttt_killer_knife_enabled") and GetConVar("ttt_killer_knife_enabled"):GetBool() then
                    ply:Give("weapon_kil_knife")
                end

                if ConVarExists("ttt_killer_crowbar_enabled") and GetConVar("ttt_killer_crowbar_enabled"):GetBool() then
                    ply:StripWeapon("weapon_zm_improvised")
                    ply:Give("weapon_kil_crowbar")
                end
            end

            -- If the player that swapped to this player was a killer then they no longer have a crowbar
            if from_killer then
                ply:Give("weapon_zm_improvised")
            end

            -- Handle inventory weapons last to make sure the roles get their specials
            for _, v in ipairs(weapon_list) do
                local wep_class = WEPS.GetClass(v)

                -- Don't give players the detective's tester or other role weapons
                if wep_class ~= "weapon_ttt_wtester" and (not WEAPON_CATEGORY_ROLE or v.Category ~= WEAPON_CATEGORY_ROLE) then
                    ply:Give(wep_class)
                end
            end
        end)
    end

    function randomat_meta:SetAllPlayerScales(scale)
        for _, ply in ipairs(self:GetAlivePlayers()) do
            Randomat:SetPlayerScale(ply, scale, self.id)
        end

        -- Reduce the player speed on the server
        self:AddHook("TTTSpeedMultiplier", function(ply, mults)
            if not ply:Alive() or ply:IsSpec() then return end
            local speed_factor = math.Clamp(ply:GetStepSize() / 9, 0.25, 1)
            table.insert(mults, speed_factor)
        end)
    end

    function randomat_meta:ResetAllPlayerScales()
        for _, ply in ipairs(player.GetAll()) do
            Randomat:ResetPlayerScale(ply, self.id)
        end

        self:RemoveHook("TTTSpeedMultiplier")
    end

    --[[
 Commands
]]
    --
    local function EndActiveEvents()
        if Randomat.ActiveEvents ~= {} then
            for _, evt in pairs(Randomat.ActiveEvents) do
                EndEvent(evt)
            end

            Randomat.ActiveEvents = {}
        end
    end

    local function ClearAutoComplete(cmd, args)
        local name = string.Trim(args):lower()
        local options = {}

        for _, v in pairs(Randomat.ActiveEvents) do
            if string.find(v.Id:lower(), name) then
                table.insert(options, cmd .. " " .. v.Id)
            end
        end

        return options
    end

    concommand.Add("ttt_randomat_clearevent", function(ply, cc, arg)
        local cmd = arg[1]
        Randomat:EndActiveEvent(cmd)
    end, ClearAutoComplete, "Clears a specific randomat active event", FCVAR_SERVER_CAN_EXECUTE)

    concommand.Add("ttt_randomat_clearevents", EndActiveEvents, nil, "Clears all active events", FCVAR_SERVER_CAN_EXECUTE)

    local function TriggerAutoComplete(cmd, args)
        local name = string.Trim(args):lower()
        local options = {}

        for _, v in pairs(Randomat.Events) do
            if string.find(v.Id:lower(), name) then
                table.insert(options, cmd .. " " .. v.Id)
            end
        end

        return options
    end

    concommand.Add("ttt_randomat_safetrigger", function(ply, cc, arg)
        Randomat:SafeTriggerEvent(arg[1], nil, true)
    end, TriggerAutoComplete, "Triggers a specific randomat event with conditions", FCVAR_SERVER_CAN_EXECUTE)

    concommand.Add("ttt_randomat_trigger", function(ply, cc, arg)
        Randomat:TriggerEvent(arg[1], nil)
    end, TriggerAutoComplete, "Triggers a specific randomat event without conditions", FCVAR_SERVER_CAN_EXECUTE)

    concommand.Add("ttt_randomat_triggerrandom", function()
        local rdmply = Randomat:GetValidPlayer(nil)
        Randomat:TriggerRandomEvent(rdmply)
    end, nil, "Triggers a random  randomat event", FCVAR_SERVER_CAN_EXECUTE)

    --[[
 Override TTT Stuff
]]
    --
    hook.Add("TTTEndRound", "RandomatEndRound", EndActiveEvents)

    hook.Add("TTTPrepareRound", "RandomatPrepareRound", function()
        -- End ALL events rather than just active ones to prevent some event effects which maintain over map changes
        for _, v in pairs(Randomat.Events) do
            EndEvent(v)
        end
    end)

    hook.Add("ShutDown", "RandomatMapChange", EndActiveEvents)
end