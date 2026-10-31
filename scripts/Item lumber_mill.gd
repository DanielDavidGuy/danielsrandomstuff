extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "lumber_mill"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lumber Mill"
	localized_names = {}
	description = "<group_trees> and <last_trees> <text_color_keyword>add 1<end> additional <icon_wood> when <text_color_keyword>destroyed<end>. <icon_wood> gives <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "wood"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]