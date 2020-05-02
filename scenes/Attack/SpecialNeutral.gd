extends CollisionShape2D

# Declare member variables here. Examples:
# var a = 2

var knockback = Vector2()
var damage = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	knockback.x = 70
	knockback.y = -150

func on_enemy_entered(body: KinematicBody2D):
	if body and body.is_in_group("Enemy"):
		body.take_damage(damage)
		body.take_knockback(knockback)
	
func e_h():
	print ("asdasd")
	self.disabled = false
	
func d_h():
	self.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
