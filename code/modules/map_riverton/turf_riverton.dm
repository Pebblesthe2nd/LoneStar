//Riverton turf file. -Pebbles


/turf/open/indestructible/ground/outside/road/crossing
	name = "road"
	icon_state = "cross1"

/turf/open/indestructible/ground/outside/road/crossing/alt
	icon_state = "cross2"

/turf/open/indestructible/ground/outside/road/crossing/alttwo
	icon_state = "cross3"

/turf/open/indestructible/ground/outside/road/crossing/vertical
	icon_state = "crosswalkvert1"

/turf/open/indestructible/ground/outside/road/crossing/verticaltwo
	icon_state = "crosswalkvert2"

/turf/open/indestructible/ground/outside/road/crossing/verticalthree
	icon_state = "crosswalkvert3"

//dark road thats dirtmerged
/turf/open/indestructible/ground/outside/roaddirt
	name = "road"
	icon_state = "innermiddle"
	icon = 'icons/fallout/turfs/asphaltdirt.dmi'

/turf/open/indestructible/ground/outside/roaddirt/hole
	icon_state = "hole"


//lighter road, dirtmerged
/turf/open/indestructible/ground/outside/road_dirt
	name = "road"
	icon_state = "innermiddle"
	icon = 'icons/fallout/turfs/asphaltdirt.dmi'

//Turf smoothening
/obj/effect/overlay/turfs
	name = "asphalt overlay"
	icon = 'icons/fallout/module_riverton/turfs/smoothing.dmi'
	icon_state = "asphalt_side"
	density = FALSE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	plane = FLOOR_PLANE
	layer = ABOVE_OPEN_TURF_LAYER
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE

/obj/effect/overlay/turfs/sidewalk
	name = "sidewalk overlay"
	icon_state = "sidewalk_side"

/obj/effect/overlay/turfs/cliff
	name = "cliff overlay"
	icon_state = "cliff"

/obj/effect/overlay/turfs/cliff/alt
	icon_state = "cliffalt"

/obj/effect/overlay/turfs/cliff/corner
	icon_state = "cliff_corner"

/obj/effect/overlay/turfs/decoration
	name = "ruined housebase"
	icon = 'icons/fallout/module_riverton/turfs/turf_decoration.dmi'
	icon_state = "housebase1"

/obj/effect/overlay/turfs/decoration/fakecatwalk
	name = "catwalk"
	icon_state = "catwalk"

/obj/effect/overlay/turfs/decoration/manholewelded
	name = "manhole"
	icon_state = "manhole_closed"


//Old pipe overlay
/obj/effect/overlay/turfs/decoration/oldpipes
	name = "old pipes"
	desc = "Rusty old pipes."
	icon_state = "rustpipe"

/obj/effect/overlay/turfs/decoration/oldpipes/manifold
	icon_state = "rustpipe-manifold"

/obj/effect/overlay/turfs/decoration/oldpipes/manifold/fourway
	icon_state = "rustpipe-fourway"

/obj/effect/overlay/turfs/decoration/oldpipes/end
	icon_state = "rustpipe-end"

/obj/effect/overlay/turfs/decoration/oldpipes/vent
	icon_state = "rustpipe-vent"

/obj/effect/overlay/turfs/decoration/oldpipes/valve
	icon_state = "rustpipe-valve"

/obj/effect/overlay/turfs/decoration/oldpipes/meter
	icon_state = "meter"

//Cliffedge turf
/turf/open/indestructible/ground/outside/dirt/cliffcorner
	icon_state = "dirtcliff_corner"


// ----------------- WOODEN FLOORS ------------------

//Baseturf
/turf/open/indestructible/woodenbase
	icon = 'icons/fallout/module_riverton/turfs/floor_wood.dmi'
	icon_state = "woodenbase"
	baseturfs = /turf/open/indestructible/woodenbase

// Dark Oak
/turf/open/floor/wooden
	icon = 'icons/fallout/module_riverton/turfs/floor_wood.dmi'
	icon_state = "darkoak1"
	baseturfs = /turf/open/indestructible/woodenbase

/turf/open/floor/wooden/broken
	icon_state = "darkoakbroken1"

/turf/open/floor/wooden/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/broken/outdoors
	sunlight_state = SUNLIGHT_SOURCE

// Oak
/turf/open/floor/wooden/oak
	icon_state = "oak1"

/turf/open/floor/wooden/oak/broken
	icon_state = "oakbroken1"

/turf/open/floor/wooden/oak/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oak/broken/outdoors
	sunlight_state = SUNLIGHT_SOURCE

// Maple
/turf/open/floor/wooden/maple
	icon_state = "maple1"


// Chestnut
/turf/open/floor/wooden/chestnut
	icon_state = "chestnut1"

/turf/open/floor/wooden/chestnut/broken
	icon_state = "chestnutbroken1"

/turf/open/floor/wooden/chestnut/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/chestnut/broken/outdoors
	sunlight_state = SUNLIGHT_SOURCE


// Oak stage
/turf/open/floor/wooden/oakstage
	icon_state = "stageoak_bl"

