/*Common East Coast hostile critters
- Radroach			/mob/living/simple_animal/hostile/radroacheast
	Weak brute force critter, nothing special except it breeds with meat around.
- Ghoul Rotter		/mob/living/simple_animal/hostile/ghoulrotter
	Just trying to make a new ghoul sprite thats less ass
- Bloatfly			/mob/living/simple_animal/hostile/bloatflyeast
	Supposed to be fast and spit weak attacks, more annoyance. NOT cazador 2.0.
- Molerat			/mob/living/simple_animal/hostile/molerat
	Put it here and there.
- Mirelurk			/mob/living/simple_animal/hostile/mirelurk
	Pretty tough and near water
- Mirelurk baby		/mob/living/simple_animal/hostile/mirelurk/baby
- Skolf				/mob/living/simple_animal/hostile/skolf
	Packs, pretty deadly to lightly armored people, dont place in low threat areas. Sort of glass cannons?

Uncommon critters
- Radscorpion		/mob/living/simple_animal/hostile/radscorpioneast
	Dont map any in, keep for events. Very rare east side.
- Giant Ant			/mob/living/simple_animal/hostile/giantanteast
	Pack animals, aggressive. Tougher Skolfs.
- Yao Guai 			/mob/living/simple_animal/hostile/yaoguai
	Really tough beast packing a punch. Must be dangerous to PA people.
- Aradnid			/mob/living/simple_animal/hostile/aradnid
	Injects rads. Only map near toxic sites.
- Centaur			/mob/living/simple_animal/hostile/centaur
	Cause they are cute
- Scolopendra		/mob/living/simple_animal/hostile/scolopendra
	Tunnel critter, very fast, modest brute, high toxin damage, decently tough. Supposed to make narrow tunnels scary.

Stuff not supposed to be in East coast (to differentiate, give flavour. Less is more. Don't listen to Bethesda.)
- Cazador
- Fireants
- Feral dog (Coyotes)
- Geckos
- Nightstalkers

General thoughts: More traits possible to add? Like resists to energy weapons/ballistics? Armor so AP is useful? Ability
to produce smoke or slow down victims? Stuff like that added to a couple would be fun.
*/


/mob/living/simple_animal/hostile/mirelurk
	name = "mirelurk"
	desc = "A giant mutated crustacean with a rock-hard exo-skeleton and a endless hunger."
	icon = 'icons/fallout/mobs/animals/mirelurk.dmi'
	icon_state = "mirelurk"
	icon_living = "mirelurk"
	icon_dead = "mirelurk_d"
	speed = 1
	icon_gib = "gib"
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk = 2, /obj/item/stack/sheet/sinew = 1)
	maxHealth = 190
	health = 190
	melee_damage_lower = 18
	melee_damage_upper = 35
	blood_volume = 0

/mob/living/simple_animal/hostile/mirelurk/ancient
	name = "ancient mirelurk"
	desc = "A giant mutated crustacean, this one is scarred and looks ancient, larger than its younger kin."
	icon_state = "mirelurk_ancient"
	icon_living = "mirelurk_ancient"
	speed = 1.2
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk = 3, /obj/item/stack/sheet/sinew = 1)
	maxHealth = 280
	health = 280
	melee_damage_lower = 23
	melee_damage_upper = 40
	gold_core_spawnable = HOSTILE_SPAWN

/mob/living/simple_animal/hostile/mirelurk/baby
	name = "mirelurk baby"
	desc = "A neophyte mirelurk baby, mostly harmless."
	icon_state = "mirelurkbaby"
	icon_living = "mirelurkbaby"
	icon_dead = "mirelurkbaby_d"
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/mirelurk = 1)
	speed = 0.9
	maxHealth = 50
	health = 50
	melee_damage_lower = 5
	melee_damage_upper = 10

/mob/living/simple_animal/hostile/mirelurk/baby/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/mirelurk/baby/Aggro()
	..()
	summon_backup(10)

/obj/structure/mirelurkegg
	name = "mirelurk eggs"
	desc = "A fresh clutch of mirelurk eggs."
	icon = 'icons/mob/wastemobsdrops.dmi'
	icon_state = "mirelurkeggs"
	density = 1
	anchored = 0


// Uncommon beasts

