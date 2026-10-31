extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "skyscraper"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Skyscraper"
	localized_names = {}
	value = 2
	description = "Gives <text_color_keyword><value_1>x<end> more <icon_coin> for each <group_built> and <last_built>."
	localized_descriptions = {}
	values = [2]
	rarity = "very_rare"
	groups = ["built", "newsworthy"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "built", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["living_statues"],
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "rook", "not_prev": true}
			],
			"target_self": true,
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
		{
			"required_items": ["society"],
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "human"}
			],
			"value_to_change": "value_multiplier",
			"diff": 2,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "farmer"
		}
	]