extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "paper"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Paper"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> when adjacent to <group_newsworthy> or <last_newsworthy>. This effect can only be applied once per spin."
	localized_descriptions = {}
	values = [4]
	rarity = "common"
	groups = ["doghates", "ashburn", "trash", "windweak", "flammable", "papers"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "newsworthy"}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "paper",
			"one_time": true
		},
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "paper",
			"not_prev": true
		},
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": 25,
			"not_prev": true
		},
		{
			"required_items": ["roshambo_essence"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "rock"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "paper",
			"not_prev": true
		},
	]