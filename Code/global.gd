extends Node

var patente = ["","","","","","","","",""]
var saved_data=[]
var db_ancho = 8
var db_largo = 0
var info = []
var D1 = ""
var D2 = ""
var D3 = ""
var fecha = ""
var monto = ""
var userfile = "user://save_data.json"

func _ready():
	#// read the data base
	load_me()
	
	

func load_me():
	
	if FileAccess.file_exists(userfile):
		var file = FileAccess.open(userfile,FileAccess.READ)
		var json = file.get_as_text()
		var save_data = JSON.parse_string(json)
		info = save_data
		db_largo = len(info)
		file.close()
	else:
		var file = FileAccess.open(userfile,FileAccess.WRITE)
		var start = []
		var json = JSON.stringify(start)
		file.store_string(json)
		file.close()
		
func save_me():
	for i in saved_data.size():
		info[i] = patente
	var file = FileAccess.open("user://save_data.json",FileAccess.WRITE)
	saved_data = patente
	info.append(patente)
	var json = JSON.stringify(info)
	file.store_string(json)
	file.close()
	
	
	


	
