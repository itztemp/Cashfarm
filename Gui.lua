local SafePurchaseRemote = game:GetService("ReplicatedStorage"):WaitForChild("SafePurchaseRemote")
local RunService = game:GetService("RunService")

local punch = {}
local brkout = {}

for i, v in getgc() do
	if typeof(v) == "function" and islclosure(v) and not isourclosure(v) then
		local script = getfenv(v).script
		
		if tostring(script) == "LocalScript" then
			local name = debug.info(v, "n")

            if name == "attemptPunch" then
                punch = v
            end

	    if name == "AttemptBreakout" then
		  brkout = v
		end
	end
end

debug.setconstant(punch, 3, 0)

spawn(function()
    while task.wait() do punch() end
end)

spawn(function()
    while task.wait() do brkout(game:GetService("Players").LocalPlayer) end
end)
	
RunService.Heartbeat:Connect(function()
   pcall(function()
         SafePurchaseRemote:FireServer(1)
   end)
end)
