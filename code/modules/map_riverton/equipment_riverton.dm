// ------------------------------------ ID ----------------------------------------- //


/obj/item/card/id/dogtag/mayor
	name = "the mayors silver watch"
	desc = "A pocket watch in silver, engraved with the names of previous Mayors, the current owners one at the bottom in tiny text."
	icon_state = "alderman"

/obj/item/card/id/dogtag/town/preacher
	name = "family bible"
	desc = "The preachers old personal bible."
	icon_state = "preacher"
	item_state = null
	assignment = "citizenship permit"
	access = list(ACCESS_BAR)

/obj/item/card/id/dogtag/mercenarycommander
	name = "dogtags"
	desc = "Custom made silver dogtags, the commander wearering it spent some money on it."
	assignment = "dogtags"
	icon_state = "mercenary commander"
	icon_state = "talon_command"

/obj/item/card/id/dogtag/mercenary
	name = "dogtags"
	desc = "Given to every recruit that signs up for the mercenaries."
	icon_state = "talon"
	assignment = "dogtags"
	item_state = null
	access = list(ACCESS_BAR, ACCESS_GATEWAY)


// ----------------------------------- ARMOR ----------------------------------------- //

/obj/item/clothing/suit/hooded/mayor_coat
	name = "mayors raincoat"
	desc = "(IV) A pre-war high-quality raincoat, reinforced by precious kevlar lining. The yellow color makes the mayor visible while he keeps dry"
	icon = 'icons/fallout/module_riverton/clothing/armor.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/armor_mob.dmi'
	icon_state = "mayor_coat"
	item_state = "mayor_coat"
	armor = list("tier" = 4, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)
	strip_delay = 40
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/mayor
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/head/hooded/cloakhood/mayor
	name = "patched leather hood"
	desc = "(IV) A yellow hood."
	icon = 'icons/fallout/module_riverton/clothing/armor.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/armor_mob.dmi'
	icon_state = "hood_mayor"
	item_state = "hood_mayor"
	armor = list("tier" = 4, "energy" = 40, "bomb" = 25, "bio" = 40, "rad" = 35, "fire" = 80, "acid" = 0)
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

// Tried to make it deflect 60% of attacks, cause its a fun gimmick, protected by their faith. Pls help make it so.
/obj/item/clothing/suit/armor/f13/rosary
	name = "rosary"
	desc = "Worn outside of your clothing, showing the world your faith is your armor."
	icon = 'icons/fallout/module_riverton/clothing/armor.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/armor_mob.dmi'
	icon_state = "rosary"
	item_state = "rosary"
	armor = list("tier" = 1, "energy" = 5, "bomb" = 5, "bio" = 10, "rad" = 5, "fire" = 30, "acid" = 0)
	var/armor_block_threshold = 1
	var/armor_block_chance = 0.6

/obj/item/clothing/head/helmet/steel/heavy
	desc = "(VI) A green steel helmet with a thick faceplate, it can be pushed back on the head to make breathing and speaking easier."
	icon = 'icons/fallout/module_riverton/clothing/armor.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/armor_mob.dmi'
	armor = list("tier" = 6, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/steel/heavy/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "merc_heavyup"
	item_state = "merc_heavyup"
	armor = list("tier" = 5, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)

/obj/item/clothing/head/helmet/steel
	name = "steel helmet"
	desc = "(V) A green steel helmet."
	icon = 'icons/fallout/module_riverton/clothing/armor.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/armor_mob.dmi'
	icon_state = "merc"
	item_state = "merc"
	armor = list("tier" = 5, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)

/obj/item/clothing/head/helmet/steel/cover
	desc = "(V) A green steel helmet with camouflage helmet cover."
	icon_state = "merc_cover"
	item_state = "merc_cover"




/obj/item/clothing/mask/balaclava/merc
	desc = "keeps you warm and makes it harder for witnesses to tell who did what."
	mob_overlay_icon = 'icons/fallout/onmob/clothes/mask.dmi'

/obj/item/clothing/under/riverton
	name = "durable flannel outfit"
	desc = "A dark flannel shirt worn with a pair of slim-fitting jeans. "
	icon = 'icons/fallout/module_riverton/clothing/clothing.dmi'
	mob_overlay_icon = 'icons/fallout/module_riverton/clothing/clothing_mob.dmi'
	icon_state = "darkflannel"
	item_state = "darkflannel"


/obj/item/clothing/under/riverton/preacher
	name = "preacher outfit"
	desc = "Dignified clothing for a man of faith."
	icon_state = "preacher"
	item_state = "chapblack"

/obj/item/clothing/under/riverton/machinist
	name = "machinist denims"
	desc = "Durable denim with many oil smudges."
	icon_state = "machinist"
	item_state = "machinist"

/obj/item/clothing/under/riverton/mercenary
	name = "camouflage clothing"
	desc = "Inspired by pre-war hunting clothing, this rugged uniform is popular with mercenaries."
	icon_state = "mercenary"
	item_state = "merc_camo"




// Ammo bandolier
/obj/item/storage/belt/ammobandolier
	name = "ammunition bandolier"
	desc = "No-nonsense bandolier for small items."
	icon = 'icons/fallout/clothing/belts.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/belt.dmi'
	icon_state = "talon_bandolier"
	item_state = "talon_bandolier"
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE

/obj/item/storage/belt/ammobandolier/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_items = 7
	STR.max_w_class = WEIGHT_CLASS_SMALL

// Merc holster
/obj/item/storage/belt/holster/legholster/chinapistol/PopulateContents()
	new /obj/item/gun/ballistic/automatic/pistol/type17(src)
	new /obj/item/ammo_box/magazine/m10mm_adv/simple(src)
	new /obj/item/ammo_box/magazine/m10mm_adv/simple(src)
