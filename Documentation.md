

# Totem's Modest Menu Library
My one and only public library :)

## The Library
```lua
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Xv3nm/TotemModestMenuLib/main/source')))()
```

## Window
```lua
local Window = library:CreateWindow("Name",false)
--[[
Name = Name of your UI
Prompt = True or false; Enable or disable prompt
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

## Creating selections (Dropdown replacement)
```lua
Tab:NewSelection("Selection Example",{
    "Selection One",
    "Selection Two",
    "Selection Three"
},1,function(selection,index)
    print(index.." : "..selection)
end)
--[[
Name = The text or name of the selection.
Selections = The options you wish to display to be selected
Default Index = The index number of default selections
Function = The code to execute every time the selection is changed. Returns with selection ("Selection One") and the index ("1") of the selection.
]]
```
## Creating value selections (Slider replacement)
```lua
Tab:NewValueSelection("Value Selection Ex",0,100,5,50,function(value)
    print(value)
end)
--[[
Name = The text or name of the selection.
Minimum = Minimum selected value
Maximum = Maximum selected value
Count = The amount increased or decreased per click
Default = The default value shown in the selector
Function = Code executed after every value changed.
]]

--[[
It is possible to hold down the value selection arrows allowing for faster navigation.
To keep away from lagging the game code will not execute until you release your mouse button from the selector arrow.
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
Window:DestroyGuiButton()
Tab:DestroyGuiButton()
--[[  ^ Inserts a premade Destroy Gui button with custom icon. ]]
Window:Destroy()
Tab:Destroy()
--[[ ^ Immediately destroys the gui. ]]
```

## PromptDisable
```lua
library:CreateWindow("Name",false)
--[[
Name = Name of Window
Prompt = True or false; Enable or disable the executed prompt
]]
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
