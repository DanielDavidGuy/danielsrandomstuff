extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "spirit"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Spirit"
	localized_names = {}
	value = 6
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = ["cemlikes"]
	sfx = []
	effects = [
		{
			"required_items": ["seance"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "organism"}
			],
			"value_to_change": "value_multiplier",
			"diff": 2,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "spirit"
		},
		{
			"required_items": ["seance_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "organism"}
			],
			"value_to_change": "permanent_multiplier",
			"diff": 1.5,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "spirit",
			"item_to_destroy": "seance_essence"
		},
	]