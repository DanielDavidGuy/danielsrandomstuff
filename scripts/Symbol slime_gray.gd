extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "slime_gray"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Gray Slime"
	localized_names = {}
	value = 0
	description = "Mostly harmless. Gives <icon_removal_token><color_6B6B6B><value_1><end> when <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [1]
	rarity = "common"
	groups = ["waterweak", "slime", "slimelower", "organism", "monster", "slimenormal", "bosslikes", "destroymon"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[0]
		},
		{
			"required_items": ["salt_shaker"],
			"comparisons": [
				{"a": {"starting_value": {"rand_num": {"min": 1, "max": 100}}}, "b": 30, "less_than_eq": true}
			],
			"anim": "bounce",
			"sfx_override": "jump",
			"value_to_change": "removal_token_value",
			"diff": values[0]
		},
		{
			"required_items": ["marmalade"],
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "removal_token_value",
			"diff": values[0]
		}
	]
	inherited_effects = [
		"militia_essence_effect"
	]