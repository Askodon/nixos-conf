#!/usr/bin/env lua

local function run_command(command)
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    return result
end

-- Выбор редактора
local editor_options = "nvim\ncode\nnano"
local editor_command = "echo -e \"" .. editor_options .. "\" | gum choose --limit 1"
local editor = run_command(editor_command):gsub("%s+", "") -- Удаляем пробелы

if editor == "" then
    print("Ошибка: редактор не выбран.")
    os.exit(1)
end

-- Получение ввода от пользователя
local input = run_command("gum filter")

-- Открытие редактора с введенным текстом
os.execute(editor .. " " .. input)

