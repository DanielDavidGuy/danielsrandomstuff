extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "snowfall"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Snowfall"
	localized_names = {}
	description = "<text_color_keyword>Adds<end> <icon_snow> every <text_color_keyword><value_1><end> spins. <icon_snow> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [12, 2]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true}
			],
			"tiles_to_add": [
				{"type": "snow"}
			]
		},
		{
			"comparisons": [
				{"a":"saved_value", "b": values[0], "greater_than_eq": true}
			], 
			"value_to_change": "saved_value",
			"diff": 0,
			"overwrite": true
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "snow"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
	]