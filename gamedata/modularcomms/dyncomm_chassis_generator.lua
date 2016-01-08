local chassisDefs = {
	{
		name = "dynrecon1",
		weapons = {
			"commweapon_peashooter",
			"commweapon_personal_shield",
			"commweapon_beamlaser",
			"commweapon_lparticlebeam",
			"commweapon_disruptor",
			"commweapon_shotgun",
			"commweapon_shotgun_disrupt",
			"commweapon_lightninggun",
			"commweapon_flamethrower",
			"commweapon_heavymachinegun",
			"commweapon_heavymachinegun_disrupt",
			"commweapon_multistunner",
			"commweapon_napalmgrenade",
			"commweapon_clusterbomb",
			"commweapon_disruptorbomb",
			"commweapon_concussion",
		}
	},
	{
		name = "dynsupport1",
		weapons = {
			"commweapon_peashooter",
			"commweapon_personal_shield",
			"commweapon_areashield",
			"commweapon_beamlaser",
			"commweapon_lparticlebeam",
			"commweapon_disruptor",
			"commweapon_hparticlebeam",
			"commweapon_heavy_disruptor",
			"commweapon_lightninggun",
			"commweapon_lightninggun_improved",
			"commweapon_missilelauncher",
			"commweapon_shockrifle",
			"commweapon_concussion",
			"commweapon_multistunner",
			"commweapon_multistunner_improved",
			"commweapon_disruptorbomb",
		}
	},
	{
		name = "dynassault1",
		weapons = {
			"commweapon_peashooter",
			"commweapon_personal_shield",
			"commweapon_areashield",
			"commweapon_heatray",
			"commweapon_heavymachinegun",
			"commweapon_heavymachinegun_disrupt",
			"commweapon_flamethrower",
			"commweapon_rocketlauncher",
			"commweapon_rocketlauncher_napalm",
			"commweapon_hpartillery",
			"commweapon_hpartillery_napalm",
			"commweapon_riotcannon",
			"commweapon_riotcannon_napalm",
			"commweapon_disintegrator",
			"commweapon_slamrocket",
			"commweapon_clusterbomb",
		}
	},
}

local statOverrides = {
	cloakcost       = 5, -- For personal cloak
	cloakcostmoving = 10, 
	onoffable       = true, -- For jammer and cloaker toggling
	canManualFire   = true, -- For manualfire weapons.
}

for i = 1, #chassisDefs do
	local name = chassisDefs[i].name
	local unitDef = UnitDefs[name]
	
	for key, data in pairs(statOverrides) do
		unitDef[key] = data
	end
	
	for i = 1, 7 do
		unitDef.sfxtypes.explosiongenerators[i] = unitDef.sfxtypes.explosiongenerators[i] or [[custom:NONE]]
	end
	
	for num = 1, #chassisDefs[i].weapons do
		weaponName = chassisDefs[i].weapons[num]
		DynamicApplyWeapon(unitDef, weaponName, true, num)
	end
	
	if #chassisDefs[i].weapons > 16 then
		Spring.Echo("Too many commander weapons on:", name, "Limit is 16, found weapons:", #chassisDefs[i].weapons)
	end
end