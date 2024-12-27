extends RigidBody3D

# 定数として水平移動の大きさを定義
const MOVE_AMOUNT = 1

# 回転速度の定数（ラジアン毎秒）
const ROTATION_SPEED = 2.0

func _physics_process(delta):
	if Input.is_action_pressed("move_forward"):
			var direction = global_transform.basis.z.normalized()
			apply_central_impulse(direction * -MOVE_AMOUNT)
	if Input.is_action_pressed("move_back"):
			var direction = global_transform.basis.z.normalized()
			apply_central_impulse(direction * MOVE_AMOUNT)

	if Input.is_action_pressed("move_right"):
		# 右に回転
		rotate_y(ROTATION_SPEED * -delta)
	if Input.is_action_pressed("move_left"):
		# 左に回転
		rotate_y(ROTATION_SPEED * delta)
