extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "wind"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Wind"
	localized_names = {}
	value = 2
	description = "<text_color_keyword>Destroys<end> adjacent <group_windweak> and <last_windweak>. Gives <icon_coin> equal to <text_color_keyword><value_1>x<end> the value of symbols <text_color_keyword>destroyed<end> this way."
	localized_descriptions = {}
	values = [8]
	value_text = {}
	rarity = "uncommon"
	groups = ["weatherlikes", "airbend", "winds"]
	sfx = ["windwoosh"]
	effects = [
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "windweak"}
			],
			"value_to_change": "destroyed",
			"diff": true,
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "windwoosh"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "windweak"}, 
				{"a": "destroyed", "b": "true"}
			], 
			"target_self": true, 
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": values[0], "var_math": [
				{"*": "final_value"}
			]}
		}
	]