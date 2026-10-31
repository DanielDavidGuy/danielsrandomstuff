extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "pirate"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Pirate"
	localized_names = {}
	value = 2
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "very_rare"
	groups = ["zlikes", "hatted"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "mimic_chest"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "arrarrarr"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "mimic_chest"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": 1
		},
	]