local awful = require("awful")

local M = {}

local function get_window_list()
    local windows = {}
    for _, c in ipairs(client.get()) do
        table.insert(windows, c.name .. " (" .. c.class .. ")")
    end
    return windows
end


function M.switch_to_window()
    local window_list = get_window_list()
    if #window_list == 0 then
        return
    end

    -- List to string for using in dmenu
    local window_string = table.concat(window_list, "\n")

    -- Get window
    awful.spawn.easy_async_with_shell("echo '" .. window_string .. "'dmenu -nb '#282c34' -nf '#ffffff' -sb '#61afef' -sf '#282c34' -fn 'RobotoMono Nerd Font Regular-10' -i -p 'Choose window:'", function(selected)
        if selected and selected ~= "" then
            local selected_name = selected:match("^(.*) %(") -- Window name
            for _, c in ipairs(client.get()) do
                if c.name == selected_name then
                    -- Switch to tag
                    local tag = c:tags()[1] -- Get first tag
                    if tag then
                        tag:view_only() -- swith to tag
                    end
                    c:emit_signal("request::activate", "dmenu", {raise = true}) -- Open window
                    break
                end
            end
        end
    end)
end

return M

