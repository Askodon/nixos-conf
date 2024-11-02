local awful = require("awful")

local M = {}

-- Функция для получения списка окон
local function get_window_list()
    local windows = {}
    for _, c in ipairs(client.get()) do
        table.insert(windows, c.name .. " (" .. c.class .. ")")
    end
    return windows
end

-- Функция для переключения на выбранное окно
function M.switch_to_window()
    local window_list = get_window_list()
    if #window_list == 0 then
        return
    end

    -- Преобразуем список окон в строку для dmenu
    local window_string = table.concat(window_list, "\n")

    -- Запускаем dmenu и получаем выбранное окно
    awful.spawn.easy_async_with_shell("echo '" .. window_string .. "' | dmenu -i -p 'Выберите окно:'", function(selected)
        if selected and selected ~= "" then
            local selected_name = selected:match("^(.*) %(") -- Извлекаем имя окна
            for _, c in ipairs(client.get()) do
                if c.name == selected_name then
                    c:emit_signal("request::activate", "dmenu", {raise = true})
                    break
                end
            end
        end
    end)
end

return M
