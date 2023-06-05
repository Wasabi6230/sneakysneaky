Citizen.CreateThread(function()
	RequestIpl("k4mb1_paleto_milo_")
	
-- Paleto Bank Extended
	local interiorid = GetInteriorAtCoords(-109.4503, 6467.768, 30.4388)
	
	ActivateInteriorEntitySet(interiorid, "trollys")
	
	RefreshInterior(interiorid)
	
end)