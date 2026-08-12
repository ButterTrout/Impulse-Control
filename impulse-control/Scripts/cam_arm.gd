extends SpringArm3D

var MouseSensitivity = 0.1

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	set_as_top_level(true)

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.x -= event.relative.y * MouseSensitivity
		#rotation_degrees.x = clamp(rotation_degrees.x, -90.0, -10.0)
		
		rotation_degrees.y -= event.relative.x * MouseSensitivity
		#rotation_degrees.y = clamp(rotation_degrees.y, 0.0, 360.0)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed(&"pause") && Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	elif event.is_action_pressed(&"pause") && Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
