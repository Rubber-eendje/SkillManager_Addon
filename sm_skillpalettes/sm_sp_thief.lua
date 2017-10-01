
local shortbow = SkillManager:CreateSkillPalette('shortbow')
shortbow.uid = "Thief_shortbow"
shortbow.profession = GW2.CHARCLASS.Thief
shortbow.icon = "shortbow"
-- shortbow.id =   --> set a skill ID if you want it to download an icon for this skillset 
shortbow.skills_luacode = {
	[13022] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 icon = 'Trick Shot',  
	 },
	 [13129] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 parent = 1, -- will this work?
		 icon = 'Surprise Shot',  
	 },
	 [13041] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Cluster Bomb',  
	 },
	 [13043] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 1, 
		 parent = 13041,
		 icon = 'Detonate Cluster',  
	 },
	 [13083] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.25, 
		 icon = 'Disabling Shot',  
	 },
	 [13024] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Choking Gas',  
	 },
	 [13025] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0, 
		 icon = 'Infiltrator\'s Arrow',  
	 },
}
function shortbow:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_3].id == 13083)
end
function shortbow:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Shortbow or context.player.mainhand_alt == GW2.WEAPONTYPE.Shortbow) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function shortbow:Activate(context)
	Player:SwapWeaponSet()
end
function shortbow:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( shortbow )



local dagger_mh = SkillManager:CreateSkillPalette('dagger_mh')
dagger_mh.uid = "Thief_dagger_mh"
dagger_mh.profession = GW2.CHARCLASS.Thief
dagger_mh.icon = "dagger"
-- dagger_mh.id =   --> set a skill ID if you want it to download an icon for this skillset 
dagger_mh.skills_luacode = {
	[13004] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0, 
		 icon = 'Double Strike',  
	 },
	 [13087] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0, 
		 parent = 13004,
		 icon = 'Wild Strike',  
	 },
	 [13108] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 parent = 13087,
		 icon = 'Lotus Strike',  
	 },
	 [13005] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 parent = 1,
		 icon = 'Backstab',  
	 },
	 [13097] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Heartseeker',  
	 },
	 [13110] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Twisting Fangs',  
	 },
	 [13006] = { -- dagger offhand combo.
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 parent = 13019, -- dagger_oh skill slot_4.
		 icon = 'Death Blossom',  
	 },
	 [13040] = { -- pistol offhand combo.
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0, 
		 parent = 13012, -- pistol_oh skill slot_4.
		 icon = 'Shadow Shot',  
	 },
}
function dagger_mh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13097)
end
function dagger_mh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Dagger or context.player.mainhand_alt == GW2.WEAPONTYPE.Dagger) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function dagger_mh:Activate(context)
	Player:SwapWeaponSet()
end
function dagger_mh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( dagger_mh )



local dagger_oh = SkillManager:CreateSkillPalette('dagger_oh')
dagger_oh.uid = "Thief_dagger_oh"
dagger_oh.profession = GW2.CHARCLASS.Thief
dagger_oh.icon = "dagger"
-- dagger_oh.id =   --> set a skill ID if you want it to download an icon for this skillset 
dagger_oh.skills_luacode = {
	[13019] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.25, 
		 icon = 'Dancing Dagger',  
	 },
	 [13013] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Cloak and Dagger',  
	 },
}
function dagger_oh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 13019)
end
function dagger_oh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Dagger or context.player.offhand_alt == GW2.WEAPONTYPE.Dagger) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function dagger_oh:Activate(context)
	Player:SwapWeaponSet()
end
function dagger_oh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( dagger_oh )



local pistol_mh = SkillManager:CreateSkillPalette('pistol_mh')
pistol_mh.uid = "Thief_pistol_mh"
pistol_mh.profession = GW2.CHARCLASS.Thief
pistol_mh.icon = "pistol"
-- pistol_mh.id =   --> set a skill ID if you want it to download an icon for this skillset 
pistol_mh.skills_luacode = {
	[13084] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Vital Shot',  
	 },
	 [13115] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 1, 
		 parent = 1,
		 icon = 'Sneak Attack',  
	 },
	 [13008] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Body Shot',  
	 },
	 [13111] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1.75, 
		 icon = 'Repeater',  
	 },
	 [13010] = {  -- dagger offhand combo.
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0, 
		 parent = 13019, -- dagger_oh skill slot_4.
		 icon = 'Shadow Strike',  
	 },
	 [13011] = { -- pistol offhand combo.
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1.5, 
		 parent = 13012, -- pistol_oh skill slot_4.
		 icon = 'Unload',  
	 },
}
function pistol_mh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13008)
end
function pistol_mh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Pistol or context.player.mainhand_alt == GW2.WEAPONTYPE.Pistol) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function pistol_mh:Activate(context)
	Player:SwapWeaponSet()
