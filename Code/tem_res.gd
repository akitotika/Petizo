extends Control
var completa

# Called when the node enters the scene tree for the first time.
func _ready():
	completa = str(Global.Patente1)+" " + str(Global.Patente2)+" " + str(Global.Patente3)
	print(completa)
	$Label.text = str(completa)
	

