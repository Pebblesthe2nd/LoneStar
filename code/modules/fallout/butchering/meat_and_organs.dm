// In this document: Meat, Eggs. If its edible stuff dropping from animals place it here. For the processed stuff go to proper food.

//////////
// MEAT //
//////////


/obj/item/reagent_containers/food/snacks/meat/slab/gecko
	name = "gecko fillet"
	desc = "A tasty fillet of gecko meat.<br>If you cook it, it tastes like chicken!"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_gecko"
	list_reagents = list(/datum/reagent/consumable/nutriment = 6,  /datum/reagent/toxin  = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	bitesize = 2 //Smaller animal
	filling_color = "#FA8072"
	tastes = list("meat" = 4, "scales" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/gecko
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/molerat
	name = "molerat meat"
	desc = "A slab of smelly molerat meat."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "bearmeat"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/toxin = 1)
	bitesize = 2
	filling_color = "#FA8072"
	tastes = list("meat" = 4, "whiskers" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/molerat
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/wolf
	name = "dog meat"
	desc = "Some asians love this stuff.<br>It does not taste too bad actually."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	bitesize = 4 //Average animal
	filling_color = "#FA8072"
	tastes = list("meat" = 3)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/wolf
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/deathclaw
	name = "deathclaw meat"
	desc = "A slab of hard but delicious raw deathclaw meat."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_deathclaw"
	list_reagents = list(/datum/reagent/consumable/nutriment = 9, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/medicine/tricordrazine = 5)
	bitesize = 6 //Big slabs of meat from a massive creature
	filling_color = "#FA8072"
	tastes = list("chewy meat" = 3, "scales" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/deathclaw
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk
	name = "mirelurk meat"
	desc = "Meat from a mirelurk, still inside its shell.  Going to need pliers for this..."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_mirelurk"
	bitesize = 4 //Big animal, small part of it
	filling_color = "#406618" //Very dark green.
	list_reagents = list(/datum/reagent/consumable/nutriment = 7, /datum/reagent/consumable/nutriment/vitamin = 3)
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mirelurk
	tastes = list("crab" = 1)
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/squirrel
	name = "squirrel meat"
	desc = "Squirrel meat, the staple of many wasteland dishes when you can catch one."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat"
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	bitesize = 2
	tastes = list("rodent" = 3, "chicken" = 1)
	filling_color = "#FA8072"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/squirrel
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/radroach_meat
	name = "radroach meat"
	desc = "A hunk of still quivering radroach meat, gross."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_bloatfly"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2,  /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#e5b73b" //Meat brown associated to "mothmeat"
	bitesize = 2
	tastes = list("insect guts" = 3)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/radroach_meat
	slice_path = null
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/ant_meat
	name = "ant meat"
	desc = "A sizable portion of ant flesh taken from the abdomen, almost looks appetizing, almost."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_ant"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2,  /datum/reagent/consumable/nutriment/vitamin = 3)
	filling_color = "#e5b73b"
	bitesize = 3
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/ant_meat
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/fireant_meat
	name = "fireant meat"
	desc = "A sizable portion of fire-ant flesh taken from the abdomen, it smellls slightly spicy."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_fireant"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/capsaicin = 0.5,  /datum/reagent/consumable/nutriment/vitamin = 3)
	bitesize = 3
	tastes = list("insect guts" = 2, "spicyness" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/ant_meat
	slice_path = null
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/meat/slab/bloatfly_meat
	name = "bloatfly meat"
	desc = "A slab of black-brown flesh from the abdomen of a bloatfly, disgusting."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_bloatfly"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2,  /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#1c352d" // Medium jungle green
	bitesize = 2
	tastes = list("insect guts" = 1)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/bloatfly_meat
	slice_path = null
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/cazador_meat
	name = "cazador meat"
	desc = "Meat extracted from the lean hide of cazador wasp."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_cazador"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/toxin/carpotoxin = 3)
	filling_color = "#e5b73b"
	bitesize = 2
	tastes = list("insect guts" = 3, "sweet tangy liquid" = 1) //google says toxin is sweet anyway.
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/cazador_meat
	slice_path = null
	foodtype = RAW | MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/meat/slab/radscorpion_meat
	name = "radscorpion meat"
	desc = "Meat from a radscorpion, still inside its chitin.  Going to need pliers for this."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_scorpion"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3,  /datum/reagent/toxin  = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#e5b73b"
	bitesize = 4
	tastes = list("insect guts" = 3, "sweet tangy liquid" = 2) //google says toxin is sweet anyway.
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/radscorpion_meat
	slice_path = null
	foodtype = RAW | MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul
	name = "ghoul meat"
	desc = "Nothing says tasty like necrotic, radioactive mutant flesh"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_rotting"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/radium = 6)
	tastes = list("rotting flesh" = 3)
	filling_color = "#7c1104" //Dark Red
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/ghoul
	slice_path = null
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/meat/slab/human/centaur
	name = "centaur meat"
	desc = "Absolutely disgusting"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "meat_rotting"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/radium = 10)
	tastes = list("abomination" = 2, "mutatated flesh" = 1)
	filling_color = "#7c1104"
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/centaur
	slice_path = null
	foodtype = RAW | MEAT | GROSS
	color = "#b89b9a"

////////////
// ORGANS //
////////////

/obj/item/reagent_containers/food/snacks/rawantbrain
	name = "raw ant brain"
	desc = "Goppy reddish-grey flesh dug out of the brain case of a giant ant."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "brain"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("fat" = 4, "bitter meat" = 1)
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/rawbrahminliver
	name = "raw brahmin liver"
	desc = "The raw tongue of a brahmin, a wastelander favorite"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "liver"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/cookedbrahminliver
	tastes = list("beef" = 4, "tender meat" = 1)
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/rawbrahmintongue
	name = "raw brahmin tongue"
	desc = "The raw tongue of a brahmin, a wastelander favorite"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "tongue"
	bitesize = 3
	filling_color = "#CD853F"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	cooked_type = /obj/item/reagent_containers/food/snacks/cookedbrahmintongue
	tastes = list("beef" = 4, "tender meat" = 1)
	foodtype = RAW | MEAT | GROSS


//////////
// EGGS //
//////////

/obj/item/reagent_containers/food/snacks/f13/deathclawegg
	name = "deathclaw egg"
	desc = "A deathclaw egg. It has a brownish-red shell. Look at this thing, it's as big as your torso!"
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "egg_deathclaw"
	bonus_reagents = list(/datum/reagent/toxin = 30)
	list_reagents = list(/datum/reagent/consumable/eggyolk = 40)
	filling_color = "#F0E68C"
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/f13/giantantegg
	name = "giant ant egg"
	desc = "A giant ant egg.<br>You'd thought it be bigger but its white and squishy to the touch."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "egg_ant"
	bonus_reagents = list(/datum/reagent/toxin = 10)
	list_reagents = list(/datum/reagent/consumable/eggyolk = 15)
	filling_color = "#F0E68C"
	foodtype = RAW | MEAT | GROSS

/obj/item/reagent_containers/food/snacks/f13/egg_nightstalker
	name = "nightstalker egg"
	desc = "A shiny, leathery egg."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "egg_nightstalker"
	bonus_reagents = list(/datum/reagent/toxin = 5)
	list_reagents = list(/datum/reagent/consumable/eggyolk = 20)
	filling_color = "#FFDF00"
	foodtype = RAW | MEAT

/obj/item/reagent_containers/food/snacks/f13/egg_mirelurk
	name = "mirelurk egg"
	desc = "A bluish egg with very hard shell."
	icon = 'icons/fallout/mobs/mob_drops.dmi'
	icon_state = "egg_mirelurk"
	list_reagents = list(/datum/reagent/consumable/eggyolk = 30)
	filling_color = "#E6E6FA"
	foodtype = MEAT
