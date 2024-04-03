extends Control
var patente_format
var variable
var count = 0
var mostrar1 = ""
var mostrar2 = ""
var mostrar3 = ""


func _unhandled_key_input(event):
	if event.is_pressed() and event.keycode == KEY_BACKSPACE:
		limpia()
		count = 0
	else: if event.is_pressed() and count < 2 and event.keycode != KEY_ENTER:
		captura(event)
	else: if event.is_pressed() and count < 4 and event.keycode != KEY_ENTER:
		captura2(event)
	else: if event.is_pressed() and count < 6 and event.keycode != KEY_ENTER:
		captura3(event)
	else:if event.is_pressed() and event.keycode == KEY_ENTER:
		var nueva_fecha = Time.get_datetime_dict_from_system()
		var hoy = str(nueva_fecha["day"])+ "/" + str(nueva_fecha["month"]) + "/" + str(nueva_fecha["year"]) 
		Global.patente[6] = hoy
		Global.patente[7] = 0
		Global.patente[8] = true
		Global.save_me()
		get_tree().change_scene_to_file("res://escene/registro.tscn")
		
		

	
		
func limpia():
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label1").text = ""
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label2").text = ""
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label3").text = ""
	Global.patente = ["","","","","","","","",""]
	mostrar1 = ""
	mostrar2 = ""
	mostrar3 = ""
	
	
	
func captura (event):
	Global.patente[count] =  event.as_text()
	mostrar1 = (mostrar1 + str(Global.patente [count]))
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label1").text = mostrar1
	count = count + 1
	
	
func captura2 (event):
	Global.patente[count] =  event.as_text()
	mostrar2 = (mostrar2 + str(Global.patente [count]))
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label2").text = mostrar2
	count = count + 1
	
func captura3 (event):
	Global.patente[count] =  event.as_text()
	mostrar3 = (mostrar3 + str(Global.patente [count]))
	get_node("CanvasLayer/Panel/VBoxContainer/MarginContainer/TextureRect/MarginContainer/HBoxContainer/Label3").text = mostrar3
	count = count + 1
	
