module main

// The idea was to use this to precompute a map at compile time
// But this isn't possible yet in V

struct ScoreGroup {
	letters []string
	score   int
}

const letter_scores = [
	ScoreGroup{
		letters: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
		score:   1
	},
	ScoreGroup{
		letters: ['D', 'G']
		score:   2
	},
	ScoreGroup{
		letters: ['B', 'C', 'M', 'P']
		score:   3
	},
	ScoreGroup{
		letters: ['F', 'H', 'V', 'W', 'Y']
		score:   4
	},
	ScoreGroup{
		letters: ['K']
		score:   5
	},
	ScoreGroup{
		letters: ['J', 'X']
		score:   8
	},
	ScoreGroup{
		letters: ['Q', 'Z']
		score:   10
	},
]

fn generate_letter_score_map() map[string]int {
	mut tmp := map[string]int{}
	for sg in letter_scores {
		for letter in sg.letters {
			tmp[letter] = sg.score
		}
	}
	return tmp
}

// Unfortunately this doesn't work yet
// const letter_score_map = $generate_letter_score_map()

fn score(word string) int {
	letter_score_map := generate_letter_score_map()
	mut score := 0
	for c in word.to_upper() {
		score += letter_score_map[c.ascii_str()]
	}
	return score
}
