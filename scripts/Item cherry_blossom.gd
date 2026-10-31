extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "cherry_blossom"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Cherry Blossom"
	localized_names = {}
	description = "<icon_flower> give <text_color_keyword>3x<end> more <icon_coin> when adjacent to <group_trees> or <last_trees>."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [	]