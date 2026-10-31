extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "peppermint"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Peppermint"
	localized_names = {}
	value = 2
	description = "When <text_color_keyword>destroyed<end>, you may choose choose <text_color_keyword><value_1><end> additional symbols to add after that spin."
	localized_descriptions = {}
	values = [3]
	value_text = {}
	rarity = "uncommon"
	groups = ["food", "toddlerlikes", "festive", "sleighlikes", "icelikes"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "extra_symbol_choices",
			"diff": values[0]
		}
	]