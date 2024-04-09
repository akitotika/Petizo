extends Control
@onready var P =load("res://escene/base_patente.tscn")



func _ready():
	Global.load_me()
	for n in Global.db_largo:
		Global.D1 = str(Global.info[n][0]) + str(Global.info[n][1])
		Global.D2 = str(Global.info[n][2]) + str(Global.info[n][3])
		Global.D3 = str(Global.info[n][4]) + str(Global.info[n][5])
		print(Global.info[n][6])
		Global.fecha=str(Global.info[n][6])
		Global.monto = str(Global.info[n][7])
		var dat =P.instantiate()
		$Panel/ScrollContainer/VBoxContainer.add_child(dat)
		
		

	
 
