extends Node2D

var current_wave = 1
@export var chicken_scene: PackedScene
@export var cow_scene: PackedScene

var starting_nodes: int
var current_nodes: int
var wave_spawn_ended 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	current_wave = 0
	GlobalVars.current_wave = current_wave 
	starting_nodes = get_child_count()
	current_nodes = get_child_count()
	position_to_next_wave() 
	
	pass 
	
func position_to_next_wave(): 
		if current_nodes == starting_nodes:
			if(current_wave != 0):
				GlobalVars.moving_to_next_wave = true
			current_wave += 1
			GlobalVars.current_wave = current_wave
			print(current_wave)
pass

func currentRound() -> void: 
	
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func next_round() -> void:
	
	
	pass
