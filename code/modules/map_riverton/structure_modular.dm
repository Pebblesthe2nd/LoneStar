//Pebbles modular structures.

/obj/structure/wasteoutlet
	name = "waste outlet pipe"
	desc = "A pipe."
	icon = 'icons/fallout/furniture/stationary.dmi'
	icon_state = "wasteoutlet"
	density = 0
	anchored = 1

/obj/structure/memorial/rivertown
	name = "statue of a smug ghoul"
	desc = "A statue of the first Alderman, Jeremiah, the greediest ghoul of his day. He got together the first armed gangs who controlled the bridge, collecting tolls, which evolved into a proper settlement over time."
	icon = 'icons/fallout/objects/structures/statue.dmi'
	icon_state = "statue_rivertown"
	bound_width = 64
	bound_height = 64
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/memorial/rivertown/Initialize()
	. = ..()
	AddComponent(/datum/component/largetransparency, x_size = 1, y_size = 2)


//RAILING
/obj/structure/railing
	icon = 'icons/fallout/structures/fences.dmi'

/obj/structure/railing/wood
	name = "wooden fence"
	desc = "Marks property and prevents accidents."
	icon = 'icons/fallout/structures/fences.dmi'
	icon_state = "straight_wood"
	layer = WALL_OBJ_LAYER

/obj/structure/railing/wood/underlayer
	layer = BELOW_MOB_LAYER

/obj/structure/railing/wood/corner 
	icon_state = "corner_wood"
	density = FALSE

/obj/structure/railing/wood/corner/underlayer
	layer = BELOW_MOB_LAYER

/obj/structure/railing/wood/corner/post
	icon_state = "post_wood"
	density = FALSE

/obj/structure/railing/handrail
	name = "handrail"
	desc = "A waist high handrail, perhaps you could climb over it."
	icon = 'icons/fallout/structures/fences.dmi'
	icon_state = "handrail_y"
	layer = WALL_OBJ_LAYER

/obj/structure/railing/handrail/end
	icon_state = "handrail_y_end"
	density = FALSE

/obj/structure/railing/handrail/intersect
	icon_state = "handrail_y_intersect"

/obj/structure/railing/handrail/rusty
	name = "handrail"
	desc = "Old, rusted metal handrails. The green paint is chipping off in spots."
	icon_state = "handrail_g"

/obj/structure/railing/handrail/rusty/end
	icon_state = "handrail_g_end"
	density = FALSE


// JUNK
/obj/structure/junk
	icon = 'icons/fallout/furniture/ruined.dmi'
	obj_integrity = 100
	max_integrity = 100
	anchored = 1
	density = 1
	buildstacktype = /obj/item/stack/rods
	buildstackamount = 1

/obj/structure/junk/deconstruct()
	// If we have materials, and don't have the NOCONSTRUCT flag
	if(!(flags_1 & NODECONSTRUCT_1))
		if(buildstacktype)
			new buildstacktype(loc,buildstackamount)
		else
			for(var/i in custom_materials)
				var/datum/material/M = i
				new M.sheet_type(loc, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))
	..()

/obj/structure/junk/machinery
	name = "rusting machine"
	desc = "Some sort of machine rusted solid."
	icon_state = "junk_machine"
	obj_integrity = 200
	max_integrity = 200
	buildstacktype = /obj/item/stack/crafting/metalparts
	buildstackamount = 2

/obj/structure/junk/locker
	name = "decayed locker"
	desc = "Broken, rusted junk."
	icon_state = "junk_locker"

/obj/structure/junk/disco
	name = "broken disco ball"
	desc = "Remains of something fun."
	icon_state = "junk_disco"

/obj/structure/junk/jukebox
	name = "ruined jukebox"
	desc = "Remains of something fun."
	icon_state = "junk_jukebox"

/obj/structure/junk/cabinet
	name = "old rotting furniture"
	desc = "Time and the elements has degraded this furniture beyond repair."
	icon_state = "junk_cabinet"
	buildstacktype = /obj/item/stack/sheet/mineral/wood
	buildstackamount = 1

/obj/structure/junk/drawer
	name = "ruined old furniture"
	desc = "Time and the elements has degraded this furniture beyond repair."
	icon_state = "junk_dresser"
	buildstacktype = /obj/item/stack/sheet/mineral/wood
	buildstackamount = 1

