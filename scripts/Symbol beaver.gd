extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "beaver"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Beaver"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_woodlikes> and <last_woodlikes>. <text_color_keyword>Adds<end> <icon_dam> for every <text_color_keyword><value_1><end> symbols <text_color_keyword>destroyed<end>. Gives <icon_coin><color_FBF236><value_2><end> for each symbol <text_color_keyword>added<end>."
	localized_descriptions = {}
	values = [5, 20]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "uncommon"
	groups = ["animal", "organism", "critter", "uncommonanimals"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "woodlikes"}
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
				{"a": "groups", "b": "woodlikes"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "saved_value", 
			"diff": 1
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "woodlikes"}, 
				{"a": "destroyed", "b": true},
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}]}, "b": values[0], "greater_than_eq": true}
			], 
			"tiles_to_add": [
				{"type": "dam"}
			],
			"target_self": true, 
			"value_to_change": "value_bonus",
			"diff": values[1],
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "woodlikes"}, 
				{"a": "destroyed", "b": true},
				{"a": {"starting_value": 0, "var_math": [{"+": "saved_value", "target_self": true}]}, "b": values[0], "greater_than_eq": true}
			], 
			"target_self": true, 
			"value_to_change": "saved_value",
			"diff": 0,
			"overwrite": true
		},
	]