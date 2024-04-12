extends Control



func _on_button_button_up():
	get_tree().change_scene_to_file("res://escene/Ingreso.tscn")


func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://escene/registro.tscn")


func _on_guardar_button_up():
	var num = %LineEdit.text
	Global.monto_inicial=int(num)
	Global.update_data()

	
