-- This config is used to define permissions of tattoos
-- 👉 https://documentation.rcore.cz/paid-resources/rcore_tattoos/tattoo-permissions

ConfigPermissions = {
    panterabacktattoo_M = {
        -- Limit tattoo to players with certain jobs
        jobs = {
            { -- Available for 'police' job, from grade 1 
              name = "disciples",
              grade = 0
            },
            { -- Also avaiable for 'taxi' job, any grade
              name = "disciples"
            },
        },

        -- Limit tattoo to certain players
        identifiers = {
            -- 'db123456abcdefghij7890', -- example
        },
    },
}