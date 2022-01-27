// In this document: Hides, Pelts, Tanning code.
// Principle: If theres unique clothing made from specific resources its inhand crafting.
// Pelts needs tanning in a drying rack before being made into clothing, can also be dehaired and cured into normal leather instead.


///////////
// HIDES //
///////////

// Generic
/obj/item/stack/sheet/animalhide
	name = "hide"
	desc = "skin from a beast."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "hide_generic"
	item_state = "sheet-hide"
	singular_name = "animal skin piece"
	novariants = FALSE
	merge_type = /obj/item/stack/sheet/animalhide/f13

/obj/item/stack/sheet/animalhide/dog
	name = "dog hide"
	desc = "The previous wearer probably had rabies and fleas, so most raiders find this rather familiar and cozy."
	singular_name = "dog skin piece"
	icon_state = "hide_dog"
	merge_type = /obj/item/stack/sheet/animalhide/dog

// No associated clothing so no tanning mechanism yet
/obj/item/stack/sheet/animalhide/raw_radpelt
	name = "radstag pelt"
	desc = "A raw pelt taken from a radstag."
	singular_name = "radstag pelt"
	icon_state = "pelt_bighorner"
	merge_type = /obj/item/stack/sheet/animalhide/raw_radpelt

// Human skin
/obj/item/stack/sheet/animalhide/human
	name = "human skin"
	desc = "hopefully it was cut from a feral ghoul."
	singular_name = "human skin piece"
	icon_state = "skin_human"
	merge_type = /obj/item/stack/sheet/animalhide/f13/human
	novariants = FALSE

/obj/item/stack/sheet/animalhide/f13/human/get_main_recipes()
	. = ..()
	. += GLOB.human_recipes

GLOBAL_LIST_INIT(human_recipes, list( \
	new/datum/stack_recipe("bloated human costume", /obj/item/clothing/suit/hooded/bloated_human, 5), \
	))


// Can be ground for powder to mutate crops, insects soaks up a lot of radiation
/obj/item/stack/sheet/animalhide/chitin
	name = "insect chitin"
	desc = "Thick insect chitin, tough but light."
	singular_name = "piece of insect chitin"
	icon_state = "chitin"
	grind_results = list(/datum/reagent/radium = 5)
	merge_type = /obj/item/stack/sheet/animalhide/chitin

/obj/item/stack/sheet/animalhide/deathclaw
	name = "deathclaw hide"
	desc = "A glorious hunting trophy."
	singular_name = "deathclaw hide piece"
	icon_state = "hide_deathclaw"
	merge_type = /obj/item/stack/sheet/animalhide/deathclaw

// Gecko
/obj/item/stack/sheet/animalhide/gecko
	name = "raw gecko hide"
	desc = "Probably good for making clothes and armor, once tanned."
	singular_name = "gecko hide piece"
	icon_state = "hide_gecko"
	merge_type = /obj/item/stack/sheet/animalhide/gecko
	var/drying_threshold_temperature = 400
	var/wetness = 30
	color = "#b89b9a"

/obj/item/stack/sheet/animalhide/gecko_tanned
	name = "tanned gecko hide"
	desc = "The perfect material for crafting clothing and armor."
	singular_name = "gecko hide piece"
	icon_state = "hide_gecko"
	merge_type = /obj/item/stack/sheet/animalhide/gecko_tanned

/obj/item/stack/sheet/animalhide/gecko_tanned/get_main_recipes()
	. = ..()
	. += GLOB.geckotailoring_recipes

GLOBAL_LIST_INIT(geckotailoring_recipes, list( \
	new/datum/stack_recipe("gecko mantle", /obj/item/clothing/neck/mantle/gecko, 1), \
	new/datum/stack_recipe("male tribal clothing", /obj/item/clothing/under/f13/tribal, 1), \
	new/datum/stack_recipe("female tribal clothing", /obj/item/clothing/under/f13/female/tribal, 1), \
	))


// Wolf
/obj/item/stack/sheet/animalhide/raw_wolfpelt
	name = "wolf pelt"
	desc = "Looks warm."
	singular_name = "wolf pelt"
	icon_state = "pelt_wolf"
	merge_type = /obj/item/stack/sheet/animalhide/raw_wolfpelt
	var/drying_threshold_temperature = 400
	var/wetness = 30
	color = "#b89b9a"

/obj/item/stack/sheet/animalhide/wolfpelt
	name = "wolf pelt"
	desc = "Looks warm."
	singular_name = "wolf pelt"
	icon_state = "pelt_wolf"
	merge_type = /obj/item/stack/sheet/animalhide/wolfpelt

/obj/item/stack/sheet/animalhide/wolfpelt/get_main_recipes()
	. = ..()
	. += GLOB.wolf_recipes

