extends PanelContainer

func _ready():
	%D1.text=Global.D1
	%D2.text=Global.D2
	%D3.text=Global.D3
	


func _on_texture_button_button_up():
	print("press....")
	Global.Patente1 = %D1.text
	Global.Patente2 = %D2.text
	Global.Patente3 = %D3.text
	get_tree().change_scene_to_file("res://escene/detalle.tscn")

