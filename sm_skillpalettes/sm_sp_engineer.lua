-- Hardcoded Skill Palettes for the Engineer Profession.
	--[[self.temp.context.player.weaponset = {
		[0] = "Aqua1",
		[1] = "Aqua2",
		[2] = "Kit/Astral",
		[3] = "LichForm, Moa, mini, tornado ",
		[4] = "Weapon1",
		[5] = "Weapon2",
	},
	
	self.temp.context.player.transformid = {
		0	NONE,
		1	ELE_FIRE, Kits, bundles , pickup weapons
		2	ELE_WATER,
		3	ELE_AIR,
		4	ELE_EARTH,
		5	UNKNOWN1,
		6	NECRO_SHROUD,
		7	WAR_ADREN1,
		8	WAR_ADREN2,
		9	WAR_ADREN3,
		10	RANGER_DRUID,
		11	RANGER_ASTRAL,
		12	UNKNOWN2,
		13	REV_DRAGON,
		14	REV_ASSASSIN,
		15	REV_DWARF,
		16	REV_DEMON,
		17	UNKNOWN3,
		18	REV_CENTAUR	
	},]]

local pistol_mh = class('pistol_mh',sm_skillpalette)
pistol_mh.uid = "Pistol_Mainhand"
pistol_mh.profession = GW2.CHARCLASS.Engineer
pistol_mh.icon = "Pistol"
-- pistol_mh.id  -> set a skill ID if you want it to download an icon for this skillset 
pistol_mh.skills_luacode = {
	[5827] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 0.5,
		icon = "Fragmentation Shot",		
	},
	[5828] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 1.75,
		icon = "Poison Dart Volley",		
	},
	[5829] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 0,
		icon = "Static Shot",		
	},
}
-- Additionally available:
-- context.player
-- context.player.transformid
-- context.player.weaponset
-- context.player.canswapweaponset 
-- context.player.mainhand
-- context.player.mainhand_alt 
-- context.player.offhand
-- context.player.offhand_alt
-- context.player.aquatic
-- context.player.aquatic_alt
-- others, check ingame the green ? in CUSTOM LUA CONDITION EDITOR to see all
-- IF YOU NEED OTHERS, TELL ME OR ADD THEM YOURSELF AT sm_profile.lua line ~51 -> function sm_profile:UpdateContext()
function pistol_mh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5827)	
end
function pistol_mh:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Pistol and context.player.weaponset == 2 and context.player.transformid == 0 -- we have a pistol and a kit currently equipped
end
function pistol_mh:Activate(context)
end
function pistol_mh:Deactivate(context)
end
SkillManager:AddSkillPalette( pistol_mh )



local pistol_oh = class('pistol_oh',sm_skillpalette)
pistol_oh.uid = "Pistol_OffHand"
pistol_oh.profession = GW2.CHARCLASS.Engineer
pistol_oh.icon = "Pistol"
pistol_oh.skills_luacode = {
	[5831] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0.5,
		icon = "Blowtorch",		
	},
	[5830] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 0.5,
		icon = "Glue Shot",		
	},
}
function pistol_oh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5831)	
end
function pistol_oh:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Pistol and context.player.weaponset == 2 and context.player.transformid == 0 -- we have a pistol and a kit currently equipped
end
function pistol_oh:Activate(context)
end
function pistol_oh:Deactivate(context)
	
end
SkillManager:AddSkillPalette( pistol_oh )



local rifle = class('rifle',sm_skillpalette)
rifle.uid = "Rifle"
rifle.profession = GW2.CHARCLASS.Engineer
rifle.icon = "Rifle"
rifle.skills_luacode = {
	[6003] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 0.75,
		icon = "Hip Shot",		
	},
	[6004] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0.5,
		icon = "Net Shot",		
	},
	[6153] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 0.5,
		icon = "Blunderbuss",		
	},
	[6154] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 1.0,
		icon = "Overcharged Shot",		
	},
	[6005] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 1.0,
		icon = "Jump Shot",		
	},
}
function rifle:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 6003)	
end
function rifle:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Rifle and context.player.weaponset == 2 and context.player.transformid == 0 -- we have a pistol and a kit currently equipped
end
function rifle:Activate(context)
end
function rifle:Deactivate(context)
	
end
SkillManager:AddSkillPalette( rifle )



local shield = class('Shield',sm_skillpalette)
shield.uid = "Shield"
shield.profession = GW2.CHARCLASS.Engineer
shield.icon = "Shield"
shield.skills_luacode = {
	[6053] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 3.0,
		icon = "Magnetic Shield",		
	},
	[6126] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0.5,
		icon = "Magnetic Inversion",		
	},
	[6054] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 2.0,
		icon = "Static Shield",		
	},
	[6057] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 0.75,
		icon = "Throw Shield",		
	},
}
function shield:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil and (context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 6053 or context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 6126))	
end
function shield:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Shield and context.player.weaponset == 2 and context.player.transformid == 0 -- we have a pistol and a kit currently equipped
end
function shield:Activate(context)
end
function shield:Deactivate(context)
	