GLOBAL_LIST_INIT(wolf_recipes, list( \
	new/datum/stack_recipe("wolf pelt mantle", /obj/item/clothing/neck/mantle/peltwolf, 1), \
	))

// Bighorner 
/obj/item/stack/sheet/animalhide/raw_bigpelt
	name = "raw bighorner pelt"
	desc = "A smelly pelt that needs tanning to make clothing from."
	singular_name = "bighorner pelt"
	icon_state = "pelt_bighorner"
	merge_type = /obj/item/stack/sheet/animalhide/raw_bigpelt
	var/drying_threshold_temperature = 400
	var/wetness = 30
	color = "#b89b9a"

/obj/item/stack/sheet/animalhide/pelt_horner
	name = "bighorner pelt"
	desc = "A wooly pelt taken from a bighorner."
	merge_type = /obj/item/stack/sheet/animalhide/pelt_horner
	icon_state = "pelt_bighorner"

/obj/item/stack/sheet/animalhide/pelt_horner/get_main_recipes()
	. = ..()
	. += GLOB.bighorner_recipes

GLOBAL_LIST_INIT(bighorner_recipes, list( \
	new/datum/stack_recipe("bighorner fur mantle", /obj/item/clothing/neck/mantle/peltfur, 1), \
	))


// Nightstalker
/obj/item/stack/sheet/animalhide/raw_stalkerpelt
	name = "raw nightstalker pelt"
	desc = "A raw pelt that needs tanning to make clothing from."
	singular_name = "nightstalker pelt"
	icon_state = "pelt_nightstalker"
	merge_type = /obj/item/stack/sheet/animalhide/raw_stalkerpelt
	var/drying_threshold_temperature = 400
	var/wetness = 30
	color = "#b89b9a"

/obj/item/stack/sheet/animalhide/pelt_stalker
	name = "nightstalker pelt"
	desc = "A pelt with traits from both a rattlesnake and a coyote."
	merge_type = /obj/item/stack/sheet/animalhide/pelt_stalker
	icon_state = "pelt_nightstalker"

/obj/item/stack/sheet/animalhide/pelt_stalker/get_main_recipes()
	. = ..()
	. += GLOB.nightstalker_recipes

GLOBAL_LIST_INIT(nightstalker_recipes, list( \
	new/datum/stack_recipe("nighstalker headwear", /obj/item/clothing/head/f13/stalkerpelt, 1), \
	))

/obj/item/stack/sheet/animalhide/brahmin
	name = "raw brahmin hide"
	desc = "The by-product of brahmin farming."
	singular_name = "brahmin hide piece"
	icon_state = "hide_brahmin"
	merge_type = /obj/item/stack/sheet/animalhide/brahmin
	var/drying_threshold_temperature = 400
	var/wetness = 30
	color = "#b89b9a"

/obj/item/stack/sheet/animalhide/brahmin_tanned
	name = "tanned brahmin hide"
	desc = "The by-product of brahmin farming."
	singular_name = "brahmin hide piece"
	icon_state = "hide_brahmin"
	merge_type = /obj/item/stack/sheet/animalhide/brahmin_tanned

/obj/item/stack/sheet/animalhide/brahmin_tanned/get_main_recipes()
	. = ..()
	. += GLOB.brahmintailor_recipes

GLOBAL_LIST_INIT(brahmintailor_recipes, list( \
	new/datum/stack_recipe("brahmin leather outfit", /obj/item/clothing/under/f13/brahmin, 1), \
	new/datum/stack_recipe("brahmin leather female outfit", /obj/item/clothing/under/f13/female/brahmin, 1), \
	new/datum/stack_recipe("brahmin leather cowboy hat", /obj/item/clothing/head/helmet/f13/brahmincowboyhat, 1), \
	new/datum/stack_recipe("brahmin leather duster", /obj/item/clothing/suit/armor/f13/brahmin_leather_duster, 4), \
	))


///////////////////////////
// PELT AND HIDE TANNING //
/////////////////////////// - the process to prepare hides for inhand crafting. Heat them up.


/obj/item/stack/sheet/animalhide/gecko/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/animalhide/gecko_tanned(drop_location(), 1)
			wetness = initial(wetness)
			use(1)

/obj/item/stack/sheet/animalhide/brahmin/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/animalhide/brahmin_tanned(drop_location(), 1)
			wetness = initial(wetness)
			use(1)

/obj/item/stack/sheet/animalhide/raw_bigpelt/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/animalhide/pelt_horner(drop_location(), 1)
			wetness = initial(wetness)
			use(1)

/obj/item/stack/sheet/animalhide/raw_stalkerpelt/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/animalhide/pelt_stalker(drop_location(), 1)
			wetness = initial(wetness)
			use(1)

/obj/item/stack/sheet/animalhide/raw_wolfpelt/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/animalhide/wolfpelt(drop_location(), 1)
			wetness = initial(wetness)
			use(1)
