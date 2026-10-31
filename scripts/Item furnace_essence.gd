extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "furnace_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Furnace"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are <text_color_keyword><value_1><end> or more <icon_coal>. When <text_color_keyword>destroyed<end>, <icon_coal> give <icon_coin><color_FBF236><value_2><end> more this game."
	localized_descriptions = {}
	values = [3, 2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"counted_symbols": "coal"}}, "b": values[0], "greater_than_eq": true},
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
			# Replace with type when behavior gets fixed
			"diff": {"groups": "coals", "bonus": values[1]}
		},
	]