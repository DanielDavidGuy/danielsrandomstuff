extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "marmalade_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Marmalade"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself after <text_color_keyword><value_1><end> <group_slime> or <last_slime> are <text_color_keyword>destroyed<end>. <group_slime> and <last_slime> give <icon_essence_token><text_color_essence><value_2><end> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [5, 1]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "slime"},
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "essence_token_value",
			"diff": values[1]
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "slime"},
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
	]