/obj/structure/junk/micro
	name = "rusting kitchenmachine"
	desc = "Rusted solid, useless."
	icon_state = "junk_micro"
	buildstacktype = /obj/item/stack/crafting/electronicparts
	buildstackamount = 1

/obj/structure/junk/small
	density = 0

/obj/structure/junk/small/table
	name = "ruined old furniture"
	desc = "Time and the elements has degraded this furniture beyond repair."
	icon_state = "junk_table"
	buildstacktype = /obj/item/stack/sheet/mineral/wood
	buildstackamount = 1

/obj/structure/junk/small/tv
	name = "pre-war electronic junk"
	desc = "Broken, a useless relic of the past."
	icon_state = "junk_tv"
	buildstacktype = /obj/item/stack/crafting/electronicparts
	buildstackamount = 1

/obj/structure/junk/small/bed
	name = "rotting bed"
	desc = "Rusted and rotting, useless."
	icon_state = "junk_bed1"
	buildstackamount = 2

/obj/structure/junk/small/bed2
	name = "rusty bedframe"
	desc = "Rusted and rotting, useless."
	icon_state = "junk_bed2"
	buildstackamount = 2

/obj/structure/junk/small/bench
	name = "rotting planks"
	desc = "Remains of small furniture"
	icon_state = "junk_bench"
	slowdown = 6

/obj/structure/junk/small/toilet
	name = "non-functional toilet"
	desc = "Busted up toilet"
	icon_state = "toilet_broken"

/obj/structure/junk/small/urinal
	name = "non-functional urinal"
	desc = "Clogged urinal"
	icon_state = "urinal_broken"

/obj/structure/junk/small/shower
	name = "rusted shower"
	desc = "The pipes are filled with air and dust now."
	icon_state = "shower_broken"

/obj/structure/junk/small/mirror
	name = "shattered mirror"
	desc = "Each shard reflects the world around it, under the layers of dust."
	icon_state = "mirror_broken"

/obj/structure/junk/small/curtain
	name = "rotting shower curtain"
	desc = "Covered in mold and grime."
	icon_state = "curtain_broken"

/obj/structure/junk/small/sink
	name = "broken sink"
	desc = "The cracked bowl is filled with dried up indescribable sludge."
	icon_state = "sink_broken"

/obj/structure/junk/small/telescreen
	name = "smashed telescreen"
	desc = "The most modern television set available once. Now smashed and useless."
	icon_state = "telescreen_broken"


// LIGHTING
/obj/structure/destructible/tribal_torch/lanternpost
	name = "Lantern post"
	desc = "Lantern with a wax candle inside a glass and metal housing."
	density = FALSE
	anchored = TRUE
	icon = 'icons/fallout/objects/lights.dmi'
	icon_state = "prospector_lamp-on"
	light_power = 1
	light_range = 5
	break_sound = 'sound/hallucinations/veryfar_noise.ogg'
	debris = list(/obj/item/candle/tribal_torch = 1)
	burning = TRUE

/obj/structure/destructible/tribal_torch/lanternpost/cathouse
	desc = "Lantern with a wax candle inside a pink colored glass and metal housing."
	icon_state = "cathouse_lamp-on"
	light_color = "#dd99a4"


// --------------------------------------------------------------- //
// CLOSETS
/obj/structure/closet/old
	name = "locker"
	desc = "Worn but serviceable."
	icon = 'icons/fallout/furniture/closets.dmi'
	icon_state = "gray"
	anchored = TRUE
	storage_capacity = 30

/obj/structure/closet/old/fridge
	name = "fridge"
	desc = "Old fridge, but in good condition for its age."
	icon_state = "fridger"

/obj/structure/closet/old/fridge/bad

/obj/structure/closet/old/fridge/bad/PopulateContents()
	..()

	switch (pickweight(list("yuck" = 20, "blech" = 25, "ugh" = 25, "aaaah" = 15, "nothing" = 15)))
		if ("yuck")
			new /obj/item/reagent_containers/food/snacks/f13/blamco/large(src)

		if ("blech")
			new /obj/item/reagent_containers/food/snacks/badrecipe(src)

		if ("ugh")
			new /obj/item/reagent_containers/food/snacks/f13/steak(src)

		if ("aaaah")
			new /mob/living/simple_animal/cockroach(src)

		if ("nothing")
			// doot

			return

