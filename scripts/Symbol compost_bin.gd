extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "compost_bin"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Compost Bin"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_fruit> and <last_fruit>. <text_color_keyword>Adds<end> <icon_plant_food> for every <text_color_keyword><value_1><end> <group_fruit> and <last_fruit> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [3]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["flammable"]
	sfx = []
	effects = [		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "fruit"}
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
				{"a": "groups", "b": "fruit"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "saved_value", 
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "fruit"}, 
				{"a": "destroyed", "b": true},
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}]}, "b": values[0], "greater_than_eq": true}
			], 
			"target_self": true, 
			"tiles_to_add": [
				{"type": "plant_food"}
			],
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "fruit"}, 
				{"a": "destroyed", "b": true},
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}]}, "b": values[0], "greater_than_eq": true}
			], 
			"target_self": true, 
			"value_to_change": "saved_value",
			"diff": 0,
			"overwrite": true
		}
	]