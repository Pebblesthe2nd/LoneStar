// In this document: Leather, leather inhand crafting, leather making, some leftover citadel assets

/////////////
// LEATHER //
/////////////

/obj/item/stack/sheet/leather
	name = "leather"
	desc = "Tanned, cured and ready to make into something nice"
	singular_name = "leather piece"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "sheet-leather"
	item_state = "sheet-leather"
	merge_type = /obj/item/stack/sheet/leather

/obj/item/stack/sheet/leather/get_main_recipes()
	. = ..()
	. += GLOB.leather_recipes

GLOBAL_LIST_INIT(leather_recipes, list ( \
	new/datum/stack_recipe("farmers gloves", /obj/item/clothing/gloves/botanic_leather, 3, time = 20),\
	new/datum/stack_recipe("gardeners belt", /obj/item/storage/belt/utility/gardener, 4, time = 20),\
	null, \
	new/datum/stack_recipe("toolbelt", /obj/item/storage/belt/utility, 4, time = 20), \
	new/datum/stack_recipe("leather satchel", /obj/item/storage/backpack/satchel/leather, 4, time = 20),\
	new/datum/stack_recipe("leather gloves", /obj/item/clothing/gloves/f13/leather, 1, time = 20),\
	new/datum/stack_recipe("ragged mantle", /obj/item/clothing/neck/mantle/ragged, 1, time = 20),\
	null, \
	new/datum/stack_recipe_list("clothing", list( \
		new/datum/stack_recipe("caravan pants", /obj/item/clothing/under/f13/caravan, 1, time = 20),\
		new/datum/stack_recipe("roving trader outfit", /obj/item/clothing/under/f13/roving, 1, time = 20),\
		new/datum/stack_recipe("raider leathers", /obj/item/clothing/under/f13/raider_leather, 2, time = 20),\
		new/datum/stack_recipe("brown prospector outfit", /obj/item/clothing/under/f13/cowboyb, 1, time = 20),\
		new/datum/stack_recipe("tan prospector outfit", /obj/item/clothing/under/f13/cowboyt, 1, time = 20),\
		new/datum/stack_recipe("gray prospector outfit", /obj/item/clothing/under/f13/cowboyg, 1, time = 20),\
		new/datum/stack_recipe("leather overcoat", /obj/item/clothing/suit/jacket/leather/overcoat, 4, time = 20),\
		new/datum/stack_recipe("leather strips", /obj/item/clothing/suit/armor/f13/slavelabor, 4, time = 30),\
		new/datum/stack_recipe("thick leather jacket", /obj/item/clothing/suit/armor/f13/leather_jacket, 7, time = 60),\
	)), \
	null, \
	new/datum/stack_recipe_list("shoes", list( \
		new/datum/stack_recipe("rugged boots", /obj/item/clothing/shoes/f13/explorer, 1, time = 20),\
		new/datum/stack_recipe("brown leather shoes", /obj/item/clothing/shoes/f13/brownie, 1, time = 20),\
		new/datum/stack_recipe("tan leather shoes", /obj/item/clothing/shoes/f13/tan, 1, time = 20),\
		new/datum/stack_recipe("black leather shoes", /obj/item/clothing/shoes/f13/fancy, 1, time = 20),\
		new/datum/stack_recipe("roman sandals", /obj/item/clothing/shoes/roman, 1, time = 30),\
		new/datum/stack_recipe("cowboy boots", /obj/item/clothing/shoes/f13/cowboy, 2, time = 30),\
		new/datum/stack_recipe("laceup shoes", /obj/item/clothing/shoes/laceup, 2, time = 30),\
	)), \
	null, \
	new/datum/stack_recipe_list("hats", list( \
		new/datum/stack_recipe("plain cowboy hat", /obj/item/clothing/head/f13/cowboy, 4, time = 30),\
		new/datum/stack_recipe("rustic cowboy hat", /obj/item/clothing/head/helmet/f13/rustedcowboyhat, 4, time = 30),\
		new/datum/stack_recipe("muzzle", /obj/item/clothing/mask/muzzle, 2, time = 10),\
		new/datum/stack_recipe("stormchaser hat", /obj/item/clothing/head/f13/stormchaser, 1, time = 20),\
	)),
))

/obj/item/stack/sheet/leather/five
	amount = 5

/obj/item/stack/sheet/leather/twenty
	amount = 20

// LEATHER MAKING PROCESS

//Step one - dehairing.

/obj/item/stack/sheet/animalhide/attackby(obj/item/W, mob/user, params)
	if(W.get_sharpness())
		playsound(loc, 'sound/weapons/slice.ogg', 50, 1, -1)
		user.visible_message("[user] starts cutting hair off \the [src].", "<span class='notice'>You start cutting the hair off \the [src]...</span>", "<span class='italics'>You hear the sound of a knife rubbing against flesh.</span>")
		if(do_after(user, 50, target = src))
			to_chat(user, "<span class='notice'>You cut the hair from this [src.singular_name].</span>")
			new /obj/item/stack/sheet/hairlesshide(user.drop_location(), 1)
			use(1)
	else
		return ..()


//Step two - washing..... it's actually in washing machine code.

//Step three - drying
/obj/item/stack/sheet/wetleather/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			new /obj/item/stack/sheet/leather(drop_location(), 1)
			wetness = initial(wetness)
			use(1)

/obj/item/stack/sheet/wetleather/microwave_act(obj/machinery/microwave/MW)
	..()
	new /obj/item/stack/sheet/leather(drop_location(), amount)
	qdel(src)

