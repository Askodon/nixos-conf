#!/usr/bin/env lua

-- Функция для выполнения команды и получения вывода
function get_selection()
    local handle = io.popen("printf '1 - Power Menu\n2 - Screenshot Menu\n3 - App selecter\n4 - Clipboard History\n5 - Color Picker' | fuzzel -w 40 -y 40 -f 'Roboto'-12 --line-height=20 --dmenu -l 7 -p 'Type: '")
    local selection = handle:read("*a")  -- Чтение всего вывода
    handle:close()
    return selection:match("^(.-)\n")  -- Убираем лишние символы

end

local selection = get_selection()

-- если нажал esc то програма выключается с кодом завершения
if selection == nil then
    os.exit(0) 
end

if selection:find("Power Menu") then
    os.execute("/home/askodon/nixos-conf/home/scripts/powermenu.lua")
elseif selection:find("Screenshot Menu") then
    os.execute("/home/askodon/nixos-conf/home/scripts/screenshot.lua")
elseif selection:find("App selecter") then
    os.execute("ags -t applauncher")
elseif selection:find("Clipboard History") then
    os.execute("/home/askodon/nixos-conf/home/scripts/clipboard.lua")
elseif selection:find("Color Picker") then
    os.execute("sleep 0,5 ; notify-send $(hyprpicker -a)")

end