end
SkillManager:AddSkillPalette( shield )



local harpoon = class('Harpoongun',sm_skillpalette)
harpoon.uid = "Harpoongun"
harpoon.profession = GW2.CHARCLASS.Engineer
harpoon.icon = "Harpoongun"
harpoon.skills_luacode = {
	[6148] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 1,
		icon = "Homing Torpedo",		
	},
	[6147] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0.25,
		icon = "Scatter Mines",		
	},
	[6073] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0,
		icon = "Detonate Mines",		
	},
	[6146] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 0.5,
		icon = "Retreating Grapple",		
	},
	[6149] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0.25,
		icon = "Timed Charge",		
	},
	[6145] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 0.25,
		icon = "Net Wall",		
	},
	[6074] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 0,
		icon = "Deploy Net Wall",		
	},
}
function harpoon:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 6148)	
end
function harpoon:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.Diving and context.player.aquatic == GW2.WEAPONTYPE.HarpoonGun and context.player.weaponset == 2 and context.player.transformid == 0 -- we have a pistol and a kit currently equipped
end
function harpoon:Activate(context)
end
function harpoon:Deactivate(context)	
end
SkillManager:AddSkillPalette( harpoon )


local downed = class('Downed',sm_skillpalette)
downed.uid = "Downed"
downed.profession = GW2.CHARCLASS.Engineer
downed.icon = "Bandage"
downed.skills_luacode = {
	[5820] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 0,
		icon = "Throw Junk",		
	},
	[5962] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0,
		icon = "Grappling Line",		
	},
	[5963] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 0,
		icon = "Booby Trap",		
	},
	[1175] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0,
		icon = "Bandage",		
	},
}
function downed:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5820)	
end
function downed:CanActivate(context)
	return false
end
function downed:Activate(context)
end
function downed:Deactivate(context)	
end
SkillManager:AddSkillPalette( downed )


local drowning = class('Drowning',sm_skillpalette)
drowning.uid = "Drowning"
drowning.profession = GW2.CHARCLASS.Engineer
drowning.icon = "Anchor"
drowning.skills_luacode = {
	[5916] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 0,
		icon = "Floating Mine",		
	},
	[5917] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0,
		icon = "Anchor",		
	},
	[5918] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 3.0,
		icon = "Buoy",		
	},
	[1175] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0,
		icon = "Bandage",		
	},
}
function drowning:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5916)	
end
function drowning:CanActivate(context)
	return false
end
function drowning:Activate(context)
end
function drowning:Deactivate(context)	
end
SkillManager:AddSkillPalette( drowning )


local bombkit = class('BombKit',sm_skillpalette)
bombkit.uid = "BombKit"
bombkit.profession = GW2.CHARCLASS.Engineer
bombkit.icon = "Bomb Kit"
bombkit.id = 5812
bombkit.skills_luacode = {
	[5842] = { 
		slot = GW2.SKILLBARSLOT.Slot_1,
		activationtime = 0.5,
		icon = "Bomb",		
	},
	[5823] = { 
		slot = GW2.SKILLBARSLOT.Slot_2,
		activationtime = 0.5,
		icon = "Fire Bomb",		
	},
	[5822] = { 
		slot = GW2.SKILLBARSLOT.Slot_3,
		activationtime = 0.5,
		icon = "Concussion Bomb",		
	},
	[5824] = { 
		slot = GW2.SKILLBARSLOT.Slot_4,
		activationtime = 0.5,
		icon = "Smoke Bomb",		
	},
	[5939] = { 
		slot = GW2.SKILLBARSLOT.Slot_5,
		activationtime = 0.5,
		icon = "Glue Bomb",
	},
}
function bombkit:IsActive(context)
	return context.skillbar~=nil  and (
	(context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 5084) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 5084) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 5084))
end
function bombkit:CanActivate(context)
	return context.player.transformid == 0 and context.skillbar~=nil  and (
	(context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 5812) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 5812) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 5812))
end
function bombkit:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 5812) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_7) end
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 5812) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_8) end
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 5812) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_9) end
	end
end
function bombkit:Deactivate(context)
	Player:SwapWeaponSet()
end
SkillManager:AddSkillPalette( bombkit )



