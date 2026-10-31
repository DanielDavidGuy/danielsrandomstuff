extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "menu_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Menu"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Destroys<end> itself if <text_color_keyword><value_1><end> or more <group_food> or <last_food> are <text_color_keyword>destroyed<end>. When <text_color_keyword>destroyed<end> <group_food> and <last_food> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [7, 1.5]
	value_text = {"color": "item_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "saved_value"}]}}
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "food"},
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
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "food", "multiplier": values[1]}
		},
		{
			"required_items": ["candied_pieces"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "chessall", "multiplier": values[1]}
		}
	]