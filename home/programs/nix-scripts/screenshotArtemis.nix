{ pkgs, ... }:
pkgs.writeScriptBin "screenshotArtemis" ''

#!/usr/bin/env lua

local function run_command(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

local function select_option(prompt, options)
    local command = "printf \"" .. options .. "\" | fuzzel -w 40 -y 40 -f \"Roboto\"-12 --line-height=20 --dmenu -l 7 -p \"" .. prompt .. "\""
    return run_command(command):gsub("%s+", "") -- Clean stdout
end

local type_options = "1 - Only Clipboard\n2 - Open File\n3 - Normal"
local type_selection = select_option("Clipboard and other: ", type_options)

print("Выбранный тип: " .. type_selection) -- Debug info about type

if type_selection == "" then
    os.exit(1)
end

local screenshot_options = "1 - Fullscreen\n2 - Window\n3 - Region"
local screenshot_selection = select_option("Screenshot type: ", screenshot_options)


local key = nil
if type_selection:find("OnlyClipboard") then
    key = "--clipboard-only"
elseif type_selection:find("OpenFile") then
    key = "-o ~/Скриншоты -- eom"
elseif type_selection:find("Normal") then
    key = "-o ~/Скриншоты"
end

if key == nil then
    print("Error: type is nil.")
    os.exit(1)
end

if screenshot_selection:find("Fullscreen") then
    os.execute("hyprshot -m output " .. key)
elseif screenshot_selection:find("Window") then
    os.execute("hyprshot -m window " .. key)
elseif screenshot_selection:find("Region") then
    os.execute("hyprshot -m region " .. key)
else
    print("Error: type is nil.")
    os.exit(1)
end
''

