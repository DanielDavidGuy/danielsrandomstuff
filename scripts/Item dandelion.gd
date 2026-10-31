extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "dandelion"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Dandelion"
	localized_names = {}
	description = "You are <text_color_keyword>1.3x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols for each <icon_flower>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "flower"}
			],
			"rarity_mod": {"symbols": [{"uncommon": 1.3, "rare": 1.3, "very_rare": 1.3}]}
		}
	]