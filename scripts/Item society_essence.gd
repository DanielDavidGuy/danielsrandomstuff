extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "society_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Society"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if at least <text_color_keyword><value_1><end> <group_built> and <last_built> are adjacent. When <text_color_keyword>destroyed<end>, <group_built> and <last_built> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [5, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"counted_adjacent_symbols": {"groups": "built"}}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true
		},	
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "built", "multiplier": values[1]}
		},
	]