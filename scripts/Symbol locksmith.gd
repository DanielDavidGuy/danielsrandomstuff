extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "locksmith"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Locksmith"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_chest> and <last_chest>. Symbols <text_color_keyword>destroyed<end> this way give <text_color_keyword><value_1>x<end> more <icon_coin>. Also <text_color_keyword>removes<end> adjacent <group_keys> and <last_keys>. Gives <icon_coin><text_color_rare><value_2><end> for each <group_keys> and <last_keys> <text_color_keyword>removed<end>."
	localized_descriptions = {}
	values = [1.5, 20]
	value_text = {}
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "chest"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "unlock"
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "type", "b": "mimic_chest"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "shake",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "unlock"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "chest"}, 
				{"a": "destroyed", "b": true}
			], 
			"value_to_change": "value_multiplier", 
			"diff": values[0]
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "keys"}
			],
			"value_to_change": "removed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "keys"}, 
				{"a": "removed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[1]
		},
	]