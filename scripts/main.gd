class_name Main
extends Node

@export var screen: Screen
@export var screen_scenes: Array[PackedScene]
@export var screen_names: Array[StringName]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func set_screen(screen_name: StringName) -> void:
	screen.queue_free()
	screen = screen_scenes[screen_names.find(screen_name)].instantiate()
	add_child(screen)
