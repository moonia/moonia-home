package vote

import (
  "strconv"
)

var (
	votes = map[string]int{
	  "Snoopy": 0,
	  "ScoobyDoo": 0,
	  "BrianGriffin": 0,
	}
	voters = map[string]bool{}
)

func Vote(dog string) {

	count, exists := votes[dog]
	if !exists {
		panic("Invalid dog")
	}

	votes[dog] = count + 1
}

func Choices() string {
	out := "### Vote Results:\n\n"

	for dog, count := range votes {
		out += "- **" + dog + "**: " + strconv.Itoa(count) + " votes\n"
	}

	return out
}
