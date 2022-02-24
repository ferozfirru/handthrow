extends Node2D

const ground = preload("res://ground_obj.tscn")
onready var player = get_parent().get_node("player")
#onready var rayc = get_parent().get_node("player/RayCast2D")
const star = preload("res://star.tscn")
var inst = null
const gwidth = 120
var spawnpos
# Declare member variables here. Examples:
var a = 1
# var b = "text"
var last

# Called when the node enters the scene tree for the first time.
func _ready():
	print(ground)
	randomize()
	spawnpos = global_position
	spawnit(1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("test",get_viewport().size.x)
	#print("Ppos:",player.global_position)
	#print("SPpos:",spawnpos)
	#print("distance ",spawnpos.distance_to(player.global_position))
	#var chkpos = Vector2(player.global_position.x,get_viewport().size.y - 40)
	#if chkpos 
	if player.global_position.x + 500 > spawnpos.x || spawnpos.distance_to(player.global_position) < 200:	
	#if spawnpos.distance_to(player.global_position) < 1500:
		spawnit(delta)
		#spawnit(delta)
		#spawnit(delta)
	#print("RAY",player.get_node("RayCast2D"))
	#var rayc = player.get_node("RayCast2D")
	#rayc.cast_to = Vector2(100,10)
	
	#if inst == null:
		#rayc.cast_to =spawnpos
	#	rayc.look_at(spawnpos)
	#else:
		#rayc.cast_to  = inst.global_position
	#	rayc.look_at(inst.global_position)
	#print("POS",inst.global_position)
	#rayc.get_collision_point()
	
	#var chk_pos = player.global_position.x + get_viewport().size.x
	#spawnit(delta)
	#if last.distance_to(player.position) < 500:
	pass
	
func spawnit(dt):
	#print(fmod(20,3))
	#print("SPAWNED")
	
	inst= ground.instance()
	inst.get_node("Control/RichTextLabel").text= str(a)
	a += 1
	add_child(inst)
	inst.global_position.x = spawnpos.x
	var ran = rand_range(10,350)
	#print("MODD:",fmod(ran,2))
	spawnpos = spawnpos + Vector2(gwidth,0)
	#print("SPW-",spawnpos)
	if int(fmod(a,25)) == 0:
		#var spr = Sprite.new()
		#spr.texture = preload("res://lightblue.png")
		#spr.position = Vector2(spawnpos.x, spawnpos.y- (ran))
		var st = star.instance()
		##st.position = Vector2(spawnpos.x, spawnpos.y- (ran))
		print("sy:",spawnpos.y,"ran:",ran)
		st.position = Vector2(inst.position.x, inst.position.y-ran)
		#st.position = 
		add_child(st)
		#print("sprpos:",st.position)
	#spawnpos.x = spawnpos.x + gwidth
	#print("global ",dt,",",position.x, "-- player pos",player.position.x)
	#last = position
	
	#position = position + Vector2(450,0)
	#print("SpwnPOS:",spawnpos)
	pass