local bombkit = class('Mortar Kit',sm_skillpalette)
bombkit.uid = "MortarKit"
bombkit.profession = GW2.CHARCLASS.Engineer
bombkit.icon = "Mortar Kit"
bombkit.id = 30800
bombkit.skills_luacode = {
	[30371] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Mortar Shot',  
	 },
	[30885] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Poison Gas Shell',  
	 },
	[30307] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Endothermic Shell',  
	 },
	[30121] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Flash Shell',  
	 },
	[30032] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Elixir Shell',  
	 },
}
function bombkit:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_10]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_10].id == 29905
end
function bombkit:CanActivate(context)
	return context.player.transformid == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_10]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_10].id == 30800
end
function bombkit:Activate(context)
	Player:CastSpell(GW2.SKILLBARSLOT.Slot_10)
end
function bombkit:Deactivate(context)
	Player:SwapWeaponSet()
end
SkillManager:AddSkillPalette( bombkit )


local bombkit = class('ElixierGun',sm_skillpalette)
bombkit.uid = "ElixierGun"
bombkit.profession = GW2.CHARCLASS.Engineer
bombkit.icon = "ElixierGun"
bombkit.id = 5933
bombkit.skills_luacode = {
	[5934] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Tranquilizer Dart',  
	 },
	[5935] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Glob Shot',  
	 },
	[5965] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 2.25, 
		 icon = 'Fumigate',  
	 },
	[5936] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.25, 
		 icon = 'Acid Bomb',  
	 },
	[5937] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Super Elixir',  
	 },
}
function bombkit:IsActive(context)
	return context.skillbar~=nil  and (
	(context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 6115) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 6115) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 6115))
end
function bombkit:CanActivate(context)
	return context.player.transformid == 0 and context.skillbar~=nil  and (
	(context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 5933) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 5933) or
	(context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 5933))
end
function bombkit:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_7]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_7].id == 5933) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_7) end
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_8]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_8].id == 5933) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_8) end
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_9]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_9].id == 5933) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_9) end
	end
end
function bombkit:Deactivate(context)
	Player:SwapWeaponSet()
end
SkillManager:AddSkillPalette( bombkit )





-- ALL the skills which do not belong to a set
local engineer = class('Engineer',sm_skillpalette)
engineer.uid = "Engineer"
engineer.profession = GW2.CHARCLASS.Engineer
engineer.icon = "Engineer"
engineer.skills_luacode = {
-- HEALING
	[21659] = { 
		slot = GW2.SKILLBARSLOT.Slot_6,
		activationtime = 0.75,
		icon = "A.E.D.",		
	},
	[21661] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.75, 
		 icon = 'Static Shock',  
	 },
	 [5834] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1.0, 
		 icon = 'Elixir H',  
	 },
	 [5978] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir H',  
	 },
	 [6119] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Elixir H',  
	 },
	 [5857] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.75,
		 nounderwater = true,
		 icon = 'Healing Turret',  
	 },
	 [5961] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Healing Turret',  
	 },
	 [6176] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.25, 
		 icon = 'Regenerating Mist',  
	 },
	 [29772] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 1.0, 
		 icon = 'Bandage Self',  
	 },
	 [5802] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.0, 
		 icon = 'Med Kit',  
	 },
	 [30357] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.5, 
		 nounderwater = true,
		 icon = 'Medic Gyro',  
	 },
	 [29629] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.75, 
		 icon = 'Medic Gyro Self-Destruct',  
	 },
	 [29505] = { 
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.5, 
		 icon = 'Reconstruction Field',  
	 },
	 
-- TODO: HOLOSMITH HEAL SKILLS


-- END HEALING

