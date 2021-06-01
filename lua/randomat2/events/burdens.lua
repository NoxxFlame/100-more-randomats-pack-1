local EVENT = {}

EVENT.Title = "I'm sworn to carry your burdens"
EVENT.Description = "Less weapons, move faster. More weapons, move slower."
EVENT.id = "burdens"

CreateConVar("randomat_burdens_speed_multiplier", 0.75, {FCVAR_NOTIFY, FCVAR_ARCHIVE}, "% of speed changed when dropping/picking up weapons", 0.01, 1)

function EVENT:Begin()
	for _, ent in pairs(ents.GetAll()) do
		if ent.Kind == WEAPON_NADE and ent.AutoSpawnable then
			ent:Remove()
		end
	end
	
	self:AddHook("WeaponEquip", function(weapon, owner)
		owner:SetLaggedMovementValue(owner:GetLaggedMovementValue() * GetConVar("randomat_burdens_speed_multiplier"):GetFloat())
	end)
	
	self:AddHook("PlayerDroppedWeapon", function(owner, wep)
		owner:SetLaggedMovementValue(owner:GetLaggedMovementValue() * 1/GetConVar("randomat_burdens_speed_multiplier"):GetFloat())
	end)
end

function EVENT:End()
	for i, ply in pairs(player.GetAll()) do
		ply:SetLaggedMovementValue(1)
	end
end

function EVENT:GetConVars()
    local sliders = {}
    for _, v in pairs({"speed_multiplier"}) do
        local name = "randomat_" .. self.id .. "_" .. v
        if ConVarExists(name) then
            local convar = GetConVar(name)
            table.insert(sliders, {
                cmd = v,
                dsc = convar:GetHelpText(),
                min = convar:GetMin(),
                max = convar:GetMax(),
                dcm = 2
            })
        end
    end
    return sliders
end

Randomat:register(EVENT)