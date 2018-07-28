/datum/species/human/gravworlder
	name = "Grav-Adapted Human"
	name_plural = "Grav-Adapted Humans"
	blurb = "Heavier and stronger than a baseline human, gravity-adapted people have \
	thick radiation-resistant skin with a high lead content, denser bones, and recessed \
	eyes beneath a prominent brow in order to shield them from the glare of a dangerously \
	bright, alien sun. This comes at the cost of mobility, flexibility, and increased \
	oxygen requirements to support their robust metabolism."
	icobase =     'icons/mob/human_races/species/human/subspecies/gravworlder_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/gravworlder_preview.dmi'
	health_hud_intensity = 3

	flash_mod =     0.9
	oxy_mod =       1.1
	radiation_mod = 0.5
	brute_mod =     0.85
	slowdown =      1

	spawn_flags = SPECIES_IS_RESTRICTED
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_GRAV | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR


/datum/species/human/spacer
	name = "Martian"
	name_plural = "Martians"
	blurb = "Humans born on Mars are taller than those on Earth but shorter then those born in the Belt, standing 1.5-2 meters tall, \
	and have slightly less brittle bones then Belters. \
	However, Martians also recover faster than Earthers after periods of high-G.\
	Martians are known for being stoic, loyal to fellow Martians and very judgemental of Earthers and Belters"
	icobase =     'icons/mob/human_races/species/human/subspecies/spacer_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/spacer_preview.dmi'

	oxy_mod =   0.8
	toxins_mod =   0.9
	flash_mod = 1.2
	brute_mod = 1.1
	burn_mod =  1.1
	darksight_range = 6
	darksight_tint = DARKTINT_MODERATE


	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_SPCR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

/datum/species/human/vatgrown
	name = "Belter"
	name_plural = "Belters"
	blurb = "Humans born in the Belt are taller and thinner than those on Earth and Mars, standing 2-2.5 meters tall, \
	and have brittle bones from growing up in low gravity. As a consequence, they cannot survive in Earth's gravity for very long. \
	However, Belters recover faster than Earthers after periods of high-G. These physical differences along with cultural and language difference cause \
	Belters to be dehumanized and regarded as second-class citizens by many Earth and Mars residents,\
	since they superficially seem to be a deviation from the species norms of humans."
	icobase =     'icons/mob/human_races/species/human/subspecies/vatgrown_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/vatgrown_preview.dmi'

	toxins_mod =   1.1
	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes
		)

/datum/species/human/vatgrown/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)

/datum/species/human/vatgrown/get_random_name(gender)
	// #defines so it's easier to read what's actually being generated
	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(48,57)) // 0-9
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	switch(rand(1,4))
		if(1) return NAME
		if(2) return "[LTR][LTR]-[NAME]"
		if(3) return "[NAME]-[NUM][NUM][NUM]"
		if(4) return "[LTR][LTR]-[NUM][NUM][NUM]"
	. = 1 // Never executed, works around http://www.byond.com/forum/?post=2072419
	#undef LTR
	#undef NUM
	#undef NAME
/*
// These guys are going to need full resprites of all the suits/etc so I'm going to
// define them and commit the sprites, but leave the clothing for another day.
/datum/species/human/chimpanzee
	name = "uplifted Chimpanzee"
	name_plural = "uplifted Chimpanzees"
	blurb = "Ook ook."
	icobase = 'icons/mob/human_races/subspecies/r_upliftedchimp.dmi'
*/
