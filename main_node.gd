extends Node2D
onready var camera = $"ball/Camera2D"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var fx
var fy
var tx
var ty

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
	camera.drag_margin_bottom = 0.2
	camera.drag_margin_top = 0.2
	camera.drag_margin_left = 0.2
	camera.drag_margin_right = 0.2
	pass
func _draw():
	fx = rand_range(0.0,5.0)
	fy = rand_range(5.0,10.0)
	tx = rand_range(10.0,15.0)
	ty = rand_range(15.0,20.0)
	draw_line(Vector2(fx,fy),Vector2(tx,ty),Color.red,15)
	#draw_line(get_node("ball").position,get_node("ball").position+Vector2(100,100),Color.aqua,15.0)
