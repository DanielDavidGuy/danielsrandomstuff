extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "attorneys_badge_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Attorney's Badge"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <icon_lawyer> is adjacent to <icon_spirit>. When <text_color_keyword>destroyed<end> <icon_lawyer> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [
		{
			"comparisons": [
				{"a": "destroyed", "b": true}
			],
			"value_to_change": "permanent_bonuses",
			"add_to_array": true,
			# Replace with type when behavior gets fixed
			"diff": {"groups": "lawyers", "multiplier": values[0]}
		},
	]