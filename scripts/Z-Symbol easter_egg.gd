extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "easter_egg"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Easter Egg"
	localized_names = {}
	value = 2
	description = "When <text_color_keyword>destroyed<end>, adjacent <icon_toddler> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "none"
	groups = ["toddlerlikes", "chickenstuff", "food"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "destroyed", "b": true, "target_self": true},
				{"a": "type", "b": "toddler"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]