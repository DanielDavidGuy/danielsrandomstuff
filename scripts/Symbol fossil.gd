extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "fossil"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Fossil"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Adds<end> <group_animal> or <last_animal> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = ["minerlikes", "anvillikes", "cartadds", "arch2likes", "xray", "cavelikes"]
	sfx = []
	effects = [
		{
			"forbidden_items": ["x_ray_machine", "x_ray_machine_essence"],
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": "saved_value", "b": 0}
			],
			"tiles_to_add": [
				{"group": "animal"}
			]
		},
		{
			"forbidden_items": ["x_ray_machine", "x_ray_machine_essence"],
			"comparisons": [
				{"a": "destroyed", "b": true},
				{"a": "saved_value", "b": 1}
			],
			"tiles_to_add": [
				{"group": "animal", "min_rarity": "uncommon"}
			]
		},
		{
			"required_items": ["x_ray_machine"],
			"forbidden_items": ["x_ray_machine_essence"],
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"tiles_to_add": [
				{"group": "animal", "min_rarity": "rare"}
			]
		},
		{
			"required_items": ["x_ray_machine_essence"],
			"item_to_destroy": "x_ray_machine_essence",
			"comparisons": [
				{"a": "destroyed", "b": true},
			],
			"tiles_to_add": [
				{"group": "animal", "min_rarity": "very_rare"}
			]
		}
	]