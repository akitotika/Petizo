extends Control
var completa
@onready var P =load("res://escene/base_patente.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var dat =P.instantiate()
	var tiempo_ahora = Time.get_unix_time_from_system()
	tiempo_ahora = tiempo_ahora * 1000
	print("timepo ahora")
	print(tiempo_ahora)
	print("tiempo antes")
	print(Global.time_stamp)
	var dif_tiempo =  float(tiempo_ahora) - float(Global.time_stamp)
	print("diferencia de tiempo")
	print(dif_tiempo)
	dif_tiempo = dif_tiempo/1000
	dif_tiempo = dif_tiempo/86400
	print("nueva diferencia en dias")
	print(int(dif_tiempo)) 
	
	if int(dif_tiempo) == 0:
		dif_tiempo=1
	var cobro = int(Global.monto_inicial) * int(dif_tiempo)
	$VBoxContainer/Panel.add_child(dat)
	$VBoxContainer/Fecha.text=Global.fecha
	$VBoxContainer/Monto.text=str(cobro)
	



func _on_button_button_up():
	get_tree().change_scene_to_file("res://escene/Ingreso.tscn")
