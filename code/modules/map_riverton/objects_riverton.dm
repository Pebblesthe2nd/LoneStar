//Riverton object file. -Pebbles

/obj/structure/rack/steel
	name = "steel rack"
	desc = "Durable storage option."
	icon = 'icons/fallout/furniture/stationary.dmi'
	icon_state = "rack_metal"

/obj/item/paper/journal/page1
	name = "5th National Guard Engineer Battallion: Final log"
	info = "This is the last entry I will make, when finished I will take the single dose of experimental 'Behemoth' serum we have. When our food stores ran low we opened the Vault-Tec crisis package and started distributing the special serum that causes controlled mutations, in order to make the soldiers able to survive. Sadly, it turned out the serum caused massive loss of mental ability in most subjects, but we literally have no choice, we lack the gear to survive in the radioactive dust and have no food. We have intercepted what appears to be chinese radio traffic, if I can retain my mind after taking the serum I will lead my troops as they were, to destroy the enemies of liberty. God bless America! - signed Major Jackson"

//Automag Talon		Keywords: .44 Magnum, Semi-auto, Long barrel, 7 rounds, Heavy. Special modifiers: bullet speed +300
/obj/item/gun/ballistic/automatic/pistol/automag/talon
	mag_type = /obj/item/ammo_box/magazine/automag

// Heavy Wrench			Keywords: Damage 25/45
/obj/item/twohanded/sledgehammer/tankwrench
	name = "tank wrench"
	desc = "A huge wrench made for changing tracks on tanks and similar heavy duty work."
	icon_state = "tankwrench"
	icon_prefix = "tankwrench"
	tool_behaviour = TOOL_WRENCH
	toolspeed = 0.7

/obj/item/stack/medical/bruise_pack/five
	amount = 5

/obj/item/ammo_box/a50MG/improvised
	name = "bag with reloaded .50 bullets"
	desc = "The casings are worn, the gunpowder some homebrew mix of dubious quality. At least it goes bang."
	icon = 'icons/fallout/objects/guns/ammo.dmi'
	icon_state = "improvshotbag"
	max_ammo = 8
	multiple_sprites = 1
	custom_materials = list(/datum/material/iron = 2000, /datum/material/blackpowder = 500)

//Alien Blaster
/obj/item/gun/energy/laser/plasma/alien
	name = "alien blaster"
	slowdown = 0.2
	item_state = "alienblaster"
	icon_state = "alienblaster"
	desc = "This weapon is unlike any other you've ever seen before, and appears to be made out of metals not usually found on Earth. It certainly packs a punch, though."
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	slot_flags = ITEM_SLOT_BELT
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/alien)
	cell_type = /obj/item/stock_parts/cell/ammo/alien //unchargeable, but removable

/obj/item/stock_parts/cell/ammo/alien
	name = "alien weapon cell"
	desc = "A weapon cell that glows and thrums with unearthly energies. You're not sure you'd be able to recharge it, but it seems very powerful."
	icon_state = "aliencell"
	ratingdesc = FALSE
	maxcharge = 4000

/obj/item/ammo_casing/energy/plasma/alien
	projectile_type = /obj/item/projectile/plasma/alien
	select_name = "alien projectile"
	icon_state = "ion"
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	e_cost = 1000 //four shots and you're out. use them wisely.

/obj/item/projectile/plasma/alien
	name = "alien projectile"
	icon_state = "ion"
	damage = 90 //horrifyingly powerful, but very limited ammo
	armour_penetration = 0.8

/obj/item/m2flamethrowertank/salvagedflamer
	name = "salvaged flamer tank"
	desc = "Rusty, jury-rigged flamer setup, using parts scavenged from a M2 flamethrower."
	icon = 'icons/fallout/objects/guns/flamethrower.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/weapons/special_backsprites.dmi'
	item_state = "salvage_flamethrower_back"
	overheat_max = 3

/obj/item/ammo_box/magazine/internal/cylinder/improvised50
	name = "improvised internal magazine .50"
	ammo_type = /obj/item/ammo_casing/a50MG
	caliber = "a50MG"
	max_ammo = 2

//Some pipe crap to put on the floor
/obj/effect/decal/oldpipes
	name = "old pipes"
	desc = "Rusty old pipes."
	icon = 'icons/fallout/decals/turf_decoration.dmi'
	icon_state = "rustpipe"
	density = FALSE
	mouse_opacity = MOUSE_OPACITY_OPAQUE

/obj/effect/decal/oldpipes/manifold
	icon_state = "rustpipe-manifold"

/obj/effect/decal/oldpipes/manifold/fourway
	icon_state = "rustpipe-fourway"

/obj/effect/decal/oldpipes/end
	icon_state = "rustpipe-end"

