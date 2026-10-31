extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "snowfall_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Snowfall"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself when you spin. When <text_color_keyword>destroyed<end>, <text_color_keyword>adds <value_1><end> <icon_snow>."
	localized_descriptions = {}
	values = [3]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"value_to_change": "destroyed",
			"tiles_to_add": [
				{"type": "snow"},
				{"type": "snow"},
				{"type": "snow"}
			],
			"diff": true
		},
	]