extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "rock"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Rock"
	localized_names = {}
	value = 1
	description = "Does not qualify as a pet."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = ["minerlikes", "anvillikes", "archlikes", "earthbend", "cartadds", "trash", "sticknstone", "cavelikes", "kyle", "material", "rocks"]
	sfx = []
	effects = [
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "scissors"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"not_prev": true
		},
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "scissors"}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 25,
			"not_prev": true
		},
		{
			"required_items": ["roshambo_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "scissors"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"not_prev": true
		},
		{
			"required_items": ["builders_permit"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock", "not_prev": true},
				{"a": "grid_position_x", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"target_self": true,
			"push_front": true,
			"value_to_change": "type",
			"diff": "tower",
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"one_time": true
		},
		{
			"required_items": ["builders_permit"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock", "not_prev": true},
				{"a": "grid_position_x", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "removed",
			"diff": true,
			"not_prev": true
		},
		{
			"required_items": ["avalanche"],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math": [
				{"+": "grid_position_y"},
			]}
		}
	]