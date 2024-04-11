extends Control
@onready var P =load("res://escene/base_patente.tscn")



func _ready():
	Global.load_me()
	for n in Global.db_largo:
		Global.D1 = str(Global.info[n][0]) + str(Global.info[n][1])
		Global.D2 = str(Global.info[n][2]) + str(Global.info[n][3])
		Global.D3 = str(Global.info[n][4]) + str(Global.info[n][5])
		Global.fecha=str(Global.info[n][6])
		Global.monto = str(Global.info[n][7])
		Global.time_stamp = str(Global.info[n][8])
		Global.id = Global.info[n][9]
		var dat =P.instantiate()
		$Panel/ScrollContainer/VBoxContainer.add_child(dat)
		


func _on_button_button_up():
	get_tree().change_scene_to_file("res://escene/Ingreso.tscn")


func _on_button_3_button_up():
	get_tree().change_scene_to_file("res://escene/ajustes.tscn")
