extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "slime_red"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Red Slime"
	localized_names = {}
	value = 0
	description = "<text_color_keyword>Adds 2<end> <group_slimelower> or <last_slimelower> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["waterweak", "slime", "organism", "monster", "slimenormal", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add":[
				{"group": "slimelower"},
				{"group": "slimelower"}
			]
		},
		{
			"required_items": ["salt_shaker"],
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": 30, "less_than_eq": true}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"tiles_to_add":[
				{"group": "slimelower"},
				{"group": "slimelower"}
			]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"tiles_to_add":[
				{"group": "slimelower"},
				{"group": "slimelower"}
			]
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]