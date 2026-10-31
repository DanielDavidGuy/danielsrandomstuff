extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "attorneys_badge"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Attorney's Badge"
	localized_names = {}
	description = "<icon_lawyer> gives <text_color_keyword><value_1>x<end> more <icon_coin>. Shows that <icon_lawyer> is a <text_color_keyword>defense attorney<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "lawyer"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		}
	]