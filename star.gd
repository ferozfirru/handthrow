extends Area2D
export var impuse_strength = 2000

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_star_body_entered(body):
	print("Body entered",body.name)
	if body.name == 'player':
		#body.apply_central_impulse(Vector2(1500,-500))
		#get_tree().paused = true
		var angle = body.rotation
		#body.apply_central_impulse(Vector2(cos(angle), sin(angle)) * impuse_strength)
		#body.apply_central_impulse(Vector2(500,-500))
		body.apply_central_impulse(Vector2(300,-500))
		#body.jump(body.get("dlt"))
	pass # Replace with function body.