end
function pistol_mh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( pistol_mh )



local pistol_oh = SkillManager:CreateSkillPalette('pistol_oh')
pistol_oh.uid = "Thief_pistol_oh"
pistol_oh.profession = GW2.CHARCLASS.Thief
pistol_oh.icon = "pistol"
-- pistol_oh.id =   --> set a skill ID if you want it to download an icon for this skillset 
pistol_oh.skills_luacode = {
	[13012] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Head Shot',  
	 },
	 [13113] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 icon = 'Black Powder',  
	 },
}
function pistol_oh:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 13012)
end
function pistol_oh:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.offhand == GW2.WEAPONTYPE.Pistol or context.player.offhand_alt == GW2.WEAPONTYPE.Pistol) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function pistol_oh:Activate(context)
	Player:SwapWeaponSet()
end
function pistol_oh:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( pistol_oh )



local sword = SkillManager:CreateSkillPalette('sword')
sword.uid = "Thief_sword"
sword.profession = GW2.CHARCLASS.Thief
sword.icon = "sword"
-- sword.id =   --> set a skill ID if you want it to download an icon for this skillset 
sword.skills_luacode = {
	[13009] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Slice',  
	 },
	 [13088] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 13009,
		 icon = 'Slash',  
	 },
	 [13116] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 13088,
		 icon = 'Crippling Strike',  
	 },
	 [13114] = { -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 1, 
		 parent = 1,
		 icon = 'Tactical Strike',  
	 },
	 [13015] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0, 
		 icon = 'Infiltrator\'s Strike',  
	 },
	 [13128] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Infiltrator\'s Return',  
	 },
	 [13112] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Stab',  
	 },
}
function sword:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and (context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13015 or context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13128))
end
function sword:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Sword or context.player.mainhand_alt == GW2.WEAPONTYPE.Sword) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function sword:Activate(context)
	Player:SwapWeaponSet()
end
function sword:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( sword )



local staff = SkillManager:CreateSkillPalette('staff')
staff.uid = "Thief_staff"
staff.profession = GW2.CHARCLASS.Thief
staff.icon = "staff"
-- staff.id =   --> set a skill ID if you want it to download an icon for this skillset 
staff.skills_luacode = {
	[30614] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Staff Strike',  
	 },
	 [30135] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 30614,
		 icon = 'Staff Bash',  
	 },
	 [30434] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 1, 
		 parent = 30135,
		 icon = 'Punishing Strikes',  
	 },
	 [30210] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 1,
		 icon = 'Hook Strike',  
	 },
	 [29911] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Weakening Charge',  
	 },
	 [30520] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0	, 
		 icon = 'Debilitating Arc',  
	 },
	 [30775] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.25, 
		 icon = 'Dust Strike',  
	 },
	 [30597] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.75, 
		 icon = 'Vault',  
	 },
}
function staff:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 29911)
end
function staff:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Staff or context.player.mainhand_alt == GW2.WEAPONTYPE.Staff) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function staff:Activate(context)
	Player:SwapWeaponSet()
end
function staff:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( staff )



