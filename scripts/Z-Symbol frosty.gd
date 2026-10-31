extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "frosty"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Frosty"
	localized_names = {}
	value = 1
	description = "<text_color_keyword>Destroys<end> itself after giving <icon_coin> <text_color_keyword><value_1> times<end>. Gives <icon_coin><color_FBF236><value_2><end> for each spin it has remaining."
	localized_descriptions = {}
	values = [20, 1, 1, 2]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[0], "var_math": [{"-": "times_coins_given"}, {"+": "saved_value"},{"+": {"var_math": [{"+": {"counted_items": "sleigh"}},{"+": {"counted_destroyed_items": "sleigh_essence"}},{"*": 4}]}}]}}
	rarity = "none"
	groups = ["snowmen", "frostburn", "organism", "sleighlikes", "magic", "icelikes"]
	sfx = ["ding", "beam"]
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": values[0]-1, "var_math": [
				{"-": "times_coins_given"}, 
				{"+": "saved_value"},
				{"+": {"var_math": [
					{"+": {"counted_items": "sleigh"}},
					{"+": {"counted_destroyed_items": "sleigh_essence"}},
					{"*": 4}
				]}},
				{"*": values[1]},
				{"/": values[2]},
			], "round": true},
			"last": true,
			"one_time": true
		},
		{
			"comparisons": [
				{"a": {"starting_value": values[0]-1, "var_math": [
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