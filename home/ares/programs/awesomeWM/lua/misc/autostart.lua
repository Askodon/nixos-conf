local awful = require("awful")

function is_running(process_name)
    local cmd = "pgrep -f " .. process_name
    awful.spawn.easy_async(cmd, function(stdout, stderr, reason, exit_code)
        if stdout == "" then
            -- Start if not started
            start(process_name)
        end
    end)
end

function start(command)
    awful.spawn.with_shell(command .. " &")
end

-- Check and start
is_running("picom")
is_running("flameshot")
is_running("clipmenud")
is_running("nm-applet")
is_running("nextcloud")
is_running("pasystray")
is_running("/home/askodon/nixos-conf/home/scripts/break_time.sh") 

--[[
run "picom" -b &
run "flameshot" &
run "clipmenud" &
run "nm-applet" &
run "nextcloud" &
run "/home/askodon/nixos-conf/home/scripts/autorun.sh" &
--]]
