extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "royal_castle"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Royal Castle"
	localized_names = {}
	description = "<group_royal> <last_royal> and <icon_tower> give <text_color_keyword><value_1>x<end> more."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "royal"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "tower"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "rook"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "bishop"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]