extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "lumber_mill_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Lumber Mill"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <group_trees> or <last_trees> is <text_color_keyword>destroyed<end>. When <text_color_keyword>destroyed<end>, <text_color_keyword>adds <value_1><end> <icon_wood>."
	localized_descriptions = {}
	values = [5]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "groups", "b": "trees"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "lumber_mill_essence"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "wood"},
				{"type": "wood"},
				{"type": "wood"},
				{"type": "wood"},
				{"type": "wood"},
			]
		}
	]