/obj/effect/decal/oldpipes/vent
	icon_state = "rustpipe-vent"

/obj/effect/decal/oldpipes/valve
	icon_state = "rustpipe-valve"

/obj/effect/decal/oldpipes/meter
	icon_state = "meter"


/obj/machinery/atmospherics/components/unary/tank/f13chemtank/poisongas
	icon_state = "grey"
	gas_type = /datum/gas/methyl_bromide


/obj/machinery/light/small/orange
	name = "orange light"
	bulb_colour = "#dd8c52"
	light_color = "#e0b25e"
	desc = "A small lighting fixture."
	light_type = /obj/item/light/bulb

/obj/machinery/light/floor/orange
	brightness = 4
	nightshift_brightness = 3
	bulb_colour = "#dd8c52"
	light_color = "#dd8c52"

/obj/item/card/id/dogtag/sheriff/talon
	name = "dogtags"
	desc = "Custom made silver dogtags, the commander wearering it spent some money on it."
	icon_state = "talon_command"

/obj/item/card/id/silver/mayor/alderman
	name = "Aldermans silver watch"
	desc = "A pocket watch in silver, engraved with the names of previous Aldermen, the current owners one at the bottom in tiny text."
	icon_state = "alderman"

/obj/item/card/id/dogtag/town/preacher
	name = "family bible"
	desc = "The preachers old personal bible."
	icon_state = "preacher"
	item_state = null
	assignment = "citizenship permit"
	access = list(ACCESS_BAR)


//ENCLAVE ID


/obj/item/card/id/dogtag/enclave
	name = "US identity card"
	desc = "Issued to Enclave citizens with photo and fingerprint."
	icon_state = "enclave"
	item_state = "card-id_leg"
	assignment = "US dogtags"
	access = list(ACCESS_ENCLAVE)


/obj/item/storage/belt/holster/legholster
	name = "leg holster"
	desc = "A holster to carry a handgun and ammo worn on the leg."
	icon = 'icons/fallout/clothing/belts.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/belt.dmi'
	icon_state = "holster_leg"
	item_state = "holster_leg"

/obj/item/storage/belt/holster/legholster/sig/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/sig(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)

/obj/item/storage/belt/holster/legholster/chinapistol/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/type17(src)
	new /obj/item/ammo_box/magazine/m10mm_adv/simple(src)
	new /obj/item/ammo_box/magazine/m10mm_adv/simple(src)

/obj/item/storage/belt/holster/legholster/aep7/PopulateContents()
	new /obj/item/gun/energy/laser/pistol(src)
	new /obj/item/stock_parts/cell/ammo/ec(src)

/obj/item/card/id/dentattoo
	name = "Den Gang tattoo"
	desc = "A tattoo identifying the bearer as a 'Made Man' of the Den Mob."
	icon_state = "skin"
	item_state = "skin"
	assignment = "gang tattoo"
	uses_overlays = FALSE

	access = list(ACCESS_DEN)

/obj/item/card/id/dentattoo/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, TRAIT_GENERIC)

/obj/item/card/id/dogtag/deputy/talon
	name = "dogtags"
	desc = "Given to every recruit that signs up for the mercs."
	icon_state = "talon"

/obj/item/storage/belt/military/NCR_Bandolier/ammobandolier
	name = "ammunition bandolier"
	desc = "No-nonsense bandolier for small items."
	icon = 'icons/fallout/clothing/belts.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/belt.dmi'
	icon_state = "talon_bandolier"
	item_state = "talon_bandolier"


/////////////////////////////////////
// MAGAZINE FED BOLT-ACTION RIFLES //
/////////////////////////////////////


/obj/item/gun/ballistic/rifle/mag
	name = "magazine fed bolt-action rifle template"
	desc = "should not exist."
	extra_speed = 800

/obj/item/gun/ballistic/rifle/mag/examine(mob/user)
	. = ..()
	. += "<span class='notice'>Alt-click to remove the magazine.</span>"

/obj/item/gun/ballistic/rifle/mag/AltClick(mob/living/user)
	var/obj/item/ammo_casing/AC = chambered //Find chambered round
	if(magazine)
		magazine.forceMove(drop_location())
		user.put_in_hands(magazine)
		magazine.update_icon()
		if(magazine.ammo_count())
			playsound(src, 'sound/weapons/gun_magazine_remove_full.ogg', 70, 1)
		else
			playsound(src, "gun_remove_empty_magazine", 70, 1)
		magazine = null
		to_chat(user, "<span class='notice'>You pull the magazine out of \the [src].</span>")
	else if(chambered)
		AC.forceMove(drop_location())
		AC.bounce_away()
		chambered = null
		to_chat(user, "<span class='notice'>You unload the round from \the [src]'s chamber.</span>")
		playsound(src, "gun_slide_lock", 70, 1)
	else
		to_chat(user, "<span class='notice'>There's no magazine in \the [src].</span>")
	update_icon()
	return

