extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "walter_the_woodpecker_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Walter the Woodpecker"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <icon_stick> is <text_color_keyword>destroyed<end> by <icon_woodpecker>. When <text_color_keyword>destroyed<end>, <icon_woodpecker> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
	localized_descriptions = {}
	values = [1.5]
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
			"diff": {"groups": "woodpeckers", "multiplier": values[0]}
		},
	]