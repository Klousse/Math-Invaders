extends Sprite2D

class_name invader

var p_answer = 0
var p_lives = 1
@onready var n_Label = $Labels
@onready var n_AllLabels = n_Label.get_children()

func CheckAnswer(val):
	if val == p_answer:	CorrectAnswer()
	else:	FalseAnswer()

func CorrectAnswer():
	p_lives -= 1
	if p_lives == 0:
		Die()
	pass
	
func FalseAnswer():
	pass
	
func Die():
	queue_free()
	pass

func SetLabels(text = ""):
	for l in n_AllLabels:
		l.text = text
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	SetLabels("2  x  2")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
