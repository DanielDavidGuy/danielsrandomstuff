extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "dam"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Dam"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236><value_1><end> more for each adjacent <icon_dam>. Adjacent <group_built> and <last_built> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [1, 2]
	rarity = "none"
	groups = ["flammable"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "built"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rook"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "dam"}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
	]