/mob/living/simple_animal/hostile/radscorpioneast
	name = "Radscorpion"
	desc = "A mutated arthropod with an armored carapace and a powerful sting."
	icon = 'icons/fallout/mobs/hostile_general.dmi'
	icon_state = "radscorpion_blue"
	icon_living = "radscorpion_blue"
	icon_dead = "radscorpion_blue_dead"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results  = list(/obj/item/reagent_containers/food/snacks/meat/slab/radscorpion_meat = 2)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 2)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	taunt_chance = 30
	speed = 1.25
	maxHealth = 150
	health = 150
	harm_intent_damage = 8
	obj_damage = 20
	melee_damage_lower = 35
	melee_damage_upper = 35
	a_intent = INTENT_HARM
	attack_verb_simple = "stings"
	attack_sound = 'sound/creatures/radscorpion_attack.ogg'
	speak_emote = list("hisses")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("radscorpion")
	gold_core_spawnable = HOSTILE_SPAWN
	var/scorpion_color = "radscorpion" //holder for icon set
	var/list/icon_sets = list("radscorpion", "radscorpion_blue", "radscorpion_black")
	blood_volume = 0
	emote_taunt = list("snips")
	emote_taunt_sound = list('sound/f13npc/scorpion/taunt1.ogg', 'sound/f13npc/scorpion/taunt2.ogg', 'sound/f13npc/scorpion/taunt3.ogg')

	aggrosound = list('sound/f13npc/scorpion/aggro.ogg', )
	idlesound = list('sound/creatures/radscorpion_snip.ogg', )

	death_sound = 'sound/f13npc/scorpion/death.ogg'


/mob/living/simple_animal/hostile/radscorpioneast/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent(/datum/reagent/toxin, 5)

/mob/living/simple_animal/hostile/giantanteast
	name = "Giant Ant"
	desc = "A large mutated insect that finds its way everywhere."
	icon = 'icons/fallout/mobs/hostile_general.dmi'
	icon_state = "ant"
	icon_living = "ant"
	icon_dead = "ant_dead"
	icon_gib = "gib"
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/stack/sheet/sinew = 1, /obj/item/reagent_containers/food/snacks/meat/slab/ant_meat = 2)
	butcher_results = list(/obj/item/stack/sheet/animalhide/chitin = 1)
	butcher_difficulty = 1.5
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "hits"
	emote_taunt = list("chitters")
	emote_taunt_sound = 'sound/creatures/radroach_chitter.ogg'
	taunt_chance = 30
	speed = 1.5
	maxHealth = 160
	health = 160
	harm_intent_damage = 8
	obj_damage = 20
	melee_damage_lower = 20
	melee_damage_upper = 25
	attack_verb_simple = "stings"
	attack_sound = 'sound/creatures/radroach_attack.ogg'
	speak_emote = list("skitters")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("ant")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM
	decompose = TRUE
	blood_volume = 0

/mob/living/simple_animal/hostile/giantanteast/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/giantanteast/Aggro()
	..()
	summon_backup(10)



/*
/mob/living/simple_animal/hostile/scolopendra
	name = "Scolopendra"
	desc = "The clicking of chitin and multitudes of legs is all you hear before the huge centipede rushes in to catch its prey."
	icon = 'icons/fallout/mobs/animals/scolopendra.dmi'
	icon_state = "scolopendra"
	icon_living = "scolopendra"
	icon_dead = "scolopendra_dead"
	icon_gib = null
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak_chance = 0
	turns_per_move = 5
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4, /obj/item/stack/sheet/sinew = 2, /obj/item/stack/sheet/bone = 2)
	butcher_results = list(/obj/item/clothing/head/f13/stalkerpelt = 1)
	butcher_difficulty = 3
	response_help_simple = "pets"
	response_disarm_simple = "gently pushes aside"
	response_harm_simple = "bites"
	emote_taunt = list("growls")
	taunt_chance = 30
	speed = 4
	maxHealth = 300
	health = 300
	harm_intent_damage = 8
	obj_damage = 15
	melee_damage_lower = 15
	melee_damage_upper = 25
	attack_verb_simple = "bites"
	attack_sound = 'sound/creatures/nightstalker_bite.ogg'
	speak_emote = list("growls")
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	faction = list("gecko")
	gold_core_spawnable = HOSTILE_SPAWN
	a_intent = INTENT_HARM


/mob/living/simple_animal/hostile/scolopendra/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.reagents.add_reagent(/datum/reagent/toxin, 20)
*/
