extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "walter_the_woodpecker"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Walter the Woodpecker"
	localized_names = {}
	description = "<icon_woodpecker> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "woodpecker"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]