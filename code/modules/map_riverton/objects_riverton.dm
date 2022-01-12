//Riverton object file. -Pebbles

/* Some issues, possibly obsolete 
/obj/machinery/atmospherics/components/unary/tank/f13chemtank/poisongas
	icon_state = "grey"
	gas_type = /datum/gas/methyl_bromide
*/

/obj/item/paper/journal/page1
	name = "5th National Guard Engineer Battallion: Final log"
	info = "This is the last entry I will make, when finished I will take the single dose of experimental 'Behemoth' serum we have. When our food stores ran low we opened the Vault-Tec crisis package and started distributing the special serum that causes controlled mutations, in order to make the soldiers able to survive. Sadly, it turned out the serum caused massive loss of mental ability in most subjects, but we literally have no choice, we lack the gear to survive in the radioactive dust and have no food. We have intercepted what appears to be chinese radio traffic, if I can retain my mind after taking the serum I will lead my troops as they were, to destroy the enemies of liberty. God bless America! - signed Major Jackson"

/obj/structure/reagent_dispensers/barrel/diethylamine
	name = "barrel with prewar fertilizer"
	desc = "A metal barrel with 'Fertilizer' stamped on it"
	pixel_x = 9;
	pixel_y = -8;
	reagent_id = /datum/reagent/diethylamine


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

/obj/item/storage/belt/holster/legholster/sig/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/sig(src)
	new /obj/item/ammo_box/magazine/m9mm(src)
	new /obj/item/ammo_box/magazine/m9mm(src)


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


/obj/item/reagent_containers/glass/bucket/plastic
	name = "bucket"
	desc = "It's a bucket."
	icon_state = "bucket_plastic"
	item_state = "bucket"
	custom_materials = list(/datum/material/plastic=200)
	possible_transfer_amounts = list(10,20,30,60,120)
	volume = 120


/obj/machinery/reagentgrinder/industrial
	name = "industrial grinder"
	desc = "Heavy duty grinder, can grind most things."
	icon = 'icons/fallout/module_riverton/items/industrialgrinder.dmi'

/obj/machinery/reagentgrinder/industrial/Initialize()
	. = ..()
	holdingitems = list()
	beaker = new /obj/item/reagent_containers/glass/bucket/plastic(src)
	beaker.desc += " May contain blended dust. Don't breathe this in!"

/obj/machinery/autolathe/army
	name = "army style autolathe"
	icon = 'icons/fallout/module_riverton/items//autolathe_army.dmi'
	desc = "Old but well maintained military-grade autolathe."





/obj/machinery/porta_turret/syndicate/army
	name = "Automated point-defense laser system"
	desc = "Protects sensitive installations from unauthorized personell."
	icon = 'icons/fallout/module_riverton/items/turret.dmi'
	icon_state = "turretCover"
	base_icon_state = "standard"
	always_up = 0
	has_cover = 1
	stun_projectile = /obj/item/projectile/beam/weak/penetrator
	lethal_projectile = /obj/item/projectile/beam/weak/penetrator
	lethal_projectile_sound = 'sound/weapons/laser.ogg'
	stun_projectile_sound = 'sound/weapons/laser.ogg'
	faction = list("hostile","supermutant")



