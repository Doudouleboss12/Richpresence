Citizen.CreateThread(function()
    while true do
    #Ceci est l'ID de l'application (remplacez-le par votre propre)
    SetDiscordAppId(898229526365085736)
  
    #Ici, vous devrez mettre le nom de l'image pour l'icône "Large".
    SetDiscordRichPresenceAsset('default')
        
    #Ici, vous pouvez ajouter un texte de survol pour l'icône "Large".
    SetDiscordRichPresenceAssetText('Tutoriel Fivem-France')
       
    #Ici, vous devrez mettre le nom de l'image pour l'icône "small".
    SetDiscordRichPresenceAssetSmall('default')
  
    #Ici, vous pouvez ajouter un texte de survol pour l'icône "small".
    SetDiscordRichPresenceAssetSmallText('ShadowRP')
    
    #Merci à @bengold  pour le code du 64 slots
    #Pour afficher le nombre de joueurs sur 64 il faut ajouter ceci :
    players = {}
    for i = 0, 64 do
        if NetworkIsPlayerActive( i ) then
            table.insert( players, i )
        end
    end
    SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/64")
  
    Citizen.Wait(60000)
    end
  end)
