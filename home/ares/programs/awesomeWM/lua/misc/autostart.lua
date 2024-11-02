local awful = require("awful")

function start(command)
    awful.spawn.with_shell(command)
end

start("picom -b &")
start("flameshot &")
start("clipmenud &")
start("nm-applet &")
start("nextcloud")
start("/home/askodon/nixos-conf/home/scripts/autorun.sh")


--[[
run "picom" -b &
run "flameshot" &
run "clipmenud" &
run "nm-applet" &
run "nextcloud" &
run "/home/askodon/nixos-conf/home/scripts/autorun.sh" &
--]]
