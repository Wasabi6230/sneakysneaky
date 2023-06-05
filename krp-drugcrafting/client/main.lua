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
		local distance = #(pos - vector3(Config.DrugCrafting["location"].x, Config.DrugCrafting["location"].y, Config.DrugCrafting["location"].z))

		if distance < 10 then
			inRange = true
			DrawMarker(2, Config.DrugCrafting["location"].x, Config.DrugCrafting["location"].y, Config.DrugCrafting["location"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 147, 230, 14, 155, 0, 0, 0, 1, 0, 0, 0)
			if distance < 1.5 then
				DrawText3D(Config.DrugCrafting["location"].x, Config.DrugCrafting["location"].y, Config.DrugCrafting["location"].z + 0.15, "~g~E~w~ - Craft Drugs")
				if IsControlJustPressed(0, 38) then
					local crafting = {}
					crafting.label = "Drug Crafting"
					crafting.items = GetDrugThresholdItems()
					TriggerServerEvent("inventory:server:OpenInventory", "drug_crafting", math.random(1, 99), crafting)
				end
			end
		end

		if not inRange then
			Citizen.Wait(1000)
		end

		Citizen.Wait(3)
	end
end)

function SetupDrugItemsInfo()
	itemInfos = {
		[1] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_white-widow"]["label"] .. ": 1x"
		},
		[2] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_skunk"]["label"] .. ": 1x"
		},
		[3] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_purple-haze"]["label"] .. ": 1x"
		},
		[4] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_og-kush"]["label"] .. ": 1x"
		},
		[5] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_amnesia"]["label"] .. ": 1x"
		},
		[6] = {costs = 
			QBCore.Shared.Items["weed"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["empty_weed_bag"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["flv_weed_ak47"]["label"] .. ": 1x"
		},
		[7] = {costs = 
			QBCore.Shared.Items["cocaine"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bakingsoda"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["empty_baggie"]["label"] .. ": 1x"
		},
		[8] = {costs = 
			QBCore.Shared.Items["cocaine"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["bakingsoda"]["label"] .. ": 1x, " ..
			QBCore.Shared.Items["water_bottle"]["label"] .. ": 1x, " .. 
			QBCore.Shared.Items["empty_baggie"]["label"] .. ": 1x"
		},
	}

	local items = {}
	for k, item in pairs(Config.DrugCrafting["items"]) do
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
	Config.DrugCrafting["items"] = items
end

function GetDrugThresholdItems()
	SetupDrugItemsInfo()
	local items = {}
	for k, item in pairs(Config.DrugCrafting["items"]) do
		if QBCore.Functions.GetPlayerData().metadata["drugcraftingrep"] >= Config.DrugCrafting["items"][k].threshold then
			items[k] = Config.DrugCrafting["items"][k]
		end
	end
	return items
end