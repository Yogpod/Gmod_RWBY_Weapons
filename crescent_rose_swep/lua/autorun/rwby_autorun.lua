

AddCSLuaFile()

game.AddAmmoType {
	name = "rwby_dust",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE,
	plydmg = 0,
	npcdmg = 0,
	force = 2000,
	minsplash = 10,
	maxsplash = 15
}
print("RWBY DEBUG: AUTORUN SCRIPT IS RUNNING")

local version = "0.1.0"
http.Fetch("www.google.com", function( body, len, headers, code)
	if GetConVar("DeathNote_Update_Messege"):GetBool() then
	local githubversion = body
		if githubversion > version then 
			if SERVER then
				print("Crescent Rose: Crescent Rose version is different, Server Vesion: "..version..", Github Vesion: "..githubversion)
			elseif CLIENT then
				chat.AddText( Color( 25, 25, 25 ), "Crescent Rose: ", color_white, "Crescent Rose version is different, Server Vesion: "..version..", Github Vesion: "..githubversion )
			end
		elseif githubversion == version then
			print("Crescent Rose: Crescent Rose version is up to date, Vesion: "..version)
		elseif githubversion < version then
			print("Crescent Rose: Crescent Rose Useing Beta Github version, Beta Vesion: "..version)
		end
	end
end)