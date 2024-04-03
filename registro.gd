extends Control
@onready var P =load("res://test2.tscn")

var patente_db1 = ["ab","cd","12"]
var patente_db2 = ["ef","jg","34"]
var patente_db3 = ["hi","jk","56"]
var patente_db4 = ["ly","xy","78"]
var patente_db5 = ["zw","ab","99"]

func _ready():
	var mas = 8
	for n in mas:
		lee()
		print("test me on github")
	


func lee():
	var pat = P.instantiate()
	$CanvasLayer/Panel/ScrollContainer/VBoxContainer.add_child(pat)

