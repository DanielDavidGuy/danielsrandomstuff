extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "arborist_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Arborist"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <group_arborlikes> or <last_arborlikes>. When <text_color_keyword>destroyed<end> <group_arborlikes> and <last_arborlikes> give <text_color_keyword><value_2>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3, 1.5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math": [
					{"+": {"counted_symbols": "tree"}},
					{"+": {"counted_symbols": "oak_tree"}},
					{"+": {"counted_symbols": "sapling"}},
					{"+": {"counted_symbols": "pinecone"}},
					{"+": {"counted_symbols": "palm_tree"}},
					{"+": {"counted_symbols": "christmas_tree"}},
				]}, "b": values[0], "greater_than_eq": true}
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
			"diff": {"groups": "arborlikes", "multiplier": values[1]}
		}
	]