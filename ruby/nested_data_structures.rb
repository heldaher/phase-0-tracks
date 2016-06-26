#Nested data structure
european_union = {
	britain: {
		status: "out",
		mood: "surprise",
		political_views: [
			"too much regulation",
			"globalism_is_good!",
			]
	},
	
	france: {
		status: "in",
		mood: "complicated",
		political_views: [
			"european project is good",
			"wine and cheese is delicious, not sure about politics"
			]
	},
	
	germany: {
		status: "in",
		mood: "calm",
		political_views: [
			"fiscal discipine needs to be improved in europe",
			"we are good at soccer"
			]
	}

}

#Calls
p european_union
p european_union[:germany][:status].upcase
p european_union[:france]
p european_union[:britain][:political_views][0]

