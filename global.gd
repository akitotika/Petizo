extends Node
var Patente1
var Patente2
var Patente3
var patente_completa
var grid = []
var grid_width = 8
var grid_height = 6

func p_completa():
	patente_completa = Patente1 + Patente2 + Patente3
	print (patente_completa)
	
	
	
func _ready():
	for i in grid_width:
		grid.append([])
		for j in grid_height:
			grid[i].append(0) # Set a starter value for each position
		
	print (grid)
	for i in grid_width:
		grid[i][0] = "AB"
		grid[i][1] = "CD"
		grid[i][2] = "12"
		grid[i][3] = "Fecha"
		grid[i][4] = "costo"
		grid[i][5] = true
	print (grid[0][1])
	print (grid.size())
	grid.insert(1,["uno","dos","tres","cuatro"])
	print (grid)
	grid[1].erase(1)
	
	var spliter = "este,ac,ef,12,34".split(",")
	for i in spliter.size():
		print(spliter[i])
		print("now on github")


func load():
	pass
	
func save_me():
	JSON 
	pass
	


	
