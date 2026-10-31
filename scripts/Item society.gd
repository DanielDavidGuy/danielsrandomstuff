extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "society"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Society"
	localized_names = {}
	description = "<group_human> and <last_human> give <text_color_keyword>2x<end> more <icon_coin> when adjacent to <group_built> or <last_built>."
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = []
	sfx = []
	effects = [	]