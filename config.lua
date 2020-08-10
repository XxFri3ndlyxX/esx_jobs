Config                   = {}
Config.DrawDistance      = 100.0
Config.Locale            = 'en'
Config.Jobs              = {}
Config.FishermanCaution  = 2000
Config.FuelerCaution     = 2000
Config.LumberjackCaution = 2000
Config.MinerCaution      = 2000
Config.ReporterCaution   = 2000
Config.ButcherCaution    = 2000
Config.TailorCaution     = 2000
Config.MaxCaution        = 10000 -- the max caution allowed

Config.PublicZones = {

	EnterBuilding = {
		Pos   = { x = -118.21, y = -607.14, z = 35.28 },
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 0, g = 255, b = 0},
		Marker= 25,
		Blip  = false,
		Name  = _U('reporter_name'),
		Type  = "teleport",
		Hint  = _U('public_enter'),
		Teleport = { x = -139.09, y = -620.74, z = 167.82 }
	},

	ExitBuilding = {
		Pos   = { x = -139.45, y = -617.32, z = 167.82 },
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 0, g = 255, b = 0},
		Marker= 25,
		Blip  = false,
		Name  = _U('reporter_name'),
		Type  = "teleport",
		Hint  = _U('public_leave'),
		Teleport = { x = -113.07, y = -604.93, z = 35.28 },
	}

}
