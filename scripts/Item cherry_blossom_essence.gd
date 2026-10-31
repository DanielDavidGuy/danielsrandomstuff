extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "cherry_blossom_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cherry Blossom"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if at least <text_color_keyword><value_1><end> <group_gardenlikes> and <last_gardenlikes> are adjacent. When <text_color_keyword>destroyed<end>, <group_gardenlikes> and <last_gardenlikes> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"counted_adjacent_symbols": {"groups": "gardenlikes"}}, "b": values[0], "greater_than_eq": true},
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
			"diff": {"groups": "gardenlikes", "multiplier": values[1]}
		},
	]