local CreateApp = function ()
    -- Creating the custom app in nPhone
    local successful, err = exports['nPhone']:CreateCustomApp({
        id = 'customApp', -- This identifier MUST be unique
        resource = GetCurrentResourceName(), -- This is the resource name of this custom app
        title = 'Custom App', -- This is the label of the app that users will see
        description = 'Template of a custom app in nPhone', -- Description of the app in the App Store
        dev = 'Nuvil Store', -- The dev of this custom app
        default = false, -- This app will be added by default or it should be installed by the user?
        appStore = true, -- Is this app going to appear in the App Store?
        canRemove = true, -- Can the user remove this app from his phone?
        isGame = false, -- Is this custom app a game?
        icon = 'nui/icon.png', -- Path of this custom app icon
        dom = 'nui/index.html', -- Path of this custom app main DOM
        homeBarColor = 'white', -- This will be the color of the home bar
    })

    -- Show error if needed
    if not successful then
        print('Error adding custom app: '..err)
    end
end

AddEventHandler('onPhoneIsReady', function(resourceName)
    CreateApp()
end)