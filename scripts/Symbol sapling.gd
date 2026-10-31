extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "sapling"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Sapling"
	localized_names = {}
	value = 1
	description = "Has a <text_color_keyword><value_1>%<end> chance to <text_color_keyword>grow<end> into <icon_oak_tree>."
	localized_descriptions = {}
	values = [10]
	rarity = "common"
	groups = ["farmerlikes", "flammable", "arborlikes"]
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
			"diff": "oak_tree",
			"anim": "shake",
			"sfx_override": "growhit"
		}
	]