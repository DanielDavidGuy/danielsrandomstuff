extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "earth"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Earth"
	localized_names = {}
	value = 3
	description = "Gives <color_FBF236><icon_coin><value_1><end> more for each adjacent <group_organism> <last_organism> <group_plant> <last_plant> <group_trees> and <last_trees>."
	localized_descriptions = {}
	values = [1]
	rarity = "rare"
	groups = ["earthbend", "newsworthy"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "organism"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops",
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "plant"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops",
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "drops",
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0]
		}
	]