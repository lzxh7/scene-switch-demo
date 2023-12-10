class_name Main
extends Node

@export var screen: Node
@export var screen_scenes: Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func set_screen(screen_scene: PackedScene) -> void:
	screen.queue_free()
	screen = screen_scene.instantiate()
	add_child(screen)
