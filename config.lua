Config = {}
Config.DrawDistance = 1.0  -- The distance between you and the marker.

-- Messages
Config.GymDraw3D = '~g~E~s~ - Start workout'  -- A message that is displayed when you are close to an exercise.
Config.ProgressBar = 'Doing workout'  -- Message shown on progressbar when you are doing exercise.
Config.DoSomeThingElse = 'Do something else for a change.'

 -- Here you can add new Gyms to your server, etc jail..
Config.Locations = {

	City = {
		Blip = {
			Coords = vector3(-1202.9837, -1565.1718, 4.6115),
			Name = 'Gym'
		},
		
		Arms = {
			vector3(-1202.9837, -1565.1718, 4.6115)
		},
		
		Pushup = {
			vector3(-1203.3242, -1570.6184, 4.6115)
		},
		
		Situps = {
			vector3(-1206.1055, -1565.1589, 4.6115)
		},
		
		Chins = {
			vector3(-1200.1284, -1570.9903, 4.6115)
		}
	},

	Jail = {
		Blip = {
			Coords = vector3(1639.233,2527.824,45.565),
			Name = 'Gym'
		},
		
		Arms = {
			vector3(1639.233,2527.824,45.565)
		},
		
		Pushup = {
			vector3(1637.201,2524.245,45.565)
		},
		
		Situps = {
			vector3(1639.23,2532.128,45.565)
		},
		
		Chins = {
			vector3(1642.848,2528.256,45.565)
		}
	}	
}
