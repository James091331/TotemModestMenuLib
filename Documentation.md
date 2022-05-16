

# Totem's Modest Menu Library
My one and only public library :)

## The Library
```lua
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Xv3nm/TotemModestMenuLib/main/source')))()
```

## Window
```lua
local Window = library:CreateWindow("Name")
--[[
Name = Name of your UI
]]
```

## Creating Tabs
```lua
local Tab = Window:NewTab("Name",false)

--[[
Name = Name of your tab
Dangerous = True or false; Label the tab as dangerous functions to execute.
]]
```

## Creating Buttons
```lua
Tab:NewButton("Name",function() print('Example') end, false)

--[[
Name = The button text/name
Function = code to execute on button press
Dangerous = True or false; Label the button as dangerous to execute.
]]
```

## Creating toggles
```lua
Tab:NewToggle("Toggle Example",false,function(state) print(state) end,true)

--[[
Name = The text or name of the toggle.
State = Default state of the toggle.
Function = Code to execute on toggle.
Dangerous = True or false; Label the toggle as dangerous to execute.
]]
```

## Creating a Label
```lua
Tab:NewLabel("Label Example", false)

--[[
Name = Text/name of the label
Warning = True or false; Color the label for a warning.
]]
```

## Creating a Paragraph
```lua
Tab:NewParagraph("ParagraphText/Name",0.069,14,false)

--[[
ParagraphText/Name = The text inside the paragraph
ParagraphHeight (0.069) = The height of the paragraph. You must customize this to fit your text or if you wish to simple make it bigger than your text.
FontSize (14) = The size of the font in the paragraph.
Warning = True or false; Color the paragraph as a warning.
]]
```

## Destroying the Library
```lua
Main:Destroy()
```

## P.S.
```lua
--[[
Anywhere that Tab:NewButton() or some other function is used Window can replace the Tab.
Example below:
]]
Window:NewButton("Name",function() print('Example') end, false)

--[[
This allows you to place buttons, toggles, labels, paragraphs and more all within the main window of the GUI. 
Just in case you want to place a label or script outside of a tab.
]]
