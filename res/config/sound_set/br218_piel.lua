local soundsetutil = require "soundsetutil"

function data()

    local data = soundsetutil.makeSoundSet()

    soundsetutil.addTrackParam01
	(data, "vehicle/br218/piel_leerlauf.wav", 25.0,
		{
		{ 0.0, 0.8 },
		{ 0.05, 0.0 } },
		{
		{ .0, 1.0 },
		{ 1.0, 1.0 } },
		"power01")

	
	soundsetutil.addTrackParam01
    (data, "vehicle/br218/piel.wav", 25.0,
		   {
		{ 0.0, 0.0 },
		{ 0.01, 0.3},
		{ 0.05, 1.0},
		{ 1.0, 1.0 } },
		{
		{ .0, 0.65 },
		{ 1.0, 1.0 } },
		"power01")

	soundsetutil.addTrackParam01
	(data, "vehicle/br218/turbo.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.01, 0.2},
		{ 0.05, 0.4},
		{ 1.0, 1.0 } },
		{
		{ .0, 0.6 },
		{ 1.0, 0.8 } },
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

    soundsetutil.addEvent(data, "horn", { "vehicle/br218/218_horn.wav" }, 50.0)
    soundsetutil.addTrackSqueal(data, "vehicle/br218/kurve.wav", 25.0)
    soundsetutil.addTrackBrake(data, "vehicle/br218/bremse_alt.wav", 25.0, 1.0)


    return data

end
