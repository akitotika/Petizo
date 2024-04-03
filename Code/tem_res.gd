extends Control
var completa

# Called when the node enters the scene tree for the first time.
func _ready():
	completa = Global.p_completa()
	print("test2")
	$Label.text = str(completa)
	

