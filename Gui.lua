local SafePurchaseRemote = game:GetService("ReplicatedStorage"):WaitForChild("SafePurchaseRemote")

while task.wait() do
   SafePurchaseRemote:FireServer(1)
end