// LEATHER STACKS
/obj/item/stack/sheet/hairlesshide
	name = "hairless hide"
	desc = "This hide was stripped of its hair, but still needs washing and tanning."
	singular_name = "hairless hide piece"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "sheet-hairlesshide"
	item_state = "sheet-hairlesshide"
	merge_type = /obj/item/stack/sheet/hairlesshide

/obj/item/stack/sheet/wetleather
	name = "wet leather"
	desc = "This leather has been cleaned but still needs to be dried."
	singular_name = "wet leather piece"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "sheet-wetleather"
	item_state = "sheet-wetleather"
	var/wetness = 30 //Reduced when exposed to high temperautres
	var/drying_threshold_temperature = 500 //Kelvin to start drying
	merge_type = /obj/item/stack/sheet/wetleather

// -------------------------------------------------------

/obj/item/stack/sheet/animalhide/corgi
	name = "corgi hide"
	desc = "The by-product of corgi farming."
	singular_name = "corgi hide piece"
	icon_state = "sheet-corgi"
	item_state = "sheet-corgi"
	merge_type = /obj/item/stack/sheet/animalhide/corgi


GLOBAL_LIST_INIT(corgi_recipes, list ( \
	new/datum/stack_recipe("corgi costume", /obj/item/clothing/suit/hooded/ian_costume, 3), \
	))

/obj/item/stack/sheet/animalhide/corgi/get_main_recipes()
	. = ..()
	. += GLOB.corgi_recipes

/obj/item/stack/sheet/animalhide/cat
	name = "cat hide"
	desc = "The by-product of cat farming."
	singular_name = "cat hide piece"
	icon_state = "sheet-cat"
	item_state = "sheet-cat"
	merge_type = /obj/item/stack/sheet/animalhide/cat

/obj/item/stack/sheet/animalhide/monkey
	name = "monkey hide"
	desc = "The by-product of monkey farming."
	singular_name = "monkey hide piece"
	icon_state = "sheet-monkey"
	icon_state = "sheet-monkey"
	merge_type = /obj/item/stack/sheet/animalhide/monkey

GLOBAL_LIST_INIT(monkey_recipes, list ( \
	new/datum/stack_recipe("monkey mask", /obj/item/clothing/mask/gas/monkeymask, 1), \
	new/datum/stack_recipe("monkey suit", /obj/item/clothing/suit/monkeysuit, 2), \
	))

/obj/item/stack/sheet/animalhide/monkey/get_main_recipes()
	. = ..()
	. += GLOB.monkey_recipes

/obj/item/stack/sheet/animalhide/lizard
	name = "lizard skin"
	desc = "Sssssss..."
	singular_name = "lizard skin piece"
	icon_state = "sheet-lizard"
	item_state = "sheet-lizard"
	merge_type = /obj/item/stack/sheet/animalhide/lizard

/obj/item/stack/sheet/animalhide/xeno
	name = "alien hide"
	desc = "The skin of a terrible creature."
	singular_name = "alien hide piece"
	icon_state = "sheet-xeno"
	item_state = "sheet-xeno"
	merge_type = /obj/item/stack/sheet/animalhide/xeno

GLOBAL_LIST_INIT(xeno_recipes, list ( \
	new/datum/stack_recipe("alien helmet", /obj/item/clothing/head/xenos, 1), \
	new/datum/stack_recipe("alien suit", /obj/item/clothing/suit/xenos, 2), \
	))

/obj/item/stack/sheet/animalhide/xeno/get_main_recipes()
	. = ..()
	. += GLOB.xeno_recipes

//don't see anywhere else to put these, maybe together they could be used to make the xenos suit?
/obj/item/stack/sheet/xenochitin
	name = "alien chitin"
	desc = "A piece of the hide of a terrible creature."
	singular_name = "alien hide piece"
	icon = 'icons/mob/alien.dmi'
	icon_state = "chitin"
	novariants = TRUE
	merge_type = /obj/item/stack/sheet/xenochitin

/obj/item/xenos_claw
	name = "alien claw"
	desc = "The claw of a terrible creature."
	icon = 'icons/mob/alien.dmi'
	icon_state = "claw"

/obj/item/weed_extract
	name = "weed extract"
	desc = "A piece of slimy, purplish weed."
	icon = 'icons/mob/alien.dmi'
	icon_state = "weed_extract"


		/*
 * Plates
 */

/obj/item/stack/sheet/animalhide/goliath_hide
	name = "goliath hide plates"
	desc = "Pieces of a goliath's rocky hide, these might be able to make your suit a bit more durable to attack from the local fauna."
	icon = 'icons/obj/mining.dmi'
	icon_state = "goliath_hide"
	singular_name = "hide plate"
	max_amount = 6
	novariants = FALSE
	item_flags = NOBLUDGEON
	w_class = WEIGHT_CLASS_NORMAL
	layer = MOB_LAYER
	merge_type = /obj/item/stack/sheet/animalhide/goliath_hide

/obj/item/stack/sheet/animalhide/goliath_hide/polar_bear_hide
	name = "polar bear hides"
	desc = "Pieces of a polar bear's fur, these might be able to make your suit a bit more durable to attack from the local fauna."
	icon_state = "polar_bear_hide"
	singular_name = "polar bear hide"
	merge_type = /obj/item/stack/sheet/animalhide/goliath_hide/polar_bear_hide

/obj/item/stack/sheet/animalhide/ashdrake
	name = "ash drake hide"
	desc = "The strong, scaled hide of an ash drake."
	icon = 'icons/obj/mining.dmi'
	icon_state = "dragon_hide"
	singular_name = "drake plate"
	max_amount = 10
	novariants = FALSE
	item_flags = NOBLUDGEON
	w_class = WEIGHT_CLASS_NORMAL
	layer = MOB_LAYER
	merge_type = /obj/item/stack/sheet/animalhide/ashdrake
