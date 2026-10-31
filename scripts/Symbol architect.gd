extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "architect"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Architect"
	localized_names = {}
	value = 3
	description = "<text_color_keyword>Destroys<end> adjacent <icon_wood> and <icon_rock>. \n<text_color_keyword>Adds<end> <icon_house> for every <text_color_keyword><value_1><end> <icon_wood> <text_color_keyword>destroyed<end>. \n<text_color_keyword>Adds<end> <icon_tower> for every <text_color_keyword><value_2><end> <icon_rock> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [3, 2, 2]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": {"saved_values": {"value_num": 1}}}, {"*": 10}, {"+": values[1]}, {"-": {"saved_values": {"value_num": 2}}}]}}
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes", "hatted"]
	sfx = []
	effects = [		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "wood"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "wood"}, 
			], 
			"target_self": true, 
			"value_to_change": "saved_values", 
			"value_num": 1,
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "wood"}, 
				{"a": {"starting_value": 0, "var_math": [{"+": {"saved_values": {"value_num": 1}}, "target_self": true}]}, "b": values[0], "greater_than_eq": true}
			], 
			"tiles_to_add": [
				{"type": "house"}
			],
			"target_self": true, 
			"value_to_change": "saved_values",
			"value_num": 1,
			"diff": 0,
			"overwrite": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "rock"}, 
			], 
			"target_self": true, 
			"value_to_change": "saved_values", 
			"value_num": 2,
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "type", "b": "rock"}, 
				{"a": {"starting_value": 0, "var_math": [{"+": {"saved_values": {"value_num": 2}}, "target_self": true}]}, "b": values[1], "greater_than_eq": true}
			], 
			"tiles_to_add": [
				{"type": "tower"}
			],
			"target_self": true, 
			"value_to_change": "saved_values",
			"value_num": 2,
			"diff": 0,
			"overwrite": true
		},
	]