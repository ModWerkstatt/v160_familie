function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
			{
				name = "ModWerkstatt",
				role = "CREATOR",
			},
		},
		tags = { "europe", "locomotive", "bundesbahn", "deutsche bahn", "diesel", "v160 familie",},
		minGameVersion = 0,
		dependencies = { },
		url = { "" },
        params = {
			{
				key = "v160_familie_fake",
				name = _("v160_familie_fake"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_br151_desc"),
				defaultIndex = 0,
			},
			{
				key = "v160_familie_vorspann",
				name = _("v160_familie_vorspann"),
				values = { "No", "Yes", },
				tooltip = _("option_vorspann_v160_familie_desc"),
				defaultIndex = 0,
			},
			{
				key = "v160_familie_privatbahn",
				name = _("v160_familie_privatbahn"),
				values = { "No", "Yes", },
				tooltip = _("option_privatbahn_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br210",
				name = _("v160_familie_br210"),
				values = { "No", "Yes", },
				tooltip = _("option_br210_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br215",
				name = _("v160_familie_br215"),
				values = { "No", "Yes", },
				tooltip = _("option_br215_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br216",
				name = _("v160_familie_br216"),
				values = { "No", "Yes", },
				tooltip = _("option_br216_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br217",
				name = _("v160_familie_br217"),
				values = { "No", "Yes", },
				tooltip = _("option_br217_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br218",
				name = _("v160_familie_br218"),
				values = { "No", "Yes", },
				tooltip = _("option_br218_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br219",
				name = _("v160_familie_br219"),
				values = { "No", "Yes", },
				tooltip = _("option_br219_v160_familie_desc"),				
				defaultIndex = 1,
			},
			{
				key = "v160_familie_br225",
				name = _("v160_familie_br225"),
				values = { "No", "Yes", },
				tooltip = _("option_br225_v160_familie_desc"),				
				defaultIndex = 1,
			},
        },
	},
	options = {
	},
	runFn = function (settings, modParams)
		
		local vorspannFilter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.vorspann == true then				
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2
				--return false
			end	
			--return true
			return data
		end 
		
		local fakeFilter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.fake == true then		
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local privatbahnFilter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.privatbahn == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local br210Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br210 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local br215Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br215 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local br216Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br216 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local br217Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br217 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		local br218Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br218 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end  
		
		local br219Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br219 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end  
		
		local br225Filter = function(fileName, data)		
			if data.metadata.transportVehicle and data.metadata.v160_familie and data.metadata.v160_familie.br225 == true then			
				data.metadata.availability.yearFrom = 1
				data.metadata.availability.yearTo = 2				
			end				
			return data
		end 
		
		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]					
			if params["v160_familie_vorspann"] == 0 then				
				--addFileFilter("model/transportVehicle", vorspannFilter)	
				addModifier("loadModel", vorspannFilter)
			end
			if params["v160_familie_fake"] == 0 then				
				addModifier("loadModel", fakeFilter)
			end
			if params["v160_familie_privatbahn"] == 0 then				
				addModifier("loadModel", privatbahnFilter)
			end
			if params["br210_privatbahn"] == 0 then				
				addModifier("loadModel", br210Filter)
			end
			if params["br215_privatbahn"] == 0 then				
				addModifier("loadModel", br215Filter)
			end
			if params["br216_privatbahn"] == 0 then				
				addModifier("loadModel", br216Filter)
			end
			if params["br217_privatbahn"] == 0 then				
				addModifier("loadModel", br217Filter)
			end
			if params["br218_privatbahn"] == 0 then				
				addModifier("loadModel", br218Filter)
			end
			if params["br219_privatbahn"] == 0 then				
				addModifier("loadModel", br219Filter)
			end
			if params["br225_privatbahn"] == 0 then				
				addModifier("loadModel", br225Filter)
			end
			
		else
			--addFileFilter("model/transportVehicle", vorspannFilter)			
			addModifier("loadModel", fakeFilter)
			addModifier("loadModel", privatbahnFilter)
			addModifier("loadModel", br210Filter)
			addModifier("loadModel", br215Filter)
			addModifier("loadModel", br216Filter)
			addModifier("loadModel", br217Filter)
			addModifier("loadModel", br218Filter)
			addModifier("loadModel", br219Filter)
			addModifier("loadModel", br225Filter)
		end			
	end
}
end
