extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "gorf_the_bewitched_frog_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Gorf the Bewitched Frog"
	localized_names = {}
	description = "<text_color_keyword>Destroys<end> itself if <group_slimenormal> <last_slimenormal> <group_hex> or <last_hex> is <text_color_keyword>destroyed<end> by <icon_frog>. When <text_color_keyword>destroyed<end>, <icon_frog> give <text_color_keyword><value_1>x<end> more <icon_coin> this game."
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
			"diff": {"groups": "frogs", "multiplier": values[0]}
		}
	]