extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "living_statues"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Living Statues"
	localized_names = {}
	description = "<icon_chess_knight> have the effects of <icon_terracotta_soldier>. <icon_rook> have the effects of <icon_tower>. <icon_bishop> have the effects of <icon_dame>."
	localized_descriptions = {}
	values = [12, 1]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = []