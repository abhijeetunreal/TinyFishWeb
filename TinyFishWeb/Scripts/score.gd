extends Node2D

@onready var hud = $UI/HUD
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	hud.set_score_label(score)

func _on_score_area_entered(area):
	score += 1
	print(score)
	hud.set_score_label(score)
