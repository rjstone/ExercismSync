module main

fn is_isogram(word string) bool {
	if word.is_blank() { return true }
	mut letters := word.to_lower().bytes()
	letters.sort()
	for i in 1 .. letters.len - 1 {
		if letters[i].is_letter() && letters[i] == letters[i - 1] {
			return false
		}
	}
	return true
}
