extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "sea_and_sky_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sea and Sky"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <group_bird> or <last_bird> is on the top row and <group_aqua> or <last_aqua> is on the bottom row. When <text_color_keyword>destroyed<end>, <group_bird> <last_bird> <group_aqua> and <last_aqua> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [1.5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": 0,
			"overwrite": true,
			"last": true
		},
		{
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": 0,
			"overwrite": true,
			"last": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "bird"},
				{"a": "grid_position_y", "b": 0}
			],
			"target_self": true,
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": 1,
			"overwrite": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "aqua"},
				{"a": "grid_position_y", "b": 3}
			],
			"target_self": true,
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": 1,
			"overwrite": true
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}}, "b": 1},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}}, "b": 1},
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}}, "b": 1},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}}, "b": 1},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "bird", "multiplier": values[0]}
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}}, "b": 1},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}}, "b": 1},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "aqua", "multiplier": values[0]}
		},
	]