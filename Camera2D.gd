extends Camera2D


func _init():
	set_as_toplevel(true)

func _ready():
	offset = get_global_transform().origin
	
func _physics_process(delta):
	var target = get_parent().get_global_transform().origin
	var pos = offset + target
	#var up = Vector2(0, 1)
	look_at(pos)
	#look_at_from_position(pos, target, up)
	#position = Vector2(pos,target)
