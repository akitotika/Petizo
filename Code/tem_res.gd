extends Control
var completa
@onready var P =load("res://escene/base_patente.tscn")

func _ready():
	var dat =P.instantiate()
	var tiempo_ahora = Time.get_unix_time_from_system()
	tiempo_ahora = tiempo_ahora * 1000
	var dif_tiempo =  float(tiempo_ahora) - float(Global.time_stamp)
	dif_tiempo = dif_tiempo/1000
	dif_tiempo = dif_tiempo/86400
	if int(dif_tiempo) == 0:
		dif_tiempo=1
	var cobro = int(Global.monto_inicial) * int(dif_tiempo)
	cobro = "💲" + str(cobro)
	$VBoxContainer/Panel.add_child(dat)
	$VBoxContainer/Fecha.text="Fecha de ingreso: " + str(Global.fecha)
	$VBoxContainer/Monto.text=str(cobro)
	
	
func _on_button_button_up():
	get_tree().change_scene_to_file("res://escene/Ingreso.tscn")
func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://escene/registro.tscn")


func _on_borrar_button_up():
	Global.info.remove_at(int(Global.id))
	Global.update_me()
	get_tree().change_scene_to_file("res://escene/registro.tscn")
