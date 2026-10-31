extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "ice_block"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Ice"
	localized_names = {}
	value = 3
	description = "<text_color_keyword>Destroys<end> itself after giving <icon_coin> <text_color_keyword><value_2> times<end>. Adjacent <group_icelikes> and <last_icelikes> give <text_color_keyword><value_1>x<end> more <icon_coin>."
	localized_descriptions = {}
	values = [2, 6]
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": values[1], "var_math": [{"-": "times_coins_given"}, {"+": "saved_value"},{"+": {"var_math": [{"+": {"counted_items": "sleigh"}},{"+": {"counted_destroyed_items": "sleigh_essence"}},{"*": 4}]}}]}}
	rarity = "uncommon"
	groups = ["frostburn", "sleighlikes"]
	sfx = ["lightbulbbreak"]
	effects = [
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
		},
		{
			"effect_type": "adjacent_symbols",
			"comparisons": [
				{"a": "groups", "b": "icelikes"}
			],
			"anim": "circle",
			"anim_targets": "adjacent_symbol",
			"sfx_override": "ding",
			"value_to_change": "value_multiplier",
			"diff": values[0]
		},
	]