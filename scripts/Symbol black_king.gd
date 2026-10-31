extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "black_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Black King"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its previous position is adjacent to its new position. <text_color_keyword>Destroys<end> adjacent <group_chess> and <last_chess>. Permanently gives <icon_coin><color_FBF236><value_2><end> for each symbol <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [3, 1]
	rarity = "rare"
	groups = ["chessall", "royal", "game", "scaler"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chess"},
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "guillotine"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chess"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "permanent_bonus",
			"diff": values[1]
		},
		{
			"required_items": ["militia"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "guillotine"
		},
		{
			"required_items": ["militia"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "monster"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 12,
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