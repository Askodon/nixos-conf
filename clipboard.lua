local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")

-- Создаем виджет для отображения содержимого буфера обмена
local clipboard_widget = wibox.widget {
    widget = wibox.widget.textbox,
    text = "Clipboard: ",
}

-- Функция для обновления содержимого виджета
local function update_clipboard()
    awful.spawn.easy_async("xclip -o", function(stdout)
        clipboard_widget.text = "Clipboard: " .. stdout:gsub("\n", "")
    end)
end

-- Обновляем содержимое буфера обмена при старте
update_clipboard()

-- Создаем виджет для отображения
local clipboard_popup = awful.popup {
    widget = {
        clipboard_widget,
        margins = 10,
        widget = wibox.container.margin,
    },
    border_width = 1,
    border_color = "#FFFFFF",
    placement = awful.placement.centered,
    visible = false,
}

-- Привязываем клавишу "s" для вызова виджета
awful.keygrabber.run(function(_, key, event)
    if event == "release" then
        if key == "s" then
            clipboard_popup.visible = not clipboard_popup.visible
            update_clipboard()
        end
    end
end)

-- Обновляем содержимое буфера обмена каждые 2 секунды
gears.timer {
    timeout = 2,
    autostart = true,
    callback = update_clipboard,
}

