local Players = game:GetService("Players")

-- Liste unique contenant tous les IDs des joueurs bannis
local BannedPlayerIds = loadstring(game:HttpGet('https://raw.githubusercontent.com/soft972/ban/refs/heads/main/MODULE/S.lua'))()

-- Vérification unique de tous les joueurs présents au moment du lancement
for _, joueur in ipairs(Players:GetPlayers()) do
    for _, idBanni in ipairs(BannedPlayerIds) do
        if joueur.UserId == idBanni then
            joueur:Kick("Joueur banni détecté.")
            break -- Sort de la boucle interne dès que le joueur est kické
        end
    end
end
