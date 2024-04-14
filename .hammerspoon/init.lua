local currentProfile = "Work"
local modifier = {"ctrl", "alt", "cmd"}

local function toggleApp(appName)
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
local profiles = {}

profiles["Work"] = {
    { key = "E", app = "Mail" },
    { key = "T", app = "Trello" },
    { key = "S", app = "slack" },
    { key = "M", app = "Studio 3T" },
    { key = "F", app = "Firefox Developer Edition" },
    { key = "A", app = "Around" },
    { key = "D", app = "Sourcetree" }
}
profiles["Personal"] = {
    { key = "E", app="Proton Mail Beta" },
    { key = "F", app="Safari" },
}

local function switchProfile()
    return function()
        -- Unbind existing hotkeys if any
        currentProfile = currentProfile == "Work" and "Personal" or "Work"
        hs.alert.show("Profile switched to " .. currentProfile )
        if currentProfile then
            for _, app in ipairs(profiles[currentProfile]) do
                hs.hotkey.disableAll(modifier, app.key)
            end
        end

        -- Bind new profile hotkeys
        for _, app in ipairs(profiles[currentProfile]) do
            hs.hotkey.bind(modifier, app.key, toggleApp(app.app))
        end

    end
end
hs.hotkey.bind(modifier, "P", switchProfile())

hs.hotkey.bind(modifier, "K", toggleApp("kitty"))
hs.hotkey.bind(modifier, "O", toggleApp("obsidian"))
hs.hotkey.bind(modifier, "C", toggleApp("Calendar"))
hs.hotkey.bind(modifier, "N", toggleApp("Notes"))
hs.hotkey.bind(modifier, "J", toggleApp("Arc"))
hs.hotkey.bind(modifier, "H", toggleApp("Music"))
hs.hotkey.bind(modifier, "G", toggleApp("Messages"))
hs.hotkey.bind(modifier, "V", toggleApp("Code"))
