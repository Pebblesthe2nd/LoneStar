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


//SIGNS
/obj/structure/signs
	icon = 'icons/fallout/module_riverton/decals/signs.dmi'
	icon_state = "memorial"
	desc = "A sign."
	anchored = TRUE
	opacity = 0
	density = FALSE
	plane = ABOVE_WALL_PLANE
	layer = SIGN_LAYER
	max_integrity = 100

//Waterfront Mall Signs
/obj/structure/signs/waterfront
	name = "Waterfront Mall"
	color = "#b7bcf7"

/obj/structure/signs/waterfront/office
	icon_state = "vault_admin"
	name = "Managers office."

/obj/structure/signs/waterfront/restroom
	icon_state = "vault_toilet"
	name = "restroom sign"

/obj/structure/signs/waterfront/sportsstore
	icon_state = "vault_store"
	name = "Sports goods"

/obj/structure/signs/waterfront/janitor
	name = "Janitorial"
	icon_state = "vault_maint"

/obj/structure/signs/waterfront/store
	name = "Supermarket"
	icon_state = "vault_store"

/obj/structure/signs/waterfront/store/clothes
	icon_state = "vault_store"
	name = "Clothing store"

/obj/structure/signs/waterfront/store/pet
	name = "Pet shop"
	icon_state = "vault_store"

/obj/structure/signs/waterfront/store/hardware
	name = "Hardware store"
	icon_state = "vault_store"

/obj/structure/signs/waterfront/mallcop
	name = "Mall cop office"
	icon_state = "vault_guard"

/obj/structure/signs/waterfront/arcade
	name = "Arcade"
	icon_state = "vault_arcade"

/obj/structure/signs/waterfront/diner
	name = "Mall diner"
	icon_state = "vault_diner"

//McKinley Junior High signs
/obj/structure/signs/school
	name = "McKinley Junior High"
	icon_state = "school"

/obj/structure/signs/school/teacher
	name = "teachers room"
	icon_state = "school_teacher"

/obj/structure/signs/school/restroom
	name = "restrooms"
	icon_state = "school_toilet"

/obj/structure/signs/school/classroom
	name = "classroom"
	icon_state = "school_class"

/obj/structure/signs/school/classroom/lab
	icon_state = "school_lab"

/obj/structure/signs/school/mess
	name = "school cafeteria"
	icon_state = "school_mess"

/obj/structure/signs/school/gym
	name = "school gym hall"
	icon_state = "school_gym"

//National Guard signs
/obj/structure/signs/national
	name = "Fort Kanawha"
	desc = "Home of the 5th National Guard Engineer Batallion";
	color = "#adb794"

/obj/structure/signs/national/depot
	name = "National Guard depot no. 241"
	desc = "restricted area"

//Thermo-Electric Plant signs
/obj/structure/signs/powerplant
	name = "St. Albans thermo-electric power plant"
	color = "#f47373"

/obj/structure/signs/powerplant/lounge
	name = "Lounge"
	icon_state = "vault_lounge"

/obj/structure/signs/powerplant/tech
	name = "Tech"
	icon_state = "vault_tech"

/obj/structure/signs/powerplant/office
	name = "Office"
	icon_state = "vault_office"

/obj/structure/signs/powerplant/toilet
	name = "Toilet"
	icon_state = "vault_toilet"

/obj/structure/signs/powerplant/guard
	name = "Guard"
	icon_state = "vault_guard"

/obj/structure/signs/powerplant/dorms
	name = "Dorms"
	icon_state = "vault_dorm"

/obj/structure/signs/powerplant/dorms
	name = "Dorms"
	icon_state = "vault_dorm"


//DECORATION
/obj/structure/decoration/menu
	icon = 'icons/fallout/decals/walldecoration.dmi'
	icon_state = "menu"
	desc = "Ask for the special of the day. Probably more fish."