// Becomes dense when opened then closed. Key is in the close proc in closet but I don't know how to just make exception for this.
/obj/structure/closet/wallcabinet/medicine
	name = "medicine cabinet"
	icon = 'icons/fallout/furniture/closets.dmi'
	icon_state = "medcab"
	density = FALSE
	storage_capacity = 10
	mob_storage_capacity = 0
	max_mob_size = MOB_SIZE_TINY

/obj/structure/closet/locker/oldstyle/school_sports
	name = "sports gear"

/obj/structure/closet/locker/oldstyle/school_sports/PopulateContents()
	..()

	switch (pickweight(list("base" = 20, "baseplus" = 25, "boxer" = 25, "weird" = 15, "nothing" = 15)))
		if ("base")

			new /obj/item/clothing/head/soft/f13/baseball(src)
			new /obj/item/twohanded/baseball(src)
			new /obj/item/soap(src)

		if ("baseplus")
			new /obj/item/twohanded/baseball/louisville(src)
			new /obj/item/clothing/gloves/f13/baseball(src)
			new /obj/item/reagent_containers/rag/towel(src)

		if ("boxer")
			new /obj/item/clothing/gloves/boxing/yellow(src)
			new /obj/item/clothing/gloves/boxing(src)
			new /obj/item/clothing/under/shorts/red(src)

		if ("weird")
			new /obj/item/toy/tennis(src)
			new /obj/item/clothing/shoes/f13/swimfins(src)
			new /obj/item/storage/backpack/duffelbag(src)

		if ("nothing")
			// doot

			return


/obj/structure/closet/locker/oldstyle/school
	name = "school locker"

/obj/structure/closet/locker/oldstyle/school/PopulateContents()
	..()

	switch (pickweight(list("candy" = 15, "britney" = 10, "chad" = 10, "nerd" = 10, "nothing" = 40, "ruben" = 10, "puppylove" = 5, "badseed" = 5)))
		if ("candy")
			new /obj/item/reagent_containers/food/snacks/chocolatebar(src)
			new /obj/item/clothing/shoes/sneakers/white(src)

		if ("britney")
			new /obj/item/clothing/under/schoolgirl(src)
			new /obj/item/lipstick/random(src)

		if ("chad")
			new /obj/item/clothing/under/f13/relaxedwear/schoolboy(src)
			new /obj/item/lighter(src)

		if ("nerd")
			new /obj/item/clothing/glasses/regular/hipster(src)
			new /obj/item/reagent_containers/food/snacks/candy(src)

		if ("nothing")
			// doot

		if ("ruben")
			new /obj/item/reagent_containers/food/snacks/lollipop(src)
			new /obj/item/storage/backpack(src)

		if ("puppylove")
			new /obj/item/storage/fancy/heart_box(src)
			new /obj/item/paper/crumpled(src)

		if ("badseed")
			new /obj/item/clothing/mask/cigarette/rollie/cannabis(src)
			new /obj/item/melee/onehanded/knife/switchblade(src)

			return


// --------------------------------------------- //
// CHAIR
/obj/machinery/door/unpowered/militarydoor
	name = "military secure door"
	icon_state = "bunker"
	max_integrity = 600
	autoclose = TRUE

/obj/machinery/door/unpowered/militarydoor/do_animate(animation)
	switch(animation)
		if("opening")
			playsound(src,'sound/f13machines/doorairlock_open.ogg',30,1)
			icon_state = "bunkeropening"
		if("closing")
			playsound(src,'sound/f13machines/doorairlock_close.ogg',30,1)
			icon_state = "bunkerclosing"

/obj/machinery/door/unpowered/militarydoor/enclave
	req_one_access_txt = "134" // Enclave access

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



/obj/structure/sink/cistern
	name = "water cistern"
	desc = "A huge water reservoir, refilled with filtrated rainwater mostly."
	icon_state = "vat"
	icon = 'icons/fallout/furniture/stationary.dmi'
	anchored = 1
	density = 1
	obj_integrity = 500
	max_integrity = 500

