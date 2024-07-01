class_name Calculation

extends Object

# Define properties for the question and answer
var question: String
var answer: int

# Constructor method to initialize the calculation
func _init(question: String, answer: int):
	self.question = question
	self.answer = answer
