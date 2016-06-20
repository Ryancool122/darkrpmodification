--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]








--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_SWAT] = true,

}
   TEAM_SWAT = DarkRP.createJob("S.W.A.T", {
	color = Color(80, 45, 0, 255),
	model = "models/player/swat.mdl",
	description = [[This is a donator special job,
		your duty is to heal on of your
		wounded operatives. You should stay in the PD
		until backup is needed.
		Do everything you can to keep the city safe.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "weapon_ak472", "ls_sniper", "weapon_m42", "weapon_mp52", "stunstick", "door_ram", "weaponchecker"},
	command = "swat",
	max = 3,
	salary = 155,
	admin = 0,
	vote = true,
	hasLicense = true,
 
     })
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
