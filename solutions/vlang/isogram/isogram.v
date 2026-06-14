module main

fn is_isogram(word string) bool {
	if word.is_blank() { return false }
	mut letters := word.to_lower().bytes()
	letters.sort_with_compare(fn (a &string, b &string) int {
		if a < b {
			return -1
		}
		if a > b {
			return 1
		}
		return 0
	})
	for i in 1 .. letters.len - 1 {
		if letters[i].is_letter() && letters[i] == letters[i - 1] {
			return true
		}
	}
	return false
}
