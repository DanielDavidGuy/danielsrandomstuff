extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "oxygen_gas_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Oxygen Gas"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <icon_fire> <text_color_keyword>destroys<end> a symbol. When <text_color_keyword>destroyed<end>, <text_color_keyword>adds <value_1><end> <icon_fire>."
	localized_descriptions = {}
	values = [4]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add": [
				{"type": "fire"},
				{"type": "fire"},
				{"type": "fire"},
				{"type": "fire"},
			]
		}
	]