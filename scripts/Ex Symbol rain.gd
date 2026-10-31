extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "rain"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Rain"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_waterweak> and <last_waterweak>."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = ["watery", "waterbend", "weatherlikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "waterweak"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops"
		},
	]