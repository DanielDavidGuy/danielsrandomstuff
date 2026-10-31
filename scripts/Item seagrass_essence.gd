extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "seagrass_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Seagrass"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <text_color_keyword><value_1><end> or more <group_aqua> and <last_aqua> are adjacent. When <text_color_keyword>destroyed<end>, <group_aqua> and <last_aqua> give <icon_coin><color_FBF236><value_2><end> more this game."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"counted_adjacent_symbols": {"groups": "aqua"}}, "b": values[0], "greater_than_eq": true},
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
			"diff": {"groups": "aqua", "bonus": values[1]}
		},
	]