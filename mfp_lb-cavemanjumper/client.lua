local identifier = "mfp-lb-cavemanjumper"

CreateThread(function ()
    while GetResourceState("lb-phone") ~= "started" do
        Wait(500)
    end

    local function AddApp()
        local added, errorMessage = exports["lb-phone"]:AddCustomApp({
            identifier = identifier,
            name = Config.name,
            description = Config.description,
            developer = "MFPSCRIPTS.com", -- please leave this, it would be fair for a free app (-;
            defaultApp = Config.defaultApp, 
            size = Config.size, 
            price = Config.price, 
            ui = GetCurrentResourceName() .. "/ui/index.html", 
            icon = "https://cfx-nui-" .. GetCurrentResourceName() .. "/ui/assets/icon.png"
        })

        if not added then
            print("Could not add app:", errorMessage)
        end
    end

    AddApp()

    AddEventHandler("onResourceStart", function(resource)
        if resource == "lb-phone" then
            AddApp()
        end
    end)
end)








---   ADS - ADS - ADS - ADS  ---
--- can be removed, just ads: ---

AddEventHandler('onResourceStart', function(resourceName)
   if (GetCurrentResourceName() ~= resourceName) then
     return
   end
   print(" _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ ")
   print("|     |   __|  _  |   __|     | __  |     |  _  |_   _|   __|")
   print("| | | |   __|   __|__   |   --|    -|-   -|   __| | | |__   |")
   print("|_|_|_|__|  |__|  |_____|_____|__|__|_____|__|    |_| |_____|")
   print("The resource " .. resourceName .. " has been started")
 end)
 
 AddEventHandler('onResourceStop', function(resourceName)
   if (GetCurrentResourceName() ~= resourceName) then
     return
   end
   print('The resource ' .. resourceName .. ' was stopped. Created by MFPSCRIPTS.com!')
 end)