extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "bishop"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bishop"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its previous position is in the same diagonal of its new position. <group_chess> and <last_chess> in the same diagonal give <icon_coin><color_FBF236><value_2><end> more."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "uncommon"
	groups = ["chessall", "chess", "game", "chessmystic"]
	sfx = []
	effects = [
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
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "gem"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine",
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "martini"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drink",
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "martini"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": 40
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
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
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