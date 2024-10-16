extends CharacterBody2D


var axis : Vector2
var death : bool = false
var is_facing_right : bool = true
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var Animated_sprite = $AnimatedSprite
@onready var SFXJump = $"../../SFX_Jump"
@onready var Wall = $"../../Pared/CollisionPared"


@export_group("Motion")
@export var move_speed : float = 200
@export var jump_speed : float = 300

@export_category("Config")
@export_group("Required references")
@export var gui : CanvasLayer



func _physics_process(delta):
	update_animation()
	jump(delta)
	move_x()
	flip()
	move_and_slide()
	
func flip():
	if (is_facing_right and velocity.x < 0) or (not is_facing_right and velocity.x > 0):
		scale.x *= -1
		is_facing_right = not is_facing_right

func jump(delta):
	if Input.is_action_just_pressed("Jump_P2") and is_on_floor():
		SFXJump.play()
		velocity.y = -jump_speed
		
	if not is_on_floor():
		velocity.y += gravity * delta

func update_animation():
	if not is_on_floor():
		if velocity.y < 0:
			Animated_sprite.play("Jump")
		else:
			Animated_sprite.play("Fall")
		return

	if velocity.x:
		Animated_sprite.play("Run")
	else:
		Animated_sprite.play("Idle")

func move_x():
	var input_axis = Input.get_axis("Move_left_P2", "Move_right_P2")
	velocity.x = input_axis * move_speed


func check_player_wall():
	if Wall.area_entered:
		queue_free()
