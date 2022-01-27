// In this document: Sinew, Bone, Deathclaw Claw, any future crafting component dropping from animals/mobs should go here
// Rule of thumb: small animals drop stuff like sinew, big ones bones

///////////
// SINEW //
///////////

/obj/item/stack/sheet/sinew
	name = "sinew"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	desc = "Long stringy filaments, presumably from some kind of animal."
	singular_name = "sinew"
	icon_state = "sinew"
	novariants = TRUE
	merge_type = /obj/item/stack/sheet/sinew

GLOBAL_LIST_INIT(sinew_recipes, list ( \
	new/datum/stack_recipe("sinew restraints", /obj/item/restraints/handcuffs/sinew, 1), \
))

/obj/item/stack/sheet/sinew/get_main_recipes()
	. = ..()
	. += GLOB.sinew_recipes


///////////
// BONES //
///////////

// Can be ground for good crop fertilizer
/obj/item/stack/sheet/bone
	name = "bones"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "bone"
	item_state = "sheet-bone"
	custom_materials = list(/datum/material/bone = MINERAL_MATERIAL_AMOUNT)
	singular_name = "bone"
	desc = "Someone's been drinking their milk."
	force = 7
	throwforce = 5
	max_amount = 12
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 1
	throw_range = 3
	grind_results = list(/datum/reagent/plantnutriment/robustharvestnutriment = 10)
	merge_type = /obj/item/stack/sheet/bone
	material_type = /datum/material/bone

/obj/item/stack/sheet/bone/get_main_recipes()
	. = ..()
	. += GLOB.bone_recipes

GLOBAL_LIST_INIT(bone_recipes, list(
	new /datum/stack_recipe("bone dagger", /obj/item/melee/onehanded/knife/bone, 2, time = 20),
	null, \
	new /datum/stack_recipe("bone armor", /obj/item/clothing/suit/armor/bone, 6, time = 30),
	new /datum/stack_recipe("skull helmet", /obj/item/clothing/head/helmet/skull, 4, time = 30),
	null, \
	new/datum/stack_recipe_list("medicine", list( \
		new /datum/stack_recipe("bone pestle", /obj/item/pestle, 1, time = 20),\
		new /datum/stack_recipe("bone mortar", /obj/item/reagent_containers/glass/mortar, 3, time = 20),\
		new /datum/stack_recipe("bone chemical isolator", /obj/item/reagent_containers/glass/primitive_chem_isolator, 3, time = 20),\
	)), \
	null, \
))


// Deathclaw claw - purely crafting component for now
/obj/item/stack/sheet/deathclaw
	name = "claw"
	desc = "The claw of a deathclaw."
	icon_state = "bone_claw"
	item_state = "sheet-bone"
	singular_name = "claw"
	w_class = WEIGHT_CLASS_TINY
