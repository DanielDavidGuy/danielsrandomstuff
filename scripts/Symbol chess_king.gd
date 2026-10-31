extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "chess_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Chess King"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its previous position is adjacent to its new position. Adjacent <group_chess> and <last_chess> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "rare"
	groups = ["chessall", "chess", "royal", "game"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chess"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": "times_coins_given", "b": 0, "greater_than": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 1}}, "var_math": [
					{"-": "grid_position_x"},
					{"+": 0, "abs": true}
				]}, 
				"b": 1, "less_than_eq": true},
				{"a": {"starting_value": {"saved_values": {"value_num": 2}}, "var_math": [
					{"-": "grid_position_y"},
					{"+": 0, "abs": true}
				]}, 
				"b": 1, "less_than_eq": true},
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