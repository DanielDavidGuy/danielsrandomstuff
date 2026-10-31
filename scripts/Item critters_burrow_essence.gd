extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "critters_burrow_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Rodents' Burrow"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <group_critter> or <last_critter>. When <text_color_keyword>destroyed<end>, <group_critter> and <last_critter> give <icon_coin><color_FBF236><value_2><end> more this game."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "mouse"}},
					{"+": {"counted_symbols": "beaver"}},
					{"+": {"counted_symbols": "squirrel"}},
					{"+": {"counted_symbols": "raccoon"}}
				]}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			"diff": {"groups": "critter", "bonus": values[1]}
		},
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "mouse"}},
					{"+": {"counted_symbols": "beaver"}},
					{"+": {"counted_symbols": "squirrel"}},
					{"+": {"counted_symbols": "raccoon"}}
				]}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true
		},
	]