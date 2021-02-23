shell.run("clear")
MDP = "1234"
MDPU = "1235"
MDPUpdate = "1"
 
rednet.broadcast("all_ecran_on")
print("Bonjour, que puis-je faire pour vous?")
print("")
print("Veuillez saisir le mot de passe :")
 
text = read("*")
 
if text == (MDP) then
write("")
	print("Que dois je faire?")
	write ("Admin: ")
	Commande = io.read()
	print("")
		if Commande == "restart" then
			print("Redémarage de la base.")
			print("Tout les systemes ne seront plus opérationnel pendant un maximun de 5 minutes.")
			sleep(10)
		elseif Commande == "edit" then
			print("Lancement du programe d'éditage.")
			sleep(1)
			shell.run("edit startup")
		elseif Commande == "info" then
			shell.run("clear")
			print("Version: 1.0.0")
			shell.run("id")
			print("Lua")
			sleep(3)
		elseif Commande == "reboot" then
			print("Redemarage du systeme.")
			sleep(2)
			shell.run("reboot")
		elseif Commande == "stop" then
			shell.run("clear")
			print("Arrêt du programme")
			os.exit()
		elseif Commande == "update" then
			rednet.broadcast("update")
			print("Misa a jour du systeme.")
			sleep(1)
			shell.run("clear")
			shell.run("delete startup")
			print("Mise a jour en cours")
			sleep(1)
			shell.run("pastebin get CeqAMQE6 startup")
			print("Mise a jour fini")
			sleep(1)
			print("Redemarage")
			sleep(1)
			shell.run("reboot")
		elseif Commande == "ecran" then
			print("Definir le status des ecrans?")
			write ("Admin_Ecran: ")
			Ecran = io.read()
			print("")
				if Ecran == "update" then
					rednet.broadcast("update")
					print("Misa a jour des ecrans.")
					sleep(2)
					shell.run("reboot")
				elseif Ecran == "on" then
					rednet.broadcast("all_ecran_on")
					print("Définition du statut des ecrans sur ON.")
					sleep(2)
					shell.run("reboot")
				elseif Ecran == "off" then
					rednet.broadcast("all_ecran_off")
					print("Définition du statut des ecrans sur OFF.")
					sleep(2)
					shell.run("reboot")
				elseif Ecran == "eva" then
					rednet.broadcast("status_eva")
					print("Définition du statut des ecrans sur Evacuation.")
					sleep(2)
					shell.run("reboot")
				else
					print("Le mot de passe que vous avez saisi est incorrect !")
					sleep(3)
				end
		elseif Commande == "help" then
			print("Bienvenue dans l'aide.")
			print("Categorie :")
			print("- System")
			print("- Ecran")
			print("")
			write ("Help: ")
			Help = io.read()
			print("")
				if Help == "System" then
					shell.run("clear")
					print("")
					print("Différentes commandes pour exécuter des ordres simples ou accéder à des sous-gestionnaires.")
					print("")
					print("restart: Redémarrage de toutes les périphériques connectées et du système.")
					print("reboot: Redémarrage du système.")
					print("stop: Arrêt du système.")
					print("edit: Ouvre l'interface d'édition du programme système.")
					print("info: Donne des informations sur la version du système.")
					print("update: Mettre à jour le système.")
					print("ecran: Ouvre le gestionnaire écran.")
					sleep(10)
				elseif Help == "Ecran" then
					shell.run("clear")
					print("")
					print("Différentes commandes pour exécuter dans les sous-gestionnaires <Écran>.")
					print("Permets de changer le status des écrans manuellement.") 
					print("")
					print("update: Lance la mise à jour de tous les écrans.")
					print("off: Change le status en OFF")
					print("on: Change le status en ON")
					print("eva: : Change le status en Évacuation")
					sleep(10)
				else
					print("Categorie d'aide inconue!")
					sleep(2)
				end				
		else
			print("Impossible, je ne peux pas faire ça! Veuillez réessayer.")
			sleep(3)
			end
elseif text == (MDPU) then
	term.setBackgroundColour(colours.red)
	print("Vous venez de rentré le mot de passe d'urgence.")
	print("")
	print("Ceci entrainera une désactivation de la base et une désactivation des systèmes de sécurité.")
	print("Une évacuation est fortement conseillée.")
	print("")
	print("Êtes-vous sure de vouloir faire ça? (Oui ou Non):")
	write ("MDPU: ")
	MDPU = io.read()
	print("")
		if MDPU == "Oui" then
			print("Redémarage de la base.")
			print("Tout les systemes ne seront plus opérationnel pendant un maximun de 5 minutes.")
			sleep(10)
		elseif MDPU == "Non" then
			print("OK.")
			print("Redémarage du systeme.")
			sleep(10)
		else 
			print("Commentaire Inconus")
			write ("Êtes-vous sure de vouloir faire ça? (Oui ou Non):")
			sleep(2)
		end
elseif text == (MDPUpdate) then
	shell.run("ur")
else
    term.setBackgroundColour(colours.red)
	print("Erreur: Le mot de passe que vous avez saisi est incorrect !")
    sleep(2)
end

while true do
	term.clear()
	print("t")
	color = read()
		if color == "bl" then
			rs.setBundledOutput("back", colors.white)
		elseif color == "pl" then
			shell.run("reboot")
		else
			print("lol")
		end
end 

term.setBackgroundColour(colours.black)
rednet.broadcast("all_ecran_off")
redstone.setOutput("bottom", false)
shell.run("startup")