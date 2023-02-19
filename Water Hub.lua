if game.PlaceId == 8750997647 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Water Hub", HidePremium = false, IntroText = "Water Hub", SaveConfig = true, ConfigFolder = "OrionTest"})
    getgenv().autowin1 = true
    getgenv().autowin = true
    getgenv().autorebirth = true
    getgenv().ws = true

    function autowin()
            while getgenv().autowin == true do
                task.wait()
                game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()

        end
    end

    function autowin1()
        while getgenv().autowin1 == true do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()

    end
end

    function ws()
        while getgenv().ws == true do
            task.wait()
            game.Players.localPlayer.Character.Humanoid.WalkSpeed = 50

    end
end

    function autorebirth()
        while getgenv().autorebirth == true do
            task.wait(0.5)
            local args = {
                [1] = 11
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer(unpack(args))            
    end
end

    local Tab = Window:MakeTab({
        Name = "main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Tabmisc = Window:MakeTab({
        Name = "misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Tabcredits = Window:MakeTab({
        Name = "credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddToggle({
        Name = "auto tap",
        Default = false,
        Callback = function(Value)
            getgenv().autowin = Value
            autowin()
        end    
    })

    Tab:AddToggle({
        Name = "auto rebirth",
        Default = false,
        Callback = function(Value)
            getgenv().autorebirth = Value
            autorebirth()
        end    
    })

    Tab:AddToggle({
        Name = "auto tap 2",
        Default = false,
        Callback = function(Value)
            getgenv().autowin1 = Value
            autowin1()
        end    
    })

    local Sectioncredits = Tabcredits:AddSection({
        Name = "by proohio"
    })

    Tabcredits:AddButton({
        Name = "link for yt",
        Callback = function()
            setclipboard("https://www.youtube.com/channel/UCBM5Z9HC7kH-blWtA2Jgc-Q")
          end    
    })

    local Sectioncredits = Tabcredits:AddSection({
        Name = "by YAB Sleazy"
    })

    Tabcredits:AddButton({
        Name = "link for yt",
        Callback = function()
            setclipboard("https://www.youtube.com/channel/UC9b3KgvigDzhaHKq6celzbQ")
          end    
    })

    Tabmisc:AddButton({
        Name = "inf yileld",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
          end    
    })

    Tabmisc:AddToggle({
        Name = "ws 50",
        Default = false,
        Callback = function(Value)
            getgenv().ws = Value
            ws()
        end    
    })
    


end
    OrionLib:Init()
