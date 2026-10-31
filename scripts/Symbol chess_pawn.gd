extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "pawn"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Pawn"
	localized_names = {}
	value = 1
	description = "Gives <icon_coin><color_FBF236><value_1><end> if its position is higher than its previous position."
	localized_descriptions = {}
	values = [2]
	rarity = "common"
	groups = ["chessall", "chess", "game", "pawns"]
	sfx = []
	effects = [
		{
			"required_items": ["promotion"],
			"comparisons": [
				{"a": "grid_position_y", "b": 0}
			],
			"value_to_change": "type",
			"diff": "chess_queen",
			"anim": "bounce",
			"sfx_override": "dice"
		},
		{
			"comparisons": [
				{"a": {"starting_value": "saved_value", "var_math": [{"-": "grid_position_y"}]}, "b": 0, "greater_than": true}
			],
			"value_to_change": "value_bonus",
			"diff": values[0]
		},
		{
			"value_to_change": "saved_value",
			"diff": {"var_math": [{"+": "grid_position_y"}]},
			"overwrite": true,
			"last": true
		}
	]