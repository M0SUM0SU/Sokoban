extends Control


const LEVEL_COUNT: int = 30
const LEVEL_BUTTON = preload("uid://72bpsignw748")



@onready var grid_container: GridContainer = $MarginContainer/VBoxContainer/GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_grid()


func setup_grid() -> void:
	for level in range(LEVEL_COUNT):
		var lb: LevelButton = LEVEL_BUTTON.instantiate()
		lb.setup(str(level+1))
		grid_container.add_child(lb)
