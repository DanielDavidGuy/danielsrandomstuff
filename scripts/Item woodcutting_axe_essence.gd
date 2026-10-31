extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "woodcutting_axe_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Woodcutting Axe"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Destroys<end> itself after <text_color_keyword><value_1><end> <group_trees> and <last_trees> are <text_color_keyword>destroyed<end>. Gives <icon_coin><color_FBF236><value_2><end> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [5, 50]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"},
				{"a": "destroyed", "b": true}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[0], "greater_than_eq": true}
			],
			"value_to_change": "destroyed",
			"diff": true
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value",
			"diff": values[1]
		}
	]