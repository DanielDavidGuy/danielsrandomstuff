extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "card_jack"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Jack of Cards"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each <group_suit> and <last_suit> if there are the same number of <icon_spades> and <icon_clubs> as <icon_hearts> and <icon_diamonds>."
	localized_descriptions = {}
	values = [2]
	value_text = {}
	rarity = "uncommon"
	groups = ["human", "organism", "doglikes", "zlikes", "royal", "hatted", "poker"]
	sfx = ["beam"]
	effects = [
		{
			"comparisons": [
				{"a": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "clubs"}},
					{"+": {"counted_symbols": "spades"}}
				]}, "b": {"starting_value": 0, "var_math":[
					{"+": {"counted_symbols": "diamonds"}},
					{"+": {"counted_symbols": "hearts"}}
				]}}
			],
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math":[
				{"+": {"counted_symbols": "clubs"}},
				{"+": {"counted_symbols": "spades"}},
				{"+": {"counted_symbols": "diamonds"}},
				{"+": {"counted_symbols": "hearts"}},
				{"*": values[0]}
			]}
		}
	]