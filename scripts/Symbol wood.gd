extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "wood"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Wood"
	localized_names = {}
	value = 1
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = ["woodlikes", "ashburn", "material", "flammable"]
	sfx = []
	effects = [	
		{
			"required_items": ["builders_permit"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wood", "not_prev": true},
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
			"diff": "house",
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "rockbreak",
			"one_time": true
		},
		{
			"required_items": ["builders_permit"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wood", "not_prev": true},
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