local soundsetutil = require "soundsetutil"

function data()

    local data = soundsetutil.makeSoundSet()

    soundsetutil.addTrackParam01
    (data, "vehicle/br218/piel.wav", 25.0,
		    {
		        { 0.0, 0.75 },
		        { 1.0, 1.0 }
            },
		    {
		        { .0, 0.6 },
		        { .1, 0.7 },
		        { .3, 0.8 },
		        { .5, 0.85 },
		        { 1.0, 0.88 }
            },
		    "power01")


    soundsetutil.addTrackParam01
    (data, "vehicle/br218/roll.wav", 25.0,
		    {
			    { 0.0, 0.0 },
			    { 0.8, 0.1 },
			    { 1.0, 1.0 }
            },
		    {
			    { 0.0, 0.8 },
			    { 1.0, 1.0 }
            },
		    "speed01")

	soundsetutil.addTrackParam01
	(data, "vehicle/br218/turbo.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.01, 0.3},
		{ 0.05, 0.5},
		{ 1.0, 1.2 } },
		{
		{ .0, 0.7 },
		{ 1.0, 0.9 } },
		"power01")

    soundsetutil.addEvent(data, "horn", { "vehicle/br218/218_horn.wav" }, 50.0)
    soundsetutil.addTrackSqueal(data, "vehicle/br218/kurve.wav", 25.0)
    soundsetutil.addTrackBrake(data, "vehicle/br218/bremse_alt.wav", 25.0, 1.0)


    return data

end
