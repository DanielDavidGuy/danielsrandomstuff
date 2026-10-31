extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "bottled_lightning"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Bottled Lightning"
	localized_names = {}
	description = "You may <text_color_keyword>destroy<end> this item and <text_color_keyword>add <value_1><end> <icon_lightning>."
	localized_descriptions = {}
	values = [3]
	manually_destroyable = true
	rarity = "rare"
	groups = []
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "lightning"},
				{"type": "lightning"},
				{"type": "lightning"},
			]
		}
	]