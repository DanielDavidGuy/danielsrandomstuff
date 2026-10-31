extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "tower"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Tower"
	localized_names = {}
	value = 2
	description = "Gives <text_color_keyword><value_1>x<end> more <icon_coin> for each <group_built> and <last_built> in the same row or column."
	localized_descriptions = {}
	values = [2]
	rarity = "rare"
	groups = ["built"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "grid_position_x", "b": {"var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "groups", "b": "built", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
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
				{"a": "type", "b": "tower", "not_prev": true},
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
			"diff": "skyscraper",
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"one_time": true,
			"item_to_destroy": "builders_permit_essence"
		},
		{
			"required_items": ["builders_permit_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "tower", "not_prev": true},
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