Config.Jobs.fisherman = {

	BlipInfos = {
		Sprite = 68,
		Color = 38
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'benson',
			Trailer = 'none',
			HasCaution = true
		},

		Boat = {
			Spawner = 2,
			Hash = 'tropic2',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos   = {x = 1332.73, y = 4325.19, z = 37.1},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker= 25,
			Blip  = true,
			Name  = _U('fm_fish_locker'),
			Type  = 'cloakroom',
			Hint  = _U('cloak_change'),
			GPS = 0
		},

		FishingSpot = {
			Pos   = {x = 2013.17, y = 4245.87, z = 30.98},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 110.0, y = 110.0, z = 10.0},
			Marker= 25,
			Blip  = true,
			Name  = _U('fm_fish_area'),
			Type  = 'work',
			Hint  = _U('fm_fish_button'),
			GPS   = 0,
			Item = {
				{
					name   = _U('fm_fish'),
					db_name= 'fish',
					time   = 2,
					max    = 100,
					add    = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 100
				}
			},

		},

		BoatSpawner = {
			Pos   = {x = 1334.84, y = 4306.66, z = 37.12},
			Size  = {x = 1.6, y = 1.6, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker= 25,
			Blip  = true,
			Name  = _U('fm_spawnboat_title'),
			Type  = 'vehspawner',
			Spawner = 2,
			Hint  = _U('fm_spawnboat'),
			Caution = 2000,
			GPS = {x = 4435.21, y = 4829.60, z = 0.34}
		},

		BoatSpawnPoint = {
			Pos   = {x = 1341.34, y = 4269.58, z = 30.37},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker= -1,
			Blip  = false,
			Name  = _U('fm_boat_title'),
			Type  = 'vehspawnpt',
			Spawner = 2,
			GPS = 0,
			Heading = 179.5
		},

		BoatDeletePoint = {
			Pos   = {x = 1334.19, y = 4264.020, z = 30.09},
			Size  = {x = 10.0, y = 10.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker= 1,
			Blip  = false,
			Name  = _U('fm_boat_return_title'),
			Type  = 'vehdelete',
			Hint  = _U('fm_boat_return_button'),
			Spawner = 2,
			Caution = 2000,
			GPS = 0,
			Teleport = {x = 1334.84, y = 4306.66, z = 37.12}
		},

		VehicleSpawner = {
			Pos   = {x = 1364.23, y = 4315.66, z = 36.71},
			Size  = {x = 1.6, y = 1.6, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker= 25,
			Blip  = true,
			Name  = _U('spawn_veh'),
			Type  = 'vehspawner',
			Spawner = 1,
			Hint  = _U('spawn_veh_button'),
			Caution = Config.FishermanCaution,
			GPS = 0
		},

		VehicleSpawnPoint = {
			Pos   = {x = 1372.61, y = 4315.99, z = 37.11},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker= -1,
			Blip  = false,
			Name  = _U('service_vh'),
			Type  = 'vehspawnpt',
			Spawner = 1,
			GPS = 0,
			Heading = 70.1
		},

		VehicleDeletePoint = {
			Pos   = {x = 1342.39, y = 4318.75, z = 37.02},
			Size  = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker= 25,
			Blip  = false,
			Name  = _U('return_vh'),
			Type  = 'vehdelete',
			Hint  = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.FishermanCaution,
			GPS = 0,
			Teleport = {x = 1372.61, y = 4315.99, z = 37.11}
		},

		Delivery = {
			Pos   = {x = -1039.46, y = -1352.75, z = 4.57},
			Color = {r = 204, g = 204, b = 0},
			Size  = {x = 2.25, y = 2.25, z = 3.0},
			Color = {r = 0, g = 255, b = 0},
			Marker= 25,
			Blip  = true,
			Name  = _U('delivery_point'),
			Type  = 'delivery',
			Spawner = 2,
			Hint  = _U('fm_deliver_fish'),
			GPS   = 0,
			Item = {
				{
				name   = _U('delivery'),
				time   = 0.5,
				remove = 1,
				max    = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
				price  = 11,
				requires = 'fish',
				requires_name = _U('fm_fish'),
				drop   = 100
				}
			}
		}

	}
}
