local bbs2util = require "bbs2util"

function data()
return {
	tracks = {
		{ name = "vehicle/V160/V160_stand.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f1.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f2.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f3.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f4.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f5.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f6.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_leerlauf.wav", refDist = 25.0 },
		{ name = "vehicle/V160/V160_f4.wav", refDist = 25.0 },		
		{ name = "vehicle/V160/kurve.wav", refDist = 20.0 },
		{ name = "vehicle/V160/bremse_alt.wav", refDist = 25.0 },

	},
	events =  {
		horn = { names = { "vehicle/V160/V160_horn.wav" }, refDist = 25.0 }
	},

	updateFn = function (input)
		local axleRefWeight = 10.0
		
		return {
			tracks = {
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 0.8 },
									{ .01, .0 },
									{ 1.0, .0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 1.0 },
									{ 1.0, 1.0 } }, input.speed01)
				},
				--f1
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, .0 },
									{ .01, 1.0 },
									{ 0.15, 1.0 },
									{ 0.151, 0.0 },
									{ 1.0, 0.0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 1.0 },
									{ 1.0, 1.0 } }, input.power01)
				},
				--f2
				{	 
					gain = bbs2util.sampleCurve({ 
										{ 0.0, 0.0 },
										{ 0.149, 0.0 },
										{ 0.15, 1.0 },
										{ 0.27, 1.0 },
										{ 0.271, 0.0 },
										{ 1.0, 0.0 } }, input.speed01),
					pitch = bbs2util.sampleCurve({ 
										{ 0.0, 0.0 },
										{ 0.399, 0.0 },
										{ 0.4, 1.0 },
										{ 1.0, 1.0 } }, input.power01)
				},
				--f3
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ .269, 0.0 },
									{ 0.27, 1.0 },
									{ 0.38, 1.0 },
									{ 0.381, 0.0 },
									{ 1.0, 0.0 }}, input.speed01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ 0.399, 0.0 },
									{ .4, 1.0 },
									{ 1.0, 1.0 } }, input.power01)
				},
				--f4
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ 0.2, 0.0 },
									{ .5, 1.0 },
									{ 1.0, 1.0 } }, input.power01),
					pitch = bbs2util.sampleCurve({ 
									{ 0.0, 0.0 },
									{ 0.38, 0.0 },
									{ 0.381, 1.0 },
									{ 0.51, 1.0 },
									{ 0.511, 0.0 },
									{ 1.0, 0.0 }}, input.speed01)
				},		
				--f5
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ 0.7, 0.0 },
									{ .8, 1.0 },
									{ 1.0, 1.0 } }, input.power01),					
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ .51, 0.0 },
									{ .5101, 1.0 },
									{ .629, 1.0 },
									{ .63, 0.0 },
									{ 1.0, 0.0 }}, input.speed01)
				},	
				--f6
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ 0.7, 0.0 },
									{ .8, 1.0 },
									{ 1.0, 1.15 }}, input.power01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ .6299, 0.0 },
									{ .63, 1.0 },
									{ 1.0, 1.25 } }, input.speed01)
				},	
				--Leerlauf f1
				{ 
					gain = bbs2util.sampleCurve({ 
									{ .0, 1.0 },
									{ .25, 1.0 },
									{ .5, 0.0 },
									{ 1.0, 0.0 }}, input.power01),				
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ .01, 1.0 },
									{ 1.0, 1.1 }}, input.speed01)
				},
				--mittlerer Leerlauf
				{ 
					gain = bbs2util.sampleCurve({ 
									{ 0.0, 0.0 },
									{ 0.25, 0.0 },
									{ 0.45, 1.0 },
									{ 0.7, 1.0 },
									{ 0.85, 0.0 },
									{ 1.0, 0.0 }}, input.power01),
					pitch = bbs2util.sampleCurve({ 
									{ .0, 0.0 },
									{ 0.399, 0.0 },
									{ .4, 1.0 },
									{ 1.0, 1.0 } }, input.speed01)
				},						
				bbs2util.squeal(input.speed, input.sideForce, input.maxSideForce),
				bbs2util.brake(input.speed, input.brakeDecel, 1.2),
			},
			events = {
			}
		}
	end
}
end
