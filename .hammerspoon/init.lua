function toggleApp(appName)
    return function()
        local appObj = hs.application.get(appName)
        if appObj then
            if appObj:isFrontmost() then
                appObj:hide()
            else
                appObj:activate()
            end
        else
            hs.application.launchOrFocus(appName)
        end
    end
end

local modifier = {"ctrl", "alt", "cmd"}

hs.hotkey.bind(modifier, "J", toggleApp("Arc"))
hs.hotkey.bind(modifier, "T", toggleApp("Trello"))
hs.hotkey.bind(modifier, "K", toggleApp("kitty"))
hs.hotkey.bind(modifier, "S", toggleApp("slack"))
hs.hotkey.bind(modifier, "O", toggleApp("obsidian"))
hs.hotkey.bind(modifier, "M", toggleApp("Studio 3T"))
hs.hotkey.bind(modifier, "C", toggleApp("Chrome"))
