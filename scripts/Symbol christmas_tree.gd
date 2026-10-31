extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "christmas_tree"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Christmas Tree"
	localized_names = {}
	value = 3
	description = "Adjacent <group_frostburn> and <last_frostburn> last for <text_color_keyword><value_1><end> additional spins. Has a <text_color_keyword><value_3>%<end> chance of <text_color_keyword>adding<end> <group_festive> or <last_festive>. <text_color_keyword>Adds <value_2><end> <icon_wood> and <icon_pinecone> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [5, 3, 20]
	value_text = {}
	rarity = "rare"
	groups = ["trees", "sleighlikes", "farmerlikes", "spawner0", "flammable", "arborlikes", "icelikes", "gardenlikes"]
	sfx = []
	effects = [	
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "wood"}, 
				{"type": "wood"},
				{"type": "wood"}, 
				{"type": "pinecone"}, 
			]
		},
		{
			"required_items": ["lumber_mill"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "wood"},
			]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "frostburn"}
			], 
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"value_to_change": "saved_value", 
			"diff": {"starting_value": values[0], "var_math": [
				{"+": {"starting_value": {"counted_items": "ice_cream"}, "var_math": [
					{"*": 2}
				]}}
			]},
			"item_to_destroy": "ice_cream_essence"
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "conveyor_belt"}}]}},
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_destroyed_items": "conveyor_belt_essence"}}]}},
				]}, "b": values[2], "less_than_eq": true}
			],
			"tiles_to_add": [
				{"group": "festive"}
			],
			"anim": "circle",
			"sfx_override": "shine"
		},
		{
			"required_items": ["cherry_blossom"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "flower"}
			],
			"value_to_change": "value_multiplier",
			"diff": 3,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		},
	]