extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bonfire_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bonfire"
	localized_names = {}
	description = "<icon_fire> gives <text_color_keyword><value_1>x<end> more <icon_coin>. <text_color_keyword>Destroys<end> itself when <icon_fire> <text_color_keyword>transforms<end> into <icon_ash>."
	localized_descriptions = {}
	values = [3]
	rarity = "essence"
	groups = []
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "fire"}
			],
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]