// Chemistry rack
/obj/machinery/smartfridge/bottlerack/chemical
	name = "chemistry rack"
	desc = "A handy way to keep all your bottles of weird chemicals sorted."
	chance_initial_contents = list(
		/obj/item/reagent_containers/glass/bottle/capsaicin = 1,
		/obj/item/reagent_containers/glass/bottle/venom = 1,
		/obj/item/reagent_containers/glass/bottle/charcoal = 3,
		/obj/item/reagent_containers/glass/bottle/chloralhydrate = 1,
		/obj/item/reagent_containers/glass/bottle/ethanol = 2,
		/obj/item/reagent_containers/glass/bottle/bromine = 2,
		/obj/item/reagent_containers/glass/bottle/iodine = 2,
		/obj/item/reagent_containers/glass/bottle/sacid = 2,
		/obj/item/reagent_containers/glass/bottle/mercury = 2,
		/obj/item/reagent_containers/glass/bottle/radium = 2,
		/obj/item/reagent_containers/glass/bottle/potassium = 2,
		/obj/item/reagent_containers/glass/bottle/chlorine = 2,
		/obj/item/reagent_containers/glass/bottle/sulfur = 2,
		/obj/item/reagent_containers/glass/bottle/phosphorus = 2,
		/obj/item/reagent_containers/glass/bottle/silicon = 2,
		/obj/item/reagent_containers/glass/bottle/aluminium = 2,
		/obj/item/reagent_containers/glass/bottle/fluorine = 2,
		/obj/item/reagent_containers/glass/bottle/sodium = 3,
		/obj/item/reagent_containers/glass/bottle/hydrogen = 4,
		/obj/item/reagent_containers/glass/bottle/lithium = 2,
		/obj/item/reagent_containers/glass/bottle/carbon = 4,
		/obj/item/reagent_containers/glass/bottle/nitrogen = 4,
		/obj/item/reagent_containers/glass/bottle/oxygen = 4,
		/obj/item/reagent_containers/food/condiment/sugar = 2)


/obj/structure/campfire/barrel/prelit
	name = "steel drum firepit"
	icon_state = "drumfire-lit"
	fired = 1
	fuel = 2000
	light_range = 4


/obj/item/flashlight/old
	name = "ancient flashlight"
	desc = "Large, very worn, and still working by some miracle."
	icon_state = "flashlight_old"
	item_state = "flashlight_old" 



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

/obj/machinery/computer/shuttle/riverbarge
	name = "long-wave radio set"
	desc = "Tuned to the channels used by the traders on the Kanawha river."
	icon_screen = "shuttle"
	icon_keyboard = "tech_key"
	light_color = null
	circuit = null
	shuttleId = "riverbarge"
	possible_destinations = "Riverton dock"
	flags_1 = NODECONSTRUCT_1
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF


/obj/item/ingot/bronze/copper
	custom_materials = list(/datum/material/bronze=1)
	grind_results = list(/datum/reagent/copper = 120)


/obj/vehicle/ridden/atv/rustyatv
	name = "Rusty ATV"
	desc = "An old, rusty, though mostly functional all-terrain vehicle, who'd have the ability to restore something like this locally..?"
	icon_state = "rustyatv"
	key_type = /obj/item/key/janitor




///////////
// DOORS //
///////////

// ID locked door
/obj/machinery/door/unpowered/padlockwooddoor
	name = "wooden door with lock"
	icon_state = "wood" 
	max_integrity = 180

/obj/machinery/door/unpowered/padlockwooddoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "woodopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "woodclosing"

// Standard town ID locked door
/obj/machinery/door/unpowered/padlockwooddoor/town
	req_one_access_txt = "25" // Standard Town access

// Merc commander ID locked door
/obj/machinery/door/unpowered/padlockwooddoor/merc
	req_one_access_txt = "62" // Merc access

// Raider ID locked door
/obj/machinery/door/unpowered/padlockraiderdoor
	name = "beat up old door with a rusty lock"
	icon_state = "fakeglass" 
	max_integrity = 160
	req_one_access_txt = "87" // Raider access

/obj/machinery/door/unpowered/padlockraiderdoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "fakeglassopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "fakeglassclosing"

// Raider boss ID locked door
/obj/machinery/door/unpowered/padlockraiderdoor/boss
	req_one_access_txt = "38" // Raider Boss access

// Raider ragecage door
/obj/machinery/door/unpowered/ragecagefencedoor
	name = "padlocked fence door"
	icon_state = "fence"
	req_one_access_txt = "87" // Raider access
	max_integrity = 80

/obj/machinery/door/unpowered/ragecagefencedoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorchainlink_open.ogg',30,1)
			icon_state = "fenceopening"
		if("closing")
			playsound(src,'sound/f13machines/doorchainlink_close.ogg',30,1)
			icon_state = "fenceclosing"

// Raider wooden fence door
/obj/machinery/door/unpowered/woodenfencedoor
	name = "padlocked wooden fence door"
	icon_state = "fence_wood"
	req_one_access_txt = "87" // Raider access
	max_integrity = 100