/obj/structure/simple_door/fakeglass
	name = "old damaged door"
	desc = "It still somehow opens and closes."
	icon_state = "fakeglass"
	door_type = "fakeglass"
	can_hold_padlock = TRUE


/obj/structure/nest/yaoguai
	name = "yaoguai lair"
	spawn_time = 40 SECONDS
	max_mobs = 2
	mob_types = list(/mob/living/simple_animal/hostile/deathclaw/yaoguai = 2)

/obj/structure/nest/aradnid
	name = "aradnid infestation"
	max_mobs = 2
	mob_types = list(/mob/living/simple_animal/hostile/aradnid = 4)

/obj/structure/barricade/wooden/boarded
	name = "boarded door"
	icon_state = "boarded"
	max_integrity = 120


/obj/structure/lattice/overpipe
	layer = 3
	plane = ABOVE_WALL_PLANE
	name = "catwalk"
	desc = "A catwalk for easy access to the machinery below."
	icon = 'icons/obj/smooth_structures/catwalk.dmi'
	icon_state = "catwalk"


/obj/machinery/button/door/simple
	icon = 'icons/fallout/module_riverton/items/items.dmi'
	icon_state = "alt_doorctrl"
	skin = "alt_doorctrl"

/obj/machinery/door/poddoor/shutters/autorepair
	name = "auto repair shutter"

	id = "autorepair"

/obj/machinery/button/door/autorepair
	name = "garage door button"
	icon = 'icons/fallout/module_riverton/items/items.dmi'
	icon_state = "alt_doorctrl"
	id = "autorepair"
	pixel_x = 26

/obj/structure/closet/crate/large/warehouse

/obj/structure/closet/crate/large/warehouse/PopulateContents()
	..()

	switch (pickweight(list("construction" = 15, "carparts" = 10, "electronics" = 10, "china" = 10, "nothing" = 40, "materials" = 10, "puppylove" = 5, "badseed" = 5)))
		if ("construction")
			new /obj/item/stack/sheet/mineral/wood/twenty(src)
			new /obj/item/clothing/shoes/sneakers/white(src)

		if ("carparts")
			new /obj/item/stack/crafting/metalparts/three(src)
			new /obj/item/stack/crafting/goodparts(src)
			new /obj/structure/wreck/trash/engine(src)

		if ("electronics")
			new /obj/item/crafting/transistor(src)
		

		if ("nerd")
			new /obj/item/clothing/glasses/regular/hipster(src)
			new /obj/item/reagent_containers/food/snacks/candy(src)

		if ("nothing")
			// doot

		if ("materials")
			new /obj/item/stack/sheet/prewar/five(src)


		if ("puppylove")
			new /obj/item/storage/fancy/heart_box(src)
			new /obj/item/paper/crumpled(src)

		if ("badseed")
			new /obj/item/clothing/mask/cigarette/rollie/cannabis(src)
			new /obj/item/melee/onehanded/knife/switchblade(src)

			return


/obj/structure/closet/cardboard/warehouse

/obj/structure/closet/cardboard/warehouse/PopulateContents()
	..()

	switch (pickweight(list("electronics" = 10, "toys" = 5, "abraxo" = 5, "sweets" = 10, "nothing" = 70)))
		if ("electronics")
			new /obj/item/crafting/transistor(src)
			new /obj/item/crafting/resistor(src)
			new /obj/item/crafting/timer
			new /obj/item/crafting/fuse(src)
			new /obj/item/stack/crafting/electronicparts/three(src)			

		if ("toys")
			new /obj/item/toy/figure/ninja(src)
			new /obj/item/toy/figure/borg(src)
			new /obj/item/crafting/wonderglue(src)	
			new /obj/item/crafting/wonderglue(src)	

		if ("nothing")
			// doot

		if ("abraxo")
			new /obj/item/crafting/abraxo(src)
			new /obj/item/crafting/abraxo(src)
			new /obj/item/crafting/abraxo(src)

		if ("sweets")
			new /obj/item/reagent_containers/food/snacks/chocolatebar(src)
			new /obj/item/reagent_containers/food/snacks/chocolatebar(src)
			new /obj/item/reagent_containers/food/snacks/chocolatebar(src)

			return
