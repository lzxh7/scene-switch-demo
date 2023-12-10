class_name ScreenSwitchButton
extends Button

@export_file("*.tscn", "*.scn") var screen: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var main: Main = get_tree().get_first_node_in_group("main")
	pressed.connect(main.set_screen.bind(load(screen)))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
