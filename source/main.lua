local Library = {}

function Library:CreateWindow(titleText)
    local ModestLib = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local TitleFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local UIListLayout = Instance.new("UIListLayout")
    
    --[[  Check if ModestLib exists and Destroy it if it does  ]]
    pcall(function() if game:GetService("CoreGui").ModestLib then game:GetService("CoreGui").ModestLib:Destroy() else print('F'); end; end)
    --[[                                                       ]]

    ModestLib.Name = "ModestLib"
    ModestLib.Parent = game:GetService("CoreGui")
    ModestLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Window.Name = "Window"
    Window.Parent = ModestLib
    Window.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
    Window.BackgroundTransparency = 0.100
    Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Window.BorderSizePixel = 3
    Window.Position = UDim2.new(0.0340346545, 0, 0.0375426635, 0)
    Window.Size = UDim2.new(0, 389, 0, 789)
    Window.Draggable = true
    Window.Active = true
    Window.Selectable = true
    
    TitleFrame.Name = "TitleFrame"
    TitleFrame.Parent = Window
    TitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TitleFrame.BackgroundTransparency = 1.000
    TitleFrame.Size = UDim2.new(0, 389, 0, 26)
    
    Title.Name = "Title"
    Title.Parent = TitleFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 389, 0, 26)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = titleText or "Totem's Modest Menu Lib v0.1.0"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 16.000
    
    UIListLayout.Parent = Window
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local innards = {}
    
    function innards:NewTab(name,danger)
        local Tab = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local Home = Instance.new("TextButton")
        local TextButton = Instance.new("TextButton")
        local TabImage = Instance.new("ImageLabel")
        local ReturnImage = Instance.new("ImageLabel")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.0250000004, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        TabImage.Name = "TabImage"
        TabImage.Parent = TextButton
        TabImage.BackgroundTransparency = 1
        TabImage.LayoutOrder = 10
        TabImage.AnchorPoint = Vector2.new(0.5, 0.5)
        TabImage.Position = UDim2.new(0.97, 0, 0.5, 0)
        TabImage.Size = UDim2.new(0, 25, 0, 25)
        TabImage.ZIndex = 2
        TabImage.Image = "rbxassetid://3926307971"
        TabImage.ImageRectOffset = Vector2.new(764, 244)
        TabImage.ImageRectSize = Vector2.new(36, 36)

        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
        
        Tab.Name = name
        Tab.Parent = Window
        Tab.BackgroundColor3 = Color3.fromRGB(11, 65, 106)
        Tab.BackgroundTransparency = 1.000
        Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Tab.BorderSizePixel = 0
        Tab.Position = UDim2.new(0, 0, 0.0329531059, 0)
        Tab.Size = UDim2.new(1, 0, 0.00126742711, 762)
        Tab.Visible = false
        
        UIListLayout.Parent = Tab
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        Home.Parent = Tab
        Home.BackgroundColor3 = Color3.fromRGB(224,197,69)
        Home.BackgroundTransparency = 1.000
        Home.BorderSizePixel = 0
        Home.Size = UDim2.new(1, 0, 0.0250000004, 0)
        Home.Font = Enum.Font.GothamSemibold
        Home.Text = "  .."
        Home.TextColor3 = Color3.fromRGB(255, 255, 255)
        Home.TextSize = 16.000
        Home.TextXAlignment = Enum.TextXAlignment.Left
        
        ReturnImage.Name = "ReturnImage"
        ReturnImage.Parent = Home
        ReturnImage.BackgroundTransparency = 1
        ReturnImage.LayoutOrder = 10
        ReturnImage.AnchorPoint = Vector2.new(0.5, 0.5)
        ReturnImage.Position = UDim2.new(0.97, 0, 0.5, 0)
        ReturnImage.Rotation = 180
        ReturnImage.Size = UDim2.new(0, 25, 0, 25)
        ReturnImage.ZIndex = 2
        ReturnImage.Image = "rbxassetid://3926307971"
        ReturnImage.ImageRectOffset = Vector2.new(764, 244)
        ReturnImage.ImageRectSize = Vector2.new(36, 36)
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end

        Home.MouseEnter:Connect(function()
            Home.BackgroundTransparency = 0
        end)
        
        Home.MouseLeave:Connect(function()
            Home.BackgroundTransparency = 1
        end)
        
        TextButton.MouseButton1Click:Connect(function()
            for _,v in pairs(Window:GetChildren()) do
                if v:IsA("TextButton") then
                    v.Visible = false
                    Tab.Visible = true
                end
            end
        end)
        
        Home.MouseButton1Click:Connect(function()
            for _,v in pairs(Window:GetChildren()) do
                if v:IsA("TextButton") then
                    Tab.Visible = false
                    v.Visible = true
                end
            end
        end)
        
        local tabInnards = {}
        
        function tabInnards:NewButton(name, interaction, danger)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.0250000004, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            if danger then
                TextButton.Text = "      "..name
            else
                TextButton.Text = "  "..name
            end
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            
            if danger then
                local warning = Instance.new("ImageButton")
                    
                warning.Name = "warning"
                warning.Parent = TextButton
                warning.AnchorPoint = Vector2.new(0.5, 0.5)
                warning.BackgroundTransparency = 1
                warning.Position = UDim2.new(0.04, 0, 0.5, 0)
                warning.Size = UDim2.new(0, 25, 0, 25)
                warning.ZIndex = 2
                warning.Image = "rbxassetid://6764432408"
                warning.ImageRectOffset = Vector2.new(0, 900)
                warning.ImageRectSize = Vector2.new(50, 50)
            end
            
            TextButton.MouseButton1Click:Connect(interaction)
            
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end
        
        function tabInnards:NewToggle(name,state,interaction,danger)
            local TextButton = Instance.new("TextButton")
            local uncheck = Instance.new("ImageButton")
            local check = Instance.new("ImageButton")

            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.0250000004, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            if danger then
                TextButton.Text = "      "..name
            else
                TextButton.Text = "  "..name
            end
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Left
            
            uncheck.Name = "uncheck"
            uncheck.Parent = TextButton
            uncheck.AnchorPoint = Vector2.new(0.5, 0.5)
            uncheck.BackgroundTransparency = 1.000
            uncheck.LayoutOrder = 3
            uncheck.Position = UDim2.new(0.970000029, 0, 0.5, 0)
            uncheck.Size = UDim2.new(0, 22, 0, 22)
            uncheck.ZIndex = 2
            uncheck.Image = "rbxassetid://3926305904"
            uncheck.ImageRectOffset = Vector2.new(924, 724)
            uncheck.ImageRectSize = Vector2.new(36, 36)
            
            check.Name = "check"
            check.Parent = TextButton
            check.AnchorPoint = Vector2.new(0.5, 0.5)
            check.BackgroundTransparency = 1.000
            check.Position = UDim2.new(0.970000029, 0, 0.5, 0)
            check.Size = UDim2.new(0, 22, 0, 22)
            check.ZIndex = 2
            check.Image = "rbxassetid://3926305904"
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)
            
            if danger then
                local warning = Instance.new("ImageButton")
                    
                warning.Name = "warning"
                warning.Parent = TextButton
                warning.AnchorPoint = Vector2.new(0.5, 0.5)
                warning.BackgroundTransparency = 1
                warning.Position = UDim2.new(0.04, 0, 0.5, 0)
                warning.Size = UDim2.new(0, 25, 0, 25)
                warning.ZIndex = 2
                warning.Image = "rbxassetid://6764432408"
                warning.ImageRectOffset = Vector2.new(0, 900)
                warning.ImageRectSize = Vector2.new(50, 50)
            end
            
            if state then uncheck.Visible = false; check.Visible = true else uncheck.Visible = true; check.Visible = false end
            
            TextButton.MouseButton1Click:Connect(function()
                state = not state
                if state then 
                    uncheck.Visible = false; 
                    check.Visible = true
                else 
                    uncheck.Visible = true; 
                    check.Visible = false 
                end
    
                if state then
                    interaction(state)
                elseif not state then
                    interaction(state)
                end
            end)
            
            TextButton.MouseEnter:Connect(function()
                TextButton.BackgroundTransparency = 0
            end)
            
            TextButton.MouseLeave:Connect(function()
                TextButton.BackgroundTransparency = 1
            end)
        end
        
        function tabInnards:NewLabel(name,warning)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, 0.025, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.Text = name
            if warning then
                TextButton.TextColor3 = Color3.fromRGB(255, 143, 22)
            else
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            TextButton.TextSize = 16.000
            TextButton.TextXAlignment = Enum.TextXAlignment.Center
        end
        
        function tabInnards:NewParagraph(name,height,fontSize,warning)
            local TextButton = Instance.new("TextButton")
    
            TextButton.Parent = Tab
            TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
            TextButton.BackgroundTransparency = 1.000
            TextButton.BorderSizePixel = 0
            TextButton.Size = UDim2.new(1, 0, height or 0.025, 0)
            TextButton.Font = Enum.Font.GothamSemibold
            TextButton.TextWrapped = true
            TextButton.Text = name
            if warning then
                TextButton.TextColor3 = Color3.fromRGB(255, 143, 22)
            else
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            TextButton.TextSize = fontSize or 16
            TextButton.TextXAlignment = Enum.TextXAlignment.Center
        end
        
        return tabInnards;
    end
    
    function innards:NewButton(name, interaction, danger)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.0250000004, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end
        
        TextButton.MouseButton1Click:Connect(interaction)
        
        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end
    
    function innards:NewToggle(name,state,interaction,danger)
        local TextButton = Instance.new("TextButton")
        local uncheck = Instance.new("ImageButton")
        local check = Instance.new("ImageButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.0250000004, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        if danger then
            TextButton.Text = "      "..name
        else
            TextButton.Text = "  "..name
        end
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        
        uncheck.Name = "uncheck"
        uncheck.Parent = TextButton
        uncheck.AnchorPoint = Vector2.new(0.5, 0.5)
        uncheck.BackgroundTransparency = 1.000
        uncheck.LayoutOrder = 3
        uncheck.Position = UDim2.new(0.970000029, 0, 0.5, 0)
        uncheck.Size = UDim2.new(0, 22, 0, 22)
        uncheck.ZIndex = 2
        uncheck.Image = "rbxassetid://3926305904"
        uncheck.ImageRectOffset = Vector2.new(924, 724)
        uncheck.ImageRectSize = Vector2.new(36, 36)
        
        check.Name = "check"
        check.Parent = TextButton
        check.AnchorPoint = Vector2.new(0.5, 0.5)
        check.BackgroundTransparency = 1.000
        check.Position = UDim2.new(0.970000029, 0, 0.5, 0)
        check.Size = UDim2.new(0, 22, 0, 22)
        check.ZIndex = 2
        check.Image = "rbxassetid://3926305904"
        check.ImageRectOffset = Vector2.new(312, 4)
        check.ImageRectSize = Vector2.new(24, 24)
        
        if danger then
            local warning = Instance.new("ImageButton")
                
            warning.Name = "warning"
            warning.Parent = TextButton
            warning.AnchorPoint = Vector2.new(0.5, 0.5)
            warning.BackgroundTransparency = 1
            warning.Position = UDim2.new(0.04, 0, 0.5, 0)
            warning.Size = UDim2.new(0, 25, 0, 25)
            warning.ZIndex = 2
            warning.Image = "rbxassetid://6764432408"
            warning.ImageRectOffset = Vector2.new(0, 900)
            warning.ImageRectSize = Vector2.new(50, 50)
        end
        
        if state then 
            uncheck.Visible = false; 
            check.Visible = true
            boolOn()
        else 
            uncheck.Visible = true; 
            check.Visible = false 
        end
        
        TextButton.MouseButton1Click:Connect(function()
            state = not state
            if state then uncheck.Visible = false; check.Visible = true else uncheck.Visible = true; check.Visible = false end

            if state then
                interaction(state)
            elseif not state then
                interaction(state)
            end
        end)
        
        TextButton.MouseEnter:Connect(function()
            TextButton.BackgroundTransparency = 0
        end)
        
        TextButton.MouseLeave:Connect(function()
            TextButton.BackgroundTransparency = 1
        end)
    end
    
    function innards:NewLabel(name,warning)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, 0.025, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Text = name
        if warning then
            TextButton.TextColor3 = Color3.fromRGB(255, 143, 22)
        else
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        TextButton.TextSize = 16.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Center
    end
    
    function innards:NewParagraph(name,height,fontSize,warning)
        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Window
        TextButton.BackgroundColor3 = Color3.fromRGB(224,197,69)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(1, 0, height or 0.025, 0)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextWrapped = true
        TextButton.Text = name
        if warning then
            TextButton.TextColor3 = Color3.fromRGB(255, 143, 22)
        else
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
        TextButton.TextSize = fontSize or 16
        TextButton.TextXAlignment = Enum.TextXAlignment.Center
    end
    
    return innards;
end
return Library;