-- TOOLKIT F-Keys 
	[5813] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Big Ol Bomb',  
	 },
	[5810] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Grenade Barrage',  
	 },
	 [5966] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Healing Mist',  
	 },
	 [5977] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Incendiary Ammo',  
	 },
	 [5999] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Throw Wrench',  
	 },
	 [5967] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir B',  
	 },
	 [6082] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0,
		instantcast = true,		 
		 icon = 'Detonate Elixir B',  
	 },
	 [5969] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir C',  
	 },
	 [6078] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Elixir C',  
	 },
	 [5867] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.25, 
		 icon = 'Toss Elixir R',  
	 },
	 [6086] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0,		 
		 instantcast = true,
		 icon = 'Detonate Elixir R',  
	 },
	 [5972] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir S',  
	 },
	 [6084] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Elixir S',  
	 },
	 [6089] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir U',  
	 },
	 [6088] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Elixir U',  
	 },
	 [5982] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.25, 
		 icon = 'Launch Personal Battering Ram',  
	 },
	 [5983] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Rocket Kick',  
	 },
	 [5973] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Superspeed',  
	 },
	 [6164] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 1.0, 
		 icon = 'Mine Field',  
	 },
	 [6166] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0,
		 instantcast = true,
		 icon = 'Detonate Mine Field',  
	 },
	 [5975] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Analyze',  
	 },
	 [6181] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Throw Napalm',  
	 },
	 [6179] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.25, 
		 icon = 'Net Attack',  
	 },
	 [6178] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Surprise Shot',  
	 },
	 [6182] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Harpoon',  
	 },
	 [6177] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Rocket',  
	 },
	 [22573] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Rocket',  
	 },
	 [6180] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.25, 
		 icon = 'Rumble',  
	 },
	 [29716] = { 
		 slot = GW2.SKILLBARSLOT.Slot_17, 
		 activationtime = 0.5, 
		 icon = 'Med Pack Drop',  
	 },
	 [30725] = { 
		 slot = GW2.SKILLBARSLOT.Slot_17, 
		 activationtime = 0.5, 
		 icon = 'Toss Elixir X',  
	 },
	 [30599] = { 
		 slot = GW2.SKILLBARSLOT.Slot_17, 
		 activationtime = 0.75, 
		 icon = 'Orbital Strike',  
	 },
	 [30262] = { 
		 slot = GW2.SKILLBARSLOT.Slot_17, 
		 activationtime = 0.75, 
		 icon = 'Detection Pulse',  
	 },
	 [29665] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Bypass Coating',  
	 },
	 [30027] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.0,
		 instantcast = true,
		 icon = 'Defense Field',  
	 },
	 [30279] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.25, 
		 icon = 'Chemical Field',  
	 },
	 [31167] = { 
		 slot = GW2.SKILLBARSLOT.Slot_14, 
		 activationtime = 0.5, 
		 icon = 'Spare Capacitor',  
	 },
	 
-- UTILITY 
	[5821] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Elixir B',  
	 },
	[5860] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Elixir C',  
	 }, 
	 [5968] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Elixir R',  
	 },
	 [5861] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0,
		 instantcast = true,		 
		 icon = 'Elixir S',  
	 },
	 [5862] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.0,
		 instantcast = true,
		 icon = 'Elixir U',  
	 },
	 [5811] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Personal Battering Ram',  
	 },
	 [5910] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 icon = 'Rocket Boots',  
	 },
	 [5825] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0,
		 instantcast = true,		 
		 icon = 'Slick Shoes',  
	 },
	 [6161] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Throw Mine',  
	 },
	 [6162] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate',  
	 },
	 [5865] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0,
		 instantcast = true,		 
		 icon = 'Utility Goggles',  
	 },
	 [5836] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Flame Turret',  
	 },
	 [5985] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Flame Turret',  
	 },
	 [5837] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Net Turret',  
	 },
	 [5984] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Net Turret',  
	 },
	 [5818] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Rifle Turret',  
	 },
	 [6093] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Harpoon Turret',  
	 },
	 [6097] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Harpoon Turret',  
	 },
	 [5912] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Rocket Turret',  
	 },
	 [6134] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Rocket Turret',  
	 },
	 [5838] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Thumper Turret',  
	 },
	 [5960] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Thumper Turret',  
	 },
	 
	 
-- ELITE
	[5868] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1.0, 
		 icon = 'Supply Crate',  
	 },
	 [29518] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Detonate Supply Crate Turrets',  
	 },
	 [5832] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1.0, 
		 icon = 'Elixir X',  
	 },
	 [30544] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.75, 
		 icon = 'Sneak Gyro Self-Destruct',  
	 },
	 [30815] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.75, 
		 nounderwater = true,
		 icon = 'Sneak Gyro',  
	 },	 
	 [31248] = { 
		 slot = GW2.SKILLBARSLOT.Slot_9, 
		 activationtime = 0.5,
		 nounderwater = true, 
		 icon = 'Blast Gyro Tag',  
	 },
	 [31264] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Blast Gyro Self-Destruct',  
	 },	 
	 [30101] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 nounderwater = true,
		 instantcast = true,
		 icon = 'Bulwark Gyro',  
	 },
	 [29697] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 instantcast = true,
		 icon = 'Bulwark Gyro Self-Destruct',  
	 },
	 [29739] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.0, 
		 nounderwater = true,
		 instantcast = true,
		 icon = 'Purge Gyro',  
	 },
	 [30777] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.75, 
		 instantcast = true,
		 icon = 'Purge Gyro Self-Destruct',  
	 },
	 [29921] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 nounderwater = true,
		 icon = 'Shredder Gyro',  
	 },
	 [30112] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.0, 
		 instantcast = true,
		 icon = 'Shredder Gyro Self-Destruct',  
	 },
	 
	 -- ADD HOLOSMITH
	 
}
function engineer:IsActive(context)
	return context.player.transformid == 0
end
function engineer:CanActivate(context)
	return false
end
function engineer:Activate(context)
end
function engineer:Deactivate(context)
end
SkillManager:AddSkillPalette( engineer )