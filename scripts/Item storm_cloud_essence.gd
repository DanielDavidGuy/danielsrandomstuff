extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "storm_cloud_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Storm Cloud"
	localized_names = {}
	description = "Has a <text_color_keyword><value_1>%<end> chance of adding <icon_lightning> every spin. <text_color_keyword>Destroys<end> itself after <text_color_keyword><value_2><end> spins."
	localized_descriptions = {}
	values = [20, 4]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": values[0], "less_than_eq": true},
			],
			"tiles_to_add": [
				{"type": "lightning"}
			]
		},
		{
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
	]