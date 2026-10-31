extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "medal"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Medal"
	localized_names = {}
	value = 0
	description = "The symbol directly above this symbol permanently gives <text_color_keyword><value_1>x<end> more <icon_coin>. <text_color_keyword>Destroys<end> itself afterwards."
	localized_descriptions = {}
	values = [3]
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}},
				{"a": "type", "b": "empty", "not": true}
			],
			"value_to_change": "permanent_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"one_time": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}},
				{"a": "type", "b": "empty", "not": true}
			],
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true
		}
	]