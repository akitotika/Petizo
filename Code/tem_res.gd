extends Control
var completa
@onready var P =load("res://escene/base_patente.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var dat =P.instantiate()
	$VBoxContainer/Panel.add_child(dat)
	$VBoxContainer/Fecha.text=Global.fecha
	$VBoxContainer/Monto.text=Global.monto
	

