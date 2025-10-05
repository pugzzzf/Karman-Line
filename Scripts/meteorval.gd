extends Panel

@onready var save : Button = $Save
@onready var diameter : SpinBox = $DiameterLabel/DiameterBox
@onready var velocity : SpinBox = $VelocityLabel/VelocityBox
@onready var type : OptionButton = $TypeLabel/TypeBox 

func _ready():
	save.pressed.connect(_button_pressed)

var density_types = {
	"ice" : 930.0,
	"rubble" : 1950.0,
	"common rock" : 3400.0,
	"stony iron" : 4500.0,
	"metallic" : 8000.0
}

func _button_pressed():
	var idx = type.get_selected_id()
	
	Globals.cur_meteor["diameter"] = diameter.value
	Globals.cur_meteor["velocity"] = velocity.value * 1000
	
	# match selected option to density	
	match idx:
		0:
			Globals.cur_meteor["density"] = density_types["ice"]
		1:
			Globals.cur_meteor["density"] = density_types["rubble"]
		2:
			Globals.cur_meteor["density"] = density_types["common rock"]
		3:
			Globals.cur_meteor["density"] = density_types["stony iron"]
		4:
			Globals.cur_meteor["density"] = density_types["metallic"]
	var lololo = "assigned meteor values\ndiameter: %f\nvelocity: %f\ndensity %f"
	var lololoformat = lololo % [Globals.cur_meteor["diameter"], Globals.cur_meteor["velocity"], Globals.cur_meteor["density"]]
	print(lololoformat)
