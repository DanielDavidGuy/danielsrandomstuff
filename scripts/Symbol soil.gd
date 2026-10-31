extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "soil"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Soil"
	localized_names = {}
	value = 1
	description = "<group_plant> <last_plant> <group_trees> and <last_trees> directly above this symbol give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [3]
	value_text = {}
	rarity = "common"
	groups = ["earthbend", "trash"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "plant"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}, 
				{"a": "grid_position_x", "b": {"starting_value": 0, "var_math": [
					{"+": "grid_position_x", "target_self": true}
				]}},
				{"a": "grid_position_y", "b": {"starting_value": -1, "var_math": [
					{"+": "grid_position_y", "target_self": true}
				]}}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		}
	]