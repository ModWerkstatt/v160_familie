local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/br218/r40_stand.wav", 25.0,
		{
		{ 0.0, 1.0 },
		{ 0.05, 0.0 } },
		{
		{ .0, 1.0 },
		{ 1.0, 1.0 } },
		"power01")

soundsetutil.addTrackParam01
(data, "vehicle/br218/r40_3.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.01, 0.3},
		{ 0.05, 1.0},
		{ 1.0, 1.0 } },
		{
		{ .0, 1.0 },
		{ 1.0, 1.2 } },
		"power01")
		
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

soundsetutil.addTrackParam01
(data, "vehicle/br218/turbine.wav", 25.0,
		{
		{ 0.0, 0.0 },
		{ 0.30, 0.8},
		{ 0.40, 1.0},
		{ 0.50, 1.2},
		{ 1.0, 1.2 } },
		{
		{ .0, 0.95 },
		{ 1.0, 1.1 } },
		"power01")

soundsetutil.addTrackParam01
(data, "vehicle/br218/roll.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.5, 0.1 },
			{ 1.0, 0.8 } },
		{
			{ 0.0, 0.8 },
			{ 1.0, 1.0 } },
		"speed01")

soundsetutil.addEvent(data, "horn", { "vehicle/br218/218_horn.wav" }, 50.0)
soundsetutil.addTrackSqueal(data, "vehicle/br218/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/br218/bremse_alt.wav", 25.0, 1.0)


return data

end
