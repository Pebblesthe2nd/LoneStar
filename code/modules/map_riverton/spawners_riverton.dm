//Riverton spawner file. -Pebbles

// NPC Loot drops

/obj/effect/spawner/lootdrop/f13/npcdrop/skulls
	name = "skulls hangaround loot"
	lootcount = 1
	loot = list(/obj/item/melee/onehanded/knife/hunting = 30,
				/obj/item/melee/onehanded/knife/bowie = 5,
				/obj/item/melee/onehanded/knife/switchblade = 5,
				/obj/item/crafting/wonderglue = 35,
				/obj/item/stack/medical/bruise_pack = 25
				)

/obj/effect/spawner/lootdrop/f13/npcdrop/skulls/member
	name = "skulls hangaround loot"
	loot = list(/obj/item/stack/medical/gauze/improvised = 10,
				/obj/item/ammo_box/c10mm/improvised = 50,
				/obj/item/ammo_box/magazine/m9mm = 30,
				/obj/item/gun/ballistic/revolver/colt6520 = 10,
				)

/obj/effect/spawner/lootdrop/f13/npcdrop/skulls/boss
	name = "skulls boss loot"
	loot = list(/obj/item/clothing/suit/armor/f13/metalarmor/reinforced = 50,
				/obj/item/stack/medical/bruise_pack/five = 10,
				/obj/item/clothing/mask/cigarette/cigar/havana = 30,
				/obj/item/clothing/mask/bandana/skull = 10,
				)


