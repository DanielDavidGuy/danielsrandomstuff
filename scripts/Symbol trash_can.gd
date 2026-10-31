extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "trash_can"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Trash Can"
	localized_names = {}
	value = 0
	description = "<color_E14A68>Destroys<end> adjacent <group_trash> and <last_trash>. Gives <icon_removal_token><color_6B6B6B><value_1><end> for every <color_E14A68><value_2><end> symbols <color_E14A68>destroyed<end>."
	localized_descriptions = {}
	values = [1, 3]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["trasher"]
	sfx = []
	effects = [		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trash"},
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
				{"a": "groups", "b": "trash"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "saved_value", 
			"diff": 1
		},
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}, "b": values[1], "greater_than_eq": true}
			], 
			"last": true, 
			"value_to_change": "removal_token_value",
			"diff": {"starting_value": 0, "var_math": [
				{"+": "saved_value"},
				{"/": values[1], "floor": true},
				{"*": values[0]}
			]}
		},
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}, "b": values[1], "greater_than_eq": true}
			], 
			"last": true, 
			"value_to_change": "saved_value",
			"diff": {"starting_value": 0, "var_math": [
				{"+": "saved_value"},
				{"/": values[1], "floor": true},
				{"*": -values[1]}
			]}
		}
	]