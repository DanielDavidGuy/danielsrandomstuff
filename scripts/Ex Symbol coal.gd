extends "res://Mod Data.gd"

func _init():
	mod_type = "existing_symbol"
	type = "coal"
	inherit_effects = true
	inherit_art = true
	inherit_groups = true
	display_name = "Coal"
	localized_names = {}
	value = 0
	description = ""
	localized_descriptions = {}
	values = [4]	
	rarity = "common"
	groups = ["coals"]
	sfx = []
	effects = [
		{
			"required_items": ["furnace"],
			"value_to_change": "saved_values",
			"value_num": 3,
			"diff": 1
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"saved_values": {"value_num": 3}}}, "b": 4, "greater_than_eq": true}, 
			], 
			"value_to_change": "permanent_bonus", 
			"diff": 1
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"saved_values": {"value_num": 3}}}, "b": 4, "greater_than_eq": true}, 
			], 
			"value_to_change": "saved_values",
			"value_num": 3, 
			"diff": 0,
			"overwrite": true
		},
	]