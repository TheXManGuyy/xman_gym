Config = {}
Config.DrawDistance = 1.0  -- The distance between you and the marker.
Config.TrainAmmount = 2.0  -- The number of skill points you get per workout.

-- Messages
Config.GymDraw3D = '~g~[E]~w~ Do a workout'  -- A message that is displayed when you are close to an exercise.
Config.BeginExercise = 'Getting ready for an exercise..' -- Message witch is shown when you are getting ready for exercise.
Config.NeedRest = 'You need to rest..'  -- Message showing that you need to rest to do some exercises again.
Config.BeginRest = 'You started resting!'  -- Message letting you know when you start resting.
Config.ProgressBar = 'Doing my workout'  -- Message shown on progressbar when you are doing exercise.
Config.TrainAgain = 'You can do workout again!'  -- Message letting you know when you are ready to do some exercises again.

 -- Here you can add new Gyms to your server, etc jail..
Config.Locations = {

	Gym = {
	
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
	}

}
