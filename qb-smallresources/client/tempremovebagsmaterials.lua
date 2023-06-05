local bags = {
	{x = 286.71, y = 2843.31, z = 44.96, model = "prop_beach_bag_01b"}, -- Removes drop bags from materials trader as people exploiting (TEMP!)
}

CreateThread(function()
    while true do
        for k in pairs(bags) do
            local ent = GetClosestObjectOfType(bags[k].x, bags[k].y, bags[k].z, 6.0, GetHashKey(bags[k].model), false, false, false)

            SetEntityAsMissionEntity(ent, true, true)
            DeleteObject(ent)
            SetEntityAsNoLongerNeeded(ent)
        end

        Wait(100)
    end
end)
