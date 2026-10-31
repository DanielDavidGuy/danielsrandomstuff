extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "salt_shaker_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Salt Shaker"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself after <text_color_keyword><value_1><end> spins. <text_color_essence>Adds<end> <group_slime> or <last_slime> every spin."
	localized_descriptions = {}
	values = [5]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"value_to_change": "saved_value",
			"diff": 1,
			"tiles_to_add": [
				{"group": "slime"},
			]
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
	]