/obj/machinery/door/unpowered/woodenfencedoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "fence_woodopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "fence_woodclosing"

// Merc cell door
/obj/machinery/door/unpowered/barredcelldoor
	name = "cell door"
	icon_state = "barred"
	req_one_access_txt = "62" // Mercenary access
	max_integrity = 220
	autoclose = TRUE

/obj/machinery/door/unpowered/barredcelldoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorstore_open.ogg',30,1)
			icon_state = "barredopening"
		if("closing")
			playsound(src,'sound/f13machines/doorstore_close.ogg',30,1)
			icon_state = "barredclosing"

// Raider cell door
/obj/machinery/door/unpowered/barredcelldoor/raider
	name = "barred door with a simple lock"
	req_one_access_txt = "87" // Raider access

// Clinic outer door
/obj/machinery/door/unpowered/padlockwooddoor/clinic
	name = "Town Clinic"
	icon_state = "white-weathered" 
	req_one_access_txt = "68" // Clinic access
	max_integrity = 180

/obj/machinery/door/unpowered/padlockwooddoor/clinic/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',40,1)
			icon_state = "white-weatheredopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',40,1)
			icon_state = "white-weatheredclosing"

// Clinic inner door
/obj/machinery/door/unpowered/padlockwooddoor/clinic/interior
	name = "wooden door with lock"
	icon_state = "white-dirty" 

/obj/machinery/door/unpowered/padlockwooddoor/clinic/interior/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "white-dirtyopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "white-dirtyclosing"

/obj/structure/simple_door/white
	name = "white door"
	desc = "A painted wooden door."
	icon_state = "white"
	door_type = "white"

/obj/structure/simple_door/white/dirty
	name = "dirty white door"
	desc = "A painted wooden door."
	icon_state = "white-dirty"
	door_type = "white-dirty"

/obj/structure/simple_door/white/weathered
	name = "weathered white door"
	desc = "A painted wooden door."
	icon_state = "white-weathered"
	door_type = "white-weathered"

//Military Door with glass
/obj/machinery/door/unpowered/militarydoor/glass
	name = "military secure door with a window"
	icon_state = "bunkerglass"
	max_integrity = 400
	opacity = 0

/obj/machinery/door/unpowered/militarydoor/glass/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorairlock_open.ogg',30,1)
			icon_state = "bunkerglassopening"
		if("closing")
			playsound(src,'sound/f13machines/doorairlock_close.ogg',30,1)
			icon_state = "bunkerglassclosing"

/obj/machinery/door/unpowered/militarydoor/glass/enclave
	req_one_access_txt = "134" // Enclave access

// Mayors office
/obj/machinery/door/unpowered/padlockwooddoor/alderman
	name = "Mayors office"
	icon_state = "white-dirty" 
	req_one_access_txt = "52" // Alderman access

/obj/machinery/door/unpowered/padlockwooddoor/alderman/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "white-dirtyopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "white-dirtyclosing"

// Mayors office inner door
/obj/machinery/door/unpowered/padlockwooddoor/alderman/interior
	name = "wooden door with lock"
	icon_state = "white" 

/obj/machinery/door/unpowered/padlockwooddoor/alderman/interior/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/machines/door_open.ogg',30,1)
			icon_state = "whiteopening"
		if("closing")
			playsound(src,'sound/machines/door_close.ogg',30,1)
			icon_state = "whiteclosing"

// Locked iron door
/obj/machinery/door/unpowered/padlockirondoor
	name = "iron door with lock"
	icon_state = "metal"
	max_integrity = 600
	req_one_access_txt = "34" // Trader access

/obj/machinery/door/unpowered/padlockirondoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorstore_open.ogg',30,1)
			icon_state = "metalopening"
		if("closing")
			playsound(src,'sound/f13machines/doorstore_close.ogg',30,1)
			icon_state = "metalclosing"

// Locked iron door - mercenary
/obj/machinery/door/unpowered/padlockirondoor/merc
	req_one_access_txt = "62" // Mercenary access

// Locked iron door - mercenary commander
/obj/machinery/door/unpowered/padlockirondoor/merc/commander
	req_one_access_txt = "65" // Mercenary commander access
