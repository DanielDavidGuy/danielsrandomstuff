extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "puddle"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Puddle"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_slimenormal> and <last_slimenormal>. <text_color_keyword>Destroys<end> itself afterwards."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = ["doghates", "watery", "waterbend", "burned"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "slimenormal"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops",
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "slimenormal"}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true
		},
	]