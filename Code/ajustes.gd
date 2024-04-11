extends Control


func _on_button_button_up():
	get_tree().change_scene_to_file("res://escene/Ingreso.tscn")


func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://escene/registro.tscn")
