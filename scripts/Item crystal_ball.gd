extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "crystal_ball"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Crystal Ball"
	localized_names = {}
	description = "You are <text_color_keyword><value_1>x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols for each <icon_spirit>."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "spirit"}
			],
			"rarity_mod": {"symbols": [{"uncommon": values[0], "rare": values[0], "very_rare": values[0]}]}
		}
	]