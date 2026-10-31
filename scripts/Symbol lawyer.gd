extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "lawyer"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lawyer"
	localized_names = {}
	value = 2
	description = "When an adjacent symbol takes <icon_coin>, gives <icon_coin> equal to <text_color_keyword><value_1>x<end> the amount taken. Adjacent <icon_paper> give <text_color_keyword><value_2>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [4, 2]
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "zlikes", "lawyers"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"},
			],
			"item_to_destroy": "attorneys_badge_essence"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "final_value", "b": 0, "less_than": true},
			],
			"target_self": true,
			"value_to_change": "value_bonus",
			"diff": {"starting_value": "final_value", "var_math": [
				{"*": -1},
				{"*": values[0]}
			]},
			"last": true
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "paper"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "paper",
			"value_to_change": "value_multiplier",
			"diff": values[1]
		},
	]