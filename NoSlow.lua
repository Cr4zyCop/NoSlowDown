local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

RunService.Stepped:Connect(function()
	local Slowdowns = LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or LocalPlayer.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")

	if Slowdowns then
		Slowdowns:Destroy()
	end

	if LocalPlayer.Character.BodyEffects.Reload.Value then
		LocalPlayer.Character.BodyEffects.Reload.Value = false
	end

	if LocalPlayer.Character.BodyEffects.Reloading.Value then
		LocalPlayer.Character.BodyEffects.Reloading.Value = false
	end
end)