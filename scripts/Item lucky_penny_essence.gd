extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "lucky_penny_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lucky Penny"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if there are at least <text_color_keyword><value_1><end> <icon_hover_coin>. When <text_color_keyword>destroyed<end>, you are <text_color_keyword><value_2>x<end> more likely to find <text_color_uncommon>Uncommon<end>, <text_color_rare>Rare<end>, and <text_color_very_rare>Very Rare<end> symbols."
	localized_descriptions = {}
	values = [3, 2.5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": {"counted_symbols": "coin"}}, "b": values[0], "greater_than_eq": true},
			],
			"value_to_change": "destroyed",
			"diff": true,
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses", 
			"add_to_array": true, 
			"diff": {"rarity": {"symbols": {"uncommon": 2.5, "rare": 2.5, "very_rare": 2.5}}}
		},
	]