extends PanelContainer

func _ready():
	%D1.text=Global.D1
	%D2.text=Global.D2
	%D3.text=Global.D3
	%Fecha.text=Global.fecha
	%Monto.text=Global.monto
	%time_stamp.text=Global.time_stamp
	%id.text=str(Global.id)
	
	
func _on_texture_button_button_up():
	Global.D1 = %D1.text
	Global.D2 = %D2.text
	Global.D3 = %D3.text
	Global.fecha= %Fecha.text
	Global.monto=%Monto.text
	Global.time_stamp=%time_stamp.text
	Global.id = %id.text
	get_tree().change_scene_to_file("res://escene/detalle.tscn")

