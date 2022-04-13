ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('fdz_fpshospitalboost')
AddEventHandler('fdz_fpshospitalboost', function()
    SetTimecycleModifier("int_hospital2_dm")
end)

RegisterCommand('fps', function(source, args)
    if args[1] == nil then
        ESX.ShowNotification('Error, ponga /fps ultra - /fps off')

    elseif args[1] == 'on' then
        SetTimecycleModifier("cinema")
        RopeDrawShadowEnabled(false)
        CascadeShadowsClearShadowSampleType()
        CascadeShadowsSetAircraftMode(false)
        CascadeShadowsEnableEntityTracker(true)
        CascadeShadowsSetDynamicDepthMode(false)
        CascadeShadowsSetEntityTrackerScale(0.0)
        CascadeShadowsSetDynamicDepthValue(0.0)
        CascadeShadowsSetCascadeBoundsScale(0.0)
        SetFlashLightFadeDistance(0.0)
        SetLightsCutoffDistanceTweak(0.0)
        DistantCopCarSirens(false)
        TriggerEvent("esx:showNotification","FPS Boost activado")

    elseif args[1] == 'off' then
        SetTimecycleModifier("default")
        RopeDrawShadowEnabled(true)
        CascadeShadowsSetAircraftMode(true)
        CascadeShadowsEnableEntityTracker(false)
        CascadeShadowsSetDynamicDepthMode(true)
        CascadeShadowsSetEntityTrackerScale(5.0)
        CascadeShadowsSetDynamicDepthValue(5.0)
        CascadeShadowsSetCascadeBoundsScale(5.0)
        SetFlashLightFadeDistance(10.0)
        SetLightsCutoffDistanceTweak(10.0)
        DistantCopCarSirens(true)
        SetArtificialLightsState(false)
        TriggerEvent("esx:showNotification","FPS Boost desactivado")
    end
end)