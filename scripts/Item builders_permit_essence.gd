extends "res://Mod Data.gd"

func _init():
	mod_type = "item"
	type = "builders_permit_essence"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Builder's Permit"
	localized_names = {}
	description = "Adjacent <icon_house> in the same row <text_color_keyword>combine<end> to make <icon_tower>. Adjacent <icon_tower> in the same row <text_color_keyword>combine<end> to make <icon_skyscraper>. <text_color_keyword>Destroys<end> itself when <icon_tower> <text_color_keyword>combine<end>."
	localized_descriptions = {}
	values = [2]
	rarity = "essence"
	groups = ["essence"]
	sfx = []
	effects = [	]