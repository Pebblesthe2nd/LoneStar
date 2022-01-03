//Riverton furniture

////////////
// THRONE //
////////////

/obj/structure/chair/comfy/throne
	name = "tribal throne"
	desc = "A massive chair from various animal parts and wood."
	icon = 'icons/fallout/furniture/throne.dmi'
	icon_state = "throne"
	item_chair = null

/obj/structure/chair/comfy/throne/GetArmrest()
	return mutable_appearance('icons/fallout/furniture/throne.dmi', "throne_armrest")


/obj/structure/rack/steel
	name = "steel rack"
	desc = "Durable storage option."
	icon = 'icons/fallout/furniture/stationary.dmi'
	icon_state = "rack_metal"


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



///////////////
// FURNITURE //
///////////////

/obj/structure/stationary
	name = "very old clock"
	desc = "Meticulously maintained old clock, the delicate machinery inside it irreplacable. Ticks when it does not tock."
	icon = 'icons/fallout/objects/structures/stationary.dmi'
	icon_state = "grand_clock_act"
	obj_integrity = 100
	max_integrity = 100
	anchored = 1
	density = 1
	var/buildstacktype = /obj/item/stack/sheet/mineral/wood
	var/buildstackamount = 1


/obj/structure/chair/wood/worn
	icon_state = "wooden_chair_old"
	desc = "The furnish has faded and it's not so shiny anymore.<br>Still a good chair though."
	item_chair = /obj/item/chair/wood/worn

/obj/item/chair/wood/worn
	icon_state = "wooden_chair_generic_toppled"
	item_state = "wooden_chair_old"
	origin_type = /obj/structure/chair/wood/worn

/obj/structure/displaycase/knight
	name = "display case"
	start_showpiece_type = /obj/item/clothing/suit/armor/riot/knight/tabard

/obj/structure/table/single
	icon = 'icons/fallout/furniture/tables.dmi'
	icon_state = "metal_square"
	smooth = FALSE

/obj/structure/table/single/round
	icon_state = "metal_round"


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


// RIVERTON CHAIRS
/obj/structure/chair/riverton
	icon = 'icons/fallout/furniture/chairs.dmi'

/obj/structure/chair/folding/riverton
	icon = 'icons/fallout/furniture/chairs.dmi'
	icon_state = "folding"
	item_chair = /obj/item/chair/folding/riverton

/obj/item/chair/folding/riverton
	icon = 'icons/fallout/furniture/chairs.dmi'
	icon_state = "folding_toppled"
	origin_type = /obj/structure/chair/folding/riverton

/obj/structure/chair/comfy/synthetic
	name = "synthetic chair"
	icon = 'icons/fallout/furniture/chairs.dmi'
	desc = "Once the height of space-futuristic comfortable furniture fashion."
	icon_state = "synthetic_chair"
