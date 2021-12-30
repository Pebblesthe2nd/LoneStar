// ------------------------------------ MERCENARY ----------------------------------------- //

/obj/item/clothing/head/helmet/steel
	name = "steel helmet"
	desc = "(V) A green steel helmet."
	icon = 'icons/fallout/clothing/helmets.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/helmet.dmi'
	icon_state = "merc"
	item_state = "merc"
	armor = list("tier" = 5, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)

/obj/item/clothing/head/helmet/steel/cover
	desc = "(V) A green steel helmet with camouflage helmet cover."
	icon_state = "merc_cover"
	item_state = "merc_cover"

/obj/item/clothing/head/helmet/steel/heavy
	desc = "(VI) A green steel helmet with a thick faceplate, it can be pushed back on the head to make breathing and speaking easier."
	icon_state = "merc_heavy"
	item_state = "merc_heavy"
	armor = list("tier" = 6, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/steel/heavy/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "merc_heavyup"
	item_state = "merc_heavyup"
	armor = list("tier" = 5, "energy" = 15, "bomb" = 25, "bio" = 60, "rad" = 20, "fire" = 75, "acid" = 10)




// ----------------------------------- RAIDER COALITIION ----------------------------------------- //

/obj/item/clothing/head/helmet/raider
	name = "fiend helmet"
	desc = "(III) A leather cap cobbled together with a goat skull, for that angry tribal look."
	icon_state = "fiend"
	item_state = "fiend"
	icon = 'icons/fallout/clothing/helmets.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/helmet.dmi'
	armor = list("tier" = 3, "energy" = 10, "bomb" = 20, "bio" = 20, "rad" = 0, "fire" = 30, "acid" = 30)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/raider/Initialize()
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/raider/warrior
	name = "warrior helmet"
	desc = "(III) It might have been a cooking pot once, now its a helmet, with a piece of cloth covering the neck from the sun."
	icon_state = "warrior"
	item_state = "warrior"

/obj/item/clothing/head/helmet/raider/weld
	name = "raider improvised helmet"
	desc = "(III) A old welding mask, without its dark glass and various additions and decorations."
	icon_state = "raiderweld"
	item_state = "raiderweld"

/obj/item/clothing/head/helmet/raider/cavebear
	name = "bear pelt"
	desc = "(IV) The pelt of a Yao Guai, made into a helmet by adding bone and metal."
	icon_state = "bearpelt"
	item_state = "bearpelt"
	visor_flags_inv = HIDEEARS
	armor = list("tier" = 4, "linemelee" = 0, "energy" = 20, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/raider/cavebear/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/raider/cavebear/up
	icon_state = "bearpelt_alt"
	item_state = "bearpelt_alt"
	icon = 'icons/fallout/clothing/helmets.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/helmet.dmi'
	armor = list("tier" = 4, "linemelee" = 0, "energy" = 25, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 25, "acid" = 10)

/obj/item/clothing/head/helmet/raider/berserker
	name = "berserker helm"
	desc = "(IV) The head of a skull wolf mounted on a hardened leather helmet to avoid the ghosts of their enemies being able to see their face and give them the evil eye as they die."
	icon_state = "berserker"
	item_state = "berserker"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 20, "bio" = 25, "rad" = 15, "fire" = 25, "acid" = 25)

/obj/item/clothing/head/helmet/raider/berserkeralt
	name = "berserker iron mask"
	desc = "(IV) A mask of iron to conceal the wearers face and protect them from the spirits of their enemies haunting them."
	icon_state = "berserker_alt"
	item_state = "berserker_alt"

/obj/item/clothing/head/helmet/raider/pilot
	name = "pilot hood"
	desc = "(IV) Leather hood with lead inserts, once issued to the Zeppelin Corps."
	icon_state = "pilot"
	item_state = "pilot"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 20, "bio" = 25, "rad" = 70, "fire" = 25, "acid" = 25)

/obj/item/clothing/head/helmet/raider/smiley
	name = "smiley helmet"
	desc = "(IV) Tufts of orange polyester wool are glued to the sides of this rough metal helmet."
	icon_state = "smiley"
	item_state = "smiley"
	armor = list("tier" = 4, "energy" = 15, "bomb" = 20, "bio" = 25, "rad" = 15, "fire" = 25, "acid" = 25)

