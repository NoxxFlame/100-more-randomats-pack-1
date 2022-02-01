local EVENT = {}
EVENT.Title = "Explosive Spectating"
EVENT.Description = "Left-click while prop-possessing to explode!"
EVENT.id = "explosivespectate"

function EVENT:Begin()
    -- Whenever someone left-clicks,
    self:AddHook("PlayerButtonDown", function(ply, button)
        if button == MOUSE_LEFT then
            -- If they are spectating a prop
            local ent = ply.propspec and ply.propspec.ent

            if IsValid(ent) then
                -- Then create an explosion where the prop is
                local explode = ents.Create("env_explosion")
                explode:SetPos(ent:GetPos())
                explode:SetOwner(victim)
                explode:Spawn()
                explode:SetKeyValue("iMagnitude", "100")
                explode:SetKeyValue("iRadiusOverride", "256")
                explode:Fire("Explode", 0, 0)
                explode:EmitSound("weapon_AWP.Single", 200, 200)
                -- And remove the prop
                ent:Remove()
            end
        end
    end)
end

function EVENT:Condition()
    -- Only run this if there are actual props
    return table.Count(ents.FindByClass("prop_physics*")) ~= 0 or table.Count(ents.FindByClass("prop_dynamic")) ~= 0
end

Randomat:register(EVENT)