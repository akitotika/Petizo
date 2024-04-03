extends Control
@onready var P =load("res://escene/base_patente.tscn")



func _ready():
	Global.load_me()
	for n in Global.db_largo:
		lee(n)
		
	


func lee(n):

	var pat = P.instantiate()
	pat.Label1 = 8
	pat.Label2 = 8
	pat.Label3 = 8
	$CanvasLayer/Panel/ScrollContainer/VBoxContainer.add_child(pat)
	
	
