extends Sprite2D

var pos : Vector2
var local_pos : Vector2
var pos_color : Color
@onready var earth_scroll: Sprite2D = $"../EarthTest"
var scroll_speed : float = 5000.0
#var cur_earth_key = 1
#var cur_earth_image = Image.new()

func _ready():
	earth_scroll.region_enabled = true
	earth_scroll.region_rect = Rect2(1152.0, 2.0, 2812.0, 2450.0)

func _process(delta):
	var input_dir = Vector2.ZERO
	
	if Input.is_action_just_pressed("ScrollRight"):
		input_dir.x += 1
	if Input.is_action_just_pressed("ScrollLeft"):
		input_dir.x -= 1
	if input_dir != Vector2.ZERO:
		var r = earth_scroll.region_rect
		r.position += input_dir * scroll_speed * delta
		
		var tex_size = earth_scroll.texture.get_size()
		r.position.x = fmod(r.position.x, tex_size.x)
		
		earth_scroll.region_rect = r

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			pos = event.position
			local_pos = earth_scroll.get_local_mouse_position()
			print("position saved to arr at global coords: ", pos)
			print("local position: ", local_pos)

			if Globals.meteor_pos.size() > 5:
				print("reached limit of meteors")
			else:
				Globals.meteor_pos.push_back(pos)
				print(Globals.meteor_pos)
			#print("Color at position: ", cur_earth_image.texture.get_data().get_pixelv(pos))
	if Input.is_action_pressed("Space"):
		if Globals.meteor_pos.is_empty():
			print("make a selection")
		else:
			print("TADEO")
