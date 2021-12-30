//Riverton clothing file. -Pebbles


//Old World Army clothing
// ----------------------------

/obj/item/clothing/under/f13/army
	name = "US Army enlisted uniform"
	desc = "Standard issue uniform for the pre-war army."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "army_uniform"
	item_state = "army_uniform"

/obj/item/clothing/under/f13/army/officer
	name = "US Army officer's uniform"
	desc = "Standard issue uniform for the pre-war army."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "army_officer"
	item_state = "army_officer"

/obj/item/clothing/under/f13/army/nationalguard
	name = "National Guard uniform"
	desc = "Military clothing."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "army_uniform"
	item_state = "army_uniform"

/obj/item/clothing/under/f13/army/nationalguard/officer
	name = "National Guard officer's uniform"
	desc = "Military clothing."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "army_officer"
	item_state = "army_officer"

/obj/item/clothing/under/f13/army/utility
	name = "US Army utility overall"
	desc = "Olive lightweight overall with white markings."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "army_engineer"
	item_state = "army_engineer"

//Old World Army clothing
/obj/item/clothing/head/armycap
	name = "US Army field cap"
	desc = "Standard issue US Army field cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_cap"
	item_state = "army_cap"
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/head/armycap/officer
	name = "US Army officer's cap"
	desc = "Standard issue US Army officer's cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_officer"
	item_state = "army_officer"
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/head/armycap/nationalguard
	name = "National Guard field cap"
	desc = "(III) Standard issue national guard field cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_cap"
	item_state = "army_cap"
	armor = list("tier" = 3, "energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/head/armycap/nationalguard/officer
	name = "National Guard officer's cap"
	desc = "(III) Standard issue national guard officer's cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_officer"
	item_state = "army_officer"
	armor = list("tier" = 3, "energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0)
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/mask/whitefacemakeup
	name = "white face makeup"
	desc = "Face makeup made from zink-based paste, very white, and some rouge. Looks terrifying."
	icon = 'icons/fallout/clothing/masks.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/mask.dmi'
	icon_state = "whiteface"
	item_state = "whiteface"
	w_class = WEIGHT_CLASS_TINY
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0,"energy" = 0, "bomb" = 0, "bio" = 25, "rad" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/mask/balaclava/merc
	desc = "keeps you warm and makes it harder for witnesses to tell who did what."
	mob_overlay_icon = 'icons/fallout/onmob/clothes/mask.dmi'


/obj/item/clothing/under/f13/talonuniform
	name = "camouflage clothing"
	desc = "Inspired by pre-war hunting clothing, this rugged uniform is popular with mercenaries."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "merc_camo"
	item_state = "merc_camo"


/obj/item/clothing/under/f13/flannelshirt
	name = "durable flannel outfit"
	desc = "A dark flannel shirt worn with a pair of slim-fitting jeans. "
	icon_state = "darkflannel"
	item_state = "darkflannel"
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'

/obj/item/clothing/under/f13/bosremnant
	name = "old battledress uniform"
	desc = "An old and slightly worn version of the Battledress Uniform issued to members of the Brotherhood of Steel."
	icon_state = "bdu"
	item_state = "xenos_suit"
	item_color = "bdu"
	can_adjust = TRUE

//ENCLAVE PEACEKEEPERS

/obj/item/clothing/under/f13/enclave
	name = "US Army Battle Dress Uniform"
	desc = "A Post-war iteration of the standard US Army uniform utilised by the Enclave, featuring a basic Khaki overcoat & trousers over a black turtleneck."
	icon = 'icons/fallout/clothing/uniforms.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/uniform.dmi'
	icon_state = "uniform_enclave_peacekeeper"
	item_state = "uniform_enclave_peacekeeper"

/obj/item/clothing/under/f13/enclave/science
	name = "science officer uniform"
	desc = "Off-white military style uniform for scientists."
	icon_state = "uniform_enclave_science"
	item_state = "uniform_enclave_science"

/obj/item/clothing/under/f13/enclave/officer
	name = "officer uniform"
	desc = "Khaki officers uniform with gold trimming over a black turtleneck."
	icon_state = "uniform_enclave_officer"
	item_state = "uniform_enclave_officer"

/obj/item/clothing/under/f13/enclave/intel
	name = "Intel Specialist Uniform"
	desc = "Dark pants and turtleneck with hidden kevlar layers, since intel officers often carry light armor."
	icon_state = "uniform_enclave_intel"
	item_state = "uniform_enclave_intel"


/obj/item/clothing/under/f13/chaplain
	name = "Chaplain outfit"
	desc = "Apparel of a religious priest, or minister of sorts."
	icon_state = "chapblack"
	item_state = "chapblack"
	item_color = "chapblack"

/obj/item/clothing/under/f13/machinist
	name = "machinist bodysuit"
	desc = "Apparel of an old-time machinist."
	icon_state = "machinist"
	item_state = "machinist"
	item_color = "machinist"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 20, "acid" = 50)
