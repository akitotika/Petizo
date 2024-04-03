extends Control
@onready var P =load("res://escene/base_patente.tscn")



func _ready():
	var mas = 8
	for n in mas:
		lee()
		
	


func lee():
	var pat = P.instantiate()
	$CanvasLayer/Panel/ScrollContainer/VBoxContainer.add_child(pat)

