extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "toddler"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Toddler"
	localized_names = {}
	value = 1
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "common"
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
			"sfx_override": "dice"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chessall"}
			],
			"item_to_destroy": "candied_pieces_essence"
		},
	]