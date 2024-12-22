local SafePurchaseRemote = game:GetService("ReplicatedStorage"):WaitForChild("SafePurchaseRemote")

while task.wait() do
   pcall(function()
         SafePurchaseRemote:FireServer(1)
   end)
end
