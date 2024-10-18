#!/usr/bin/env lua

local function run_command(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

local function select_option(prompt, options)
    local command = "printf \"" .. options .. "\" | fuzzel -w 40 -y 40 -f \"Roboto\"-12 --line-height=20 --dmenu -l 7 -p \"" .. prompt .. "\""
    return run_command(command):gsub("%s+", "") -- Удаляем пробелы
end

local type_options = "1 - Only Clipboard\n2 - Open File\n3 - Normal"
local type_selection = select_option("Clipboard and other: ", type_options)

print("Выбранный тип: " .. type_selection) -- Отладочное сообщение

if type_selection == "" then
    os.exit(1)
end

local screenshot_options = "1 - Fullscreen\n2 - Window\n3 - Region"
local screenshot_selection = select_option("Screenshot type: ", screenshot_options)

print("Выбранный тип скриншота: " .. screenshot_selection) -- Отладочное сообщение

local key = nil
if type_selection:find("OnlyClipboard") then
    key = "--clipboard-only"
elseif type_selection:find("OpenFile") then
    key = "-o /home/askodon/Скриншоты -- eom"
elseif type_selection:find("Normal") then
    key = "-o /home/askodon/Скриншоты"
end

-- Проверяем, была ли установлена переменная key
if key == nil then
    print("Ошибка: неверный выбор типа.")
    os.exit(1)
end

if screenshot_selection:find("Fullscreen") then
    os.execute("hyprshot -m output " .. key)
elseif screenshot_selection:find("Window") then
    os.execute("hyprshot -m window " .. key)
elseif screenshot_selection:find("Region") then
    os.execute("hyprshot -m region " .. key)
else
    print("Ошибка: неверный выбор типа скриншота.")
    os.exit(1)
end


