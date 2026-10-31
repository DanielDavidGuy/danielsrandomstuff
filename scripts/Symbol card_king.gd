extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "card_king"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "King of Cards"
	localized_names = {}
	value = 2
	description = "Gives <icon_coin><color_FBF236><value_1><end> for each <icon_clubs> and <icon_spades>. Gives <icon_coin><color_FBF236><value_2><end> for each <icon_hearts> and <icon_diamonds>."
	localized_descriptions = {}
	values = [3, -1]
	value_text = {}
	rarity = "rare"
	groups = ["human", "organism", "doglikes", "zlikes", "royal", "hatted", "poker"]
	sfx = []
	effects = [
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math":[
				{"+": {"counted_symbols": "clubs"}},
				{"+": {"counted_symbols": "spades"}},
				{"*": values[0]}
			]}
		},
		{
			"value_to_change": "value_bonus",
			"diff": {"starting_value": 0, "var_math":[
				{"+": {"counted_symbols": "diamonds"}},
				{"+": {"counted_symbols": "hearts"}},
				{"*": values[1]}
			]}
		}
	]