ESX = exports['es_extended']:getSharedObject()
local PlayerData = {}
local Target = exports.ox_target
local wardrobePed = {}

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
    PlayerData.job = job
end)

Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end
	PlayerData = ESX.GetPlayerData()
end)

local function ChangeClothes(info)
    local Male = GetHashKey("mp_m_freemode_01")
    if not info.isExtra then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if GetHashKey(GetEntityModel(PlayerPedId())) == Male then
                if lib.progressBar({
                    duration = 5000,
                    label = 'Changing Clothes',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true
                    },
                    anim = {
                        dict = 'missmic4',
                        clip = 'michael_tux_fidget'
                    },
                })
                then
                    TriggerEvent('skinchanger:loadClothes', skin, info.MaleOutfit)
                else
                    print('Do stuff when cancelled')
                end
            else
                if lib.progressBar({
                    duration = 5000,
                    label = 'Changing Clothes',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true
                    },
                    anim = {
                        dict = 'missmic4',
                        clip = 'michael_tux_fidget'
                    },
                })
                then
                    TriggerEvent('skinchanger:loadClothes', skin, info.FemaleOutfit)
                else
                    print('Do stuff when cancelled')
                end
            end
        end)
    else
        TriggerEvent('skinchanger:getSkin', function(skin)
            if GetHashKey(GetEntityModel(PlayerPedId())) == Male then
                if lib.progressBar({
                    duration = 5000,
                    label = 'Changing Clothes',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true
                    },
                    anim = {
                        dict = 'missmic4',
                        clip = 'michael_tux_fidget'
                    },
                })
                then
                    TriggerEvent('skinchanger:loadClothes', skin, info.outfit)
                else
                    print('Do stuff when cancelled')
                end
            else
                if lib.progressBar({
                    duration = 5000,
                    label = 'Changing Clothes',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = true
                    },
                    anim = {
                        dict = 'missmic4',
                        clip = 'michael_tux_fidget'
                    },
                })
                then
                    TriggerEvent('skinchanger:loadClothes', skin, info.outfit)
                else
                    print('Do stuff when cancelled')
                end
            end
        end)
    end
end

local function OpenExtras(fit)
    local id = tonumber(fit.spot)
    local cfg = Config.ExtraFits[PlayerData.job.name][id]
    local option = {}
    local Male = GetHashKey("mp_m_freemode_01")
    TriggerEvent('skinchanger:getSkin', function(skin)
        if GetHashKey(GetEntityModel(PlayerPedId())) == Male then
            for k,v in pairs(cfg.male) do
                if fit.job == id then
                    option[#option+1] = {
                        title = v.title,
                        icon = v.icon,
                        description = v.description,
                        args = {
                            isExtra = true,
                            outfit = v.outfit
                        },
                        onSelect = function(args)
                            local alert = lib.alertDialog({
                                header = 'Change Oufit?',
                                content = 'Are you sure you want to change into: \n'..v.title.. ' outfit?',
                                centered = true,
                                cancel = true
                            })
                            if alert == 'confirm' then
                                ChangeClothes(args)
                            else
                                lib.showContext('wardrobe_2')
                            end
                        end
                    }
                end
            end
        else
            for k,v in pairs(cfg.female) do
                if fit.job == id then
                    option[#option+1] = {
                        title = v.title,
                        icon = v.icon,
                        description = v.description,
                        args = {
                            isExtra = true,
                            outfit = v.outfit
                        },
                        onSelect = function(args)
                            local alert = lib.alertDialog({
                                header = 'Change Oufit?',
                                content = 'Are you sure you want to change into: \n'..v.title.. ' outfit?',
                                centered = true,
                                cancel = true
                            })
                            if alert == 'confirm' then
                                ChangeClothes(args)
                            else
                                lib.showContext('wardrobe_2')
                            end
                        end
                    }
                end
            end
        end
    end)
    lib.registerContext({
        id = 'wardrobe_2',
        menu = 'wardrobe_1',
        title = 'Job Wardrobe',
        options = option
    })
    lib.showContext('wardrobe_2')
end

