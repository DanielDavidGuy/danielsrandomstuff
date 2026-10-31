extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "spinning_capsule"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Spinning Capsule"
	localized_names = {}
	value = -30
	description = "<text_color_keyword>Destroys<end> itself. When <text_color_keyword>destroyed<end>, you get an additional spin before rent is due."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["capsule"]
	sfx = []
	effects = [
		{
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "growmoney",
			"item_to_destroy": "capsule_machine_essence"
		},
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "spins_left",
			"diff": 1
		},
		{
			"required_items": ["capsule_machine"],
			"forbidden_items": ["capsule_machine_essence"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "spins_left",
			"diff": 1
		},
		{
			"required_items": ["capsule_machine_essence"],
			"forbidden_items": ["capsule_machine"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "spins_left",
			"item_to_destroy": "capsule_machine_essence",
			"diff": 2
		},
		{
			"required_items": ["capsule_machine_essence", "capsule_machine"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "spins_left",
			"item_to_destroy": "capsule_machine_essence",
			"diff": 5
		},
	]