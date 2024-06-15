extends Area2D

@export var speed = 100

@onready var ropedown = $RopeDown
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.x -= speed * delta
	pass




func _on_area_exited(area):
	queue_free()


func _on_rope_detect_area_entered(area):
	ropedown.play("spikedown")
