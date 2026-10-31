extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "chess_queen"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Chess Queen"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its previous position is in the same row, column, or diagonal of its new position. <group_chess> and <last_chess> in the same row, column, or diagonal give <icon_coin><color_FBF236><value_2><end> more."
	localized_descriptions = {}
	values = [3, 3]
	rarity = "rare"
	groups = ["chessall", "chess", "royal", "game"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": {"var_math":[
					{"+": "grid_position_x"},
					{"-": "grid_position_x", "target_self": true}
				]}, "b": 0},
				{"a": "groups", "b": "chess"}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": {"var_math": [
					{"+": "grid_position_y"},
					{"-": "grid_position_y", "target_self": true}
				]}, "b": 0},
				{"a": "groups", "b": "chess"}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": {"var_math": [
					{"+": "grid_position_x"},
					{"-": "grid_position_x", "target_self": true},
					{"+": 0, "abs": true}
				]}, 
				"b": {"var_math": [
					{"+": "grid_position_y"},
					{"-": "grid_position_y", "target_self": true},
					{"+": 0, "abs": true}
				]}}, 
				{"a": "groups", "b": "chess"}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": {"starting_value": {"saved_values": {"value_num": 2}}, "var_math": [
					{"-": "grid_position_y"},
					{"+": 0, "abs": true}
				]}},
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 0, "greater_than": true},
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 0},
			],
			"value_to_change": "value_bonus",
			"diff": values[0],
		},
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}, "var_math": [
					{"-": "grid_position_y"},
					{"+": 0, "abs": true}
				]}, 
				"b": 0},
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 0, "greater_than": true},
			],
			"value_to_change": "value_bonus",
			"diff": values[0],
		},
		{
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": {"var_math": [{"+": "grid_position_x"}]},
			"overwrite": true,
			"last": true
		},
		{
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": {"var_math": [{"+": "grid_position_y"}]},
			"overwrite": true,
			"last": true
		},
	]