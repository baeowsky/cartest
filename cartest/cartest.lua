local isTesting = false -- Flaga oznaczająca, czy testowanie jest włączone

RegisterCommand('cartest', function(source, args, rawCommand)
    isTesting = not isTesting -- Zmiana flagi testowania

    if isTesting then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0 },
            multiline = true,
            args = { '[Test Samochodu]', 'Testowanie rozpoczęte. Wciśnij "W" aby sprawdzić czas osiągnięcia 100 km/h.' }
        })
    else
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0 },
            multiline = true,
            args = { '[Test Samochodu]', 'Testowanie zakończone.' }
        })
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        if isTesting then
            if IsControlPressed(0, 32) then -- 32 to kod klawisza "W"
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                
                if IsVehicleDriveable(vehicle) then
                    local speed = GetEntitySpeed(vehicle) * 3.6 -- Przekształcenie prędkości na km/h
                    
                    if speed >= 100 then
                        TriggerEvent('chat:addMessage', {
                            color = { 0, 255, 0 },
                            multiline = true,
                            args = { '[Test Samochodu]', 'Samochód osiągnął 100 km/h w ' .. GetGameTimer() .. ' ms.' }
                        })
                        
                        isTesting = false -- Zakończenie testu po osiągnięciu 100 km/h
                    end
                end
            end
        end
    end
end)
