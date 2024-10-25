#!/usr/bin/env lua

local function run(command, ...)
    local handle = io.popen("pgrep -f " .. command)
    local result = handle:read("*a")
    handle:close()

    if result == "" then
        local args = {...}
        local cmd = command .. " " .. table.concat(args, " ")
        os.execute(cmd .. " &")
    end
end

run("picom", "-b")
run("flameshot")