extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "rook"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Rook"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its previous position is in the same row or column of its new position. <group_chess> and <last_chess> in the same row or column give <icon_coin><color_FBF236><value_2><end> more."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "uncommon"
	groups = ["chessall", "chess", "game", "chessmystic"]
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
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "groups", "b": "built", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}},
				{"a": "groups", "b": "built", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "type", "b": "rook", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}},
				{"a": "type", "b": "rook", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": 2
		},
		{
			"required_items": ["living_statues", "society"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}
			],
			"value_to_change": "value_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"required_items": ["living_statues", "builders_permit_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rook"},
				{"a": "grid_position_x", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"target_self": true,
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"tiles_to_add": [
				{"type": "skyscraper"}
			],
			"item_to_destroy": "builders_permit_essence"
		},
		{
			"required_items": ["living_statues", "builders_permit_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rook"},
				{"a": "grid_position_x", "b": {"starting_value": 1, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "removed",
			"diff": true,
		},
	]