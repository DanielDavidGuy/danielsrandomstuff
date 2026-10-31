extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "bone_pile"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Pile of Bones"
	localized_names = {}
	value = 4
	description = "<text_color_keyword>Transforms<end> into <icon_skeleton> after giving <icon_coin> <text_color_keyword><value_1> times<end>."
	localized_descriptions = {}
	values = [6, 75]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}]}}
	rarity = "none"
	groups = ["franklikes", "cemlikes", "bony", "night", "witchlikes", "bosslikes"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "times_coins_given", "b": values[0]-1, "greater_than_eq": true, "not_prev": true},
				{"a": "type", "b": "skeleton", "not": true, "not_prev": true},
			], 
			"one_time": true,
			"not_prev": true,
			"anim": "shake",
			"sfx_override": "rockroll",
			"value_to_change": "type", 
			"diff": "skeleton"
		},
	]