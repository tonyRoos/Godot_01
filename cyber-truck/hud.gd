extends CanvasLayer

@export var scoreLabel: Label 
@export var pointsPerTimeLabel: Label
var score: int = 0
var pointsPerTime: int = 0

func _ready() -> void:
	scoreLabel.text = "0 points!"
	pointsPerTimeLabel.text = "0 pps"

func _click() -> void:
	score += 1
	scoreLabel.text = str(score) + " points!"


func _addPointsPerTime() -> void:
	if score >= 50:
		score -= 50
		pointsPerTime += 1
		pointsPerTimeLabel.text = str(pointsPerTime) + " pps"
