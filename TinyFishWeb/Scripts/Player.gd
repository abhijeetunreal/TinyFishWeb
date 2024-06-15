extends RigidBody2D

@onready var touch = $TouchScreenButton
@onready var animation = $FishAnimation


# Called when the node enters the scene tree for the first time.

# Variables(global)
var force = 50
		
func _physics_process(delta):	
	if Input.is_action_pressed("jump"):
		apply_impulse(Vector2(0,-force))
		
	if touch.is_pressed():
		apply_impulse(Vector2(0,-force))
		animation.play("tapAnimation")
func _on_area_2d_area_entered(area):
	get_tree().reload_current_scene()

