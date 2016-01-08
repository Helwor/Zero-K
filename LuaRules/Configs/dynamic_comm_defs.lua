local skinDefs = VFS.Include("LuaRules/Configs/dynamic_comm_skins.lua")

local UNBOUNDED_LEVEL = true

------------------------------------------------------------------------
-- Module Definitions
------------------------------------------------------------------------

local moduleDefNames = {}

local moduleDefs = {
	-- Empty Module Slots
	{
		name = "nullmodule",
		humanName = "No Module",
		description = "No Module",
		image = "LuaUI/Images/dynamic_comm_menu/cross.png",
		limit = false,
		emptyModule = true,
		cost = 0,
		requireLevel = 0,
		slotType = "module",
	},
	{
		name = "nullbasicweapon",
		humanName = "No Weapon",
		description = "No Weapon",
		image = "LuaUI/Images/dynamic_comm_menu/cross.png",
		limit = false,
		emptyModule = true,
		cost = 0,
		requireLevel = 0,
		slotType = "basic_weapon",
	},
	{
		name = "nulladvweapon",
		humanName = "No Weapon",
		description = "No Weapon",
		image = "LuaUI/Images/dynamic_comm_menu/cross.png",
		limit = false,
		emptyModule = true,
		cost = 0,
		requireLevel = 0,
		slotType = "adv_weapon",
	},
	
	-- Weapons
	{
		name = "commweapon_beamlaser",
		humanName = "Beam Laser",
		description = "Beam Laser\nCost: 50",
		image = "unitpics/commweapon_beamlaser.png",
		limit = 1,
		cost = 50,
		requireChassis = {"recon", "support"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_beamlaser"
			else
				sharedData.weapon2 = "commweapon_beamlaser"
			end
		end
	},
	{
		name = "commweapon_clusterbomb",
		humanName = "Cluster Bomb",
		description = "Cluster Bomb\nCost: 150",
		image = "unitpics/commweapon_clusterbomb.png",
		limit = 1,
		cost = 150,
		requireChassis = {"recon", "assault"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_clusterbomb"
			else
				sharedData.weapon2 = "commweapon_clusterbomb"
			end
		end
	},
	{
		name = "commweapon_concussion",
		humanName = "Concussion Shell",
		description = "Concussion Shell\nCost: 150",
		image = "unitpics/commweapon_concussion.png",
		limit = 1,
		cost = 200,
		requireChassis = {"support", "recon"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_concussion"
			else
				sharedData.weapon2 = "commweapon_concussion"
			end
		end
	},
	{
		name = "commweapon_disintegrator",
		humanName = "Disintegrator",
		description = "Disintegrator\nCost: 450",
		image = "unitpics/commweapon_disintegrator.png",
		limit = 1,
		cost = 450,
		requireChassis = {"assault"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_disintegrator"
			else
				sharedData.weapon2 = "commweapon_disintegrator"
			end
		end
	},
	{
		name = "commweapon_disruptorbomb",
		humanName = "Disruptor Bomb",
		description = "Disruptor Bomb\nCost: 150",
		image = "unitpics/commweapon_disruptorbomb.png",
		limit = 1,
		cost = 150,
		requireChassis = {"recon", "support"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_disruptorbomb"
			else
				sharedData.weapon2 = "commweapon_disruptorbomb"
			end
		end
	},
	{
		name = "commweapon_flamethrower",
		humanName = "Flamethrower",
		description = "Flamethrower\nCost: 100",
		image = "unitpics/commweapon_flamethrower.png",
		limit = 1,
		cost = 100,
		requireChassis = {"recon", "assault"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_flamethrower"
			else
				sharedData.weapon2 = "commweapon_flamethrower"
			end
		end
	},
	{
		name = "commweapon_heatray",
		humanName = "Heatray",
		description = "Heatray\nCost: 100",
		image = "unitpics/commweapon_heatray.png",
		limit = 1,
		cost = 100,
		requireChassis = {"assault"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_heatray"
			else
				sharedData.weapon2 = "commweapon_heatray"
			end
		end
	},
	{
		name = "commweapon_heavymachinegun",
		humanName = "Machine Gun",
		description = "Machine Gun\nCost: 100",
		image = "unitpics/commweapon_heavymachinegun.png",
		limit = 1,
		cost = 100,
		requireChassis = {"recon", "assault"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.disruptor_ammo] and "commweapon_heavymachinegun_disrupt") or "commweapon_heavymachinegun"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_hparticlebeam",
		humanName = "Heavy Particle Beam",
		description = "Heavy Particle Beam - Replaces other weapons.\nCost: 350",
		image = "unitpics/conversion_hparticlebeam.png",
		limit = 1,
		cost = 350,
		requireChassis = {"support"},
		requireLevel = 1,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.disruptor_ammo] and "commweapon_heavy_disruptor") or "commweapon_hparticlebeam"
			sharedData.weapon1 = weaponName
			sharedData.weapon2 = nil
			sharedData.noMoreWeapons = true
		end
	},
	{
		name = "commweapon_hpartillery",
		humanName = "Plasma Artillery",
		description = "Plasma Artillery\nCost: 300",
		image = "unitpics/commweapon_assaultcannon.png",
		limit = 1,
		cost = 300,
		requireChassis = {"assault"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.napalm_warhead] and "commweapon_hpartillery_napalm") or "commweapon_hpartillery"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_lightninggun",
		humanName = "Lightning Rifle",
		description = "Lightning Rifle\nCost: 100",
		image = "unitpics/commweapon_lightninggun.png",
		limit = 1,
		cost = 100,
		requireChassis = {"recon", "support"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.flux_amplifier] and "commweapon_lightninggun_improved") or "commweapon_lightninggun"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_lparticlebeam",
		humanName = "Light Particle Beam",
		description = "Light Particle Beam\nCost:75",
		image = "unitpics/commweapon_lparticlebeam.png",
		limit = 1,
		cost = 75,
		requireChassis = {"support", "recon"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.disruptor_ammo] and "commweapon_disruptor") or "commweapon_lparticlebeam"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_missilelauncher",
		humanName = "Missile Launcher",
		description = "Missile Launcher\nCost:100",
		image = "unitpics/commweapon_missilelauncher.png",
		limit = 1,
		cost = 100,
		requireChassis = {"support"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_missilelauncher"
			else
				sharedData.weapon2 = "commweapon_missilelauncher"
			end
		end
	},
	{
		name = "commweapon_multistunner",
		humanName = "Multistunner",
		description = "Multistunner\nCost: 150",
		image = "unitpics/commweapon_multistunner.png",
		limit = 1,
		cost = 150,
		requireChassis = {"support", "recon"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.flux_amplifier] and "commweapon_multistunner_improved") or "commweapon_multistunner"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_napalmgrenade",
		humanName = "Helfire Grenade",
		description = "Helfire Grenade\nCost:125",
		image = "unitpics/commweapon_napalmgrenade.png",
		limit = 1,
		cost = 125,
		requireChassis = {"assault", "recon"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_napalmgrenade"
			else
				sharedData.weapon2 = "commweapon_napalmgrenade"
			end
		end
	},
	{
		name = "commweapon_riotcannon",
		humanName = "Riot Cannon",
		description = "Riot Cannon\nCost: 75",
		image = "unitpics/commweapon_riotcannon.png",
		limit = 1,
		cost = 75,
		requireChassis = {"assault"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.napalm_warhead] and "commweapon_riotcannon_napalm") or "commweapon_riotcannon"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_rocketlauncher",
		humanName = "Rocket Launcher",
		description = "Rocket Launcher\nCost:100",
		image = "unitpics/commweapon_rocketlauncher.png",
		limit = 1,
		cost = 100,
		requireChassis = {"assault", "support"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.napalm_warhead] and "commweapon_rocketlauncher_napalm") or "commweapon_rocketlauncher"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_shockrifle",
		humanName = "Shock Rifle",
		description = "Shock Rifle - Replaces other weapons.\nCost: 450",
		image = "unitpics/conversion_shockrifle.png",
		limit = 1,
		cost = 450,
		requireChassis = {"support"},
		requireLevel = 1,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			sharedData.weapon1 = "commweapon_shockrifle"
			sharedData.weapon2 = nil
			sharedData.noMoreWeapons = true
		end
	},
	{
		name = "commweapon_shotgun",
		humanName = "Shotgun",
		description = "Shotgun\nCost: 100",
		image = "unitpics/commweapon_shotgun.png",
		limit = 1,
		cost = 100,
		requireChassis = {"recon"},
		requireLevel = 1,
		slotType = "basic_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			local weaponName = (modules[moduleDefNames.disruptor_ammo] and "commweapon_shotgun_disrupt") or "commweapon_shotgun"
			if not sharedData.weapon1 then
				sharedData.weapon1 = weaponName
			else
				sharedData.weapon2 = weaponName
			end
		end
	},
	{
		name = "commweapon_slamrocket",
		humanName = "S.L.A.M. Rocket",
		description = "S.L.A.M. Rocket - Minature tactical nuke.\nCost: 250",
		image = "unitpics/commweapon_slamrocket.png",
		limit = 1,
		cost = 250,
		requireChassis = {"assault"},
		requireLevel = 3,
		slotType = "adv_weapon",
		applicationFunction = function (modules, sharedData)
			if sharedData.noMoreWeapons then
				return
			end
			if not sharedData.weapon1 then
				sharedData.weapon1 = "commweapon_slamrocket"
			else
				sharedData.weapon2 = "commweapon_slamrocket"
			end
		end
	},
	
	-- Unique Modules
	{
		name = "econ",
		humanName = "Vanguard Economy Pack",
		description = "Vanguard Economy Pack - Produces 4 metal and 6 energy for Commanders sent to a new battlefield.",
		image = "unitpics/module_energy_cell.png",
		limit = 1,
		unequipable = true,
		cost = 0,
		requireLevel = 0,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.metalIncome = (sharedData.metalIncome or 0) + 3.7
			sharedData.energyIncome = (sharedData.energyIncome or 0) + 5.7
		end
	},
	{
		name = "commweapon_personal_shield",
		humanName = "Personal Shield",
		description = "Personal Shield - A small, protective bubble shield.\nCost: 300",
		image = "unitpics/module_personal_shield.png",
		limit = 1,
		cost = 300,
		prohibitingModules = {"personalcloak"},
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.shield = "commweapon_personal_shield"
		end
	},
	{
		name = "commweapon_areashield",
		humanName = "Area Shield",
		description = "Area Shield - Projects a large shield. Replaces Personal Shield.\nCost:250",
		image = "unitpics/module_areashield.png",
		limit = 1,
		cost = 250,
		requireChassis = {"assault", "support"},
		requireOneOf = {"commweapon_personal_shield"},
		prohibitingModules = {"personalcloak"},
		requireLevel = 3,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.shield = "commweapon_areashield"
		end
	},
	{
		name = "napalm_warhead",
		humanName = "Napalm Warhead",
		description = "Napalm Warhead - Riot Cannon, Rocket Launcher and Plasma Artillery set targets on fire. Reduced direct damage.\nCost: 350",
		image = "unitpics/weaponmod_napalm_warhead.png",
		limit = 1,
		cost = 350,
		requireChassis = {"assault"},
		requireOneOf = {"commweapon_rocketlauncher", "commweapon_hpartillery", "commweapon_riotcannon"},
		requireLevel = 2,
		slotType = "module",
	},
	{
		name = "disruptor_ammo",
		humanName = "Disruptor Ammo",
		description = "Disruptor Ammo - Heavy Machine Gun, Shotgun and Particle Beams deal slow damage. Reduced direct damage.\nCost:450",
		image = "unitpics/weaponmod_disruptor_ammo.png",
		limit = 1,
		cost = 450,
		requireOneOf = {"commweapon_heavymachinegun", "commweapon_shotgun", "commweapon_hparticlebeam", "commweapon_lparticlebeam"},
		requireLevel = 2,
		slotType = "module",
	},
	{
		name = "flux_amplifier",
		humanName = "Flux Amplifier",
		description = "Flux Amplifier - Improves EMP duration and strength of Lightning Rifle and Multistunner.\nCost: 300",
		image = "unitpics/weaponmod_stun_booster.png",
		limit = 1,
		cost = 300,
		requireChassis = {"support"},
		requireOneOf = {"commweapon_lightninggun", "commweapon_multistunner"},
		requireLevel = 2,
		slotType = "module",
	},
	{
		name = "radarjammer",
		humanName = "Radar Jammer",
		description = "Radar Jammer - Hide the radar signals of nearby units.\nCost: 200",
		image = "unitpics/module_jammer.png",
		limit = 1,
		cost = 200,
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			if not sharedData.cloakFieldRange then
				sharedData.radarJammingRange = 500
			end
		end
	},
	{
		name = "radar",
		humanName = "Field Radar",
		description = "Field Radar - Attaches a basic radar system to the Commander.\nCost:75",
		image = "unitpics/module_fieldradar.png",
		limit = 1,
		cost = 75,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.radarRange = 1800
		end
	},
	{
		name = "personalcloak",
		humanName = "Personal Cloak",
		description = "Personal Cloak - A personal cloaking device for the Commander.\Cost: 400",
		image = "unitpics/module_personal_cloak.png",
		limit = 1,
		cost = 400,
		prohibitingModules = {"commweapon_personal_shield", "commweapon_area)shield"},
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.decloakDistance = math.max(sharedData.decloakDistance or 0, 150)
			sharedData.personalCloak = true
		end
	},
	{
		name = "areacloak",
		humanName = "Cloaking Field",
		description = "Cloaking Field - Cloaks all nearby units.\nCost: 600",
		image = "unitpics/module_cloak_field.png",
		limit = 1,
		cost = 600,
		requireOneOf = {"radarjammer"},
		requireLevel = 3,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.areaCloak = true
			sharedData.decloakDistance = 180
			sharedData.cloakFieldRange = 350
			sharedData.cloakFieldUpkeep = 15
			sharedData.radarJammingRange = 350
		end
	},
	{
		name = "resurrect",
		humanName = "Lazarus Device",
		description = "Lazarus Device - Upgrade nanolathe to allow resurrection. Halves build power.\nCost: 400",
		image = "unitpics/module_resurrect.png",
		limit = 1,
		cost = 400,
		requireChassis = {"support"},
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.canResurrect = true
			sharedData.buildPowerMult = 0.5
		end
	},
	
	-- Repeat Modules
	{
		name = "drone",
		humanName = "Companion Drone",
		description = "Companion Drone - Commander spawns protective drones.\nCost: 600, Limit: 8",
		image = "unitpics/module_companion_drone.png",
		limit = 8,
		cost = 60,
		requireChassis = {"recon", "support", "assault"},
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.drones = (sharedData.drones or 0) + 1
		end
	},
	{
		name = "battleDrone",
		humanName = "Battle Drone",
		description = "Battle Drone - Commander spawns heavy drones.\nCost: 800, Limit: 8, Requires Companion Drone",
		image = "unitpics/module_battle_drone.png",
		limit = 8,
		cost = 60,
		requireChassis = {"support"},
		requireOneOf = {"drone"},
		requireLevel = 3,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.battleDrones = (sharedData.battleDrones or 0) + 1
		end
	},
	{
		name = "autorepair",
		humanName = "Autorepair",
		description = "Autorepair - Commander self-repairs at +10 hp/s.\nCost: 150, Limit: 8",
		image = "unitpics/module_autorepair.png",
		limit = 3,
		cost = 150,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 10
		end
	},
	{
		name = "health",
		humanName = "Ablative Armour Plates",
		description = "Ablative Armour Plates - Provides 600 health.\nCost: 150, Limit: 8",
		image = "unitpics/module_ablative_armor.png",
		limit = 8,
		cost = 150,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.healthBonus = (sharedData.healthBonus or 0) + 600
		end
	},
	{
		name = "bigHealth",
		humanName = "High Density Plating",
		description = "High Density Plating - Provides 1600 health but reduces movement by 10%.\n Cost: 400, Limit: 8, Requires Ablative Armour Plates",
		image = "unitpics/module_heavy_armor.png",
		limit = 8,
		cost = 400,
		requireOneOf = {"health"},
		requireLevel = 2,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.healthBonus = (sharedData.healthBonus or 0) + 1600
			sharedData.speedMult = (sharedData.speedMult or 1) - 0.1
		end
	},
	{
		name = "damageBooster",
		humanName = "Damage Booster",
		description = "Damage Booster - Increases damage by 10%. \nCost: 150, Limit: 8",
		image = "unitpics/module_dmg_booster.png",
		limit = 8,
		cost = 150,
		requireLevel = 1,
		slotType = "module",
	},
	{
		name = "speed",
		humanName = "High Power Servos",
		description = "High Power Servos - Increases speed by 10%.\n Cost: 150, Limit: 8",
		image = "unitpics/module_high_power_servos.png",
		limit = 8,
		cost = 150,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.speedMult = (sharedData.speedMult or 1) + 0.1
		end
	},
	{
		name = "range",
		humanName = "Advanced Targeting System",
		description = "Advanced Targeting System - Increases range by 5%.\n Cost: 100, Limit: 8",
		image = "unitpics/module_adv_targeting.png",
		limit = 8,
		cost = 100,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			sharedData.rangeMult = (sharedData.rangeMult or 1) + 0.05
		end
	},
	{
		name = "buildpower",
		humanName = "CarRepairer's Nanolathe",
		description = "CarRepairer's Nanolathe - Increases build power by 5.\n Cost: 150, Limit: 8",
		image = "unitpics/module_adv_nano.png",
		limit = 8,
		cost = 150,
		requireLevel = 1,
		slotType = "module",
		applicationFunction = function (modules, sharedData)
			-- All comms have 10 BP in their unitDef (even support)
			sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 5
		end
	},
	
	-- Decorative Modules
	{
		name = "banner_overhead",
		humanName = "Banner",
		description = "Banner",
		image = "unitpics/module_ablative_armor.png",
		limit = 1,
		cost = 0,
		requireChassis = {},
		requireLevel = 0,
		slotType = "decoration",
		applicationFunction = function (modules, sharedData)
			sharedData.bannerOverhead = true
		end
	}
}

