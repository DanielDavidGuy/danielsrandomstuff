extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "penguin"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Penguin"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> adjacent <group_snowy> and <last_snowy>. Gives <icon_coin><color_FBF236><value_1><end> for each <group_snowy> and <last_snowy> <text_color_keyword>destroyed<end>."
	localized_descriptions = {}
	values = [12]
	value_text = {}
	rarity = "common"
	groups = ["bird", "animal", "organism", "poslikes", "aqua"]
	sfx = ["jump"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "snowy"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "bounce",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "jump"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "snowy"}, 
				{"a": "destroyed", "b": true}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": values[0]
		},
	]