extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel = Vector2(0,0)
var dir = 0
var vel2 = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#vel.x +=5
	#set_linear_velocity(vel)
	
	#if Input.is_action_just_pressed("ui_accept"):
	#	vel.x +=50
	#	set_linear_velocity(vel)
	#	print(vel)
	#vel = vel * delta * PI
	#vel = get_tree().get_root().get_node("block/StaticBody2D").position
	
	#print(get_tree().get_root().get_node("block/StaticBody2D").position)
	
	#vel2 = (position - vel) * PI
	
	#set_linear_velocity(vel2)
	#set_angular_velocity(dir)
	#angular_velocity += dir * 20
	pass

func _draw():
	#draw_line(Vector2(10,10),Vector2(50,50),Color.red,1.0,false);
	#draw_circle(Vector2(0,0),50,Color.aliceblue)
	pass
