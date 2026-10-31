extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "yeti"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Yeti"
	localized_names = {}
	value = 3
	description = "Has a <text_color_keyword><value_1>%<end> chance of <text_color_keyword>adding<end> <icon_snowball>. Adjacent <group_frostburn> and <last_frostburn> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [15, 2]
	rarity = "rare"
	groups = ["organism", "sleighlikes", "spawner0", "newsworthy", "monster", "uncommonanimals", "raremon", "bosslikes", "icelikes"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "conveyor_belt"}}]}},
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_destroyed_items": "conveyor_belt_essence"}}]}},
				]}, "b": values[0], "less_than_eq": true}
			],
			"tiles_to_add": [
				{"type": "snowball"}
			],
			"anim": "circle",
			"sfx_override": "beastmaster"
		},	
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "frostburn"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beastmaster",
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
	]
	inherited_effects = [
		"militia_essence_effect"
	]