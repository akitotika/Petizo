extends Node

var patente = ["","","","","","","",""]

	
func _ready():
	pass
	

func load_me():
	var file = FileAccess.open("user://save_data.json",FileAccess.READ)
	var json = file.get_as_text()
	var save_data = JSON.parse_string(json)
	print("...................................................................")
	var info = save_data["data"]
	var simple = info[1]
	print(simple[0])
	print(info)
	file.close()
	
	
func save_me():
	var file = FileAccess.open("user://save_data.json",FileAccess.WRITE)
	var saved_data = {}
	saved_data["data"]= patente
	var json = JSON.stringify(saved_data)
	file.store_string(json)
	file.close()
	load_me()
	
	


	
