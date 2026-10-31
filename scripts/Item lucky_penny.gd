extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "lucky_penny"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lucky Penny"
	localized_names = {}
	description = "You are <text_color_keyword>1.3x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols for each <icon_hover_coin>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "coin"}
			],
			"rarity_mod": {"symbols": [{"uncommon": 1.3, "rare": 1.3, "very_rare": 1.3}]}
		}
	]