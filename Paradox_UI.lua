-- Assuming the UI library is already loaded
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/judghementday2/paradox.co/refs/heads/main/UI.lua'))({
    cheatname = 'Paradox',
    gamename = 'Paradox',
    fileext = '.cfg',
    logo = '110294417718078',
    icon = '110294417718078',
    Accent = Color3.fromRGB(150, 0, 0)
});

local ui = {
    window = Library:New({Size = UDim2.new(0, 600, 0, 500)}),
    sections = {},
    tabs = {}
};

-- Menu
do -- Combat
    ui.window:Seperator({Name = 'Combat'});
    ui.tabs['legit'] = ui.window:Page({
        Name = 'Legit',
        Icon = 'http://www.roblox.com/asset/?id=6023426921'
    });
    do
        ui.sections['legit_main'] = ui.tabs['legit']:Section({Name = 'Main', Side = 'Left', Size = 427});
        ui.sections['legit_main']:Toggle({Name = 'Aimbot', Flag = 'Enable Aimbot'});
        ui.sections['legit_main']:Toggle({Name = 'Silent Aim', Flag = 'Enable Silent Aim'});
        ui.sections['legit_main']:Toggle({Name = 'Prediction', Flag = 'Enable Prediction'});
        ui.sections['legit_main']:Keybind({Flag = 'Aimbot Keybind', Name = 'Aimbot Keybind', Default = Enum.UserInputType.MouseButton2, Mode = 'Hold'});
        ui.sections['legit_main']:Slider({Name = 'Aimbot Speed', Flag = 'Aimbot Speed', Default = 0.5, Minimum = 0.05, Maximum = 1, Decimals = 0.01, Ending = ''});
        ui.sections['legit_main']:Slider({Name = 'Max Distance', Flag = 'Aimbot Max Distance', Default = 500, Minimum = 100, Maximum = 2500, Decimals = 1, Ending = 's'});
    end;
end;

do -- Visuals
    ui.window:Seperator({Name = 'Visuals'});
    ui.tabs['visuals'] = ui.window:Page({
        Name = 'Player',
        Icon = 'http://www.roblox.com/asset/?id=6031075931'
    });
    do
        ui.sections['esp'] = ui.tabs['visuals']:Section({Name = 'ESP', Side = 'Left', Size = 417});
        ui.sections['esp']:Toggle({Name = 'Names', Flag = 'Enable Names'});         
        ui.sections['esp']:Toggle({Name = 'Boxes', Flag = 'Enable Boxes'});
        ui.sections['esp']:Toggle({Name = 'Distance', Flag = 'Enable Distance'});
        ui.sections['esp']:Toggle({Name = 'Weapon', Flag = 'Enable Weapon'});
        ui.sections['esp']:Toggle({Name = 'Healthbar', Flag = 'Enable Healthbar'});
        ui.sections['esp']:Toggle({Name = 'Healthtext', Flag = 'Enable Healthtext'});
    end;
end;

do -- Settings
    ui.window:Seperator({Name = 'Settings'})
    ui.tabs['settings'] = ui.window:Page({
        Name = 'Settings',
        Icon = 'http://www.roblox.com/asset/?id=6031280882'
    });
    Library:Configs(ui.tabs['settings']);
end;

-- Main loop to run the UI
function love.draw()
    ui.window:Render()  -- Assuming the UI library has a render function
end