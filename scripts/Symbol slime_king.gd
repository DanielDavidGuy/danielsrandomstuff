extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "slime_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Slime King"
	localized_names = {}
	value = 0
	description = "Has a <text_color_keyword><value_3>%<end> chance of <text_color_keyword>adding<end> <group_slimenormal> or <last_slimenormal>. Adjacent <group_slimenormal> and <last_slimenormal> give <text_color_keyword><value_1>x<end> more <icon_coin>. Gives <icon_coin><color_FBF236><value_2><end> when destroyed."
	localized_descriptions = {}
	values = [4, 40, 25]
	rarity = "rare"
	groups = ["slime", "organism", "monster", "box", "royal", "raremon", "bosslikes", "spawner0", "destroymon"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"required_items": ["salt_shaker"],
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": 30, "less_than_eq": true}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[1]
		},
		{
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "conveyor_belt"}}]}},
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_destroyed_items": "conveyor_belt_essence"}}]}},
				]}, "b": values[0], "less_than_eq": true}
			],
			"tiles_to_add": [
				{"group": "slimenormal"}
			],
			"anim": "circle",
			"sfx_override": "ding"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "slimenormal"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "shine"
		},
	]
	inherited_effects = [
		"militia_essence_effect"
	]