local ErrorPrompt = getrenv().require(game.CoreGui.RobloxGui.Modules.ErrorPrompt)
local prompt = ErrorPrompt.new("Default")
prompt._hideErrorCode = true

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.OnTopOfCoreBlur = true

game:GetService("RunService"):SetRobloxGuiFocused(true)

prompt:setParent(gui)
prompt:setErrorTitle("Totem's Modest Menu Lib")
prompt:updateButtons({{
   Text = "<3",
   Callback = function() prompt:_close() 
       pcall(function()
           game:GetService("RunService"):SetRobloxGuiFocused(false)
           getgenv().radiowaveswhyhaveidonethis = true
       end)
   end,
   Primary = true
}}, 'Default')
prompt:_open("Thanks for using my very hot ui lib <3\nCheck documentation for PromptDisable to get rid of this.")
--[[ https://v3rmillion.net/showthread.php?tid=1169936 ]]
