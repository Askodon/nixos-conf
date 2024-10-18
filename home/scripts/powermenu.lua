#!/usr/bin/env lua

-- Функция для выполнения команды и получения вывода
function get_selection()
    local handle = io.popen("printf '1 - Log out\n2 - Reboot\n3 - Reboot to UEFI\n4 - Hard reboot\n5 - Shutdown\n6 - Test' | fuzzel -w 40 -y 40 -f 'Roboto'-12 --line-height=20 --dmenu -l 7 -p 'Power Menu: '")
    local selection = handle:read("*a")  -- Чтение всего вывода
    handle:close()
    return selection:match("^(.-)\n")  -- Убираем лишние символы

end

local selection = get_selection()

if selection == nil then
    os.exit(0) -- если нажал esc то програма выключается с кодом завершения
end

if selection:find("Log out") then
    os.execute("hyprctl dispatch exit")
elseif selection:find("Reboot") then
    os.execute("systemctl reboot")
elseif selection:find("Reboot to UEFI") then
    os.execute("systemctl reboot --firmware-setup")
elseif selection:find("Shutdown") then
    os.execute("systemctl poweroff")
elseif selection:find("Test") then
    os.execute("fuzzel --dmenu -p test")
end





