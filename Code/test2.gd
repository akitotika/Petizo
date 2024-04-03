extends PanelContainer
var P1 = "AB"
var P2 = "CD"
var P3 = "12"

func _ready():
	$MarginContainer/MarginContainer/HBoxContainer/Label1.text = P1
	$MarginContainer/MarginContainer/HBoxContainer/Label2.text = P2
	$MarginContainer/MarginContainer/HBoxContainer/Label3.text = P3
	

func _on_texture_button_button_up():
	print("press....")
	Global.Patente1 = P1
	Global.Patente2 = P2
	Global.Patente3 = P3
	get_tree().change_scene_to_file("res://escene/detalle.tscn")