local rifle_freeaction = SkillManager:CreateSkillPalette('rifle_freeaction')
rifle_freeaction.uid = "Thief_rifle_freeaction"
rifle_freeaction.profession = GW2.CHARCLASS.Thief
rifle_freeaction.icon = "rifle"
-- rifle_freeaction.id =   --> set a skill ID if you want it to download an icon for this skillset 
rifle_freeaction.skills_luacode = {
	[41422] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Brutal Aim',  
	 },
	 [44087] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 1,
		 icon = 'Cursed Bullet',  
	 },
	 [41494] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.5, 
		 icon = 'Skirmisher\'s Shot',  
	 },
	 [43916] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.75, 
		 icon = 'Double Tap',  
	 },
	 [41937] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.25, 
		 icon = 'Death\'s Retreat',  
	 },
	 -- [40600] = { 
		 -- slot = GW2.SKILLBARSLOT.Slot_5, 
		 -- activationtime = 0.5, 
		 -- icon = 'Kneel',  
	 -- },
	 -- [45218] = { 
		 -- slot = GW2.SKILLBARSLOT.Slot_5, 
		 -- activationtime = 0.5, 
		 -- icon = 'Sniper's Cover',  
	 -- },
}
function rifle_freeaction:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 41494)
end
function rifle_freeaction:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Rifle or context.player.mainhand_alt == GW2.WEAPONTYPE.Rifle) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0
end
function rifle_freeaction:Activate(context)
	if (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 41068) then -- check if we are "kneeled".
		Player:CastSpell(GW2.SKILLBARSLOT.Slot_5)
	else
		Player:SwapWeaponSet()
	end
end
function rifle_freeaction:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( rifle_freeaction )



local rifle_kneel = SkillManager:CreateSkillPalette('rifle_kneel')
rifle_kneel.uid = "Thief_rifle_kneel"
rifle_kneel.profession = GW2.CHARCLASS.Thief
rifle_kneel.icon = "rifle"
-- rifle_kneel.id =   --> set a skill ID if you want it to download an icon for this skillset 
rifle_kneel.skills_luacode = {
	[40710] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 icon = 'Deadly Aim',  
	 },
	 [44087] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 1,
		 icon = 'Cursed Bullet',  
	 },
	 [44591] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Spotter\'s Shot',  
	 },
	 [44695] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1, 
		 icon = 'Three Round Burst',  
	 },
	 [40436] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.75, 
		 icon = 'Death\'s Judgment',  
	 },
	 -- [41068] = { 
		 -- slot = GW2.SKILLBARSLOT.Slot_5, 
		 -- activationtime = 0, 
		 -- icon = 'Free Action',  
	 -- },
}
function rifle_kneel:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 44591)
end
function rifle_kneel:CanActivate(context) -- TODO: unsure of logic. Think it only swaps if already on default rifle now. Wont swap to rifle to activate this set. TESTING REQUIRED.
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.NotInWater and (context.player.mainhand == GW2.WEAPONTYPE.Rifle or context.player.mainhand_alt == GW2.WEAPONTYPE.Rifle) and (context.player.weaponset == 4 or context.player.weaponset == 5) and context.player.transformid == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil and (context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 40600 or context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 45218) and context.skillbar[GW2.SKILLBARSLOT.Slot_5].cancast
end
function rifle_kneel:Activate(context)
	if (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_5] ~= nil  and (context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 40600 or context.skillbar[GW2.SKILLBARSLOT.Slot_5].id == 45218)) then -- check if we have "kneel" skill available.
		Player:CastSpell(GW2.SKILLBARSLOT.Slot_5)
	end
end
function rifle_kneel:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( rifle_kneel )



local harpoongun = SkillManager:CreateSkillPalette('harpoongun')
harpoongun.uid = "Thief_harpoongun"
harpoongun.profession = GW2.CHARCLASS.Thief
harpoongun.icon = "Harpoongun"
-- harpoongun.id =   --> set a skill ID if you want it to download an icon for this skillset 
harpoongun.skills_luacode = {
	[13072] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 icon = 'Piercing Shot',  
	 },
	 [13126] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 1,
		 icon = 'The Ripper',  
	 },
	 [13073] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 1.25, 
		 icon = 'Deluge',  
	 },
	 [13074] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Escape',  
	 },
	 [13075] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 1, 
		 icon = 'Disabling Shot',  
	 },
	 [13076] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.25, 
		 icon = 'Ink Shot',  
	 },
	 [13078] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 0.5, 
		 parent = 13076,
		 icon = 'Smoke Trail',  
	 },
}
function harpoongun:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13073)
end
function harpoongun:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.Diving and (context.player.aquatic == GW2.WEAPONTYPE.Harpoongun or context.player.aquatic_alt == GW2.WEAPONTYPE.Harpoongun) and (context.player.weaponset == 0 or context.player.weaponset == 1) and context.player.transformid == 0
end
function harpoongun:Activate(context)
	Player:SwapWeaponSet()
