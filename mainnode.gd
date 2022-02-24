extends Node2D
var arr = []
onready var leftwall = get_node("StaticBody2D")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var increase=false
var decrease=false
var k=0
var stop = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	#ProjectSettings.set_setting("application/config/width", "")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#$RigidBody2D.gravity_scale = 0.0
	#$RigidBody2D.set_angular_velocity(20)
	#print("test")
	#$ColorRect.set_rotation_degrees(k)
	if !stop:
		if(k == 0 || k < 0):
			increase = true
			decrease = false
		if(k == 80 || k > 80):
			decrease = true
			increase = false
		
		if(increase):
			k = k+3
		if(decrease):
			k = k-3
		#print(k)
		
		#var kk =fmod(vv,10*PI)
		$ColorRect.set_rotation_degrees(-k)
		#print("VV:",-k)
		#set_rotation_degrees
		#$ColorRect.set_rotation() #0 to 1.5708
	
	
	#position = Vector2()
	pass
