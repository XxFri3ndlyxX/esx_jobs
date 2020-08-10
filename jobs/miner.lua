Config.Jobs.miner = {

	BlipInfos = {
		Sprite = 318,
		Color = 5
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rubble',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 892.46, y = -2172.48, z = 31.32},
			Size = {x = 2.0, y = 2.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('m_miner_locker'),
			Type = 'cloakroom',
			Hint = _U('cloak_change'),
			GPS = 0
		},

		Mine = {
			Pos = {x = 2950.23, y = 2747.85, z = 42.51},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('m_rock'),
			Type = 'work',
			Item = {
				{
					name = _U('m_rock'),
					db_name = 'stone',
					time = 3,
					max = 7,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = _U('m_pickrocks'),
			GPS = 0
		},

		StoneWash = {
			Pos = {x = 289.24, y = 2862.90, z = 42.68},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('m_washrock'),
			Type = 'work',
			Item = {
				{
					name = _U('m_washrock'),
					db_name = 'washed_stone',
					time = 5,
					max = 7,
					add = 1,
					remove = 1,
					requires = 'stone',
					requires_name = _U('m_rock'),
					drop = 100
				}
			},
			Hint = _U('m_rock_button'),
			GPS = 0
		},

		Foundry = {
			Pos = {x = 1109.14, y = -2007.87, z = 30.01},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('m_rock_smelting'),
			Type = 'work',
			Item = {
				{
					name = _U('m_copper'),
					db_name = 'copper',
					time = 4,
					max = 56,
					add = 8,
					remove = 1,
					requires = 'washed_stone',
					requires_name = _U('m_washrock'),
					drop = 100
				},
				{
					name = _U('m_iron'),
					db_name = 'iron',
					max = 42,
					add = 6,
					drop = 100
				},
				{
					name = _U('m_gold'),
					db_name = 'gold',
					max = 21,
					add = 3,
					drop = 100
				},
				{
					name = _U('m_diamond'),
					db_name = 'diamond',
					max = 50,
					add = 1,
					drop = 5
				}
			},
			Hint = _U('m_melt_button'),
			GPS = 0
		},

		VehicleSpawner = {
			Pos = {x = 887.73, y = -2175.75, z = 29.57},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = Config.MinerCaution,
			GPS = 0
		},

		VehicleSpawnPoint = {
			Pos = {x = 874.25, y = -2177.31, z = 30.61},
			Size = {x = 4.5, y = 4.5, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 174.5,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 873.6, y = -2198.78, z = 29.53},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.MinerCaution,
			GPS = 0,
			Teleport = 0
		},

		CopperDelivery = {
			Pos = {x = 854.66, y = -2113.37, z = 30.6},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.8, y = 1.8, z = 3.0},
			Marker = 25,
			Blip = true,
			Name = _U('m_sell_copper'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 56, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'copper',
					requires_name = _U('m_copper'),
					drop = 100
				}
			},
			Hint = _U('m_deliver_copper'),
			GPS = 0
		},

		IronDelivery = {
			Pos = {x = 844.13, y = -2118.48, z = 29.55},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.8, y = 1.8, z = 3.0},
			Marker = 25,
			Blip = true,
			Name = _U('m_sell_iron'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 42, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 9,
					requires = 'iron',
					requires_name = _U('m_iron'),
					drop = 100
				}
			},
			Hint = _U('m_deliver_iron'),
			GPS = 0
		},

		GoldDelivery = {
			Pos = {x = 256.62, y = 219.66, z = 105.29},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.6, y = 1.6, z = 3.0},
			Marker = 25,
			Blip = true,
			Name = _U('m_sell_gold'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 21, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 25,
					requires = 'gold',
					requires_name = _U('m_gold'),
					drop = 100
				}
			},
			Hint = _U('m_deliver_gold'),
			GPS = 0
		},

		DiamondDelivery = {
			Pos = {x = -624.67, y = -230.99, z = 37.09},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.7, y = 1.7, z = 3.0},
			Marker = 25,
			Blip = true,
			Name = _U('m_sell_diamond'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 250,
					requires = 'diamond',
					requires_name = _U('m_diamond'),
					drop = 100
				}
			},
			Hint = _U('m_deliver_diamond'),
			GPS = 0
		}

	}
}
