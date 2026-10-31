extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "builders_permit"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Builder's Permit"
	localized_names = {}
	description = "Adjacent <icon_wood> in the same row <text_color_keyword>combine<end> to make <icon_house>. Adjacent <icon_rock> in the same row <text_color_keyword>combine<end> to make <icon_tower>."
	localized_descriptions = {}
	values = [2]
	rarity = "uncommon"
	groups = []
	sfx = []
	effects = [	]