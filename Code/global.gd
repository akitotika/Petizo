extends Node

var patente = ["","","","","","","","","",""]
var db_ancho = 8
var db_largo = 0
var info =[]
var id
var D1 = ""
var D2 = ""
var D3 = ""
var fecha = ""
var monto = ""
var time_stamp 
var userfile = "user://save_data.json"
var datafile = "user://data_file.json"
var monto_inicial 

func _ready():
	
	load_me()
	load_data()

func load_me():
	
	if FileAccess.file_exists(userfile):
		var file = FileAccess.open(userfile,FileAccess.READ)
		var json = file.get_as_text()
		var save_data = JSON.parse_string(json)
		info = save_data
		db_largo = len(info)
		for i in db_largo:
			info[i][9] = str(i)
		file.close()
	else:
		var file = FileAccess.open(userfile,FileAccess.WRITE)
		var start = []
		var json = JSON.stringify(start)
		file.store_string(json)
		file.close()
		
func load_data():
	
	if FileAccess.file_exists(datafile):
		var datas = FileAccess.open(datafile,FileAccess.READ)
		var json = datas.get_as_text()
		var save_data2 = JSON.parse_string(json)
		monto_inicial = save_data2
		datas.close()
	else:
		var datas = FileAccess.open(datafile,FileAccess.WRITE)
		var start = 1000
		monto_inicial = start
		var json = JSON.stringify(start)
		datas.store_string(json)
		datas.close()
		
func save_me():
	var file = FileAccess.open(userfile,FileAccess.WRITE)
	info.append(patente)
	var json = JSON.stringify(info)
	file.store_string(json)
	file.close()
	
func update_me():
	db_largo = len(info)
	for n in db_largo:
			info[0][9] = str(n)
	var file = FileAccess.open(userfile,FileAccess.WRITE)
	var json = JSON.stringify(info)
	file.store_string(json)
	file.close()
	
	
func update_data():
	var datas = FileAccess.open(datafile,FileAccess.WRITE)
	var json = JSON.stringify(monto_inicial)
	datas.store_string(json)
	datas.close()
