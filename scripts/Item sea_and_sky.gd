extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "sea_and_sky"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sea and Sky"
	localized_names = {}
	description = "<group_bird> and <last_bird> give <text_color_keyword><value_1>x<end> more <icon_coin> in the <text_color_keyword>top 2<end> rows. <group_aqua> and <last_aqua> give <text_color_keyword><value_1>x<end> more <icon_coin> in the <text_color_keyword>bottom 2<end> rows."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "bird"},
				{"a": "grid_position_y", "b": 2, "less_than": true}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "aqua"},
				{"a": "grid_position_y", "b": 1, "greater_than": true}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]