Config.Jobs.reporter = {

	BlipInfos = {
		Sprite = 184,
		Color = 1
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {
	
		VehicleSpawner = {
			Pos = {x = -141.44, y = -620.96, z = 167.86},
			Size = {x = 2.0, y = 2.0, z = 0.2},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('reporter_name'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('reporter_garage'),
			Caution = Config.ReporterCaution
		},

		VehicleSpawnPoint = {
			Pos = {x = -149.32, y = -592.17, z = 31.42},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 161.5
		},

		VehicleDeletePoint = {
			Pos = {x = -144.22, y = -577.02, z = 31.42},
			Size = {x = 5.0, y = 5.0, z = 0.2},
			Color = {r = 255, g = 0, b = 0},
			Marker = 25,
			Blip = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.ReporterCaution,
			GPS = 0,
			Teleport = {x = -139.09, y = -620.74, z = 167.82}
		}

	}
}