/turf/open/floor/wooden/oakstageb
	icon_state = "stageoak_b"

/turf/open/floor/wooden/oakstagebr
	icon_state = "stageoak_br"

/turf/open/floor/wooden/oakstagetl
	icon_state = "stageoak_tl"

/turf/open/floor/wooden/oakstagetr
	icon_state = "stageoak_tr"

/turf/open/floor/wooden/oakstaget
	icon_state = "stageoak_t"

/turf/open/floor/wooden/oakstager
	icon_state = "stageoak_r"

/turf/open/floor/wooden/oakstagel
	icon_state = "stageoak_l"

/turf/open/floor/wooden/oakstage/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstageb/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstagebr/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstagetl/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstagetr/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstaget/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstager/outdoors
	sunlight_state = SUNLIGHT_SOURCE

/turf/open/floor/wooden/oakstagel/outdoors
	sunlight_state = SUNLIGHT_SOURCE

// Laminate
/turf/open/floor/wooden/laminate
	icon_state = "laminateA"

/turf/open/floor/wooden/laminate/broken
	icon_state = "laminateAbroken1"

/turf/open/floor/wooden/laminatebig
	icon_state = "laminateB"

/turf/open/floor/wooden/laminatebig/broken
	icon_state = "laminateBbroken1"


/turf/open/floor/wooden/laminatediagonal
	icon_state = "laminateC"

/turf/open/floor/wooden/laminatediagonal/broken
	icon_state = "laminateCbroken1"


	/* GREEN TILES */

/turf/open/floor/plasteel/f13/vault_floor/green
	icon = 'icons/fallout/turfs/floors.dmi'
	icon_state = "greenfull"

/turf/open/floor/plasteel/f13/vault_floor/green/dirty
	icon_state = "greenfull"

/turf/open/floor/plasteel/f13/vault_floor/green/rusty
	icon_state = "greenrustyfull"

/turf/open/floor/plasteel/f13/vault_floor/green/solid
	icon_state = "greensolid"

/turf/open/floor/plasteel/f13/vault_floor/green/solid/dirty
	icon_state = "greendirtysolid"

/turf/open/floor/plasteel/f13/vault_floor/green/solid/rusty
	icon_state = "greenrustysolid"

/turf/open/floor/plasteel/f13/vault_floor/green/side
	icon_state = "green"

/turf/open/floor/plasteel/f13/vault_floor/green/side/dirty
	icon_state = "greendirty"

/turf/open/floor/plasteel/f13/vault_floor/green/side/rusty
	icon_state = "greenrusty"

/turf/open/floor/plasteel/f13/vault_floor/green/corner
	icon_state = "greencorner"

/turf/open/floor/plasteel/f13/vault_floor/green/corner/dirty
	icon_state = "greendirtycorner"

/turf/open/floor/plasteel/f13/vault_floor/green/corner/rusty
	icon_state = "greenrustycorner"

/turf/open/floor/plasteel/f13/vault_floor/green/corner/rustyoutside
	icon_state = "greenrustyfullgreencorner"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess
	icon_state = "greenchess"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess/dirty
	icon_state = "greendirtychess"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess/rusty
	icon_state = "greenrustychess"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess/greenchess2/dirty
	icon_state = "greendirtychess2"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess/greenchess2/rusty
	icon_state = "greenrustychess2"

/turf/open/floor/plasteel/f13/vault_floor/green/floorarrow
	icon_state = "greendir"

/turf/open/floor/plasteel/f13/vault_floor/green/floorarrow/dirty
	icon_state = "greendirtydir"

/turf/open/floor/plasteel/f13/vault_floor/green/boxmark
	icon_state = "greenmark"

/turf/open/floor/plasteel/f13/vault_floor/green/whitegreenfull
	icon_state = "whitegreenfull"

/turf/open/floor/plasteel/f13/vault_floor/green/white/side
	icon_state = "whitegreen"

/turf/open/floor/plasteel/f13/vault_floor/green/white/corner
	icon_state = "whitegreencorner"

/turf/open/floor/plasteel/f13/vault_floor/green/white/whitegreenchess
	icon_state = "whitegreenchess"

/turf/open/floor/plasteel/f13/vault_floor/green/white/whitegreenchess/whitegreenchess2
	icon_state = "whitegreenchess2"



/turf/open/floor/plating/tunnel
	name = "metal floor"
	icon_state = "tunneldirty"
	icon = 'icons/fallout/turfs/ground.dmi'
	baseturfs = /turf/open/indestructible/ground/inside/mountain

/turf/open/floor/plating/tunnel/rusty
	icon_state = "tunnelrusty"

/turf/open/floor/plating/tunnel/chess
	icon_state = "tunnelchess"

/turf/open/floor/plating/tunnel/chess2
	icon_state = "tunnelchess2"


/turf/open/water/toxic
	name = "toxic sludge"
	desc = "Water mixed with chemical. Smells like chemical burns and thinner."
	color = "#f4c7f9"
//	initial_gas_mix = "o2=20;n2=55;toxicfume=25;TEMP=325"
	slowdown = 10
	luminosity	= 3
//	var/defer_change = 1
