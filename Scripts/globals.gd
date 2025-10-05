extends Node

# relevant variables for meteor

# position : position relevant to map
# position dupe : to achieve a looping effect two map images were used. 
# as such there needs to be a duplicate of the position value so the meteor is not only visible in one map

# velocity : m/s
# diameter : m
# density : kg/m^3. user will not input a number, instead will be a type withn an assigned density value

var cur_meteor = {
	"position" : Vector2.ZERO,
	"position dupe" : Vector2.ZERO,
	"diameter" : 5.0,
	"velocity" : 1000.0,
	"density" : 0.0
}

# possible prev_meteor var in future
