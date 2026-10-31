extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "snow"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Snowflake"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> itself after giving <icon_coin> <text_color_keyword><value_2> times<end>. Gives <icon_coin><color_FBF236><value_1><end> for <text_color_keyword>each other<end> <icon_snow>."
	localized_descriptions = {}
	values = [2, 8]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "times_coins_given"}, {"+": "saved_value"},{"+": {"var_math": [{"+": {"counted_items": "sleigh"}},{"+": {"counted_destroyed_items": "sleigh_essence"}},{"*": 4}]}}]}}
	rarity = "common"
	groups = ["snowy", "eachother", "frostburn", "sleighlikes", "waterbend", "weatherlikes", "icelikes"]
	sfx = ["beam"]
	effects = [
		{
			"value_to_change": "value_bonus", 
			"diff": {"starting_value": {"counted_symbols": "snow"}, "var_math": [
				{"*": values[0]}
			]}
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[1]-1, "var_math": [
					{"-": "times_coins_given"}, 
					{"+": "saved_value"},
					{"+": {"var_math": [
						{"+": {"counted_items": "sleigh"}},
						{"+": {"counted_destroyed_items": "sleigh_essence"}},
						{"*": 4}
					]}}
				]}, "b": 0, "less_than_eq": true}
			], 
			"anim": "circle",
			"sfx_override": "beam",
			"value_to_change": "destroyed", 
			"diff": true
		}
	]