for name, data in pairs(skinDefs) do
	moduleDefs[#moduleDefs + 1] = {
		name = "skin_" .. name,
		humanName = data.humanName,
		description = data.humanName,
		image = "unitpics/module_ablative_armor.png",
		limit = 1,
		cost = 0,
		requireChassis = {data.chassis},
		requireLevel = 0,
		slotType = "decoration",
		applicationFunction = function (modules, sharedData)
			sharedData.skinOverride = name
		end
	}
end

for i = 1, #moduleDefs do
	moduleDefNames[moduleDefs[i].name] = i
end

------------------------------------------------------------------------
-- Chassis Definitions
------------------------------------------------------------------------

-- it'd help if there was a name -> chassisDef map you know

local chassisDefs = {
	{
		name = "recon",
		humanName = "Recon",
		baseUnitDef = UnitDefNames and UnitDefNames["dynrecon0"].id,
		extraLevelCostFunction = function (level)
			return level*10
		end,
		maxNormalLevel = 5,
		levelDefs = {
			[0] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon0"].id
				end,
				upgradeSlots = {},
			},
			[1] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon1_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = "basic_weapon",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[2] = {
				morphBuildPower = 15,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon2_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[3] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon3_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = "adv_weapon",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[4] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon4_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[5] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynrecon5_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
		}
	},
	{
		name = "support",
		humanName = "Engineer",
		baseUnitDef = UnitDefNames and UnitDefNames["dynsupport0"].id,
		extraLevelCostFunction = function (level)
			return level*10
		end,
		maxNormalLevel = 5,
		levelDefs = {
			[0] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 2
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5 
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynsupport0"].id
				end,
				upgradeSlots = {},
			},
			[1] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 2
				end,
				morphUnitDefFunction = function(modulesByDefID)
					local damageBooster = (modulesByDefID[moduleDefNames.damageBooster] or 0)
					local resurrect = ((modulesByDefID[moduleDefNames.resurrect] and "resurrect") or "")
					return UnitDefNames["dynsupport1_damage_boost" .. damageBooster .. resurrect].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = "basic_weapon",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[2] = {
				morphBuildPower = 15,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 4
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					local damageBooster = (modulesByDefID[moduleDefNames.damageBooster] or 0)
					local resurrect = ((modulesByDefID[moduleDefNames.resurrect] and "resurrect") or "")
					return UnitDefNames["dynsupport2_damage_boost" .. damageBooster .. resurrect].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[3] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 6
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					local damageBooster = (modulesByDefID[moduleDefNames.damageBooster] or 0)
					local resurrect = ((modulesByDefID[moduleDefNames.resurrect] and "resurrect") or "")
					return UnitDefNames["dynsupport3_damage_boost" .. damageBooster .. resurrect].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = "adv_weapon",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[4] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 8
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					local damageBooster = (modulesByDefID[moduleDefNames.damageBooster] or 0)
					local resurrect = ((modulesByDefID[moduleDefNames.resurrect] and "resurrect") or "")
					return UnitDefNames["dynsupport4_damage_boost" .. damageBooster .. resurrect].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[5] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					-- All comms have 10 BP in their unitDef (even support)
					sharedData.bonusBuildPower = (sharedData.bonusBuildPower or 0) + 10
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					local damageBooster = (modulesByDefID[moduleDefNames.damageBooster] or 0)
					local resurrect = ((modulesByDefID[moduleDefNames.resurrect] and "resurrect") or "")
					return UnitDefNames["dynsupport5_damage_boost" .. damageBooster .. resurrect].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
		}
	},
	{
		name = "assault",
		humanName = "Guardian",
		baseUnitDef = UnitDefNames and UnitDefNames["dynassault0"].id,
		extraLevelCostFunction = function (level)
			return level*10
		end,
		maxNormalLevel = 5,
		levelDefs = {
			[0] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault0"].id
				end,
				upgradeSlots = {},
			},
			[1] = {
				morphBuildPower = 10,
				morphBaseCost = 20,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault1_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = "basic_weapon",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[2] = {
				morphBuildPower = 15,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault2_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[3] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault3_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.commweapon_beamlaser,
						slotAllows = {"adv_weapon", "basic_weapon"},
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[4] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault4_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
			[5] = {
				morphBuildPower = 20,
				morphBaseCost = 30,
				chassisApplicationFunction = function (modules, sharedData)
					sharedData.autorepairRate = (sharedData.autorepairRate or 0) + 5
				end,
				morphUnitDefFunction = function(modulesByDefID)
					return UnitDefNames["dynassault5_damage_boost" .. (modulesByDefID[moduleDefNames.damageBooster] or 0)].id
				end,
				upgradeSlots = {
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
					{
						defaultModule = moduleDefNames.nullmodule,
						slotAllows = "module",
					},
				},
			},
		}
	}
}

local chassisDefByBaseDef = {}
if UnitDefNames then
	for i = 1, #chassisDefs do
		chassisDefByBaseDef[chassisDefs[i].baseUnitDef] = i
	end
end

local chassisDefNames = {}
for i = 1, #chassisDefs do
	chassisDefNames[chassisDefs[i].name] = i
end

------------------------------------------------------------------------
-- Processing
------------------------------------------------------------------------

-- Transform from human readable format into number indexed format
for i = 1, #moduleDefs do
	local data = moduleDefs[i]
	
	-- Required modules are a list of moduleDefIDs
	if data.requireOneOf then
		local newRequire = {}
		for j = 1, #data.requireOneOf do
			local reqModuleID = moduleDefNames[data.requireOneOf[j]]
			if reqModuleID then
				newRequire[#newRequire + 1] = reqModuleID
			end
		end
		data.requireOneOf = newRequire
	end
	
	-- Prohibiting modules are a list of moduleDefIDs too
	if data.prohibitingModules then
		local newProhibit = {}
		for j = 1, #data.prohibitingModules do
			local reqModuleID = moduleDefNames[data.prohibitingModules[j]]
			if reqModuleID then
				newProhibit[#newProhibit + 1] = reqModuleID
			end
		end
		data.prohibitingModules = newProhibit
	end
	
	
	-- Required chassis is a map indexed by chassisDefID
	if data.requireChassis then
		local newRequire = {}
		for j = 1, #data.requireChassis do
			for k = 1, #chassisDefs do
				if chassisDefs[k].name == data.requireChassis[j] then
					newRequire[k] = true
					break
				end
			end
		end
		data.requireChassis = newRequire
	end
end

-- Find empty modules so slots can find their appropriate empty module
local emptyModules = {}
for i = 1, #moduleDefs do
	if moduleDefs[i].emptyModule then
		emptyModules[moduleDefs[i].slotType] = i
	end
end

-- Process slotAllows into a table of keys
for i = 1, #chassisDefs do
	for j = 0, #chassisDefs[i].levelDefs do
		local levelData = chassisDefs[i].levelDefs[j]
		for k = 1, #levelData.upgradeSlots do
			local slotData = levelData.upgradeSlots[k]
			if type(slotData.slotAllows) == "string" then
				slotData.empty = emptyModules[slotData.slotAllows]
				slotData.slotAllows = {[slotData.slotAllows] = true}
			else
				local newSlotAllows = {}
				slotData.empty = emptyModules[slotData.slotAllows[1]]
				for m = 1, #slotData.slotAllows do
					newSlotAllows[slotData.slotAllows[m]] = true
				end
				slotData.slotAllows = newSlotAllows
			end
		end
	end
end

-- Create WeaponDefNames for each chassis
if UnitDefNames then
	for i = 1, #chassisDefs do
		local data = chassisDefs[i]
		local weapons = UnitDefs[data.baseUnitDef].weapons
		local chassisDefWeaponNames = {}
		for num = 1, #weapons do
			local wd = WeaponDefs[weapons[num].weaponDef]
			local weaponName = string.sub(wd.name, (string.find(wd.name,"_") or 0) + 1, 100)
			if weaponName then
				chassisDefWeaponNames[weaponName] = {
					num = num,
					weaponDefID = weapons[num].weaponDef,
					manualFire = (wd.customParams and wd.customParams.manualfire and true) or false
				}
			end
		end
		data.weaponDefNames = chassisDefWeaponNames
	end

	-- Add baseWreckID and baseHeapID
	for i = 1, #chassisDefs do
		local data = chassisDefs[i]
		local wreckData = FeatureDefNames[UnitDefs[data.baseUnitDef].wreckName]

		data.baseWreckID = wreckData.id
		data.baseHeapID = wreckData.deathFeatureID
	end
end
------------------------------------------------------------------------
-- Utility Functions
------------------------------------------------------------------------

local function ModuleIsValid(level, chassis, slotAllows, moduleDefID, alreadyOwned, alreadyOwned2)
	local data = moduleDefs[moduleDefID]
	if (not slotAllows[data.slotType]) or (data.requireLevel or 0) > level or 
			(data.requireChassis and (not data.requireChassis[chassis])) or data.unequipable then
		return false
	end
	
	-- Check that requirements are met
	if data.requireOneOf then
		local foundRequirement = false
		for j = 1, #data.requireOneOf do
			-- Modules should not depend on themselves so this check is simplier than the
			-- corresponding chcek in the replacement set generator.
			local reqDefID = data.requireOneOf[j]
			if (alreadyOwned[reqDefID] or (alreadyOwned2 and alreadyOwned2[reqDefID])) then
				foundRequirement = true
				break
			end
		end
		if not foundRequirement then
			return false
		end
	end
	
	-- Check that nothing prohibits this module
	if data.prohibitingModules then
		for j = 1, #data.prohibitingModules do
			-- Modules cannot prohibit themselves otherwise this check makes no sense.
			local probihitDefID = data.prohibitingModules[j]
			if (alreadyOwned[probihitDefID] or (alreadyOwned2 and alreadyOwned2[probihitDefID])) then
				return false
			end
		end
	
	end
	
	-- Check that the module limit is not reached
	if data.limit and (alreadyOwned[moduleDefID] or (alreadyOwned2 and alreadyOwned2[moduleDefID])) then
		local count = (alreadyOwned[moduleDefID] or 0) + ((alreadyOwned2 and alreadyOwned2[moduleDefID]) or 0) 
		if count > data.limit then
			return false
		end
	end
	return true
end

local function ModuleSetsAreIdentical(set1, set2)
	-- Sets should be sorted prior to this function
	if (not set1) or (not set2) or (#set1 ~= #set2) then
		return false
	end

	local validUnit = true
	for i = 1, #set1 do
		if set1[i] ~= set2[i] then
			return false
		end
	end
	return true
end

local function ModuleListToByDefID(moduleList)
	local byDefID = {}
	for i = 1, #moduleList do
		local defID = moduleList[i]
		byDefID[defID] = (byDefID[defID] or 0) + 1
	end
	return byDefID
end

local utilities = {
	ModuleIsValid = ModuleIsValid,
	ModuleSetsAreIdentical = ModuleSetsAreIdentical,
	ModuleListToByDefID = ModuleListToByDefID,
}

------------------------------------------------------------------------
-- Return Values
------------------------------------------------------------------------

return moduleDefs, chassisDefs, utilities, UNBOUNDED_LEVEL, chassisDefByBaseDef, moduleDefNames, chassisDefNames