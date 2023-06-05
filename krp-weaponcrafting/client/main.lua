local QBCore = exports['qb-core']:GetCoreObject()
local itemInfos = {}

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

--local maxDistance = 1.25

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(PlayerPedId())
		local inRange = false
		local distance = #(pos - vector3(Config.WeaponCrafting["location"].x, Config.WeaponCrafting["location"].y, Config.WeaponCrafting["location"].z))

		if distance < 10 then
			inRange = true
			DrawMarker(2, Config.WeaponCrafting["location"].x, Config.WeaponCrafting["location"].y, Config.WeaponCrafting["location"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 147, 230, 14, 155, 0, 0, 0, 1, 0, 0, 0)
			if distance < 1.5 then
				DrawText3D(Config.WeaponCrafting["location"].x, Config.WeaponCrafting["location"].y, Config.WeaponCrafting["location"].z + 0.15, "~g~E~w~ - Craft Weapons")
				if IsControlJustPressed(0, 38) then
					local crafting = {}
					crafting.label = "Weapon Crafting"
					crafting.items = GetWeaponThresholdItems()
					TriggerServerEvent("inventory:server:OpenInventory", "weapon_crafting", math.random(1, 99), crafting)
				end
			end
		end

		if not inRange then
			Citizen.Wait(1000)
		end


		Citizen.Wait(3)
	end
end)

function SetupWeaponItemsInfo()
	itemInfos = {
		[1] = {costs = -- bp_handgun_full
			QBCore.Shared.Items["bp_handgun_frag1"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_handgun_frag2"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_handgun_frag3"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_handgun_frag4"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["packingtape"]["label"] .. ": 4x"
		},	
		[2] = {costs = -- bp_shotgun_full
			QBCore.Shared.Items["bp_shotgun_frag1"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_shotgun_frag2"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_shotgun_frag3"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_shotgun_frag4"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bp_shotgun_frag5"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["packingtape"]["label"] .. ": 6x"
		},
		[3] = {costs = -- weapon_pistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[4] = {costs = -- weapon_snspistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[5] = {costs = -- weapon_combatpistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[6] = {costs = -- weapon_vintagepistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[7] = {costs = -- weapon_pistol50
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[8] = {costs = -- weapon_marksmanpistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[9] = {costs = -- weapon_heavypistol
			-- UW PARTS
			QBCore.Shared.Items["handgun_mag"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["pistol_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_handgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[10] = {costs = -- weapon_sawnoffshotgun
			-- UW PARTS
			QBCore.Shared.Items["shotgun_choke"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["shotgun_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_shotgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
		[11] = {costs = -- weapon_combatshotgun
			-- UW PARTS
			QBCore.Shared.Items["shotgun_choke"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["shotgun_body"]["label"] .. ": 1x, " ..
			-- QBCore.Shared.Items["bp_shotgun_full"]["label"] .. ": 1x, " ..
			-- UW PARTS
			QBCore.Shared.Items["rubber"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["metalscrap"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["aluminum"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["iron"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["steel"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["copper"]["label"] .. ": 1x"
		},
	}

	local items = {}
	for k, item in pairs(Config.WeaponCrafting["items"]) do
		local itemInfo = QBCore.Shared.Items[item.name:lower()]
		items[item.slot] = {
			name = itemInfo["name"],
			amount = tonumber(item.amount),
			info = itemInfos[item.slot],
			label = itemInfo["label"],
			description = itemInfo["description"] ~= nil and itemInfo["description"] or "",
			weight = itemInfo["weight"], 
			type = itemInfo["type"], 
			unique = itemInfo["unique"], 
			useable = itemInfo["useable"], 
			image = itemInfo["image"],
			slot = item.slot,
			costs = item.costs,
			threshold = item.threshold,
			points = item.points,
		}
	end
	Config.WeaponCrafting["items"] = items
end

function GetWeaponThresholdItems()
	SetupWeaponItemsInfo()
	local items = {}
	for k, item in pairs(Config.WeaponCrafting["items"]) do
		if QBCore.Functions.GetPlayerData().metadata["weaponcraftingrep"] >= Config.WeaponCrafting["items"][k].threshold then
			items[k] = Config.WeaponCrafting["items"][k]
		end
	end
	return items
end