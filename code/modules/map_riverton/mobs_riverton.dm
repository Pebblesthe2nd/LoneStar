//Riverton mobs file. -Pebbles

/////////////////////////////////////
// 15th National Guard Batallion (Virginia or whatever)
/////////////////////////////////////

// MUTANT SOLDIER
/mob/living/simple_animal/hostile/supermutant/nationalguard
	name = "super mutant soldier"
	desc = "A huge mutant in ripped military clothing. To dumb to use tools it seems."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "mutant_private"
	icon_living = "mutant_private"
	icon_dead = "mutant_private"
	speak = list("GRRRRRR!", "YAS SHIRR!", "NNNNNGH!", "HMPH!", "ARRRRR!")

// MUTANT ENGINEER
/mob/living/simple_animal/hostile/supermutant/nationalguard/engineer
	name = "super mutant engineer"
	desc = "A ugly mutant in ripped engineer overalls, holding a tank track wrench."
	icon_state = "mutant_engineer"
	icon_living = "mutant_engineer"
	icon_dead = "mutant_engineer"
	maxHealth = 325
	health = 325
	force_threshold = 15
	melee_damage_lower = 45
	melee_damage_upper = 65
	attack_sound = "hit_swing"
	speak = list("ME FIX!", "YAS SIRR!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	loot = list(/obj/item/twohanded/sledgehammer/tankwrench)

// MUTANT NCO
/mob/living/simple_animal/hostile/supermutant/nationalguard/nco
	name = "super mutant NCO"
	desc = "A hulking mutant, bit less ragtag than the others, and wielding a beat up old military rifle."
	icon_state = "mutant_NCO"
	icon_living = "mutant_NCO"
	icon_dead = "mutant_NCO"
	ranged = 1
	maxHealth = 340
	health = 340
	retreat_distance = 2
	minimum_distance = 5
	rapid = 2
	projectiletype = /obj/item/projectile/bullet/a556
	projectilesound = 'sound/f13weapons/varmint_rifle.ogg'
	speak = list("TEN SHUT!", "BOOT NEED POLISH!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	loot = list(/obj/item/ammo_box/a556)

/mob/living/simple_animal/hostile/supermutant/nationalguard/nco/Aggro()
	..()
	summon_backup(12)
	say("Squaaaaddd! Attack!!")

// MUTANT ELITE
/mob/living/simple_animal/hostile/supermutant/nationalguard/elite
	name = "elite mutant soldier"
	desc = "A mutant that retains much of its intelligence,  armor and laser weapons."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "mutant_elite"
	icon_living = "mutant_elite"
	icon_dead = "mutant_elite"
	ranged = 1
	maxHealth = 400
	health = 400
	force_threshold = 30
	melee_damage_lower = 45
	melee_damage_upper = 55
	attack_verb_simple = "smashes"
	attack_sound = "punch"
	retreat_distance = 2
	minimum_distance = 5
	projectiletype = /obj/item/projectile/beam/laser/wattz2k
	projectilesound = 'sound/f13weapons/aer9fire.ogg'
	loot = list(/obj/item/stock_parts/cell/ammo/mfc)
	ranged_cooldown_time = 20
	check_friendly_fire = 1
	speak = list("COMMINIST!", "RELOADINGGG! GRRR!", "NNNNNGH!", "HMPH!", "FLANK-KING")

/mob/living/simple_animal/hostile/supermutant/nationalguard/elite/Aggro()
	..()
	summon_backup(12)


// ARMY ASSAULTRON
/mob/living/simple_animal/hostile/handy/assaultron/stealth
	alpha = 80

/mob/living/simple_animal/hostile/handy/assaultron/stealth/nationalguard
	aggro_vision_range = 12
	faction = list("hostile", "supermutant")

/mob/living/simple_animal/hostile/handy/assaultron/stealth/Aggro()
	..()
	summon_backup(8)
	alpha = 255

/mob/living/simple_animal/hostile/handy/gutsy/nationalguard
	name = "private Gutsy"
	icon_state = "pvtgutsy"
	icon_living = "pvtgutsy"
	melee_damage_type = BURN
	icon_dead = "gib6"
	aggro_vision_range = 12
	faction = list("hostile", "supermutant")
	obj_damage = 300


/mob/living/simple_animal/hostile/handy/gutsy/nationalguard/flamer
	desc = "Military combat robot with a terrifying heavy flamethrower and a circular saw."
	icon_state = "pvtgutsyflamer"
	icon_living = "pvtgutsyflamer"
	extra_projectiles = 1
	rapid = 6
	rapid_fire_delay = 0.5 
	emote_taunt = list("raises its flamer")
	melee_damage_type = BRUTE
	melee_damage_lower = 28
	melee_damage_upper = 28 
	projectilesound = 'sound/weapons/flamethrower.ogg'
	projectiletype = /obj/item/projectile/incendiary/flamethrower
	attack_verb_simple = "saws"
	attack_sound = 'sound/f13npc/handy/attack.wav'


////////////////
// MAMAS BOYS // 
////////////////

//bootleg Rotgut makers and purveyors of ghetto fight rings. Love a good fistfight, and usually wear galoshes to not get the feet melted off in the toxic sludge where they live.
// Pretty good stats but no guns, and vulnerable to unarmed combat, live by the fist, uh, die by the fist?

/mob/living/simple_animal/hostile/ghoul/mamasboys
	name = "worker ghoul"
	desc = "A sentient ghoul, but involved in shady dealings and not very friendly."
	icon = 'icons/fallout/mobs/npc/mobnpc.dmi'
	icon_state = "ghoul_worker"
	icon_living = "ghoul_worker"
	icon_dead = "ghoul_worker_dead"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	dextrous = TRUE
	robust_searching = 0
	turns_per_move = 5
	emote_see = list("spits on the ground")
	speak = list("Nothin' personal kid.","You'll regret this.","Crap...","Thought you could steal stuff while I wasn't looking?","Tough luck pinkskin.");
	speak_chance = 10;
	speak_emote = list("wheezes");
	a_intent = INTENT_HARM
	maxHealth = 130
	health = 130
	speed = 0.2
	obj_damage = 100
	harm_intent_damage = 35 // live by the fist, die by the fist
	melee_damage_lower = 20
	melee_damage_upper = 35
	del_on_death = 0
	attack_verb_simple = "punches hard"
	attack_sound = 'sound/weapons/cqchit1.ogg'
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	faction = list("raider")
	decompose = FALSE
	sharpness = SHARP_NONE
	death_sound = 'sound/voice/scream/scream_m1.ogg'

/mob/living/simple_animal/hostile/ghoul/mamasboys/bruiser
	name = "bruiser ghoul"
	desc = "Experienced pit fighter, this ghoul is massive and got scraggly beard, and sappers on his hands."
	icon_state = "ghoul_bruiser"
	icon_living = "ghoul_bruiser"
	icon_dead = "ghoul_bruiser_dead"
	loot = list(/obj/item/melee/unarmed/sappers)
	maxHealth = 250
	health = 250
	speed = 0.3
	obj_damage = 200
	melee_damage_lower = 40
	melee_damage_upper = 50
	attack_verb_simple = "uppercuts"
	attack_sound = 'sound/weapons/cqchit2.ogg'

/mob/living/simple_animal/hostile/ghoul/mamasboys/mama
	name = "Mama Mulligan"
	desc = "Female ghoul with a nice wig and some impressive kicking skills."
	icon_state = "mama_mulligan"
	icon_living = "mama_mulligan"
	icon_dead = "mama_mulligan_dead"
	maxHealth = 350
	health = 350
	speed = 0.25
	obj_damage = 200
	melee_damage_lower = 40
	melee_damage_upper = 50
	dodging = TRUE
	approaching_target = TRUE
	in_melee = TRUE
	dodge_prob = 30
	sidestep_per_cycle = 2
	rapid_melee = 2
	speak = list("Nothin' personal darling.","I'll use your hair for my next wig, I think.","Fight me with your fists if you dare.");
	attack_verb_simple = "kicks"
	death_sound = 'sound/voice/scream/scream_f3.ogg'
	loot = list(/obj/item/book/granter/martial/krav_maga)

/mob/living/simple_animal/hostile/ghoul/mamasboys/mama/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(50))
		return ..()
	else
		visible_message("<span class='danger'>[src] dodges [Proj]!</span>")
		return 0


////////////
// SKULLS //
////////////

/mob/living/simple_animal/hostile/raider/skull
	name = "Skulls hangaround"
	desc = "Want to join the gang but haven't killed enough people yet, sniffs glue in their spare time. You might be their ticket in."
	icon_state = "skulls"
	icon_living = "skulls"
	icon_dead = "skulls_dead"
	loot = list(/obj/effect/spawner/lootdrop/f13/npcdrop/skulls)

/mob/living/simple_animal/hostile/raider/skull/Aggro()
	..()
	summon_backup(12)
	say("Gnnh...head hurts..wait...you ain't one of the boys...you done goofed!")


/mob/living/simple_animal/hostile/raider/skull/ranged
	name = "Skulls member"
	desc = "Full member of the gang called the Skulls. Permanent state of aggression due to glue sniffing and head trauma."
	icon_state = "skullsmember"
	icon_living = "skullsmember"
	icon_dead = "skullsmember_dead"
	maxHealth = 120
	health = 120
	ranged = 1
	retreat_distance = 3
	minimum_distance = 3
	loot = list(/obj/effect/spawner/lootdrop/f13/npcdrop/skulls/member)
	projectiletype = /obj/item/projectile/bullet/c10mm
	projectilesound = 'sound/f13weapons/10mm_fire_02.ogg'


/mob/living/simple_animal/hostile/raider/skull/boss
	name = "Esteban the Killer"
	desc = "Leader of the independent gang called the Skulls. Got a macho image and low impulse control."
	icon_state = "skullsboss"
	icon_living = "skullsboss"
	icon_dead = "skullsboss_dead"
	maxHealth = 190
	health = 190
	ranged = 1
	retreat_distance = 3
	minimum_distance = 4
	extra_projectiles = 3
	loot = list(/obj/effect/spawner/bundle/weapon/worn10mmsmg, /obj/effect/spawner/lootdrop/f13/npcdrop/skulls/boss)
	projectiletype = /obj/item/projectile/bullet/c10mm
	projectilesound = 'sound/weapons/gunshot.ogg'

/mob/living/simple_animal/hostile/raider/skull/boss/Aggro()
	..()
	summon_backup(15)
	say("You DARE disrespect me!? Hijo de puta! Time to die!")


/////////////
// LURKERS //
/////////////

/mob/living/simple_animal/hostile/raider/lurkers/club/Aggro()
	..()
	summon_backup(12)
	say("Duzman! Keeli!")

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar/Aggro()
	..()
	say("Gabba he sheeni!")

/mob/living/simple_animal/hostile/raider/lurker/chieftain/Aggro()
	..()
	summon_backup(15)
	say("Faga di mutti!!")

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar
	name = "Lurkers beggar"
	desc = "The Lurkers tribe are very violent to outsiders and speak a homebrew language, making peaceful interactions difficult."
	icon_state = "lurkersbeggar"
	icon_living = "lurkersbeggar"
	icon_dead = "lurkersbeggar_dead"
	del_on_death = 0
	loot = null

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar/fem
	icon_state = "lurkersbeggarfem"
	icon_living = "lurkersbeggarfem"
	icon_dead = "lurkersbeggarfem_dead"
	death_sound = 'sound/voice/scream/scream_f3.ogg'

/mob/living/simple_animal/hostile/raider/lurkers
	name = "Lurkers tribal"
	desc = "The Lurkers tribe are very violent to outsiders and speak a homebrew language, making peaceful interactions difficult."
	icon_state = "lurkers"
	icon_living = "lurkers"
	icon_dead = "lurkers_dead"
	retreat_distance = 0
	minimum_distance = 0
	melee_damage_lower = 40
	melee_damage_upper = 40
	healable = 1
	loot = list(/obj/item/reagent_containers/food/snacks/grown/broc)
	death_sound = 'sound/voice/scream/scream_m1.ogg'

/mob/living/simple_animal/hostile/raider/lurkers/club
	name = "Lurkers clubman"
	icon_state = "lurkersmember"
	icon_living = "lurkersmember"
	icon_dead = "lurkersmember_dead"
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/item/stack/ore/silver = 10)

