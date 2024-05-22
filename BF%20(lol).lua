local Tool
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Blox Fruit", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Setting"
})

Tab:AddDropdown({
	Name = "Tool",
	Default = "Melee",
	Options = {"Melee", "Sword"},
	Callback = function(Value)
		if Value == "Melee" then
			Tool = "Melee"
		else
			Tool = "Sword"
		end
	end    
})

Tab:AddToggle({
	Name = "Auto Home Point",
	Default = false,
	Callback = function(Value)
		while value do
			game:GetService("ReplicatedStorage"):WaitForChild("CommF_"):InvokeServer("SetSpawnPoint")
		wait(2.5)
		end
	end    
})
