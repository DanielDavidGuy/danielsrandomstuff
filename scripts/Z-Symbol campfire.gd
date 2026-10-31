extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "campfire"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Campfire"
	localized_names = {}
	value = 2
	description = "Adjacent <group_food> and <last_food> permanently give <icon_coin><color_FBF236><value_1><end> more. <text_color_keyword>Destroys<end> itself after making other symbols give additional <icon_coin> <text_color_keyword><value_2> times<end>."
	localized_descriptions = {}
	values = [1, 4]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "saved_value"}]}}
	rarity = "none"
	groups = ["firebend", "burned"]
	sfx = []
	effects = [		
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "food"}
			],
			"value_to_change": "permanent_bonus",
			"diff": values[0],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "sizzle"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "food"}
			],
			"target_self": true,
			"value_to_change": "saved_value",
			"diff": 1,
			"push_front": true
		},
		{
			"comparisons": [
				{"a": "saved_value", "b": values[1], "greater_than_eq": true, "target_self": true}
			], 
			"target_self": true,
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"sfx_override": "rockroll"
		},
	]