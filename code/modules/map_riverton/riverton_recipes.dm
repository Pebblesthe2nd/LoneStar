/datum/crafting_recipe/gun/plasmamusket
	name = "Plasma musket"
	result = /obj/item/gun/ballistic/rifle/hobo/plasmacaster
	reqs = list(/obj/item/gun/ballistic/rifle/hobo/lasmusket = 1,
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/advanced_crafting_components/conductors = 1)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)

/datum/crafting_recipe/gun/lasmusket
	name = "Laser musket"
	result = /obj/item/gun/ballistic/rifle/hobo/lasmusket
	reqs = list(/obj/item/trash/f13/electronic/toaster = 1,
				/obj/item/gun/ballistic/revolver/hobo/piperifle = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1,
				/obj/item/stack/cable_coil = 3)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)

/datum/crafting_recipe/gun/rockwell
	name = "Rockwell gun"
	result = /obj/item/gun/ballistic/automatic/smg/rockwell
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
				/obj/item/advanced_crafting_components/receiver = 1
				)

/datum/crafting_recipe/gun/m29snub
	name = "snubnose .44 magnum revolver"
	result = /obj/item/gun/ballistic/revolver/m29/snub
	reqs = list(
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/stack/crafting/metalparts = 1,
		)
	tools = list(TOOL_WORKBENCH, TOOL_SAW)


/////////////////
///GUN CRAFTING//
/////////////////

/datum/crafting_recipe/gun
	always_availible = FALSE
	tools = list(TOOL_WORKBENCH)
	time = 120
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

//Hobo Guns
/datum/crafting_recipe/gun/zipgun
	name = "Zip gun (9mm)"
	result = /obj/item/gun/ballistic/automatic/hobo/zipgun
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1,
				/obj/item/crafting/wonderglue = 1,
				/obj/item/stack/rods = 1,
				/obj/item/ammo_casing/c9mm = 5,
				/obj/item/stack/crafting/metalparts = 1)

/datum/crafting_recipe/gun/pepperbox
	name = "Pepperbox gun (10mm)"
	result = /obj/item/gun/ballistic/revolver/hobo/pepperbox
	reqs = list(/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/ammo_casing/c10mm = 4,
				/obj/item/stack/rods = 4)

/datum/crafting_recipe/gun/knucklegun
	name =	"Knucklegun (.38)"
	result =	/obj/item/gun/ballistic/revolver/hobo/knucklegun
	reqs = list(/obj/item/melee/unarmed/brass = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/rods = 4)

/datum/crafting_recipe/gun/knifegun
	name =	"Knifegun (.44)"
	result =	/obj/item/gun/ballistic/revolver/hobo/knifegun
	reqs = list(/obj/item/melee/onehanded/knife = 1,
				/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/rods = 1)


/datum/crafting_recipe/gun/piperifle
	name = "Piperifle (.223)"
	result = /obj/item/gun/ballistic/revolver/hobo/piperifle
	reqs = list(/obj/item/stack/sheet/mineral/wood = 2,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/rods = 1)

/datum/crafting_recipe/gun/autopiperifle
	name = "Auto-pipe rifle (.357)"
	result = /obj/item/gun/ballistic/automatic/autopipe
	reqs = list(/obj/item/ammo_casing/a357 = 30,
	/obj/item/stack/crafting/metalparts = 2,
	/obj/item/crafting/duct_tape = 1,
	/obj/item/stack/sheet/cloth = 1,
	/obj/item/stack/sheet/mineral/wood = 2)

/datum/crafting_recipe/gun/shotgunbat
	name = "Shotgun bat"
	result = /obj/item/gun/ballistic/revolver/single_shotgun
	reqs = list(/obj/item/screwdriver = 1,
	/obj/item/twohanded/baseball = 1,
	/obj/item/stack/crafting/metalparts = 2,
	/obj/item/ammo_casing/shotgun = 1,
	/obj/item/stack/rods = 1)

/datum/crafting_recipe/gun/winchesterrebored
	name = "Winchester rebored elephant gun (.50)"
	result = /obj/item/gun/ballistic/revolver/winchesterrebored
	reqs = list(/obj/item/gun/ballistic/revolver/widowmaker = 1,
				/obj/item/stack/crafting/goodparts = 2)
	tools = list(TOOL_WORKBENCH, TOOL_DRILL)
	
/datum/crafting_recipe/gun/plasmamusket
	name = "Plasma musket"
	result = /obj/item/gun/ballistic/rifle/hobo/plasmacaster
	reqs = list(/obj/item/gun/ballistic/rifle/hobo/lasmusket = 1,
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/advanced_crafting_components/conductors = 1)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)

/datum/crafting_recipe/gun/lasmusket
	name = "Laser musket"
	result = /obj/item/gun/ballistic/rifle/hobo/lasmusket
	reqs = list(/obj/item/trash/f13/electronic/toaster = 1,
				/obj/item/gun/ballistic/revolver/hobo/piperifle = 1,
				/obj/item/reagent_containers/food/drinks/bottle = 1,
				/obj/item/stack/cable_coil = 3)
	tools = list(TOOL_WORKBENCH, TOOL_MULTITOOL)

/datum/crafting_recipe/gun/rockwell
	name = "Rockwell gun"
	result = /obj/item/gun/ballistic/automatic/smg/rockwell
	reqs = list(/obj/item/stack/crafting/metalparts = 2,
				/obj/item/advanced_crafting_components/receiver = 1
				)

/datum/crafting_recipe/gun/m29snub
	name = "snubnose .44 magnum revolver"
	result = /obj/item/gun/ballistic/revolver/m29/snub
	reqs = list(
		/obj/item/gun/ballistic/revolver/m29 = 1,
		/obj/item/stack/crafting/metalparts = 1,
		)
	tools = list(TOOL_WORKBENCH, TOOL_SAW)
