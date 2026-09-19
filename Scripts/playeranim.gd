extends Node2D

@export var player : playercontroll
@export var animationplayer: AnimationPlayer
@export var sprite : Sprite2D

func _process(_delta):
	if player.direction2==1:
		sprite.flip_h = false
	elif player.direction2==-1:
		sprite.flip_h= true
	
	if abs(player.velocity.x) > 0.0 :
		animationplayer.play("move")
	else:
		animationplayer.play("idle")
	
	if player.velocity.y <0:
		animationplayer.play("jmp")
	elif player.velocity.y > 0:
		animationplayer.play("fall")
