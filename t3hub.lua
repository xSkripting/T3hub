
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("T3Hub", "DarkTheme")
local Main = Window:NewTab("Main")
local Player = Window:NewTab("Player")
local Scripts = Window:NewTab("Scripts")
local PlayerSection = Player:NewSection("Player")
local MainSection = Main:NewSection("Main")
local KeybindSection = Main:NewSection("Keybinds")
local ScriptSection = Scripts:NewSection("Free Scripts")

PlayerSection:NewSlider("Walkspeed", "Adjust Walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("Jump Power", "Adjust jump height", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
KeybindSection:NewKeybind("Press M to toggle gui", "", Enum.KeyCode.M, function()
	Library:ToggleUI()
end)
ScriptSection:NewButton("Amogus", "Turns you into amogus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/amongus.lua",true))()
end)
MainSection:NewButton("Reset", "", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
ScriptSection:NewButton("Old Roblox", "Does what the title says", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xSkripting/T3hub/main/oldanimation.lua",true))()

end)
