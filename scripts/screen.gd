class_name Screen
extends Control

@export var buttons: Array[Button]
@export var screen_names: Array[StringName]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var main: Main = get_tree().get_first_node_in_group("main")
	for i in buttons.size():
		buttons[i].pressed.connect(main.set_screen.bind(screen_names[i]))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
