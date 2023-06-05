QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'WINZ Beneficiary',
                payment = 20
            },
        },
	},
	['pacificbluffs'] = {
        label = 'Pacific Bluffs Resort',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },

            ['1'] = {
                name = 'Bartender',
                payment = 300
            },

            ['2'] = {
                name = 'Lifeguard',
                payment = 325
            },
			
			['3'] = {
                name = 'Security',
                payment = 350
            },
			
			['4'] = {
                name = 'Manager',
                payment = 400
            },

            ['5'] = {
                name = 'Owner',
                isboss=true,
                payment = 450
            },
        },
    },
	['casino'] = {
        label = 'Casino',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
				name = 'Casino Staff',
				payment = 200
			},
			
			['1'] = {
				name = 'Casino Manager',
				payment = 300
			},
			
			['2'] = {
				name = 'Casino Owner',
				isboss = true,
				payment = 500
			},
        },
    },
	-- ['corrections'] = {
		-- label = 'New Zealand Corrections',
		-- defaultDuty = true,
		-- offDutyPay = false,
		-- grades = {
            -- ['0'] = {
                -- name = 'Prison Guard Recruit',
                -- payment = 200
            -- },
			-- ['1'] = {
                -- name = 'Prison Guard',
                -- payment = 450
            -- },
			-- ['2'] = {
                -- name = 'Prison Warden',
				-- isboss=true,
                -- payment = 1000
            -- },
        -- },
	-- },
	['burgershot'] = {
        label = 'Burgershot',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },

            ['1'] = {
                name = 'Waiter',
                payment = 300
            },

            ['2'] = {
                name = 'Host',
                payment = 325
            },
			
			['3'] = {
                name = 'Chef',
                payment = 350
            },
			
			['4'] = {
                name = 'Manager',
                payment = 400
            },

            ['5'] = {
                name = 'Owner',
                isboss=true,
                payment = 450
            },
        },
    },
    ['bossmen'] = {
        label = 'Kaitiaki Security',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 200
            },

            ['1'] = {
                name = 'Security Officer',
                payment = 550
            },

            ['2'] = {
                name = 'Supervisor',
                payment = 600
            },

            ['3'] = {
                name = 'Manager',
                isboss=true,
                payment = 650
            },
        },
    },
	['manaaki'] = {
        label = 'Manaaki',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 200
            },

            ['1'] = {
                name = 'Support Staff',
                payment = 250
            },

            ['2'] = {
                name = 'Manager',
                payment = 350
            },

            ['3'] = {
                name = 'Owner',
                isboss=true,
                payment = 650
            },
        },
    },
	['rebelkings'] = {
		label = 'Rebellious Kings Motorcycles',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 125
            },
			['2'] = {
                name = 'Senior Showroom Sales',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
                payment = 175
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 500
            },
        },
	},
	['yellowjack'] = {
		label = 'Yellow Jack Inn',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 100 -- Change to what you see fit
            },
			['1'] = {
                name = 'Bartender',
                payment = 150 -- Change to what you see fit
            },
			['2'] = {
                name = 'Security',
                payment = 200 -- Change to what you see fit
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 250 -- Change to what you see fit
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 300 -- Change to what you see fit
            },
        },
	},
	['mirror'] = {
		label = 'Mirror Restaurant',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 100 -- Change to what you see fit
            },
			['1'] = {
                name = 'Bartender',
                payment = 150 -- Change to what you see fit
            },
			['2'] = {
                name = 'Security',
                payment = 200 -- Change to what you see fit
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 250 -- Change to what you see fit
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 300 -- Change to what you see fit
            },
        },
	},	
	['bellas'] = {
		label = 'Bella\'s Bakery & Cafe',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 100 -- Change to what you see fit
            },
			['1'] = {
                name = 'Barista',
                payment = 150 -- Change to what you see fit
            },
			['2'] = {
                name = 'Baker',
                payment = 200 -- Change to what you see fit
            },
			['3'] = {
                name = 'Manager',
				payment = 250 -- Change to what you see fit
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 300 -- Change to what you see fit
            },
        },
	},
	['valhalla'] = {
		label = 'Valhalla Collectables',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 100 
            },
			['1'] = {
                name = 'Cashier',
                payment = 150 
            },
			['2'] = {
                name = 'Manager',
				payment = 250 
            },
			['3'] = {
                name = 'Owner',
				isboss = true,
                payment = 300 
            },
        },
	},
	['icecream'] = {
		label = 'Lowkey Ice Cream',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 100 
            },
			['1'] = {
                name = 'Driver',
                payment = 150 
            },
			['2'] = {
                name = 'Manager',
				payment = 250 
            },
			['3'] = {
                name = 'Owner',
				isboss = true,
                payment = 300 
            },
        },
	},
	['police'] = {
		label = 'NZ Police',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
		-- CORRECTIONS
            ['0'] = {
                name = 'Prison Recruit',
                payment = 250
            },
			['1'] = {
                name = 'Prison Guard',
                payment = 250
            },
			['2'] = {
                name = 'Prison Warden',
                payment = 800
            },
			-- POLICE
			['3'] = {
                name = 'Recruit',
                payment = 250
            },
			['4'] = {
                name = 'Constable',
                payment = 500
            },
			['5'] = {
                name = 'Senior Constable',
                payment = 600
            },
			['6'] = {
                name = 'Sergeant',
                payment = 700
            },
			['7'] = {
                name = 'Senior Sergeant',
                payment = 800
            },
			['8'] = {
                name = 'Inspector',
                payment = 900
            },
			['9'] = {
                name = 'Superintendent',
                payment = 950
            },
			['10'] = {
                name = 'Comissioner',
				isboss = true,
                payment = 1000
            },
			['11'] = {
                name = 'Police Minister',
                payment = 1000
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 250
            },
			['1'] = {
                name = 'Paramedic',
                payment = 400
            },
			['2'] = {
                name = 'Senior Paramedic',
                payment = 500
            },
			['3'] = {
                name = 'Doctor',
                payment = 600
            },
			['4'] = {
                name = 'Surgeon',
                payment = 800
            },
            ['5'] = {
                name = 'Deputy Chief',
                payment = 950
            },
            ['6'] = {
                name = 'Chief',
                payment = 1000
            },
            ['7'] = {
                name = 'Director',
                isboss=true,
                payment = 1000
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Broker',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['tuner'] = {
        label = 'Tuner Autos',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
            ['1'] = {
                name = 'Mechanic',
                payment = 125
            },
            ['2'] = {
                name = 'Manager',
                payment = 150
            
            },
            ['3'] = {
                name = 'Co-Owner',
                payment = 175
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 200
            },
        },
	},
	['jinx'] = {
		label = 'Jinx Customs Mechanic',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Novice',
                payment = 125
            },
			['2'] = {
                name = 'Experienced',
                payment = 150
            },
			['3'] = {
                name = 'Advanced',
                payment = 175
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 500
            },
        },
	},	
    ['repairer'] = {
		label = 'Repairer',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Gun Repairer',
                payment = 50
            },
	},
	},
    ['fruitpicker'] = {
		label = 'Fruitpicker',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
	},
	},
    ['gardener'] = {
		label = 'Gardener',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Gardener',
                payment = 50
            },
	   },
	},
	['lavie'] = {
		label = 'La Vie',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'anon',
                payment = 50
            },
	   },
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Finance',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Bennys Mechanic',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Novice',
                payment = 125
            },
			['2'] = {
                name = 'Experienced',
                payment = 150
            },
			['3'] = {
                name = 'Advanced',
                payment = 175
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 500
            },
        },
	},
    ['freight'] = {
        label = 'Freight Truck Driver',
        defaultDuty = true,
		offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
        },
    },
	['whenua'] = {
		label = 'Whenua Customs',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Novice',
                payment = 125
            },
			['2'] = {
                name = 'Experienced',
                payment = 150
            },
			['3'] = {
                name = 'Advanced',
                payment = 175
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 500
            },
        },
	},
	['judge'] = {
		label = 'Ministry of Justice',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'District Judge',
                payment = 1000
            },

            ['1'] = {
                name = 'Appeals Judge',
                payment = 1200
            },

            ['3'] = {
                name = 'High Court Judge',
                payment = 1500
            },

            ['4'] = {
                name = 'Supreme Court',
                payment = 1500
            },
        },
	},
	['lawyer'] = {
		label = 'B.S Associates',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Body Guard',
                payment = 250
            },
			
            ['1'] = {
                name = 'Jr Assistant',
                payment = 250
            },

            ['2'] = {
                name = 'Assistant',
                payment = 450
            },

            ['3'] = {
                name = 'Solicitor',
                payment = 650
            },

            ['4'] = {
                name = 'Partner',
                payment = 850
            },

            ['5'] = {
                name = 'Senior Partner',
                payment = 1000,
                isboss = true
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
			['1'] = {
                name = 'Boss Driver',
                isboss = true,
                payment = 10
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 150
            },
            ['1'] = {
                name = 'Boss',
				isboss = true,
                payment = 200
            },
        },
	},
	['electrician'] = {
		label = 'Sparky',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Sparky',
                payment = 50
            },
        },
	},
	['admin'] = {
		label = 'ADMINS',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Cardealer (ADMINS ONLY)',
                isboss = true,
				payment = 2000,
            },
        },
	},
	['dev'] = {
		label = 'DEVS',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Devs (Devs ONLY)',
                isboss = true,
				payment = 2000,
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	-- ['bahama'] = {
		-- label = 'Bahama Mamas',
		-- defaultDuty = true,
		-- offDutyPay = true,
		-- grades = {
            -- ['0'] = {
                -- name = 'Trainee',
                -- payment = 100
            -- },
			-- ['1'] = {
                -- name = 'Bartender',
                -- payment = 150
            -- },
			-- ['2'] = {
                -- name = 'Security',
                -- payment = 200
            -- },
			-- ['3'] = {
                -- name = 'Manager',
				-- payment = 250
            -- },
			-- ['4'] = {
                -- name = 'Owner',
				-- isboss = true,
                -- payment = 300 
            -- },
        -- },
	-- },
		-- ['reporter'] = {
		-- label = 'Auckland Times',
		
        -- defaultDuty = true,
        -- offDutyPay = false,

		-- grades = {
            -- ['0'] = {
                -- name = 'Intern',
                -- payment = 150
            -- },

            -- ['1'] = {
                -- name = 'Support Crew',
                -- payment = 200
            -- },

            -- ['2'] = {
                -- name = 'Journalist',
                -- payment = 250
            -- },

            -- ['3'] = {
                -- name = 'Editor',
                -- payment = 300
            -- },

            -- ['4'] = {
                -- name = 'Editor-in-chief',
                -- isboss = true,
                -- payment = 450
            -- },
        -- },
	-- },
	-- ['akltimes'] = {
		-- label = 'Auckland Times',
		
        -- defaultDuty = true,
        -- offDutyPay = true,

		-- grades = {
            -- ['0'] = {
                -- name = 'Intern',
                -- payment = 150
            -- },

            -- ['1'] = {
                -- name = 'Support Crew',
                -- payment = 200
            -- },

            -- ['2'] = {
                -- name = 'Journalist',
                -- payment = 250
            -- },

            -- ['3'] = {
                -- name = 'Editor',
                -- payment = 300
            -- },

            -- ['4'] = {
                -- name = 'Editor-in-chief',
                -- isboss = true,
                -- payment = 450
            -- },
        -- },
	-- },

}