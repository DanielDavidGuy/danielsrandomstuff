extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "house"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "House"
	localized_names = {}
	value = 2
	description = "Gives <text_color_keyword><value_1>x<end> more <icon_coin> for each <group_built> and <last_built> in the same row."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = ["built", "flammable"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_y", "b": {"var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}},
				{"a": "groups", "b": "built", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": values[0]
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
			"diff": values[0]
		},
		{
			"required_items": ["society"],
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
			"required_items": ["builders_permit_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "house", "not_prev": true},
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
			"required_items": ["builders_permit_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "house", "not_prev": true},
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
	]