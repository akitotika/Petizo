extends Node

var patente = ["","","","","","","","",""]
var saved_data=[]
var db_ancho = 8
var db_largo = 0
var info = []

func _ready():
	#// read the data base
	load_me()
	pass
	

func load_me():
	var file = FileAccess.open("user://save_data.json",FileAccess.READ)
	var json = file.get_as_text()
	var save_data = JSON.parse_string(json)
	print("...................................................................")
	info = save_data
	db_largo = len(info)
	
	file.close()
	
	
func save_me():
	for i in saved_data.size():
		info[i] = patente
	print(info)
	print("info printed")
	var file = FileAccess.open("user://save_data.json",FileAccess.WRITE)
	saved_data = patente
	info.append(patente)
	var json = JSON.stringify(info)
	print(saved_data)
	file.store_string(json)
	file.close()
	
	
	


	