/obj/item/clothing/head/helmet/raider/wastehound
	name = "wastehound raider helmet"
	desc = "(IV) A sack hood made out of a suspicious leather with tufts of hair sticking out. This mask would make Leatherface proud."
	icon_state = "wastehound"
	item_state = "wastehound"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list("tier" = 3, "energy" = 15, "bomb" = 20, "bio" = 25, "rad" = 15, "fire" = 25, "acid" = 25)

/obj/item/clothing/head/helmet/raider/arclight
	name = "arclight raider helmet"
	desc = "(IV) Welding mask with rare polarizing glass thats somehow still in working order. A treasured item in the wasteland."
	icon_state = "arclight"
	item_state = "arclight"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protect = 2
	tint = 0.5
	armor = list("tier" = 4, "energy" = 30, "bomb" = 40, "bio" = 50, "rad" = 30, "fire" = 50, "acid" = 50)

/obj/item/clothing/head/helmet/raider/arclight/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "arclight_up"
	item_state = "arclight_up"
	visor_flags_inv = HIDEEARS
	flash_protect = 0
	tint = 0
	dynamic_hair_suffix = ""
	armor = list("tier" = 3, "energy" = 15, "bomb" = 20, "bio" = 25, "rad" = 15, "fire" = 25, "acid" = 25)

/obj/item/clothing/head/helmet/raider/firefighter
	name = "firefighter raider helmet"
	desc = "(V) A thick helmet, comes with a breathing mask."
	icon_state = "firefighter"
	item_state = "firefighter"
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE
	clothing_flags = BLOCK_GAS_SMOKE_EFFECT | ALLOWINTERNALS
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH

/obj/item/clothing/head/helmet/raider/psychotic
	name = "psycho-tic raider helmet"
	desc = "(III) A leather skullcap with tufts of hair sticking from each side."
	icon_state = "psychotic"
	item_state = "psychotic"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR

/obj/item/clothing/head/helmet/raider/bishop
	name = "metal raider helmet"
	desc = "(V) A metal helmet, rusty and awful."
	icon_state = "raidermetal"
	item_state = "raidermetal"
	armor = list("tier" = 5, "energy" = 20, "bomb" = 25, "bio" = 30, "rad" = 30, "fire" = 20, "acid" = 0)

/obj/item/clothing/head/helmet/f13/raidermetal
	name = "metal raider helmet"
	desc = "(V) A metal helmet, rusty and awful."
	icon_state = "raidermetal"
	item_state = "raidermetal"
	can_toggle = TRUE

	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	strip_delay = 80
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/f13/raidercombathelmet
	name = "combat raider helmet"
	desc = "(V) A combat helmet modified with metal plating"
	icon_state = "raider_combat_helmet"
	item_state = "raider_combat_helmet"
	armor = list("tier" = 5, "energy" = 35, "bomb" = 70, "bio" = 70, "rad" = 70, "fire" = 65, "acid" = 30)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/raider/king
	name = "raider king hat"
	desc = "(IV) A kevlar skull cap under a fancy top hat."
	icon_state = "tophat"
	item_state = "tophat"
	armor = list("tier" = 4, "energy" = 20, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	dynamic_hair_suffix = ""
	flags_inv = HIDEEARS

// Path weird fix
/obj/item/clothing/head/helmet/f13/raider
	name = "base raider helmet"
	desc = "for testing"
	icon_state = "supafly"
	item_state = "supafly"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list("tier" = 4, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

// Path weird fix
/obj/item/clothing/head/helmet/f13/raider/wastehound
	name = "wastehound raider helmet"
	desc = "(III) A sack hood made out of a suspicious leather with tufts of hair sticking out. This mask would make Leatherface proud."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "raider-wastehound"
	item_state = "raider-wastehound"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list("tier" = 3, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 0)

/obj/item/clothing/head/helmet/f13/raider/wastehound/Initialize() //HQ parts reinforcement
	. = ..()
	AddComponent(/datum/component/armor_plate)



// ------------------------------------ ENCLAVE ----------------------------------------- //

/obj/item/clothing/head/helmet/f13/helmet/enclave/science
	name = "science beret"
	desc = "(I) Blue beret signifying the wearer is a Science Officer of the Enclave."
	icon_state = "hat_enclave_science"
	item_state = "hat_enclave_science"
	flags_inv = HIDEEARS|HIDEFACE
	flags_cover = null
	dynamic_hair_suffix = ""
	armor = list("tier" = 1)
