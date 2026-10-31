extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "necromancer"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Necromancer"
	localized_names = {}
	value = 3
	description = "Adjacent <text_color_keyword>destroyed<end> symbols have a <text_color_keyword><value_1>%<end> chance of adding <group_undead> or <last_undead>. Adjacent <group_cemlikes> and <last_cemlikes> give <icon_coin><color_FBF236><value_2><end> more."
	localized_descriptions = {}
	values = [40, 2]
	rarity = "rare"
	groups = ["organism", "hatted", "human", "doglikes", "spawner0", "bosslikes"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}, "var_math": [
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_items": "conveyor_belt"}}]}},
					{"/": {"starting_value": 1, "var_math": [{"+": {"counted_destroyed_items": "conveyor_belt_essence"}}]}},
				]}, "b": values[0], "less_than_eq": true}
			],
			"tiles_to_add": [
				{"group": "undead"}
			],
			"anim": "circle",
			"sfx_override": "beam"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "cemlikes"}
			],
			"value_to_change": "value_bonus",
			"diff": values[1],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "beam"
		},
	]