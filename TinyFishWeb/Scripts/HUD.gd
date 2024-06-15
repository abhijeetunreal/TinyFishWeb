extends Control


@onready var score = $Score


func set_score_label(new_score):
	score.text = str(new_score)
