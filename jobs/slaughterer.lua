Config.Jobs.slaughterer = {

	BlipInfos = {
		Sprite = 256,
		Color = 5
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'benson',
			Trailer = 'none',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = -1070.87, y = -2003.36, z = 14.82},
			Size = {x = 2.4, y = 2.4, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('s_slaughter_locker'),
			Type = 'cloakroom',
			Hint = _U('cloak_change')
		},

		AliveChicken = {
			Pos = {x = -62.90, y = 6241.46, z = 30.13},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('s_hen'),
			Type = 'work',
			Item = {
				{
					name = _U('s_alive_chicken'),
					db_name = 'alive_chicken',
					time = 3,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = _U('s_catch_hen')
		},

		SlaughterHouse = {
			Pos = {x = -77.99, y = 6229.06, z = 30.13},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('s_slaughtered'),
			Type = 'work',
			Item = {
				{
					name = _U('s_slaughtered_chicken'),
					db_name = 'slaughtered_chicken',
					time = 5,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'alive_chicken',
					requires_name = _U('s_alive_chicken'),
					drop = 100
				}
			},
			Hint = _U('s_chop_animal')
		},

		Packaging = {
			Pos = {x = -101.97, y = 6208.79, z = 30.06},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('s_package'),
			Type = 'work',
			Item = {
				{
					name = _U('s_packagechicken'),
					db_name = 'packaged_chicken',
					time = 4,
					max = 100,
					add = 5,
					remove = 1,
					requires = 'slaughtered_chicken',
					requires_name = _U('s_unpackaged'),
					drop = 100
				}
			},
			Hint = _U('s_unpackaged_button')
		},

		VehicleSpawner = {
			Pos = {x = -1042.43, y = -2023.48, z = 12.2},
			Size = {x = 2.2, y = 2.2, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = Config.ButcherCaution
		},

		VehicleSpawnPoint = {
			Pos = {x = -1050.36, y = -2019.42, z = 13.13},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 135.5
		},

		VehicleDeletePoint = {
			Pos = {x = -1058.17, y = -2005.1, z = 12.2},
			Size = {x = 3.8, y = 3.8, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.ButcherCaution,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = -596.15, y = -889.32, z = 24.50},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 3.8, y = 3.8, z = 1.0},
			Marker = 25,
			Blip = true,
			Name = _U('delivery_point'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 23,
					requires = 'packaged_chicken',
					requires_name = _U('s_packagechicken'),
					drop = 100
				}
			},
			Hint = _U('s_deliver')
		}
	}
}
