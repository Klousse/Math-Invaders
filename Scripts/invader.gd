extends Sprite2D

class_name invader

var Answer = 0
var Lives = 1
@onready var n_Label = $Labels
@onready var n_AllLabels = n_Label.get_children()

func CheckAnswer(val):
	if val == Answer:	CorrectAnswer()
	else:	FalseAnswer()

func CorrectAnswer():
	Lives -= 1
	if Lives == 0:
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
