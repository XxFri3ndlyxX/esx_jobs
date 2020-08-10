Config.Jobs.fueler = {

	BlipInfos = {
		Sprite = 436,
		Color = 5
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'phantom',
			Trailer = 'tanker',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 257.38, y = -3062.71, z = 4.87},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('f_oil_refiner'),
			Type = 'cloakroom',
			Hint = _U('cloak_change'),
			GPS = 0
		},

		OilFarm = {
			Pos = {x = 609.58, y = 2856.74, z = 38.95},
			Size = {x = 20.0, y = 20.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('f_drill_oil'),
			Type = 'work',
			Item = {
				{
					name = _U('f_fuel'),
					db_name = 'petrol',
					time = 5,
					max = 24,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = _U('f_drillbutton'),
			GPS = 0
		},

		OilRefinement = {
			Pos = {x = 2822.29, y = 1605.69, z = 23.56},
			Size = {x = 4.0, y = 4.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('f_fuel_refine'),
			Type = 'work',
			Item = {
				{
					name = _U('f_fuel_refine'),
					db_name = 'petrol_raffin',
					time = 5,
					max = 24,
					add = 1,
					remove = 2,
					requires = 'petrol',
					requires_name = _U('f_fuel'),
					drop = 100
				}
			},
			Hint = _U('f_refine_fuel_button'),
			GPS = 0
		},

		OilMix = {
			Pos = {x = 289.45, y = -3099.77, z = 4.92},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('f_fuel_mixture'),
			Type = 'work',
			Item = {
				{
					name = _U('f_gas'),
					db_name = 'essence',
					time = 5,
					max = 24,
					add = 2,
					remove = 1,
					requires = 'petrol_raffin',
					requires_name = _U('f_fuel_refine'),
					drop = 100
				}
			},
			Hint = _U('f_fuel_mixture_button'),
			GPS = 0
		},

		VehicleSpawner = {
			Pos = {x = 259.64, y = -3059.69, z = 4.9},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 0, g = 255, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_truck_button'),
			Caution = Config.FuelerCaution,
			GPS = 0
		},

		VehicleSpawnPoint = {
			Pos = {x = 245.07, y = -3065.91, z = 5.83},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			GPS = 0,
			Heading = 134.5
		},

		VehicleDeletePoint = {
			Pos = {x = 266.63, y = -3084.33, z = 4.82},
			Size = {x = 4.0, y = 4.0, z = 1.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 25,
			Blip = true,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = Config.FuelerCaution,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = 1008.13, y = -2911.71, z = 4.92},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 4.0, y = 4.0, z = 1.0},
			Marker = 25,
			Blip = true,
			Name = _U('f_deliver_gas'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 61,
					requires = 'essence',
					requires_name = _U('f_gas'),
					drop = 100
				}
			},

			Hint = _U('f_deliver_gas_button'),
			GPS = 0
		}

	}
}
