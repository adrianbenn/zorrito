extends StaticBody3D
class_name Puerta

@export var velocidad := 1

func abrir() -> void:
	var t := create_tween()
	t.set_ease(Tween.EASE_IN_OUT)
	t.set_trans(Tween.TRANS_ELASTIC)
	t.tween_property(self, "position:y",2.5,velocidad)
	

func cerrar() -> void:
	var t := create_tween()
	t.set_ease(Tween.EASE_OUT)
	t.set_trans(Tween.TRANS_BOUNCE)
	t.tween_property(self, "position:y",0,velocidad)
	