end
function harpoongun:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( harpoongun )



local spear = SkillManager:CreateSkillPalette('spear')
spear.uid = "Thief_spear"
spear.profession = GW2.CHARCLASS.Thief
spear.icon = "spear"
-- spear.id =   --> set a skill ID if you want it to download an icon for this skillset 
spear.skills_luacode = {
	[13119] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Stab',  
	 },
	 [13120] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 13119,
		 icon = 'Jab',  
	 },
	 [13121] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.75, 
		 parent = 13120,
		 icon = 'Poison Tip Strike',  
	 },
	 [13125] = {  -- Only with buff:13017 (stealth)
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 parent = 1,
		 icon = 'Deadly Strike',  
	 },
	 [13069] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Flanking Dive',  
	 },
	 [13122] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1.5, 
		 icon = 'Nine-Tailed Strike',  
	 },
	 [13070] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0.5, 
		 icon = 'Tow Line',  
	 },
	 [13068] = { 
		 slot = GW2.SKILLBARSLOT.Slot_5, 
		 activationtime = 2.5, 
		 icon = 'Shadow Assault',  
	 },
}
function spear:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 13069)
end
function spear:CanActivate(context)
	return context.player.canswapweaponset and context.player.swimming == GW2.SWIMSTATE.Diving and (context.player.aquatic == GW2.WEAPONTYPE.Spear or context.player.aquatic_alt == GW2.WEAPONTYPE.Spear) and (context.player.weaponset == 0 or context.player.weaponset == 1) and context.player.transformid == 0
end
function spear:Activate(context)
	Player:SwapWeaponSet()
end
function spear:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( spear )



local downed = SkillManager:CreateSkillPalette('downed')
downed.uid = "Thief_downed"
downed.profession = GW2.CHARCLASS.Thief
downed.icon = "downed"
downed.id = 13003  --> set a skill ID if you want it to download an icon for this skillset 
downed.skills_luacode = {
	[13003] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.25, 
		 icon = 'Trail of Knives',  
	 },
	 [13140] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0, 
		 icon = 'Shadow Escape',  
	 },
	 [13033] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 0.5, 
		 icon = 'Smoke Bomb',  
	 },
	 [1175] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Bandage',  
	 },
}
function downed:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 13079)
end
function downed:CanActivate(context)
	return false
end
function downed:Activate(context)
end
function downed:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( downed )



local drowning = SkillManager:CreateSkillPalette('drowning')
drowning.uid = "Thief_drowning"
drowning.profession = GW2.CHARCLASS.Thief
drowning.icon = "drowning"
drowning.id = 13079  --> set a skill ID if you want it to download an icon for this skillset 
drowning.skills_luacode = {
	[13079] = { 
		 slot = GW2.SKILLBARSLOT.Slot_1, 
		 activationtime = 0.5, 
		 icon = 'Diving Knife',  
	 },
	 [13081] = { 
		 slot = GW2.SKILLBARSLOT.Slot_2, 
		 activationtime = 0.75, 
		 icon = 'Cheap Shot',  
	 },
	 [13080] = { 
		 slot = GW2.SKILLBARSLOT.Slot_3, 
		 activationtime = 1, 
		 icon = 'Vanish in the Deep',  
	 },
	 [1175] = { 
		 slot = GW2.SKILLBARSLOT.Slot_4, 
		 activationtime = 0, 
		 icon = 'Bandage',  
	 },
}
function drowning:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 13079)
end
function drowning:CanActivate(context)
	return false
end
function drowning:Activate(context)
end
function drowning:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( drowning )





-- ALL the skills which do not belong to a set
local thief = SkillManager:CreateSkillPalette('thief')
thief.uid = "Thief_Thief"
thief.profession = GW2.CHARCLASS.Thief
thief.icon = "thief"
thief.skills_luacode = {
-- HEALING
	[13027] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1, 
		 icon = 'Hide in Shadows',  
	 },
	 [13021] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0, 
		 icon = 'Withdraw',  
	 },
	 [21778] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1, 
		 icon = 'Skelk Venom',  
	 },
	 [13050] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 1.25, 
		 icon = 'Signet of Malice',  
	 },
	 [30400] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.75, 
		 icon = 'Channeled Vigor',  
	 },
	 [45088] = { 
		 slot = GW2.SKILLBARSLOT.Slot_6, 
		 activationtime = 0.75, 
		 icon = 'Malicious Restoration',  
	 },

