extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "roshambo_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Roshambo"
	localized_names = {}
	description = "<icon_rock> <text_color_keyword>destroys<end> adjacent <icon_scissors>. <icon_scissors> <text_color_keyword>destroys<end> adjacent <icon_paper>. <icon_paper> <text_color_keyword>destroys<end> adjacent <icon_rock>. <text_color_keyword>Destroys<end> itself if <icon_rock> <icon_paper> or <icon_scissors> is <text_color_keyword>destroyed<end>. If <icon_scissors> is <text_color_keyword>destroyed<end>, <icon_rock> give <text_color_keyword><value_1>x<end> more <icon_coin> this game. If <icon_rock> is <text_color_keyword>destroyed<end>, <icon_paper> give <text_color_keyword><value_1>x<end> more <icon_coin> this game. If <icon_paper> is <text_color_keyword>destroyed<end>, <icon_scissors> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [3]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "scissors"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "roshambo_essence",
			"target_self": true,
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "rocks", "multiplier": values[0]}
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "rock"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "roshambo_essence",
			"target_self": true,
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "papers", "multiplier": values[0]}
		},
		{
			"effect_type": "symbols",
			"comparisons": [
				{"a": "type", "b": "paper"},
				{"a": "destroyed", "b": true}
			],
			"item_to_destroy": "roshambo_essence",
			"target_self": true,
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "scissorss", "multiplier": values[0]}
		},
	]