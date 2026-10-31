extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "chess_knight"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Chess Knight"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its new position and previous position are exactly <text_color_keyword>2<end> spaces away in one direction and <text_color_keyword>1<end> space away in the perpendicular direction."
	localized_descriptions = {}
	values = [6]
	rarity = "common"
	groups = ["chessall", "chess", "game", "chessmystic"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 2},
				{"a": {"starting_value": {"saved_values": {"value_num": 3}}, "var_math": [
					{"-": "grid_position_y"},
					{"+": 0, "abs": true}
				]}, 
				"b": 1},
			],
			"value_to_change": "value_bonus",
			"diff": values[0],
		},
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 1},
				{"a": {"starting_value": {"saved_values": {"value_num": 3}}, "var_math": [
					{"-": "grid_position_y"},
					{"+": 0, "abs": true}
				]}, 
				"b": 2},
			],
			"value_to_change": "value_bonus",
			"diff": values[0],
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "hooligan"
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 12
		},
		{
			"required_items": ["living_statues"],
			"comparisons": [
				{"a": "saved_value", "b": 8, "greater_than_eq": true}
			], 
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "rockroll"
		},
		{
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": {"var_math": [{"+": "grid_position_x"}]},
			"overwrite": true,
			"last": true
		},
		{
			"value_to_change": "saved_values",
			"value_num": 3,
			"diff": {"var_math": [{"+": "grid_position_y"}]},
			"overwrite": true,
			"last": true
		},
	]