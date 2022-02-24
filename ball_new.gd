extends RigidBody2D

onready var camera = $"Camera2D"
export var ix = 1500
export var iy = 500
export var impuse = Vector2(10,-10)
var start_pos=Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos = Vector2()
var dlt
var grav = 3
var max_speed = 700
# Called when the node enters the scene tree for the first time.
func _ready():
	#global_position = Vector2(200,-100)
	start_pos = global_position
	#set_process(true)
	#print((Vector2(20,10)-Vector2(10,10))*2)
	#draw_line(Vector2(10,10),Vector2(20,20),Color.red,2.0)
	gravity_scale = 0
	applied_force = Vector2(0,0)
	set_friction(1)
	
	
	#mode = RigidBody2D.MODE_RIGID
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#update()
	dlt = delta
	#print("play:",global_position)
	#var pp = PhysicsMaterial
	#pp.set_friction(1)
	
	#print("camPOS:",camera.global_position)
	if Input.is_action_just_pressed("ui_accept"):
		#mode = RigidBody2D.MODE_RIGID
		#apply_impulse(Vector2(),impuse*1000)
		#camera.current = true
		#camera.global_position = global_position
		#angular_velocity = 1000
		#apply_central_impulse(Vector2(2500,-1500))
		##var vv = Vector2(ix,-iy)
		jump(delta)
		
		#applied_force = Vector2(2000,0)
	if Input.is_action_pressed("ui_down"):
		#position = start_pos
		position.y += 50
	if Input.is_action_just_pressed("ui_up"):
		#position = start_pos
		#apply_central_impulse(Vector2(500,10))
		#apply_impulse(Vector2(300,100),Vector2(150,250))
		grav = 0.0
		gravity_scale = grav
		#add_central_force(Vector2(300,-200))
		applied_force = applied_force + Vector2(50000,0.001)
		#var impulse_strength = 100
		$Timer.start()
		#var angle = rotation
		#apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
		#applied_force = Vector2(50,0)
		#position.y -= 50
		#reset_state = true
		#gravity_scale = 0.5
		#applied_force = Vector2(50,0)
		#set_linear_velocity
	#print("mode",MODE_STATIC,MODE_RIGID)
	#bounce = 0.3
	#set_friction(1)
	if abs(get_linear_velocity().x) > max_speed or abs(get_linear_velocity().y) > max_speed:
		var new_speed = get_linear_velocity().normalized()
		new_speed *= max_speed
		set_linear_velocity(new_speed)
	#print("VEL-",get_linear_velocity())
	pass

func jump(delta):
	var rr = get_parent().get_node("ColorRect").get_rotation()
	#var k = get_parent().get("v")
	#var vv = Vector2(1500,-800)
	var vv =  Vector2(cos(rr), sin(rr))
	vv.normalized()
	apply_central_impulse(vv * 2500)
	angular_velocity = 10
	#apply_central_impulse( vv * 50  * delta)
	#apply_torque_impulse(25 * delta)
	#set_linear_velocity(vv)
	#apply_torque_impulse(30)
	
	
	#set_linear_velocity(vv * 500)
	if(grav == 0):
		grav = 3
	gravity_scale = grav
	bounce = 0.25
	pass

var reset_state = false
	
func _integrate_forces(state):
	if reset_state:
		state.transform = Transform2D(0.0, Vector2(100, 100))
		reset_state = false

func _draw():
	#print(global_position,Vector2(1,1))
	#draw_line(global_position,global_position+Vector2(1,1),Color.red,50.0)
	#draw_line(Vector2(0,0), Vector2(50, 50), Color(255, 0, 0), 1)
	pass


func _on_Timer_timeout():
	print("Timeeout")
	applied_force = Vector2(0,0)
	gravity_scale = 2
	add_central_force(Vector2(0,0))
	pass # Replace with function body.
