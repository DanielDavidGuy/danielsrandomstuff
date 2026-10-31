extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "goblin_food_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Goblin Food"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <icon_goblin>. When <text_color_keyword>destroyed<end>, <icon_goblin> give <icon_coin><color_FBF236><value_2><end> more this game."
	localized_descriptions = {}
	values = [3, 3]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "goblin"}},
				]}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "goblins", "bonus": values[1]}
		},
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "goblin"}},
				]}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true
		},
	]