extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "pinecone"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Pinecone"
	localized_names = {}
	value = 2
	description = "Has a <text_color_keyword><value_1>%<end> chance to <text_color_keyword>grow<end> into <icon_tree>."
	localized_descriptions = {}
	values = [20]
	rarity = "uncommon"
	groups = ["farmerlikes", "flammable", "arborlikes", "pineadds"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "arborist"}}]}},
				]}, "b": values[0], "less_than_eq": true},
				{"a": "tbd", "b": false}
			],
			"value_to_change": "type",
			"diff": "tree",
			"anim": "shake",
			"sfx_override": "growhit"
		}
	]