/mob/living/simple_animal/hostile/raider/lurkers/gunner
	name = "Lurkers tribal gunner"
	icon_state = "lurkersshotty"
	icon_living = "lurkersshotty"
	icon_dead = "lurkersshotty_dead"
	ranged = 1
	maxHealth = 120
	health = 120
	retreat_distance = 3
	minimum_distance = 4
	loot = list(/obj/item/ammo_box/shotgun/improvised)
	projectiletype = /obj/item/projectile/bullet/shotgun_slug
	projectilesound = 'sound/f13weapons/shotgun.ogg'

/mob/living/simple_animal/hostile/raider/lurker/shaman
	name = "Lurkers shaman"
	desc = "The Lurkers shamans are old but strong and armed with a looted Ripper."
	icon_state = "lurkersshaman"
	icon_living = "lurkersshaman"
	icon_dead = "lurkersshaman_dead"
	maxHealth = 340
	health = 340
	speed = 1.2
	obj_damage = 300
	aggro_vision_range = 14
	attack_verb_simple = "rends"
	attack_sound = 'sound/weapons/chainsawhit.ogg'
	loot = list(/obj/item/melee/powered/ripper, /obj/item/reagent_containers/pill/patch/bitterdrink = 1)


/mob/living/simple_animal/hostile/raider/lurker/chieftain
	name = "Lurkers chieftain"
	desc = "The Lurkers chieftains are usually very short and stocky for some reason."
	icon_state = "lurkerschief"
	icon_living = "lurkerschief"
	icon_dead = "lurkerschief_dead"
	projectiletype = /obj/item/projectile/bullet/shotgun_slug
	projectilesound = 'sound/f13weapons/shotgun.ogg'
	ranged = 1
	maxHealth = 400
	health = 400
	speed = 1
	obj_damage = 200
	aggro_vision_range = 14
	retreat_distance = 1
	minimum_distance = 2
	loot = list(/obj/item/gun/ballistic/shotgun/automatic/combat/auto5, /obj/item/clothing/head/f13/hairband)


