extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "minecart"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Minecart"
	localized_names = {}
	value = 2
	description = "Has a <text_color_keyword><value_1>%<end> chance of <text_color_keyword>adding<end> <group_cartadds> or <last_cartadds>."
	localized_descriptions = {}
	values = [15]
	rarity = "uncommon"
	groups = ["spawner0"]
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
				{"group": "cartadds"}
			],
			"anim": "shake",
			"sfx_override": "rockroll"
		},
	]