local function OpenWardrobe(loc)
    local cfg = Config.Wardrobes[loc]
    local option = {}
    local hereItIs = nil
    local extraOutfits = Config.Wardrobes[loc].isExtra
    for k,v in pairs(cfg.wardrobes) do
        if PlayerData.job.grade == tonumber(k) then
            hereItIs = k
            option[#option+1] = {
                title = v.title,
                icon = v.icon,
                description = v.description,
                args = {

                    MaleOutfit = v.MaleOutfit,
                    FemaleOutfit = v.FemaleOutfit,
                    extra = v.extraOutfits,
                    spot = k
                },
                onSelect= function(args)
                    local alert = lib.alertDialog({
                        header = 'Change Oufit?',
                        content = 'Are you sure you want to change into: \n'..v.title.. ' outfit?',
                        centered = true,
                        cancel = true
                    })
                    if alert == 'confirm' then
                        ChangeClothes(args)
                    else
                        lib.showContext('wardrobe_2')
                    end
                end
            }
        end
    end
    if extraOutfits then
        table.insert(option,{
            title = 'Extra Outfits',
            icon = 'circle',
            description = 'We got the others ones here!',
            args = {
                job = PlayerData.job.grade,
                spot = hereItIs
            },
            onSelect= function(args)
                OpenExtras(args)
            end
        })
    end
    lib.registerContext({
        id = 'wardrobe_1',
        title = 'Job Wardrobe',
        options = option
    })
    lib.showContext('wardrobe_1')
end

Citizen.CreateThread(function()
    for k,v in pairs(Config.Wardrobes) do
        if not Config.UsePoints then
            Target:addBoxZone({
                coords = v.coords,
                size = v.size,
                rotation = v.rotation,
                debug = v.debug,
                options = {
                    {
                        name = 'box',
                        icon = 'fa-solid fa-cube',
                        label = 'Open Wardrobe',
                        canInteract = function()
                            if PlayerData.job.name == v.job then
                                return true
                            end
                        end,
                        onSelect = function()
                            OpenWardrobe(k)
                        end
                    },
                    {
                        name = 'box1',
                        icon = 'fa-solid fa-cube',
                        label = 'Change out of Clothes',
                        canInteract = function()
                            if PlayerData.job.name == v.job then
                                return true
                            end
                        end,
                        onSelect = function()
                            if lib.progressBar({
                                duration = 5000,
                                label = 'Changing Clothes',
                                useWhileDead = false,
                                canCancel = true,
                                disable = {
                                    car = true,
                                    move = true,
                                    combat = true
                                },
                                anim = {
                                    dict = 'missmic4',
                                    clip = 'michael_tux_fidget'
                                },
                            })
                            then
                                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                    DoScreenFadeOut(500)
                                    Wait(2000)
                                    TriggerEvent('skinchanger:loadSkin', skin)
                                    Wait(2000)
                                    DoScreenFadeIn(500)
                                end)
                            else
                                print('Do stuff when cancelled')
                            end
                        end
                    }
                }
            })
        else
            local point = lib.points.new({
                coords = v.coords,
                distance = 3,
                dunak = 'nerd',
            })
            function point:onEnter()

            end
            function point:onExit()
                lib.hideTextUI()
            end

            function point:nearby()
                if PlayerData.job.name == v.job then
                    DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, false, nil, nil, false)
                    if self.currentDistance < 3 then
                        if Config.UseOx then
                            lib.showTextUI('[E] - Open Wardrobe', {
                                position = "top-center",
                                icon = 'hand',
                                style = {
                                    borderRadius = 0,
                                    backgroundColor = '#48BB78',
                                    color = 'white'
                                }
                            })
                        else
                            ESX.ShowHelpNotification('Hit ~INPUT_CONTEXT~ to Open Wardrobe!')
                        end
                        if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                            OpenWardrobe(k)
                        end
                    else
                        lib.hideTextUI()
                    end
                end
            end
        end
        if v.UsePed then
			local hash = GetHashKey(v.ped)
			if not HasModelLoaded(hash) then
				RequestModel(hash)
				Wait(10)
			end
			while not HasModelLoaded(hash) do
				Wait(10)
			end

			pedspawned = true
			wardrobePed = CreatePed(5, hash, v.PedCoords, v.h, false, false)
			SetBlockingOfNonTemporaryEvents(wardrobePed, true)
			SetPedDiesWhenInjured(wardrobePed, false)
			SetPedCanPlayAmbientAnims(wardrobePed, true)
			SetPedCanRagdollFromPlayerImpact(wardrobePed, false)
			SetPedCanBeTargetted(wardrobePed, false)
			SetEntityInvincible(wardrobePed, true)
			FreezeEntityPosition(wardrobePed, true)
			lib.requestAnimDict("amb@world_human_cop_idles@male@idle_b", 100)
		end
    end
end)