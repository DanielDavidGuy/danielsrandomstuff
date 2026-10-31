extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "furnace"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Furnace"
	localized_names = {}
	description = "<icon_coal> permanently gives <icon_coin><color_FBF236>1<end> more every <text_color_keyword><value_1><end> spins."
	localized_descriptions = {}
	values = [4]
	rarity = "common"
	groups = []
	sfx = []
	effects = [	]