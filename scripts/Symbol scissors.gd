extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "scissors"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Scissors"
	localized_names = {}
	value = 1
	description = "Adjacent <text_color_keyword>destroyed<end> symbols give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = ["scissorss"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"unconditional": true
		},
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "paper"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "snip",
			"not_prev": true
		},
		{
			"required_items": ["roshambo"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "paper"}
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
				{"a": "type", "b": "paper"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "snip",
			"not_prev": true
		},
	]