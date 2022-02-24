extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var gobj = get_node("ground")
onready var player = get_parent().get_parent().get_node("player")
#onready var pobj = get_parent().get_node("player")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("GROU:",global_position," ",name)
	#if gobj.distance_to(pobj.gloal_position) > 1500:
	#	queue_free()
	#if player.global_position.x-global_position.x > get_viewport().x
	#	queue_free()
	if player.global_position.x - global_position.x > (1024/2):
	#if(abs(player.global_position.x - (1024/2))) < global_position.x:
		#print(player.global_position.x ,"#", player.global_position.x - (1024/2),"#",global_position.x)
		queue_free()
	pass


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	#queue_free()
	#print("VP",get_global_transform_with_canvas())
	
	#print(get_parent().get_parent().get_node("player/Camera2D").global_position)
	pass # Replace with function body.
