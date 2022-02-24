extends KinematicBody2D

var vel = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vx = 10
var vy = -10
var kk = 2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	vel += Vector2(vx,vy) + Vector2(0,-25)
	#vel = vel * kk
	#vel = vel.normalized()
	#if Input.is_action_just_pressed("ui_accept"):
	move_and_slide(vel)
	pass