/obj/effect/spawner/lootdrop/f13/weapon/gun/tier1 //TIER 1 GUN
	name = "tier 1 gun"
	loot = list(/obj/effect/spawner/bundle/f13/piperifle,
				/obj/effect/spawner/bundle/f13/pistol22,
				/obj/effect/spawner/bundle/f13/zipgun
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/random_high
	name = "high tier random gun loot"
	lootcount = 1

	loot = list(
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier5 = 25,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier6 = 20,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier7 = 30,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier8 = 15,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier9 = 6,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier10 = 3,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/unique = 1
			)

/obj/effect/spawner/lootdrop/f13/weapon/gun/random
	name = "random gun loot"
	lootcount = 1

	loot = list(
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier1 = 15,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier2 = 10,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier3 = 25,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier4 = 25,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier5 = 15,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier6 = 9,
			/obj/effect/spawner/lootdrop/f13/weapon/gun/tier7 = 1
			)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier2 //TIER 2 GUN
	name = "tier 2 gun"
	loot = list(/obj/effect/spawner/bundle/f13/caravan_shotgun,
				/obj/effect/spawner/bundle/f13/pepperbox
	)


/obj/effect/spawner/lootdrop/f13/weapon/gun/tier3 //TIER 3 GUN
	name = "tier 3 gun"
	loot = list(/obj/effect/spawner/bundle/f13/mosin,
				/obj/effect/spawner/bundle/f13/widowmaker,
				/obj/effect/spawner/bundle/f13/autopipe
				)


/obj/effect/spawner/lootdrop/f13/weapon/gun/tier4 //TIER 4 GUN
	name = "tier 4 gun"
	loot = list(/obj/effect/spawner/bundle/f13/colt6520,
				/obj/effect/spawner/bundle/f13/ninemil,
				/obj/effect/spawner/bundle/f13/remington,
				/obj/effect/spawner/bundle/f13/smg22)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier5 //TIER 5 GUN
	name = "tier 5 gun"
	lootcount = 1

	loot = list(/obj/effect/spawner/bundle/f13/beretta,
				/obj/effect/spawner/bundle/f13/sig,
				/obj/effect/spawner/bundle/f13/n99,
				/obj/effect/spawner/bundle/f13/varmint,
				/obj/effect/spawner/bundle/f13/huntingshotgun,
				/obj/effect/spawner/bundle/f13/colt357,
				/obj/effect/spawner/bundle/f13/wattz,
				/obj/effect/spawner/bundle/f13/police_pistol,
				/obj/effect/spawner/bundle/f13/service
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier6
	name = "tier 6 gun"
	loot = list(/obj/effect/spawner/bundle/f13/beretta/select,
				/obj/effect/spawner/bundle/f13/m1911,
				/obj/effect/spawner/bundle/f13/m1911c,
				/obj/effect/spawner/bundle/f13/miniuzi,
				/obj/effect/spawner/bundle/f13/guns/rockwell,
				/obj/effect/spawner/bundle/f13/cowboy,
				/obj/effect/spawner/bundle/f13/laserpistol,
				/obj/effect/spawner/bundle/f13/m1carbine,
				/obj/effect/spawner/bundle/f13/revolver44,
				/obj/effect/spawner/bundle/f13/smg10mm,
				/obj/effect/spawner/bundle/f13/guns/commando
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier7
	name = "tier 7 gun"
	loot = list(/obj/effect/spawner/bundle/f13/trenchshotgun,
				/obj/effect/spawner/bundle/f13/trail,
				/obj/effect/spawner/bundle/f13/auto5,
				/obj/effect/spawner/bundle/f13/plasmapistol,
				/obj/effect/spawner/bundle/f13/deagle,
				/obj/effect/spawner/bundle/f13/mk23,
				/obj/effect/spawner/bundle/f13/revolverm29,
				/obj/effect/spawner/bundle/f13/needler
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier8
	name = "tier 8 gun"
	loot = list(/obj/effect/spawner/bundle/f13/r84,
				/obj/effect/spawner/bundle/f13/assault_rifle,
				/obj/effect/spawner/bundle/f13/marksman,
				/obj/effect/spawner/bundle/f13/aer9,
				/obj/effect/spawner/bundle/f13/ionrifle,
				/obj/effect/spawner/bundle/f13/mp5,
				/obj/effect/spawner/bundle/f13/citykiller,
				/obj/effect/spawner/bundle/f13/brushgun,
				/obj/effect/spawner/bundle/f13/infiltrator
				)


/obj/effect/spawner/lootdrop/f13/weapon/gun/tier9
	name = "tier 9 gun"
	loot = list(/obj/effect/spawner/bundle/f13/rangemaster,
				/obj/effect/spawner/bundle/f13/wattz2k,
				/obj/effect/spawner/bundle/f13/rcw,
				/obj/effect/spawner/bundle/f13/riotshotgun,
				/obj/effect/spawner/bundle/f13/aer12,
				/obj/effect/spawner/bundle/f13/guns/tommygun,
				/obj/effect/spawner/bundle/f13/hunting
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/tier10
	name = "tier 10 gun"
	loot = list(
				/obj/effect/spawner/bundle/f13/bozar,
				/obj/effect/spawner/bundle/f13/guns/p90,
				/obj/effect/spawner/bundle/f13/plasmarifle,
				/obj/effect/spawner/bundle/f13/aer14,
				/obj/effect/spawner/bundle/f13/amr,
				/obj/effect/spawner/bundle/f13/tribeam
				)


//RAIDER GUNS

/obj/effect/spawner/bundle/f13/piperifle
	name = "piperifle spawner"
	items = list(
				/obj/item/gun/ballistic/revolver/hobo/piperifle,
				/obj/item/ammo_box/a556/sport/improvised,
				)
/obj/effect/spawner/bundle/f13/pepperbox
	name = "pepperbox gun spawner"
	items = list(
				/obj/item/gun/ballistic/revolver/hobo/pepperbox,
				/obj/item/ammo_box/c10mm/improvised,
				)
/obj/effect/spawner/bundle/f13/single_shotgun
	name = "shotgun bat and ammo spawner"
	items = list(
				/obj/item/gun/ballistic/revolver/single_shotgun,
				/obj/item/ammo_box/shotgun/improvised
				)
/obj/effect/spawner/bundle/f13/guns/rockwell
	name = "rockwell gun and ammo spawner"
	items = list(
				/obj/item/gun/ballistic/automatic/smg/rockwell,
				/obj/item/ammo_box/magazine/uzim9mm/rockwell,
				)
/obj/effect/spawner/bundle/f13/autopipe
	name = "auto pipe rifle and ammo spawner"
	items = list(
				/obj/item/gun/ballistic/automatic/autopipe,
				/obj/item/ammo_box/magazine/autopipe
				)

/obj/effect/spawner/lootdrop/f13/weapon/gun/unique //UNIQUE GUN
	name = "unique gun"
	lootcount = 1

	loot = list(
				/obj/item/gun/ballistic/automatic/pistol/ninemil/maria,
				/obj/item/gun/ballistic/rifle/hunting/paciencia,
				/obj/item/gun/energy/laser/solar,
				/obj/item/gun/energy/laser/plasma/alien,
				/obj/item/gun/ballistic/rifle/mag/varmint/ratslayer
				)
