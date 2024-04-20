extends Node

class_name generator

var p_digitWeights = [1,1,1,1,1,1,1,1,1,1] #weightings for producing a digit between 0 ~ 9

func GetProbabilityIndex(table, nOutOf=null):
	if nOutOf == null:
		nOutOf = 0
		for num in table:
			nOutOf += num
	
	var r  = randi() % nOutOf
	var nCumulativeChance = 0
	for t in table.size():
		if table[t] > 0:
			nCumulativeChance += table[t]
			if r < nCumulativeChance:
				return t
	var lastIx = -1
	while table[lastIx] == 0:
		lastIx -= 1
	return table.size()+lastIx

func GenerateNumber(digits) -> int:
	var string = ""
	var d = -1
	for i in digits:
		string += string + str(GetProbabilityIndex(p_digitWeights))
	return int(string)
	
	
func generate_addition() -> int:
# Generate an addition calculation, e.g., 10 + 5
	var operand1 = randi() % 90 + 10
	var operand2 = randi() % 90 + 10
	return operand1 + operand2
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
