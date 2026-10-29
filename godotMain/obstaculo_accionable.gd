extends Node3D

@export var velocidad := 1
@export var propiedad := "position:y"
@export var valor_final := 2.5

@onready var _pivot := $Pivot

func activar() -> void:
	var t := create_tween()
	t.set_ease(Tween.EASE_IN_OUT)
	t.set_trans(Tween.TRANS_ELASTIC)
	t.tween_property(_pivot, propiedad, valor_final, velocidad)
	

func desactivar() -> void:
	var t := create_tween()
	t.set_ease(Tween.EASE_OUT)
	t.set_trans(Tween.TRANS_BOUNCE)
	t.tween_property(_pivot, propiedad, 0, velocidad)
