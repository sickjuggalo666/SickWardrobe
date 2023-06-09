Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local resource_name = GetCurrentResourceName()
    local current_version = GetResourceMetadata(resource_name, "version")
    PerformHttpRequest('https://raw.githubusercontent.com/sickjuggalo666/sickVersions/master/'..resource_name..'.txt',function(error, result, headers)
        if not result then 
            return 
        end
        local new_version = result:sub(1, -2)
        if new_version ~= current_version then
            print('^2['..resource_name..'] - New Update Available.^0\nCurrent Version: ^5'..current_version..'^0\nNew Version: ^5'..new_version..'^0')
            print('^2['..resource_name..']^0 - Get Update on Keymaster (^6 https://keymaster.fivem.net/assests/^0 )')
        elseif current_version == current_version then 
            print('^6#########################^0\n^2['..resource_name..'] - All Up To Date Using Version: ^5'..current_version..'^0\nDress To Impress!\n^6#########################^0')
        end
    end,'GET')
end)