/obj/item/gun/ballistic/rifle/mag/update_icon_state()
	icon_state = "[initial(icon_state)][magazine ? "-[magazine.max_ammo]" : ""][chambered ? "" : "-e"]"


//Varmint rifle								Keywords: 5.56, Bolt-action, 10/20/30 round magazine, Reduced damage
/obj/item/gun/ballistic/rifle/mag/varmint
	name = "varmint rifle"
	desc = "A simple bolt action rifle in 5.56mm calibre. Easy to use and maintain."
	icon_state = "varmint"
	item_state = "varmintrifle"
	force = 18
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	init_mag_type = /obj/item/ammo_box/magazine/m556/rifle/small
	fire_delay = 9
	spread = 0
	extra_damage = 6
	can_bayonet = FALSE
	scope_state = "scope_short"
	scope_x_offset = 4
	scope_y_offset = 12
	can_suppress = TRUE
	suppressor_state = "rifle_suppressor"
	suppressor_x_offset = 27
	suppressor_y_offset = 31
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'


//Commando carbine							Keywords: BoS, .45 ACP, Bolt-action, 12 round magazine, Long barrel, Suppressed
/obj/item/gun/ballistic/rifle/mag/commando
	name = "commando carbine"
	desc = "A integrally suppressed bolt action carbine, the few existing examples of this rare gun are mostly in Brotherhood hands. Uses .45 socom magazines."
	icon_state = "commando"
	item_state = "varmintrifle"
	mag_type = /obj/item/ammo_box/magazine/m45exp
	extra_damage = 9
	fire_delay = 8
	spread = 0
	can_unsuppress = FALSE
	suppressed = 1
	scope_state = "scope_medium"
	scope_x_offset = 6
	scope_y_offset = 14
	fire_sound = 'sound/weapons/Gunshot_large_silenced.ogg'


//Ratslayer									Keywords: UNIQUE, 5.56, Bolt-action, 10/20/30 round magazine, Suppressed, Scoped, Extra damage +3
/obj/item/gun/ballistic/rifle/mag/varmint/ratslayer
	name = "Ratslayer"
	desc = "A modified varmint rifle with better stopping power, a scope, and suppressor. Oh, don't forget the sick paint job."
	icon_state = "ratslayer"
	item_state = "ratslayer"
	extra_damage = 10
	extra_penetration = 0.1
	suppressed = 1
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	can_scope = FALSE
	fire_sound = 'sound/weapons/Gunshot_large_silenced.ogg'


//Anti-Material Rifle						Keywords: .50, Bolt-action, 8 round magazine
/obj/item/gun/ballistic/rifle/mag/antimateriel
	name = "anti-materiel rifle"
	desc = "The Hecate II is a heavy, high-powered bolt action sniper rifle chambered in .50 caliber ammunition. Lacks an iron sight."
	icon_state = "amr"
	item_state = "amr"
	mag_type = /obj/item/ammo_box/magazine/amr
	fire_delay = 11 //Heavy round, tiny bit slower
	recoil = 1
	spread = 0
	force = 10 //Big clumsy and sensitive scope, makes for a poor club
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_sound = 'sound/f13weapons/antimaterielfire.ogg'
	pump_sound = 'sound/f13weapons/antimaterielreload.ogg'

// BETA // Obsolete
/obj/item/gun/ballistic/rifle/rifletesting
	name = "hunting"
	mag_type = /obj/item/ammo_box/magazine/testbullet
	extra_damage = 30

/obj/item/reagent_containers/glass/bucket/plastic
	name = "bucket"
	desc = "It's a bucket."
	icon_state = "bucket_plastic"
	item_state = "bucket"
	custom_materials = list(/datum/material/plastic=200)
	possible_transfer_amounts = list(10,20,30,60,120)
	volume = 120


/obj/structure/table/single
	icon = 'icons/fallout/furniture/tables.dmi'
	icon_state = "metal_square"
	smooth = FALSE

/obj/structure/table/single/round
	icon_state = "metal_round"


/obj/machinery/reagentgrinder/industrial
	name = "industrial grinder"
	desc = "Heavy duty grinder, can grind most things."
	icon = 'icons/fallout/machines/industrialgrinder.dmi'

/obj/machinery/reagentgrinder/industrial/Initialize()
	. = ..()
	holdingitems = list()
	beaker = new /obj/item/reagent_containers/glass/bucket/plastic(src)
	beaker.desc += " May contain blended dust. Don't breathe this in!"
