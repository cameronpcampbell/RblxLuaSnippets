-- module script
return {
	["knit_init"] = 
[[
local Knit = require(game:GetService("ReplicatedStorage").Packages.Knit)

Knit.Start():catch(warn)
-- Knit.Start() returns a Promise, so we are catching any errors and feeding it to the built-in 'warn' function
-- You could also chain 'await()' to the end to yield until the whole sequence is completed:
--    Knit.Start():catch(warn):await()]],
	
	
------------------------------------------------------------------------------------------------------------------------------------
	
	
	["knit_service"] = 
[[
local MyService = Knit.CreateService { Name = "MyService", Client = {} }

function MyService:MyMethod(...)
	return
end

return MyService]],
	
	
------------------------------------------------------------------------------------------------------------------------------------

	
	["knit_controller"] =
[[local CameraController = Knit.CreateController { Name = "CameraController" }

return CameraController]],
	
	
------------------------------------------------------------------------------------------------------------------------------------
	
	
	["fusion_init"] = 
[[local Fusion = require(game:GetService("ReplicatedStorage").Fusion)
-----
local New = Fusion.New
local Hydrate = Fusion.Hydrate
local Ref = Fusion.Ref
local Out = Fusion.Out
local Cleanup = Fusion.Cleanup
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent
local OnChange = Fusion.OnChange
-----
local Value = Fusion.Value
local Computed = Fusion.Computed
local ForPairs = Fusion.ForPairs
local ForKeys = Fusion.ForKeys
local ForValues = Fusion.ForValues
local Observer = Fusion.Observer
-----
local Tween = Fusion.Tween
local Spring = Fusion.Spring
]]
		
}

