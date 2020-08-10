Config.Jobs.tailor = {

	BlipInfos = {
		Sprite = 366,
		Color = 4
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'youga2',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 706.73, y = -960.90, z = 29.43},
			Size = {x = 2.0, y = 2.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('dd_dress_locker'),
			Type = 'cloakroom',
			Hint = _U('cloak_change'),
			GPS = 0
		},

		Wool = {
			Pos = {x = 1961.64, y = 5184.94, z = 47.02},
			Size = {x = 2.2, y = 2.2, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('dd_wool'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_wool'),
					db_name = 'wool',
					time = 3,
					max = 40,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = _U('dd_pickup'),
			GPS = 0
		},

		Fabric = {
			Pos = {x = 711.45, y = -969.51, z = 29.44},
			Size = {x = 2.05, y = 2.05, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('dd_fabric'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_fabric'),
					db_name = 'fabric',
					time = 5,
					max = 80,
					add = 2,
					remove = 1,
					requires = 'wool',
					requires_name = _U('dd_wool'),
					drop = 100
				}
			},
			Hint = _U('dd_makefabric'),
			GPS = 0
		},

		Clothe = {
			Pos = {x = 713.96, y = -959.89, z = 29.44},
			Size = {x = 2.05, y = 2.05, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('dd_clothing'),
			Type = 'work',
			Item = {
				{
					name = _U('dd_clothing'),
					db_name = 'clothe',
					time = 4,
					max = 40,
					add = 1,
					remove = 2,
					requires = 'fabric',
					requires_name = _U('dd_fabric'),
					drop = 100
				}
			},
			Hint = _U('dd_makeclothing'),
			GPS = 0
		},

		VehicleSpawner = {
			Pos = {x = 715.42, y = -974.46, z = 23.96},
			Size = {x = 1.6, y = 1.6, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = Config.TailorCaution,
			GPS = 0
		},

		VehicleSpawnPoint = {
			Pos = {x = 747.31, y = -966.23, z = 23.70},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 270.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 711.38, y = -980.08, z = 23.14},
			Size = {x = 3.4, y = 3.4, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.TailorCaution,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = 426.97, y = -809.96, z = 28.53},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 1.4, y = 1.4, z = 3.0},
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
					price = 40,
					requires = 'clothe',
					requires_name = _U('dd_clothing'),
					drop = 100
				}
			},
			Hint = _U('dd_deliver_clothes'),
			GPS = 0
		}
	}
}