/////////////////
// UNIQUE NCPS //
/////////////////

/mob/living/simple_animal/hostile/raider/unique/gourmet
	name = "The Aspiring Chef"
	desc = "Corpulent and jovial, too bad Mr. Gourmet is a merciless murderer and cannibal."
	icon_state = "gourmet"
	icon_living = "gourmet"
	icon_dead = "gourmet_dead"
	maxHealth = 280
	health = 280
	speed = 2
	ranged = 1
	retreat_distance = 1
	minimum_distance = 2
	extra_projectiles = 3
	projectiletype = /obj/item/projectile/bullet/c10mm
	loot = list(/obj/item/gun/ballistic/automatic/smg/smg10mm/worn, /obj/item/melee/onehanded/knife/cosmic)
	projectilesound = 'sound/f13weapons/10mm_fire_03.ogg'
	idlesound = list('sound/health/hunger1.ogg')

/mob/living/simple_animal/hostile/raider/unique/gourmet/Aggro()
	..()
	say("Wonderful! You will go perfectly with the Chianti. Enchanté!")


/mob/living/simple_animal/hostile/raider/unique/hammertime
	name = "Hammertime"
	desc = "Pale and gaunt, plagued by tics, and a massive Turbo abuser. Hammertime lies in bed all day and only gets up to look for a fix, or to brain passers-by, hoping to rob their corpses. He then sells the corpses to the Gourmet. Good relations with your neighbours are important "
	icon_state = "hammertime"
	icon_living = "hammertime"
	icon_dead = "hammertime_dead"
	maxHealth = 220
	health = 220
	environment_smash = 1
	wander = 1
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/item/clothing/head/helmet/f13/motorcycle, /obj/item/twohanded/sledgehammer)

