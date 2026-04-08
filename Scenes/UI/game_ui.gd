extends Control

class_name GameUi

@onready var level_label: Label = $MC/VB/HBoxContainer/LevelLabel
@onready var moves_label: Label = $MC/VB/HBoxContainer2/MovesLabel
@onready var best_label: Label = $MC/VB/HBoxContainer3/BestLabel
@onready var gameoverpanel: NinePatchRect = $gameoverpanel
@onready var amount_of_moves: Label = $"gameoverpanel/MarginContainer/VBoxContainer/Moves Label/AmountOfMoves"
@onready var newrecord: Label = $"gameoverpanel/MarginContainer/VBoxContainer/Moves Label/NEWRECORD"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ln: String = GameManager.get_level_selected()
	level_label.text = ln
	if GameManager.has_level_score(ln):
		best_label.text = str(GameManager.get_best_scores(ln))
		
		
func set_moves_label(moves: int) -> void:
	moves_label.text = str(moves)

func game_over(moves: int, was_best: bool) -> void:
	amount_of_moves.text = "You took   %d   moves" % moves
	newrecord.visible = was_best
	gameoverpanel.show()
