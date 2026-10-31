extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "snow_globe"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Snow Globe"
	localized_names = {}
	value = 2
	description = "Adjacent <group_frostburn> and <last_frostburn> last for <text_color_keyword><value_1><end> additional spins."
	localized_descriptions = {}
	values = [3]
	value_text = {}
	rarity = "uncommon"
	groups = []
	sfx = ["ding"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "frostburn"}
			], 
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"value_to_change": "saved_value", 
			"diff": {"starting_value": values[0], "var_math": [
				{"+": {"starting_value": {"counted_items": "ice_cream"}, "var_math": [
					{"*": 2}
				]}}
			]},
			"item_to_destroy": "ice_cream_essence"
		},
	]