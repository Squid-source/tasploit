local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "TASploit | UAOT", IntroEnabled = true, 
IntroText = "WELCOME TO TASPLOIT",
IntroIcon = "nil",
HidePremium = false, SaveConfig = false})


local Tab = Window:MakeTab({
	Name = "Commands",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Infinite Gas",
	Callback = function()
		
		local mt = getrawmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    if getnamecallmethod() == "FireServer" then
        if self.Name == "GasDepleteEvent" then
            return
        end
        
        
    end
    
    return nc(self, ...)
end)

setreadonly(mt, true)


  	end    
})


Tab:AddButton({
	Name = "Infinite Blades",
	Callback = function()
		
		local mt = getrawmetatable(game)
		local nc = mt.__namecall

			setreadonly(mt, false)

			mt.__namecall = newcclosure(function(self, ...)
    	if getnamecallmethod() == "FireServer" then
        
        	if self.Name == "BladeDurEvent" then
           	 return
        	end
    	end
    
    	return nc(self, ...)
	end)

	setreadonly(mt, true)


	end    
})


Tab:AddButton({
	Name = "Infinite Health (READ FAQ)",
	Callback = function()
		local player = game.Players.LocalPlayer
	local character = player.Character

	-- Set the character's health to an extremely high value
	character.Humanoid.MaxHealth = math.huge
	character.Humanoid.Health = math.huge

	-- Disable the character's ability to take damage
	character.Humanoid.Changed:Connect(function(property)
	if property == "Health" then
		character.Humanoid.Health = math.huge
	end
end)


	end
})

Tab:AddButton({
	Name = "RESET CHARACTER (READ FAQ)",
	Callback = function()
		local player = game.Players.LocalPlayer
	local character = player.Character

	-- Set the character's health to an extremely high value
	character.Humanoid.MaxHealth = 0
	character.Humanoid.Health = 0


	end
})









local Section = Tab:AddSection({
	Name = "Speed Hack"
})


Tab:AddSlider({
	Name = "Modify WalkSpeed",
	Min = 28,
	Max = 150,
	Default = 28,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = nil,
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	
	end    
})



local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})





Tab:AddLabel("Made with ❤️ by 787Splash")

Tab:AddLabel("Discord Server - discord.gg/PNQXTsCXEd")
Tab:AddParagraph("Thank you for using!",
"This is actually my very first time making an exploit, I appreciate the fact that you are using this script. If you are an experienced developer and want to contact me regarding the script then you can freely do so on my Discord Server. Link is given above")
Tab:AddParagraph("Donation",
"A donation helps to motivate! If you feel like motivating me to continue then please DM me on Discord")

	

local Tab = Window:MakeTab({
		Name = "FAQ",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
})

Tab:AddParagraph("Why cant I reset my character?",
"So when you use Infinite Health you will not be able to use Roblox's default reset character button, I was too lazy to make it work")

Tab:AddParagraph("Why does this script have a Reset Character Button?",
"Because the default reset button doesn't work and I'm too lazy to fix that instead I made a button for y'all if you want to reset your character for some reason or if you are stuck in a Titan's hand")
	
OrionLib:Init()