-- END HEALING.

-- F-Keys.
	[13014] = { -- TODO: This will get a random skill. We need a way to just fire whatever we get right away. (F1>steal,F2>stolen skill)
		 slot = GW2.SKILLBARSLOT.Slot_13, 
		 activationtime = 0.5, 
		 icon = 'Steal',  
	 },
	 

-- END F-Keys.

-- ELITE.
	 [13085] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 4, 
		 icon = 'Dagger Storm',  
	 },
	 [13082] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1.5, 
		 icon = 'Thieves Guild',  
	 },
	 [13132] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1, 
		 icon = 'Basilisk Venom',  
	 },
	 [29516] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.5, 
		 icon = 'Impact Strike',  
	 },
	 [30077] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.75, 
		 parent = 29516,
		 icon = 'Uppercut',  
	 },
	 [29639] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 1.5, 
		 parent = 30077,
		 icon = 'Finishing Blow',  
	 },
	 [45508] = { 
		 slot = GW2.SKILLBARSLOT.Slot_10, 
		 activationtime = 0.5, 
		 icon = 'Shadow Meld',  
	 },

-- END ELITE.

-- UTILITY.
	 [46335] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Shadow Gust',  
	 },
	 [41205] = { 
		 slot = GW2.SKILLBARSLOT.Slot_8, 
		 activationtime = 0.75, 
		 icon = 'Binding Shadow',  
	 },
	 [41372] = { 
		 slot = GW2.SKILLBARSLOT.Slot_9, 
		 activationtime = 0, 
		 icon = 'Mercy',  
	 },
	 [41158] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.75, 
		 icon = 'Shadow Flare',  
	 },
	 [45672] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 41158,
		 icon = 'Shadow Swap',  
	 },
	[30868] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1, 
		 icon = 'Fist Flurry',  
	 },
	 [30693] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 parent = 30868,
		 icon = 'Palm Strike',  
	 },
	 [30568] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1, 
		 icon = 'Distracting Daggers',  
	 },
	 [30661] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1.5, 
		 icon = 'Bandit\'s Defense',  
	 },
	 [30519] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 parent = 30661,
		 icon = 'Reflexive Strike',  
	 },
	 [30369] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Impairing Daggers',  
	 },
	[13002] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Shadowstep',  
	 },
	 [13106] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 13002,
		 icon = 'Shadow Return',  
	 },
	 [13044] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Blinding Powder',  
	 },
	 [13065] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Smoke Screen',  
	 },
	 [13117] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.25, 
		 icon = 'Shadow Refuge',  
	 },
	 [13020] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Scorpion Wire',  
	 },
	 [13035] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Roll for Initiative',  
	 },
	 [13066] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Haste',  
	 },
	 [13028] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1, 
		 icon = 'Caltrops',  
	 },
	 [13046] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Assassin\'s Signet',  
	 },
	 [13064] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Infiltrator\'s Signet',  
	 },
	 [13062] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Signet of Agility',  
	 },
	 [13060] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Signet of Shadows',  
	 },[13057] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Tripwire',  
	 },
	 [13026] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Needle Trap',  
	 },
	 [13038] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Shadow Trap',  
	 },
	 [16435] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 1.5, 
		 parent = 13038,
		 icon = 'Destroy Shadow Trap',  
	 },
	 [16436] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 parent = 13038,
		 icon = 'Shadow Pursuit',  
	 },
	 [13056] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0.5, 
		 icon = 'Ambush',  
	 },
	 [13037] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Spider Venom',  
	 },
	 [13055] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Skale Venom',  
	 },
	 [13096] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Ice Drake Venom',  
	 },
	 [13093] = { 
		 slot = GW2.SKILLBARSLOT.Slot_7, 
		 activationtime = 0, 
		 icon = 'Devourer Venom',  
	 },

-- END UTILITY.
}
function thief:IsActive(context)
	return context.player.transformid == 0
end
function thief:CanActivate(context)
	return false
end
function thief:Activate(context)
end
function thief:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( thief )