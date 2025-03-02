extends Basic_State

@onready var ani_2D: AnimatedSprite2D = $"../../AnimatedSprite2D"
@onready var ami_plr: AnimationPlayer = $"../../AnimationPlayer"
@onready var monster: CharacterBody2D = $"../.."

func enter():
	Game.shake_camera(30)
	Game.flash(1.1, Color(0.243, 0.145, 0.184))
	ami_plr.play("Trampling")

func process():
	pass

func exit():
	ami_plr.stop()
	
func _on_animated_sprite_2d_animation_finished() -> void:
	if ani_2D.animation == "Trampling":
		get_parent().change_state(0)