/mob/living/simple_animal/hostile/raider/unique/hammertime/Aggro()
	..()
	say("Got any caps? Eh, never mind, I'll just search your corpse.")

/obj/effect/mob_spawn/human/corpse/raider
	name = "Raider"
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/raider/iconoclast
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/leather
	head = /obj/item/clothing/head/helmet/f13/firefighter


/mob/living/simple_animal/hostile/handy/sentrybot
	name = "sentry bot"
	desc = "A pre-war military robot armed with a deadly gatling laser and covered in thick armor plating."
	icon_state = "sentrybot"
	icon_living = "sentrybot"
	icon_dead = "sentrybot"
	health = 280
	maxHealth = 280
	melee_damage_lower = 48
	melee_damage_upper = 72
	extra_projectiles = 4 //5 projectiles
	ranged_cooldown_time = 12 //brrrrrrrrrrrrt
	stat_attack = UNCONSCIOUS
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	del_on_death = FALSE
	attack_verb_simple = "pulverizes"
	attack_sound = 'sound/weapons/punch1.ogg'
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/pistol/ultraweak
	faction = list("wastebot")
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/five, /obj/item/stock_parts/cell/ammo/mfc)
	var/warned = FALSE

	emote_taunt_sound = list('sound/f13npc/sentry/taunt1.ogg', 'sound/f13npc/sentry/taunt2.ogg', 'sound/f13npc/sentry/taunt3.ogg', 'sound/f13npc/sentry/taunt4.ogg', 'sound/f13npc/sentry/taunt5.ogg', 'sound/f13npc/sentry/taunt6.ogg')
	emote_taunt = list("spins its barrels")

	aggrosound = list('sound/f13npc/sentry/aggro1.ogg', 'sound/f13npc/sentry/aggro2.ogg', 'sound/f13npc/sentry/aggro3.ogg', 'sound/f13npc/sentry/aggro4.ogg', 'sound/f13npc/sentry/aggro5.ogg')
	idlesound = list('sound/f13npc/sentry/idle1.ogg', 'sound/f13npc/sentry/idle2.ogg', 'sound/f13npc/sentry/idle3.ogg', 'sound/f13npc/sentry/idle4.ogg')
