extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "candle_lit"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lit Candle"
	localized_names = {}
	value = 2
	description = "You are <text_color_keyword><value_2>x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols. Adjacent <icon_spirit> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2, 1.2]
	rarity = "none"
	groups = ["candles", "burned", "firebend", "rarity_mod"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"},
			],
			"value_to_change": "value_multiplier",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding"
		},
		{
			"rarity_mod": {"symbols": [{"uncommon": values[1]}, {"rare": values[1]}, {"very_rare": values[1]}]}
		},
	]