local args = {
    [1] = 1
}

while task.wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("SafePurchaseRemote"):FireServer(unpack(args))
end
