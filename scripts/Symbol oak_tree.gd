extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "oak_tree"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Oak Tree"
	localized_names = {}
	value = 2
	description = "Has a <text_color_keyword><value_1>%<end> chance of <text_color_keyword>adding<end> <group_oakadds> or <last_oakadds>. <text_color_keyword>Adds<end> <icon_wood> and <icon_sapling> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [15, 75]
	rarity = "uncommon"
	groups = ["farmerlikes", "trees", "flammable", "spawner0", "arborlikes", "gardenlikes"]
	sfx = []
	effects = [	
		{
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"tiles_to_add": [
				{"type": "wood"},
				{"type": "sapling"},
			],
		},
		{
			"required_items": ["lumber_mill"],
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"tiles_to_add": [
				{"type": "wood"},
			],
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "conveyor_belt"}}]}},
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_destroyed_items": "conveyor_belt_essence"}}]}},
				]}, "b": values[0], "less_than_eq": true}
			],
			"tiles_to_add": [
				{"group": "oakadds"}
			],
			"anim": "shake",
			"sfx_override": "growhit"
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