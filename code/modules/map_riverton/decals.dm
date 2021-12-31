//plaques and memorials

/obj/structure/sign/plaques
	name = "plaque"
	desc = "A plaque commemorating an event."
	icon_state = "atmosplaque"
	icon = 'icons/fallout/decals/walldecoration.dmi';

/obj/structure/sign/plaques/golden
	name = "The Most Robust Men Award for Robustness"
	desc = "To be Robust is not an action or a way of life, but a mental state. Only those with the force of Will strong enough to act during a crisis, saving friend from foe, are truly Robust. Stay Robust my friends."
	icon_state = "goldenplaque"

/obj/structure/sign/plaques/moonphoto
	name = "Space pioneers photo"
	desc = "A famous photo of men preparing to launch a mission into space."
	icon_state = "photo_moon"

/obj/structure/sign/plaques/painting/president
	name = "painting of the US president."
	desc = "A well dressed man in his early sixties, looking rather official."
	icon_state = "painting_president"

/obj/structure/sign/plaques/library
	name = "Library Rules Sign"
	desc = "A long list of rules to be followed when in the library, extolling the virtues of being quiet at all times and threatening those who dare eat food in here."
	icon_state = "kiddieplaque"

/obj/structure/sign/plaques/worldmap_left
	name = "ancient rotting map"
	desc = "Some sort of map."
	icon_state = "worldmap_left"

/obj/structure/sign/plaques/worldmap_right
	name = "ancient rotting map"
	desc = "Some sort of map."
	icon_state = "worldmap_right"


//Some pipe crap to put on the floor
/obj/effect/decal/oldpipes
	name = "old pipes"
	desc = "Rusty old pipes."
	icon = 'icons/fallout/decals/turf_decoration.dmi'
	icon_state = "rustpipe"
	density = FALSE
	mouse_opacity = MOUSE_OPACITY_OPAQUE

/obj/effect/decal/oldpipes/manifold
	icon_state = "rustpipe-manifold"

/obj/effect/decal/oldpipes/manifold/fourway
	icon_state = "rustpipe-fourway"

/obj/effect/decal/oldpipes/end
	icon_state = "rustpipe-end"

/obj/effect/decal/oldpipes/vent
	icon_state = "rustpipe-vent"

/obj/effect/decal/oldpipes/valve
	icon_state = "rustpipe-valve"

/obj/effect/decal/oldpipes/meter
	icon_state = "meter"
