extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "chef"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Chef"
	localized_names = {}
	value = 2
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = ["zlikes"]
	sfx = []
	effects = [
		{
			"required_items": ["candied_pieces"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chessall"}
			],
			"value_to_change": "value_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chessall"}
			],
			"item_to_destroy": "candied_pieces_essence"
		},
	]