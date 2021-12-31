/obj/item/clothing/suit/armor/raider/iconoclast
	name = "iconoclast armor"
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	desc = "(IV) A rigid armor set that appears to be fashioned from a radiation suit, or a mining suit."
	icon_state = "iconoclast"
	item_state = "iconoclast"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)


//Raider
/obj/item/clothing/suit/armor/f13/raider
	name = "base raider armor"
	desc = "for testing"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list("tier" = 3, "energy" = 35, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 25)
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/raider/supafly
	name = "supa-fly raider armor"
	desc = "(III) Fabulous mutant powers were revealed to me the day I held aloft my bumper sword and said...<br>BY THE POWER OF NUKA-COLA, I AM RAIDER MAN!"
	icon_state = "supafly"
	item_state = "supafly"

/obj/item/clothing/suit/armor/f13/raider/supafly/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/sadist
	name = "sadist raider armor"
	desc = "(III) A bunch of metal chaps adorned with severed hands at the waist with a leather plate worn on the left shoulder. Very intimidating."
	icon_state = "sadist"
	item_state = "sadist"

/obj/item/clothing/suit/armor/f13/raider/sadist/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/blastmaster
	name = "blastmaster raider armor"
	desc = "(III) A suit composed largely of blast plating, though there's so many holes it's hard to say if it will protect against much."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	flash_protect = 2

/obj/item/clothing/suit/armor/f13/raider/blastmaster/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/yankee
	name = "yankee raider armor"
	desc = "(III) A set of armor made from bulky plastic and rubber. A faded sports team logo is printed in various places. Go Desert Rats!"
	icon_state = "yankee"
	item_state = "yankee"

/obj/item/clothing/suit/armor/f13/raider/yankee/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/suit/armor/f13/raider/painspike
	name = "painspike raider armor"
	desc = "(III) A particularly unhuggable armor, even by raider standards. Extremely spiky."
	icon_state = "painspike"
	item_state = "painspike"

/obj/item/clothing/suit/armor/f13/raider/painspike/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)






// -------------------------- RAIDER COALITION ------------------- //

/obj/item/clothing/suit/armor/raider
	name = "wasteland warrior armor"
	desc = "(III) A mad attempt to recreate armor based of images of japanese samurai, using a sawn up old car tire as shoulder pads, bits of chain to cover the hips and pieces of furniture for a breastplate. Might stop a blade but nothing else."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	icon_state = "wastewar"
	item_state = "wastewar"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("tier" = 3, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)
	allowed = list(/obj/item/gun, /obj/item/kitchen, /obj/item/twohanded, /obj/item/melee/onehanded, /obj/item/twohanded/spear, /obj/item/melee/smith, /obj/item/melee/smith/twohand)

/obj/item/clothing/suit/armor/raider/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)


/obj/item/clothing/suit/armor/raider/iconoclast
	name = "iconoclast armor"
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	desc = "(IV) A rigid armor set that appears to be fashioned from a radiation suit, or a mining suit."
	icon_state = "iconoclast"
	item_state = "iconoclast"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)

/obj/item/clothing/suit/armor/raider/leadcoat
	name = "lead plated coat"
	desc = "(V) A heavy padded leather coat made for the Zeppelin Corps, with lead plate inserts to prevent radiation sickness."
	icon_state = "maxson_battlecoat"
	item_state = "maxson_battlecoat"
	armor = list("tier" = 5, "energy" = 25, "bomb" = 20, "bio" = 10, "rad" = 20, "fire" = 40, "acid" = 40)

/obj/item/clothing/suit/armor/raider/slammer
	name = "slammer raider armor"
	desc = "(III) Crude armor made from tires and dirty thick layers of clothing and metal bits."
	icon_state = "slam"
	item_state = "slam"
	armor = list("tier" = 3, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)
	flags_inv = HIDEJUMPSUIT
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'

/obj/item/clothing/suit/armor/raider/tribal
	name = "tribal armor"
	desc = "(III) Simple metal plates and fabric made from goat wool give the attire a distinct look."
	icon_state = "tribal"
	item_state = "tribal"
	armor = list("tier" = 3, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)

/obj/item/clothing/suit/armor/raider/tribal/badlands
	name = "badlands armor"
	desc = "(IV) Leather strips."
	icon_state = "badlands"
	item_state = "badlands"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)

/obj/item/clothing/suit/armor/raider/bone
	name = "bone armor"
	desc = "(IV) Armor made from bone tied together by leather strips. Animal bones? Who knows."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "bone"
	item_state = "bone"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)

/obj/item/clothing/suit/armor/raider/tribal/ragged
	name = "ragged tribal armor"
	desc = "(III) Simple metal plates and fabric made from goat wool give the attire a distinct look."
	icon_state = "tribal_outcast"
	item_state = "tribal_outcast"

/obj/item/clothing/suit/armor/raider/rebel
	name = "rebel raider armor"
	desc = "(III) Rebel, rebel. Your face is a mess."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "rebel"
	item_state = "rebel"

/obj/item/clothing/suit/armor/raider/king
	name = "renegade duster"
	desc = "(IV) This worn duster got gang colors on the back, and metal armor underneath."
	icon = 'icons/fallout/clothing/armored_medium.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_medium.dmi'
	icon_state = "duster_renegade"
	item_state = "duster_renegade"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 70, "fire" = 40, "acid" = 40)

/obj/item/clothing/suit/hooded/tribal
	name = "patched heavy leather cloak"
	desc = "(III) A robust leather cloak made made from various bits of leather from dogs and other animals, able to absorb more force than one would expect from leather."
	icon = 'icons/fallout/clothing/armored_light.dmi'
	icon_state = "cloak_outcast"
	mob_overlay_icon = 'icons/fallout/onmob/clothes/armor_light.dmi'
	item_state = "cloak_outcast"
	armor = list("tier" = 3, "energy" = 10, "bomb" = 10, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 40)
	strip_delay = 40
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/tribaloutcast
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/head/hooded/cloakhood/tribal
	name = "patched leather hood"
	desc = "(III) Thick layered leather, patched together."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "hood_tribaloutcast"
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	item_state = "hood_tribaloutcast"
	armor = list("tier" = 3, "energy" = 10, "bomb" = 10, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 40)
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/suit/hooded/tribal/chief
	name = "chieftain cloak"
	desc = "(IV) Decorated cloak worn over metal armor pieces.."
	icon_state = "cloak_sickness"
	item_state = "cloak_sickness"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)

/obj/item/clothing/head/hooded/cloakhood/tribal/chief
	name = "chieftain hood"
	desc = "(IV) A mask made from parts of a Yao Guai skull under a decorated hood."
	icon_state = "hood_sickness"
	item_state = "hood_sickness"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 30, "acid" = 30)


/obj/item/clothing/suit/armor/f13/sulphitearmor/bishop
	desc = "(VI) Once a firemans suit, now with added metal plating, a useless engine on the back, and a cross showing the wearer got extra protection from the Lord."
	icon_state = "bishop"
	item_state = "bishop"


/obj/effect/spawner/lootdrop/f13/armor/random_high
	name = "high tier random armor loot"
	lootcount = 1

	loot = list(
			/obj/effect/spawner/lootdrop/f13/armor/tier2 = 70,
			/obj/effect/spawner/lootdrop/f13/armor/tier3 = 20,
			/obj/effect/spawner/lootdrop/f13/armor/tier4 = 10
			///obj/item/traumapack = 1 //one ring to rule them all
			)
