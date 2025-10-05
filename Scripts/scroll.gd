extends Sprite2D

var pos : Vector2
var pos_color : Color
var scroll_speed : float = 400.0
@onready var map_sprite : Sprite2D = $"."
@export var dot: PackedScene = preload("res://Scenes/red_dot.tscn")

func _process(delta):
	var input_dir = Vector2.ZERO
	
	# check for user input (right or left)
	if Input.is_action_pressed("ScrollRight"):
		input_dir.x -= 1
	if Input.is_action_pressed("ScrollLeft"):
		input_dir.x += 1
	
	# scroll map sprite
	if input_dir != Vector2.ZERO:
		map_sprite.position += input_dir * scroll_speed * delta
	
	# loop sprite
	if map_sprite.position.x <= -2300.0:
		map_sprite.position.x += 1920
	if map_sprite.position.x >= 300.0:
		map_sprite.position.x -= 1920

func spawn(spawn_local_position):
	var instance = dot.instantiate()
	instance.global_position = spawn_local_position
	add_child(instance)

func _input(event):
	var temp_pos = Vector2.ZERO
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			pos = to_local(event.position)
			temp_pos = pos
			print("mouse clicked at local position: ", pos)
			spawn(pos)
			if pos.x > 0:
				temp_pos.x = pos.x - 1920
				spawn(temp_pos)
			if pos.x < 0:
				temp_pos.x = pos.x + 1920
				spawn(temp_pos)
	
